<?php

namespace App\Models;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;

class PriceSource extends Model
{


    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'price_sources';

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
        'url'
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
        return $this->belongsTo('App\Models\Mobile', 'mobile_id', 'id');
    }

    /**
     * Get the price for this model.
     */
    public function prices()
    {
        return $this->hasMany('App\Models\Price', 'price_source_id', 'id');
    }


    /**
     * Get created_at in array format
     *
     * @param  string $value
     * @return array
     */
    public function getCreatedAtAttribute($value)
    {
        return date('j/n/Y g:i A', strtotime($value));
    }

    /**
     * Get updated_at in array format
     *
     * @param  string $value
     * @return array
     */
    public function getUpdatedAtAttribute($value)
    {
        return date('j/n/Y g:i A', strtotime($value));
    }

    /**
     * Remove price site url with all of its price distributions
     *
     * @return void
     */
    public function delete()
    {
        DB::transaction(function () {
            $this->prices()->delete();
            parent::delete();
        });
    }

}
