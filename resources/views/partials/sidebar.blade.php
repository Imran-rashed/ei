        <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
            <i class="fas fa-bars"></i>
        </a>
        
        <nav id="sidebar" class="sidebar-wrapper">
            <div class="sidebar-content">
                <div class="sidebar-brand">
                    <a href="dashboard.php">Aweer Supply Chain</a>
                    <div id="close-sidebar">
                        <i class="fas fa-chevron-left"></i>
                    </div>
                </div>
                <div class="sidebar-header">
                    <div class="logo">
                        <img class="img-responsive img-rounded" src="{{ asset('public/assets/img/logo-alt.png') }}" alt="User picture">
                    </div>
                </div>

                <div class="sidebar-menu">
                    <ul>
                        <li>
                            <a href="dashboard.php">
                                <i class="fa fa-tachometer-alt"></i>
                                <span>Dashboard</span>
                            </a>
                        </li>
                        
                        <li class="sidebar-dropdown inventory-cls">
                            <a href="#">
                                <i class="fa fa-shopping-cart"></i>
                                <span>Inventory</span>
                            </a>
                            <div class="sidebar-submenu inv-submenu">
                                <ul>
                                    <li>
                                        <a href="{{ route('items.index') }}">All Items</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('items.create') }}">Add Items</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('item.price.edit') }}">Price update</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('item.promotion.create') }}">Add Promotional Product</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('offer.create') }}">Set offer</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('adjustment.index') }}">All Adjustments</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('adjustment.create') }}">Add Adjustments</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('damage.index') }}">All Damage</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('damage.create') }}">Add Damage</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('item.anatomy.index') }}">Track Item</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('item.detail') }}">Track Barcode</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('stock_calculation.create') }}">Stock calculation</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('stock_calculation.index') }}">zone count history</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="sidebar-dropdown">
                            <a href="#">
                                <i class="fa fa-shopping-cart"></i>
                                <span>requisition</span>
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href="{{ route('vegetable_requisition.index') }}">Vegetable Requisition</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('dc_requisition.index') }}">DC Requisition</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('dsd_requisition.index') }}">DSD Requisition</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('vegetable_requisition.create') }}">Add requisition</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('requisition_summery') }}">Requisition summary</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="sidebar-dropdown">
                            <a href="#">
                                <i class="fas fa-cogs"></i>
                                <span>Purchase</span>
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href="{{ route('purchase.index') }}">purchase list</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('purchase.create') }}">purchase order</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="sidebar-dropdown">
                            <a href="#">
                                <i class="fas fa-cogs"></i>
                                <span>Transfer</span>
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href="{{ route('transfer.index') }}">transfer list</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('transfer.create') }}">add transfer</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="sidebar-dropdown">
                            <a href="#">
                                <i class="fas fa-cogs"></i>
                                <span>Receivings</span>
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href="{{ route('lpo_receive.index') }}">All LPO Receive</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('tnt_receive.index') }}">All TRN Receive</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('lpo_receive.create') }}" data-toggle="modal" data-target="#itemTrackModal">Add LPO Receive</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('tnt_receive.create') }}" data-toggle="modal" data-target="#shopTrackModal">Add TRN Receive</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="sidebar-dropdown">
                            <a href="#">
                                <i class="fas fa-cogs"></i>
                                <span>Return</span>
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href="{{ route('purchase_return.index') }}">purchase return list</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('transfer_return.index') }}">transfer return list</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('purchase_return.create') }}">add purchase return</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('transfer_return.create') }}">add transfer return</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
{{--                         <li class="sidebar-dropdown">
                            <a href="#">
                                <i class="fas fa-cogs"></i>
                                <span>Vendor</span>
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href="#">All Vendors</a>
                                    </li>
                                    <li>
                                        <a href="#">add Vendor</a>
                                    </li>
                                    <li>
                                        <a href="vendor-ledger.php">Vendor ledger</a>
                                    </li>
                                </ul>
                            </div>
                        </li> --}}
                        <li class="sidebar-dropdown">
                            <a href="#">
                                <i class="fas fa-cogs"></i>
                                <span>Accounts</span>
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href="{{ route('unpaid_grn') }}">unpaid GRN</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('paid_grn') }}">paid GRN</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('vendor_trasaction') }}">vendor transaction</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('payment_voucher') }}">payment voucher</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('payment_summary') }}">payment summary</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="sidebar-dropdown settings-cls">
                            <a href="#">
                                <i class="fas fa-cogs"></i>
                                <span>Settings</span>
                            </a>
                            <div class="sidebar-submenu settings-submenu">
                                <ul>
                                    <li>
                                        <a href="{{ route('department.index') }}">Department</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('unit.index') }}">Unit</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('stores.index') }}">store</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('category.index') }}">category</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('tax.create') }}">Tax</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('vendors.index') }}">Vendors</a>
                                    </li>
                                    <li>
                                        <a href="users.php">Users</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>

                </div>
                <!-- sidebar-menu  -->

            </div>
                    <ul class="navbar-profile">
                        <li>
                            <div class="dropdown">
                                <img class="avatar" src="https://img.faceyourmanga.com/mangatars/1/506/1506353/large_1715077.png" alt="logo">
                                <div class="dropdown-content">
                                    <ul>
                                        <li>
                                            <a href="profile.php">Profile</a>
                                        </li>
                                        <li>
                                            <a href="{{ route('logout') }}"
                                                onclick="event.preventDefault();
                                                document.getElementById('logout-form').submit();">
                                                {{ __('Logout') }}
                                            </a>
                                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                @csrf
                                            </form>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="quick-search">
                            <a href="#">
                                <img src="{{ asset('public/assets/img/quick-search.png') }}" alt="Quick Search"/>
                            </a>
                        </li>
                    </ul>
        </nav>
