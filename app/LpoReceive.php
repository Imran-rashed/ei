<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class LpoReceive extends Model
{
    public function purchase(){
    	return $this->belongsTo('\App\Purchase');
    }

    public function user(){
    	return $this->belongsTo('\App\User', 'user_id');
    }
    public function lop_receive_items(){
    	return $this->hasMany('\App\LpoReceiveItem', 'lpo_receive_id');
    }

    public static function getReceiveIds($lpo_receive_id){
         return DB::table('lpo_receive_items')
        ->where('lpo_receive_id', $lpo_receive_id)->pluck('item_id')->toArray();
    }
}
