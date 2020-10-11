<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DataTables;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use App\LpoReceive;
use Helpers;

class AccountController extends Controller
{
    private $root = 'accounts/';

    public function unpaidGrn(){
        return view($this->root . 'unpaid_grn');
    }

    public function unpadiGrnData(Request $request){
       $store_id = $request->store_id;
        $data = LpoReceive::where('is_paid', false)->with(['purchase', 'lop_receive_items', 'purchase.location', 'user']);
        if ($store_id != 0) {
            $data = $data->where('purchase_id', $store_id);
        }
    
        $data = $data->get();

        return Datatables::of($data)
                ->addIndexColumn()
                ->editColumn('location', function(LpoReceive $product){
                    return $product->purchase->location->name;
                })
                ->editColumn('checkbox', function(LpoReceive $product){
                    return '<input class="sel" type="checkbox" name="count_history" value="'.$product->id.'" >';
                })
                ->editColumn('received_by', function(LpoReceive $product){
                    return $product->user->name;
                })
                ->editColumn('total_items', function(LpoReceive $product){
                    return count($product->purchase->purchase_items);
                })
                ->editColumn('vendor', function(LpoReceive $product){
                    return $product->purchase->vendor->name;
                })
                ->editColumn('vendor_invoice', function(LpoReceive $product){
                    return $product->vendor_invoice_no;
                })
                ->editColumn('grand_total', function(LpoReceive $product){
                    return Helpers::purchaseGrandTotal($product->purchase_id);
                })
                ->editColumn('payment_date', function(LpoReceive $product){
                    return 'N/A';
                })

                ->editColumn('received_by', function(LpoReceive $product){
                    return $product->user->name;
                })
                ->editColumn('action', function(LpoReceive $product){
                    return '<a href="/item/price_update/'.$product->id.'/edit"><i class="far fa-edit"></i></a>
                        <a href="#" data-toggle="modal" onclick="deleteData('.$product->id.')"><i class="far fa-trash-alt"></i></a>';
                })
                 ->rawColumns(['status', 'action', 'checkbox'])
                ->make();
    }

    public function padiGrnData(Request $request){
       $store_id = $request->store_id;
        $data = LpoReceive::where('is_paid', true)->with(['purchase', 'lop_receive_items', 'purchase.location', 'user']);
        if ($store_id != 0) {
            $data = $data->where('purchase_id', $store_id);
        }
    
        $data = $data->get();

        return Datatables::of($data)
                ->addIndexColumn()
                ->editColumn('location', function(LpoReceive $product){
                    return $product->purchase->location->name;
                })
                ->editColumn('checkbox', function(LpoReceive $product){
                    return '<input class="sel" type="checkbox" name="count_history" value="'.$product->id.'" >';
                })
                ->editColumn('received_by', function(LpoReceive $product){
                    return $product->user->name;
                })
                ->editColumn('total_items', function(LpoReceive $product){
                    return count($product->purchase->purchase_items);
                })
                ->editColumn('vendor', function(LpoReceive $product){
                    return $product->purchase->vendor->name;
                })
                ->editColumn('vendor_invoice', function(LpoReceive $product){
                    return $product->vendor_invoice_no;
                })
                ->editColumn('grand_total', function(LpoReceive $product){
                    return Helpers::purchaseGrandTotal($product->purchase_id);
                })
                ->editColumn('payment_date', function(LpoReceive $product){
                    return 'N/A';
                })

                ->editColumn('received_by', function(LpoReceive $product){
                    return $product->user->name;
                })
                ->editColumn('action', function(LpoReceive $product){
                    return '<a href="/item/price_update/'.$product->id.'/edit"><i class="far fa-edit"></i></a>
                        <a href="#" data-toggle="modal" onclick="deleteData('.$product->id.')"><i class="far fa-trash-alt"></i></a>';
                })
                 ->rawColumns(['status', 'action', 'checkbox'])
                ->make();   
    }


    public function paidGrn(){
        return view($this->root . 'paid_grn');
    }

    public function vendorTransaction(){
        return view($this->root . 'vendor_transaction');
    }
    public function paymentVoucher(){
        return view($this->root . 'payment_voucher');
    }
    public function paymentSummary(){
        return view($this->root . 'payment_summary');
    }
}
