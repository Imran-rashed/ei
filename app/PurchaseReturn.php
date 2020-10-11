<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PurchaseReturn extends Model
{
    public function vendor(){
    	return $this->belongsTo('\App\Vendor', 'vendor_id');
    }
    public function purchase_items(){
    	return $this->hasMany('\App\PurchaseReturnItems', 'purchase_return_id');
    }
}