<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Mobile;
use Illuminate\Http\Request;
use Exception;
use App\Library\PhotoGallery;

class GalleryController extends Controller
{
    public function index($mobileId)
    {
        $initialPreview = [];
        $initialPreviewConfig = [];

        $photoGallery = new PhotoGallery();
        $fileList = $photoGallery->getFileListFromDir();

        if (!empty($fileList)) {
            // get initial preview
            $initialPreview = $photoGallery->getInitialPreview($fileList);

            // get initial preview config
            $initialPreviewConfig = $photoGallery->getInitialPreviewConfig($fileList);
        }

        $mobile = Mobile::findOrFail($mobileId);

        return view('mobiles.gallery', compact('mobile', 'initialPreview', 'initialPreviewConfig'));
    }

    public function upload(Request $request)
    {
        // set config dir
        $IMAGE_DIR = config('constants.IMAGE_DIR');
        $IMAGE_TEMP_DIR = config('constants.IMAGE_TEMP_DIR');

        // receive request value
        $itemId = $request->itemId;

        // define photo gallery library
        $photoGallery = new PhotoGallery();

        $errorList = array();
        foreach ($_FILES['file']['tmp_name'] as $key => $fileTmpName) {
            // get next uploaded file name according to index
            $fileName = $photoGallery->getNextFileName($itemId);

            // upload file and output json array for preview
            if ($photoGallery->rawUpload($fileTmpName, $fileName)) {
                $isReSized = $photoGallery->resizeImage($fileName, 300);
                if (!$isReSized) {
                    // copy original image when resize failed
                    $sourceUrl = $IMAGE_TEMP_DIR . $fileName;
                    $destinationUrl = $IMAGE_DIR . $fileName;
                    $photoGallery->urlUpload($sourceUrl, $destinationUrl);
                }
            } else {
                $errorList[] = $key . ': Image upload failed';
            }
        }

        // get preview array
        $result = $photoGallery->getImagePreviewFromDirectory();

        // generate error string
        if (!empty($errorList)) {
            $result['error'] = implode(',', $errorList);
        }

        return response()->json($result);
    }

    public function sorting(Request $request)
    {
        $IMAGE_DIR = config('constants.IMAGE_DIR');

        $itemId = $request->itemId;
        $fileStack = $request->fileStack;
        if (!empty($fileStack)) {
            // rename to temporary name
            foreach ($fileStack as $key => $fileName) {
                $tempFileName = $itemId . '_' . ($key + 100) . '.jpg';
                $oldFilePath = $IMAGE_DIR . $fileName;
                $newFilePath = $IMAGE_DIR . $tempFileName;
                rename($oldFilePath, $newFilePath);
            }

            // rename to real file name after soring
            foreach ($fileStack as $key => $value) {
                $tempFileName = $itemId . '_' . ($key + 100) . '.jpg';
                $fileName = $itemId . '_' . ($key + 1) . '.jpg';
                $oldFilePath = $IMAGE_DIR . $tempFileName;
                $newFilePath = $IMAGE_DIR . $fileName;
                rename($oldFilePath, $newFilePath);
            }
        }
    }

    public function move(Request $request)
    {
        $itemId = $request->itemId;

        // define photo gallery library
        $photoGallery = new PhotoGallery();

        // get total files from dir
        $fileList = $photoGallery->getFileListFromDir();
        $totalImages = count($fileList);

        if ($totalImages > 0) {
            // rename file list before move
            $photoGallery->renameFileListForMismatch($itemId);

            // update gallery image count in mobile table
            Mobile::where('id', $itemId)->update(['images' => $totalImages]);

            // move all images to final dir
            $photoGallery->moveFileList();

            echo 1;
        } else {
            echo 2;
        }
    }

    public function delete(Request $request)
    {
        $IMAGE_DIR = config('constants.IMAGE_DIR');

        $fileName = $request->fileName;

        // remove image
        $filePath = $IMAGE_DIR . $fileName;
        if (file_exists($filePath)) {
            @unlink($filePath);
        }

        // get preview array
        $photoGallery = new PhotoGallery();
        $result = $photoGallery->getImagePreviewFromDirectory();

        echo json_encode($result);
    }

}
