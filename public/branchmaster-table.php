<?php
    include_once('includes/functions.php'); 
    ?>
<section class="content-header">
    <h1>Branch Master /<small><a href="home.php"><i class="fa fa-home"></i> Home</a></small></h1>
    <ol class="breadcrumb">
        <a class="btn btn-block btn-default" href="add-branchmaster.php"><i class="fa fa-plus-square"></i> Add New Branch</a>
    </ol>
</section>
<?php
    if($permissions['subcategories']['read']==1) { 
?>
<!-- Main content -->
<section class="content">
    <!-- Main row -->
    <div class="row">
        <!-- Left col -->
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                        <h3 class="box-title">Branch Master List</h3>
                </div>
                <div class="box-body table-responsive">
                    <table class="table table-hover" data-toggle="table" 
						data-url="api-firebase/get-bootstrap-table-data.php?table=branchmaster"
						data-page-list="[5, 10, 20, 50, 100, 200]"
						data-show-refresh="true" data-show-columns="true"
						data-side-pagination="server" data-pagination="true"
						data-search="true" data-trim-on-search="false"
						data-sort-name="id" data-sort-order="desc">
                        <thead>
                        <tr>
                            <th data-field="BranchID" data-sortable="true">Branch ID</th>
                            <th data-field="BranchName" data-sortable="true">Branch Name</th>
                            <th data-field="Address" data-sortable="true">Address</th>
                            <th data-field="City" data-sortable="true">City</th>
                            <th data-field="ContactPerson">Contact Person</th>
                            <th data-field="ContactNumber">Contact Number</th>
                            <th data-field="Type">Type</th>
                            <th data-field="operate">Action</th>
                        </tr>
						</thead>
                    </table>
                </div>
            </div>
        </div>
        <div class="separator"> </div>
    </div>
</section>
<?php } else { ?>
<div class="alert alert-danger topmargin-sm" style="margin-top: 20px;">You have no permission to view subcategories.</div>
<?php } ?>

<?php unset($_SESSION['date_name']); ?>
