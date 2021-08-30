<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class VariationPrice extends Model
{


    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'variation_prices';

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
                  'mobile_id',
                  'region_id',
                  'ram_id',
                  'storage_id',
                  'price',
                  'usd_price',
                  'status',
                  'affiliate_url'
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
     * Get the mobile for this model.
     */
    public function mobile()
    {
        return $this->belongsTo('App\Models\Mobile','mobile_id');
    }

    /**
     * Get the region for this model.
     */
    public function region()
    {
        return $this->belongsTo('App\Models\Region','region_id');
    }

    /**
     * Get the ram for this model.
     */
    public function ram()
    {
        return $this->belongsTo('App\Models\Ram','ram_id');
    }

    /**
     * Get the storage for this model.
     */
    public function storage()
    {
        return $this->belongsTo('App\Models\Storage','storage_id');
    }


    /**
     * Get created_at in array format
     *
     * @param  string  $value
     * @return array
     */
    public function getCreatedAtAttribute($value)
    {
        return date('j/n/Y g:i A', strtotime($value));
    }

    /**
     * Get updated_at in array format
     *
     * @param  string  $value
     * @return array
     */
    public function getUpdatedAtAttribute($value)
    {
        return date('j/n/Y g:i A', strtotime($value));
    }

}
