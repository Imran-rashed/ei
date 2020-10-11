@extends('layouts/app')

@section('title', 'Dashboard - Vegetable Requisition Create')

@section('main_content')

        <main class="page-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h5>vendor transaction (All Locations)</h5>
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
                                        <button type="buton" class="btn btn-primary btn-draft mt-3">make payment voucher</button>
                                    </div>
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
                                <table id="vtransaction-table" class="table table-striped table-bordered" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>Transaction Date</th>
                                            <th>Reference</th>
                                            <th>Vendor</th>
                                            <th>Vendor Invoice</th>
                                            <th>Debit</th>
                                            <th>Credit</th>
                                        </tr>
                                        <tr id="vtransactionfilterrow">
                                            <th>Transaction Date</th>
                                            <th>Reference</th>
                                            <th>Vendor</th>
                                            <th>Vendor Invoice</th>
                                            <th>Debit</th>
                                            <th>Credit</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>07/05/2020 02:17</td>
                                            <td>RQSN01000031</td>
                                            <td>125484-Jamil Hasan</td>
                                            <td>125485</td>
                                            <td>82,56,695</td>
                                            <td>1565656</td>
                                        </tr>
                                        <tr>
                                            <td>07/05/2020 02:17</td>
                                            <td>RQSN01000031</td>
                                            <td>125484-Jamil Hasan</td>
                                            <td>125485</td>
                                            <td>82,56,695</td>
                                            <td>1565656</td>
                                        </tr>
                                        <tr>
                                            <td>07/05/2020 02:17</td>
                                            <td>RQSN01000031</td>
                                            <td>125484-Jamil Hasan</td>
                                            <td>125485</td>
                                            <td>82,56,695</td>
                                            <td>1565656</td>
                                        </tr>
                                        <tr>
                                            <td>07/05/2020 02:17</td>
                                            <td>RQSN01000031</td>
                                            <td>125484-Jamil Hasan</td>
                                            <td>125485</td>
                                            <td>82,56,695</td>
                                            <td>1565656</td>
                                        </tr>
                                        <tr>
                                            <td>07/05/2020 02:17</td>
                                            <td>RQSN01000031</td>
                                            <td>125484-Jamil Hasan</td>
                                            <td>125485</td>
                                            <td>82,56,695</td>
                                            <td>1565656</td>
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