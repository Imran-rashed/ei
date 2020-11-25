<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Purchase extends Model
{
    public function vendor(){
    	return $this->belongsTo('\App\Vendor', 'vendor_id');
    }
    public function purchase_items(){
    	return $this->hasMany('\App\PurchaseOrderWiseItem', 'purchase_id');
    }
    public function foc_items(){
    	return $this->hasMany('\App\FOCItems', 'purchase_id');
    }
    public function location(){
    	return $this->belongsTo('\App\Location', 'location_id');
    }

    public static function getPurchaseItemIds($purchase_id){
         return DB::table('purchase_order_wise_items')
        ->where('purchase_id', $purchase_id)->pluck('item_id')->toArray();
    }
}
