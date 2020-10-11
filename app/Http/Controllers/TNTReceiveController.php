<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TrnReceive;
use Auth;
use DataTables;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class TNTReceiveController extends Controller
{
    private $root  = 'receive/tnt/';
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

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $reference_no = $request->reference_no;
        $shop_code = $request->shop_code;

        $data = [
            'reference_no' => $reference_no,
            'shop_code' => $shop_code
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
            'shop_code' => 'required',
            'reference_no' => 'required',
            'unit_cost' => 'required',
            'quantity' => 'required',
            'item_id' => 'required',
            'item_code' => 'required'
        ]);
        $tnt = new TrnReceive();

        $ref = $request->reference_no;

        $transfer = Transfer::where('reference', $ref)->first();
        $tnt->transfer_id = $transfer->id;
        $tnt->shop_code = $request->shop_code;
        $tnt->item_code = $request->item_code;
        $tnt->unit_cost = $request->unit_cost;
        $tnt->quantity = $request->quantity;
        $tnt->item_id = $request->item_id;
        $tnt->user_id = Auth::id();

        if($tnt->save()){
            return redirect()->back()->with('success', 'Added Successfully!');            
        }

    }


    public function tntReceiveDatatableData(Request $request){
       // $users = PriceUpdateHistory::all();
        $store_id = $request->store_id;
        $priceUpd = TrnReceive::with(['item']);
        if ($store_id != 0) {
            $priceUpd = $priceUpd->where('shop_code', $store_id);
        }
    
        $priceUpd = $priceUpd->get();

        return Datatables::of($priceUpd)
                ->addIndexColumn()
                ->editColumn('item', function(TrnReceive $product){
                    return $product->item->name;
                })
                ->editColumn('received_by', function(TrnReceive $product){
                    return $product->user->name;
                })
                ->editColumn('status', function(TrnReceive $product){
                    if($product->status == 0){
                        return '<span class="badge badge-success">Pending</span>';
                    }else{
                        return '<span class="badge badge-error">Sent</span>';
                    }
                })
                ->editColumn('total_cost', function(TrnReceive $product){
                    return $product->unit_cost * $product->quantity;
                })
                ->editColumn('action', function(TrnReceive $product){
                    return '<a href="/item/price_update/'.$product->id.'/edit"><i class="far fa-edit"></i></a>
                        <a href="#" data-toggle="modal" onclick="deleteData('.$product->id.')"><i class="far fa-trash-alt"></i></a>';
                })
                 ->rawColumns(['status', 'action'])
                ->make();
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
}
