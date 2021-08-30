<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Price extends Model
{


    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'prices';

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
        'title',
        'price',
        'currency_id',
        'price_source_id',
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
     * Get the site for this model.
     */
    public function priceSource()
    {
        return $this->belongsTo('App\Models\PriceSource', 'price_source_id', 'id');
    }

    /**
     * Get the currency for this model.
     */
    public function currency()
    {
        return $this->hasOne('App\Models\Currency', 'id', 'currency_id');
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

}
