@extends('layouts/app')

@section('title', 'Dashboard - Vegetable Requisition Create')

@section('main_content')
        <main class="page-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h5>payment voucher (All Locations)</h5>
                                <div class="title-icons">
                                    <div class="dropdown show" style="display: inline-block;">
                                        <a class="dropdown-toggle" href="#" id="locationFilterDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-map-marker-alt"></i>
                                        </a>

                                        <div class="dropdown-menu" aria-labelledby="locationFilterDropdown">
                                            <a class="dropdown-item" href="#"><i class="fas fa-store-alt"></i> All Locations</a>
                                            <a class="dropdown-item" href="#"><i class="fas fa-store-alt"></i> Another action</a>
                                            <a class="dropdown-item" href="#"><i class="fas fa-store-alt"></i> Something else here</a>
                                      </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Select Date Range</label>
                                            <input type="text" name="lpo-range" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Vendor</label>
                                        <div class="form-group">
                                            <select class="vendor-select form-control">
                                                <option></option>
                                               <option>121212-siraj uddin</option>
                                               <option>454545-miraj uddin</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <table id="paymentVoucher-table" class="table table-striped table-bordered" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>PVCH Date</th>
                                            <th>Reference</th>
                                            <th>Vendor Code</th>
                                            <th>Total Invoices</th>
                                            <th>Total Locations</th>
                                            <th>Total Debit</th>
                                            <th>Other Debit</th>
                                            <th>Total Credit</th>
                                            <th>Other Credit</th>
                                            <th>Adj Advance</th>
                                            <th>Net Amount</th>
                                            <th>Payment Method</th>
                                            <th>Check No</th>
                                            <th>A/C No</th>
                                            <th>Action</th>
                                        </tr>
                                        <tr id="paymentVoucherfilterrow">
                                            <th>PVCH Date</th>
                                            <th>Reference</th>
                                            <th>Vendor Code</th>
                                            <th>Total Invoices</th>
                                            <th>Total Locations</th>
                                            <th>Total Debit</th>
                                            <th>Other Debit</th>
                                            <th>Total Credit</th>
                                            <th>Other Credit</th>
                                            <th>Adj Advance</th>
                                            <th>Net Amount</th>
                                            <th>Payment Method</th>
                                            <th>Check No</th>
                                            <th>A/C No</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>5/19/2020</td>
                                            <td>PVCH987501</td>
                                            <td>VND7894546</td>
                                            <td>12</td>
                                            <td>2</td>
                                            <td>750025</td>
                                            <td>0</td>
                                            <td>251</td>
                                            <td>0</td>
                                            <td>251</td>
                                            <td>7378</td>
                                            <td>Cash / Cheque / NA</td>
                                            <td>JB19800001547</td>
                                            <td>78974465445</td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn btn-secondary dropdown-toggle btn-action" type="button" id="itemActionDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Action
                                                    </button>
                                                    <div class="dropdown-menu" aria-labelledby="itemActionDropdown">
                                                        <a class="dropdown-item" href="#">View</a>
                                                        <a class="dropdown-item" href="#">Add Dr Note</a>
                                                        <a class="dropdown-item" href="#">Add Cr Note</a>
                                                        <a class="dropdown-item" href="#">Adjust Advance</a>
                                                        <a class="dropdown-item" href="#">Generate Summary</a>
                                                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#itemDelModal">Delete</a>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>5/19/2020</td>
                                            <td>PVCH987501</td>
                                            <td>VND7894546</td>
                                            <td>12</td>
                                            <td>2</td>
                                            <td>750025</td>
                                            <td>0</td>
                                            <td>251</td>
                                            <td>0</td>
                                            <td>251</td>
                                            <td>7378</td>
                                            <td>Cash / Cheque / NA</td>
                                            <td>JB19800001547</td>
                                            <td>78974465445</td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn btn-secondary dropdown-toggle btn-action" type="button" id="itemActionDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Action
                                                    </button>
                                                    <div class="dropdown-menu" aria-labelledby="itemActionDropdown">
                                                        <a class="dropdown-item" href="#">View</a>
                                                        <a class="dropdown-item" href="#">Add Dr Note</a>
                                                        <a class="dropdown-item" href="#">Add Cr Note</a>
                                                        <a class="dropdown-item" href="#">Adjust Advance</a>
                                                        <a class="dropdown-item" href="#">Generate Summary</a>
                                                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#itemDelModal">Delete</a>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>5/19/2020</td>
                                            <td>PVCH987501</td>
                                            <td>VND7894546</td>
                                            <td>12</td>
                                            <td>2</td>
                                            <td>750025</td>
                                            <td>0</td>
                                            <td>251</td>
                                            <td>0</td>
                                            <td>251</td>
                                            <td>7378</td>
                                            <td>Cash / Cheque / NA</td>
                                            <td>JB19800001547</td>
                                            <td>78974465445</td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn btn-secondary dropdown-toggle btn-action" type="button" id="itemActionDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Action
                                                    </button>
                                                    <div class="dropdown-menu" aria-labelledby="itemActionDropdown">
                                                        <a class="dropdown-item" href="#">View</a>
                                                        <a class="dropdown-item" href="#">Add Dr Note</a>
                                                        <a class="dropdown-item" href="#">Add Cr Note</a>
                                                        <a class="dropdown-item" href="#">Adjust Advance</a>
                                                        <a class="dropdown-item" href="#">Generate Summary</a>
                                                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#itemDelModal">Delete</a>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>5/19/2020</td>
                                            <td>PVCH987501</td>
                                            <td>VND7894546</td>
                                            <td>12</td>
                                            <td>2</td>
                                            <td>750025</td>
                                            <td>0</td>
                                            <td>251</td>
                                            <td>0</td>
                                            <td>251</td>
                                            <td>7378</td>
                                            <td>Cash / Cheque / NA</td>
                                            <td>JB19800001547</td>
                                            <td>78974465445</td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn btn-secondary dropdown-toggle btn-action" type="button" id="itemActionDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Action
                                                    </button>
                                                    <div class="dropdown-menu" aria-labelledby="itemActionDropdown">
                                                        <a class="dropdown-item" href="#">View</a>
                                                        <a class="dropdown-item" href="#">Add Dr Note</a>
                                                        <a class="dropdown-item" href="#">Add Cr Note</a>
                                                        <a class="dropdown-item" href="#">Adjust Advance</a>
                                                        <a class="dropdown-item" href="#">Generate Summary</a>
                                                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#itemDelModal">Delete</a>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>5/19/2020</td>
                                            <td>PVCH987501</td>
                                            <td>VND7894546</td>
                                            <td>12</td>
                                            <td>2</td>
                                            <td>750025</td>
                                            <td>0</td>
                                            <td>251</td>
                                            <td>0</td>
                                            <td>251</td>
                                            <td>7378</td>
                                            <td>Cash / Cheque / NA</td>
                                            <td>JB19800001547</td>
                                            <td>78974465445</td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn btn-secondary dropdown-toggle btn-action" type="button" id="itemActionDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Action
                                                    </button>
                                                    <div class="dropdown-menu" aria-labelledby="itemActionDropdown">
                                                        <a class="dropdown-item" href="#">View</a>
                                                        <a class="dropdown-item" href="#">Add Dr Note</a>
                                                        <a class="dropdown-item" href="#">Add Cr Note</a>
                                                        <a class="dropdown-item" href="#">Adjust Advance</a>
                                                        <a class="dropdown-item" href="#">Generate Summary</a>
                                                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#itemDelModal">Delete</a>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
      <!-- page-content" -->

        <!-- Item Delete Modal -->
        <div class="modal fade" id="itemDelModal" tabindex="-1" role="dialog" aria-labelledby="itemDelModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="itemDelModalLabel">Item Delete</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <p>Want to delete the item?</p>
                            <div>
                                <button type="button" class="btn btn-secondary mt-3" data-dismiss="modal">No</button>
                                <button type="button" class="btn btn-primary mt-3">Yes, Delete</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
@endsection

@push('js_script')

<script>

const app = new Vue({
    el: '#page-content',
    data: {
        test: 'testing',
    },
    methods:{

    },
    created: function(){

    }

});


    
</script>
@endpush