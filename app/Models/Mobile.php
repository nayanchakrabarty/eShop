<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Mobile extends Model
{
    
    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'mobiles';

    /**
    * The database primary key value.
    *
    * @var string
    */
    protected $primaryKey = 'id';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = [
                  'brand_id',
                  'title',
                  'price',
                  'detail_url',
                  'technology',
                  'announced',
                  'status',
                  'dimensions',
                  'weight',
                  'sim',
                  'type',
                  'size',
                  'resolution',
                  'multitouch',
                  'os',
                  'chipset',
                  'cpu',
                  'card_slot',
                  'internal',
                  'ram',
                  'storage',
                  'main_camera',
                  'mc_filter',
                  'mc_features',
                  'mc_video',
                  'selfie_camera',
                  'sc_filter',
                  'sc_features',
                  'sc_video',
                  'alert_types',
                  'loudspeaker',
                  'jack_3_5mm',
                  'wlan',
                  'bluetooth',
                  'gps',
                  'radio',
                  'usb',
                  'sensors',
                  'messaging',
                  'battery',
                  'battery_filter',
                  'colors',
                  'ext',
                  'images',
                  'revision',
                  'origin_id',
                  'sorting',
                  'created',
                  'active'
              ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [];
    
    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [];
    
    /**
     * Get the Brand for this model.
     *
     * @return App\Models\Brand
     */
    public function Brand()
    {
        return $this->belongsTo('App\Models\Brand','brand_id','id');
    }



}
