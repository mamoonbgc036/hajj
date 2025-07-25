<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PackageService extends Model
{
    protected $fillable = ['package_id', 'service_name', 'service_price'];

    public function package()
    {
        return $this->belongsTo('App\Package');
    }
}
