<?php
include_once('includes/functions.php');
date_default_timezone_set('Asia/Kolkata');
$function = new functions;
include_once('includes/custom-functions.php');
$fn = new custom_functions;

?>
<section class="content-header">
    <h1>Branchwise Stock reports</h1>
    <ol class="breadcrumb">
        <li><a href="home.php"><i class="fa fa-home"></i> Home</a></li>
    </ol>
    <hr />
</section>
<style>
    .btn {
        padding: 9px 12px;
        line-height: 0.42857143;
    }
</style>

<!-- search form -->
<section class="content">
    <!-- Main row -->
    <?php if ($permissions['reports']['read'] == 1) { ?>
        <div class="row">
            <div class="col-md-12">

                <div class="box box-info">
                    <div class="box-header with-border">
                         <form method="POST" id="filter_form" name="filter_form">
                            <div class="form-group">
                                <div class="col-md-6">
								 <label for="from">Select Branch </label>
                                 <?php 
									$db->sql("SET NAMES 'utf8'");
									$sql = "SELECT * FROM `Branch_Register` ORDER BY BranchID DESC";
									$db->sql($sql);
									$branches = $db->getResult();
								 ?>
									<select id='branch_id' name="branch_id" class='form-control' required <?php if($role==="POS"){  echo " readonly  ";} ?> >
									<option value='All' style="display:none;" selected>Select Branch</option>
									<?php foreach ($branches as $branch) { ?>
										<option value='<?= $branch['BranchID'] ;?>' <?php if($role==="POS"){ if($branch['BranchID']===$_SESSION['BranchIDLog']){ echo " selected  ";}else { echo 'style="display:none;"';}} ?>><?= $branch['BranchName'] . " - " . $branch['Address'] ?></option>
									<?php } ?>
									<option value='10000' <?php if($role==="POS"){ if($branch['BranchID']===$_SESSION['BranchIDLog']){ echo " selected  ";}else { echo 'style="display:none;"';}} ?>>Main Branch</option>
									<option value='All' <?php if($role==="POS"){ if($branch['BranchID']===$_SESSION['BranchIDLog']){ echo " selected  ";}else { echo 'style="display:none;"';}} ?>>All Branch</option>
									</select>
									
                                </div>
                               
                            </div>
                        </form>
                    </div>

                    <div class="box-body">
						<div class="box-body">
							<table class="table no-margin" data-toggle="table" id="order_list" data-url="api-firebase/get-bootstrap-table-data.php?table=branchwise_stock_report" data-page-list="[5, 10, 20, 50, 100, 200]" data-show-columns="true" data-show-refresh="true" data-side-pagination="server" data-pagination="true" data-search="true" data-trim-on-search="false" data-sort-name="id" data-sort-order="desc" data-query-params="queryParams_1" data-show-footer="true" data-footer-style="footerStyle">
                                <thead>
                                    <tr>
                                        <th data-field="id" data-sortable='true'>S.No.</th>
                                        <th data-field="product_id" data-sortable='true' data-visible="true">Product Id</th>
                                        <th data-field="product_name" data-sortable='true'>Product Name</th>
                                        <th data-field="type" data-sortable='true' data-visible="false" >Type</th>
                                        <th data-field="measurement" data-sortable='true' data-visible="false">Measurement</th>
                                        <th data-field="measurement_unit_id" data-sortable='true' data-visible="false" >Measurement Unit Id</th>
                                        <th data-field="price" data-sortable='true' >Price <?= $settings['currency'] ?></th>
                                        <th data-field="discounted_price" data-sortable='false'>Discounted Price <?= $settings['currency'] ?></th>
                                        <th data-field="serve_for" data-sortable='true' data-visible="true">Serve For</th>
                                        <th data-field="stock" data-sortable='true' data-visible="false">Stock</th>
                                        <th data-field="stock_unit_id" data-sortable='true' data-visible="true">Stock Unit Id</th>
                                        <th data-field="branch_id" data-sortable='true' data-visible="true">Branch ID</th>
										<th data-field="branch_name" data-sortable='true' data-visible="true">Branch Name</th>
                                        <th data-field="from_source" data-sortable='true' >From Source</th>
                                    </tr>
                                </thead>
                            </table>
							
						</div>
                    </div>
                </div>
            </div>
        </div>
    <?php } else { ?>
        <div class="alert alert-danger">You have no permission to view sales reports.</div>
    <?php } ?>
</section>
<!-- /.content -->
<script>
    $(document).ready(function() {
       
		$('#branch_id').on('change', function() {
            $('#order_list').bootstrapTable('refresh');
        });
    });

    function queryParams_1(p) {
        return {
			"branch_id": $('#branch_id').val(),
            limit: p.limit,
            sort: p.sort,
            order: p.order,
            offset: p.offset,
            search: p.search
        };
    }

</script>
<?php
$db->disconnect();
?>

<?php unset($_SESSION['date_name']); ?>