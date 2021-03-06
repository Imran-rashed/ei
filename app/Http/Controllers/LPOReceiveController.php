<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Purchase;
use App\PurchaseOrderWiseItem;
use App\Item;
use Auth;
use App\LpoReceive;
use DataTables;
use Illuminate\Support\Facades\Validator;
use Helpers;
use Illuminate\Support\Facades\DB;

class LPOReceiveController extends Controller
{
    private $root = 'receive/lpo/';
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $stores = DB::table('stores')->get();
        $data = [
            'stores'=>$stores 
        ];
        return view($this->root . 'index',$data);
    }

    public function lpoReceiveDatatableData(Request $request){
        $store_id = $request->store_id;
        $data = LpoReceive::with(['purchase', 'purchase.purchase_items', 'purchase.location', 'user']);
        if ($store_id != 0) {
            $data = $data->where('purchase_id', $store_id);
        }
    
        $data = $data->get();

        return Datatables::of($data)
                ->addIndexColumn()
                ->editColumn('location', function(LpoReceive $product){
                    return $product->purchase->location->name;
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
                 ->rawColumns(['status', 'action'])
                ->make();
    }


    public function markAsPaid(Request $request){
        $ids = $request->selected;

        foreach ($ids as $key => $id) {
           $lpo =  LpoReceive::find($id);
           $lpo->is_paid = true;
           $lpo->save();
        }
        
    }

    public function markAsUnPaid(Request $request){
        $ids = $request->selected;

        foreach ($ids as $key => $id) {
           $lpo =  LpoReceive::find($id);
           $lpo->is_paid = false;
           $lpo->save();
        }
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $reference_no = $request->reference_no;
        $vendor_invoice_no = $request->vendor_invoice_no;

        $purchase = Purchase::where('reference', $reference_no)->with(['vendor', 'purchase_items'])->first();
        if(!$purchase){
            return redirect()->back();
        }

        $dates = [
            'current_date' => date('Y/m/d'),
            'payment_date' => date('Y/m/d')

        ];

        $data = [
            'reference_no' => $reference_no,
            'vendor_invoice_no' => $vendor_invoice_no,
            'purchase' => $purchase,
            'dates' => $dates
        ];
        return view($this->root . 'create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'reference_no' => 'required',
            'received_items' => 'required'
        ]);

        $purchase = \App\Purchase::where('reference', $request->reference_no)->first();
        $receive = new \App\LpoReceive();
        $receive->purchase_id = $purchase->id;
        $receive->shelf_life = $request->shelf_life;
        $receive->exipre_date = $request->exipre_date;
        $receive->reference_no = $request->reference;
        $receive->vendor_invoice_no = $request->vendor_invoice_no;
        $receive->is_paid = false;
        $receive->user_id = Auth::id();

        if($receive->save()){
            $received_items = $request->received_items;
            $data = array(); //code by mostofa
            $vendor_data = array(); //code by mostofa
            foreach($received_items as $item){
                $lpo_item = new \App\LpoReceiveItem();
                $lpo_item->lpo_receive_id = $receive->id;
                $lpo_item->item_id = $item['id'];
                $lpo_item->cost = $item['cost'];
                $lpo_item->quantity = $item['quantity'];
                $lpo_item->discount = $item['discount'];
                $lpo_item->save();
                //coded by mostofa
                //item_id, location_id,op_type=1,quantity,end_point=3
                $push_data = [$lpo_item->item_id,$purchase->location_id,1,$lpo_item->quantity,3];
                $push_vendor_data=[$lpo_item->item_id,$purchase->vendor_id,1,$lpo_item->quantity,3];
                array_push($data, $push_data);
                array_push($vendor_data, $push_vendor_data);

            }

            
            $operation = \Helpers::callStockInOut($data, $vendor_data);

            if($operation['result'] > 0){
                return redirect()->back()->with('success', 'Added Successfully!');
            }else{
                return redirect()->back()->with('failed', $operation['msg']);
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }


    public function checkItemsExistance(Request $request){
        $purchase_id = $request->purchase_id;
        $item_id = $request->item_id;

        $check = PurchaseOrderWiseItem::where('purchase_id', $purchase_id)->where('item_id', $item_id)->get();

        if(count($check) <= 0){
            $status = 0;
        }else{
            $status = 1;
        }

        return $status;
    }


    public function itemInfoWithPurchase(Request $request){
        $purchase_id = $request->purchase_id;
        $item_id = $request->id;
        // dd($request);
        $info = Item::with(['prices','product_wise_vendor'])->where('barcode',$item_id)->first();
        $info['stock'] = 0;
        $info['last_7_day_sale'] = 0;
        $info['last_30_day_sale'] = 0;

        $check = PurchaseOrderWiseItem::where('purchase_id', $purchase_id)->where('item_id', $info->id)->first();
        if(!$check){
            $check['discount'] = 0;
            $check['quantity'] = 0;

        }

        $info['purchase'] = $check;

        return response()->json($info);
    }
}
