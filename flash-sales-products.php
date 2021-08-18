<?php
// start session
session_start();

// set time for session timeout
$currentTime = time() + 25200;
$expired = 3600;

// if session not set go to login page
if (!isset($_SESSION['user'])) {
    header("location:index.php");
}

// if current time is more than session timeout back to login page
if ($currentTime > $_SESSION['timeout']) {
    session_destroy();
    header("location:index.php");
}

// destroy previous session timeout and create new one
unset($_SESSION['timeout']);
$_SESSION['timeout'] = $currentTime + $expired;
?>
<?php include "header.php"; ?>
<html>

<head>
    <title>Flash Sales Products | <?= $settings['app_name'] ?> - Dashboard</title>
    <style type="text/css">
        .container {
            width: 950px;
            margin: 0 auto;
            padding: 0;
        }

        h1 {
            font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
            font-size: 24px;
            color: #777;
        }

        h1 .send_btn {
            background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#0096FF), to(#005DFF));
            background: -webkit-linear-gradient(0% 0%, 0% 100%, from(#0096FF), to(#005DFF));
            background: -moz-linear-gradient(center top, #0096FF, #005DFF);
            background: linear-gradient(#0096FF, #005DFF);
            text-shadow: 0 1px 0 rgba(0, 0, 0, 0.3);
            border-radius: 3px;
            color: #fff;
            padding: 3px;
        }

        div.clear {
            clear: both;
        }

        ul.devices {
            margin: 0;
            padding: 0;
        }

        ul.devices li {
            float: left;
            list-style: none;
            border: 1px solid #dedede;
            padding: 10px;
            margin: 0 15px 25px 0;
            border-radius: 3px;
            -webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.35);
            -moz-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.35);
            box-shadow: 0 1px 5px rgba(0, 0, 0, 0.35);
            font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
            color: #555;
            width: 100%;
            height: 150px;
            background-color: #ffffff;
        }

        ul.devices li label,
        ul.devices li span {
            font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
            font-size: 12px;
            font-style: normal;
            font-variant: normal;
            font-weight: bold;
            color: #393939;
            display: block;
            float: left;
        }

        ul.devices li label {
            height: 25px;
            width: 50px;
        }

        ul.devices li textarea {
            float: left;
            resize: none;
        }

        ul.devices li .send_btn {
            background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#0096FF), to(#005DFF));
            background: -webkit-linear-gradient(0% 0%, 0% 100%, from(#0096FF), to(#005DFF));
            background: -moz-linear-gradient(center top, #0096FF, #005DFF);
            background: linear-gradient(#0096FF, #005DFF);
            text-shadow: 0 1px 0 rgba(0, 0, 0, 0.3);
            border-radius: 7px;
            color: #fff;
            padding: 4px 24px;
        }

        a {
            text-decoration: none;
            color: rgb(245, 134, 52);
        }
    </style>
</head>

<body>
    <div class="content-wrapper">
        <section class="content-header">
            <h1>Flash Sales Products</h1>
            <ol class="breadcrumb">
                <li><a href="home.php"><i class="fa fa-home"></i> Home</a></li>
            </ol>
            <ol class="breadcrumb">
                <button type="button" class="btn btn-block btn-primary" data-toggle="modal" data-target="#add_new_products"><i class="fa fa-plus-square"></i> Add New Flash Sales Products</button>
            </ol>
            <hr />
        </section>
        <?php
        include_once('includes/functions.php');
        ?>
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <?php if ($permissions['featured']['create'] == 0) { ?>
                        <div class="alert alert-danger" id="create">You have no permission to create flash sales products.</div>
                    <?php } ?>
                    <?php if ($permissions['featured']['update'] == 0) { ?>
                        <div class="alert alert-danger" id="update" style="display: none;">You have no permission to update flash sales products.</div>
                    <?php } ?>
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Create / Manage flash sales products</h3>
                        </div>
                        <form method="post">
                            <div class="box-body">
                                <div class="form-group">
                                    <label class="control-label " for="flash_sales_id">Flash Sales</label>
                                    <select id='flash_sales_id' name="flash_sales_id" class='form-control' required="">
                                        <?php
                                        $sql = "SELECT * FROM `flash_sales` ORDER BY id DESC";
                                        $db->sql($sql);
                                        $res = $db->getResult();
                                        if ($res) { ?>
                                            <option value='0'>Select Flash Sales</option>
                                            <?php foreach ($res as $row) { ?>
                                                <option value='<?= $row['id'] ?>'><?= $row['title'] ?></option>
                                        <?php }
                                        } ?>
                                    </select>
                                </div>
                            </div>
                        </form>

                        <div class="row">
                            <div class="col-md-12">
                                <?php if ($permissions['featured']['read'] == 1) { ?>
                                    <table id="flash_sales_table" class="table table-hover" data-toggle="table" data-url="api-firebase/get-bootstrap-table-data.php?table=flash_sales_products" data-page-list="[5, 10, 20, 50, 100, 200]" data-show-refresh="true" data-show-columns="true" data-side-pagination="server" data-pagination="true" data-search="true" data-trim-on-search="false" data-sort-name="id" data-sort-order="desc" data-query-params="queryParams">
                                        <thead>
                                            <tr>
                                                <th data-field="id" data-sortable="true">ID</th>
                                                <th data-field="flash_sales_id" data-sortable="true" data-visible="false">Flash Sales ID</th>
                                                <th data-field="flash_sales_name" data-sortable="true">Flash Sales Name</th>
                                                <th data-field="product_id" data-sortable="true" data-visible="false">Product Id</th>
                                                <th data-field="product_name" data-sortable="true">Product Name</th>
                                                <th data-field="product_variant_id" data-sortable="true" data-visible="false">Variant Id</th>
                                                <th data-field="Measurement" data-sortable="true">Measurement</th>
                                                <th data-field="price" data-sortable="true">Price</th>
                                                <th data-field="discounted_price" data-sortable="true">Discounted Price</th>
                                                <th data-field="start_date" data-sortable="true">Start Date</th>
                                                <th data-field="end_date" data-sortable="true">End Date</th>
                                                <th data-field="status" data-sortable="true">Status</th>
                                                <th data-field="operate" data-events="actionEvents">Action</th>
                                            </tr>
                                        </thead>
                                    </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="modal fade" id="add_new_products" role="dialog">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title"> Add New Flash Sales Products</h4>
                            </div>
                            <div id="result" style="display: none;"></div>
                            <div class=" row">
                                <div class="" style="padding:7px 5px 5px 85%;">
                                    <label>Variation</label>
                                    <a id="add_variation" title="Add variation of product" style="cursor: pointer; color:#3c8dbc;"><i class="fa fa-plus-square-o fa-2x"></i></a>
                                </div>
                            </div>
                            <div class="modal-body">
                                <form id="add_flash_sales_form" method="post" action="api-firebase/flash-sales.php" enctype="multipart/form-data">
                                    <?php $sql = "SELECT * FROM `products` ORDER BY id DESC";
                                    $db->sql($sql);
                                    $products = $db->getResult();
                                    ?>
                                    <div class="">
                                        <div class="container-fluid" id="products" style="border: 1px solid black">
                                            <div class="product">
                                                <input type='hidden' name='accesskey' class='accesskey' value='90336' />
                                                <input type='hidden' name='add_flash_sales_products' id='add_flash_sales_products' value='1' />
                                                <input type='hidden' name='flash_sales_products_id' id='flash_sales_products_id' value='' required="" />
                                                <div class="row">
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label" for="product_id">Products</label>
                                                        <select id="product_id" name="product_id[]" class="form-control products_list" required="">
                                                            <option value=''>Select product</option>
                                                            <?php foreach ($products as $row) { ?>
                                                                <option value='<?= $row['id'] ?>'><?= $row['slug'] ?></option>
                                                            <?php } ?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label " for="product_variant_id">Products Variants</label>
                                                        <select id="product_variant_id" name="product_variant_id[]" class='form-control product_variants' required="">
                                                            <option value="">--Select Product Variants--</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-md-6">
                                                        <label for="price">Price (<?= $settings['currency'] ?>):</label> <i class="text-danger asterik">*</i>
                                                        <input type="number" step="any" min="0" class="form-control" name="price[]" id="price" required="">
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="discounted_price">Discounted Price (<?= $settings['currency'] ?>):</label> <i class="text-danger asterik">*</i>
                                                        <input type="number" step="any" min="0" class="form-control" name="discounted_price[]" id="discounted_price" required="">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-md-6">
                                                        <label for="start_date">Start Date :</label>
                                                        <div class="input-group date dtpickerdemo">
                                                            <input type="text" class="form-control" name="start_date[]" id="start_date" required="">
                                                            <span class="input-group-addon">
                                                                <span class="glyphicon glyphicon-calendar"></span>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="end_date">End Date :</label>
                                                        <div class="input-group date dtpickerdemo">
                                                            <input type="text" class="form-control" name="end_date[]" id="end_date" required="">
                                                            <span class="input-group-addon">
                                                                <span class="glyphicon glyphicon-calendar"></span>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="variations" style="margin-top: 10px;"></div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn-primary btn" id="submit_btn">Create</button>
                                        <button type="reset" class="btn-default btn" id="edit_reset_btn">Reset</button>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="container-fluid">
                <div class="modal fade" id="edit_flash_sales_products" role="dialog">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title"> Edit Flash Sales Products</h4>
                            </div>
                            <div id="results" style="display: none;"></div>
                            <div class="modal-body">
                                <form id="edit_flash_sales_form" method="post" action="api-firebase/flash-sales.php" enctype="multipart/form-data">
                                    <?php $sql = "SELECT * FROM `products` ORDER BY id DESC";
                                    $db->sql($sql);
                                    $products = $db->getResult(); ?>
                                    <div class="" style="border: 1px solid black">
                                        <div class="container-fluid" id="products">
                                            <div class="product">
                                                <input type='hidden' name='accesskey' class='accesskey' value='90336' />
                                                <input type='hidden' name='edit_flash_sales_products' id='edit_flash_sales_products' value='1' />
                                                <input type='hidden' name='edit_flash_sales_products_id' id='edit_flash_sales_products_id' value='' />
                                                <input type='hidden' name='update_flash_sales_id' id='update_flash_sales_id' value='' />
                                                <div class="row">
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label" for="product_id">Products</label>
                                                        <select id="edit_product_id" name="product_id[]" class="form-control products_list" required="">
                                                            <option value=''>Select product</option>
                                                            <?php foreach ($products as $row) { ?>
                                                                <option value='<?= $row['id'] ?>'><?= $row['slug'] ?></option>
                                                            <?php } ?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label class="control-label " for="product_variant_id">Products Variants</label>
                                                        <select id="edit_product_variant_id" name="product_variant_id[]" class='form-control product_variants' required="">
                                                            <option value="">--Select Product Variants--</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-md-6">
                                                        <label for="price">Price (<?= $settings['currency'] ?>):</label> <i class="text-danger asterik">*</i>
                                                        <input type="number" step="any" min="0" class="form-control variant_price" name="price[]" id="edit_price" required="">
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="discounted_price">Discounted Price (<?= $settings['currency'] ?>):</label> <i class="text-danger asterik">*</i>
                                                        <input type="number" step="any" min="0" class="form-control" name="discounted_price[]" id="edit_discounted_price" required="">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-md-6">
                                                        <label for="start_date">Start Date :</label>
                                                        <div class="input-group date dtpickerdemo">
                                                            <input type="text" class="form-control" name="start_date[]" id="edit_start_date" required="">
                                                            <span class="input-group-addon">
                                                                <span class="glyphicon glyphicon-calendar"></span>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="end_date">End Date :</label>
                                                        <div class="input-group date dtpickerdemo">
                                                            <input type="text" class="form-control" name="end_date[]" id="edit_end_date" required="">
                                                            <span class="input-group-addon">
                                                                <span class="glyphicon glyphicon-calendar"></span>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label ">Status :</label>
                                                    <div id="product_status" class="btn-group">
                                                        <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                            <input type="radio" class="status" name="status" value="0"> Deactive
                                                        </label>
                                                        <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                            <input type="radio" class="status" name="status" value="1"> Active
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn-primary btn" id="edit_btn">Update</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php } else { ?>
            <div class="alert alert-danger">You have no permission to view Flash Sales.</div>
        <?php } ?>
    </div>
    </section>
    </div>

    <script src="plugins/datetimepicker/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/jquery.validate.min.js"></script>
    <script>
        function queryParams(p) {
            return {
                "flash_sales_id": $('#flash_sales_id').val(),
                limit: p.limit,
                sort: p.sort,
                order: p.order,
                offset: p.offset,
                search: p.search
            };
        }
    </script>
    <script type="text/javascript">
        $(function() {
            $('.dtpickerdemo').datetimepicker({
                format: 'YYYY-MM-DD hh:mm:ss',
            });
        });
    </script>
    <script>
        $('#flash_sales_id').on('change', function() {
            id = $('#flash_sales_id').val();
            $('#flash_sales_products_id').val(id);
            $('#update_flash_sales_id').val(id);
            $('#flash_sales_table').bootstrapTable('refresh');
        });

        $("#add_flash_sales_form").validate({
            rules: {
                flash_sales_id: "required",
                product_id: "required",
                product_variant_id: "required",
                price: "required",
                discounted_price: {
                    lessThanEqual: "#price"
                },
                start_date: "required",
                end_date: "required",
            }
        });

        $("#edit_flash_sales_form").validate({
            rules: {
                flash_sales_id: "required",
                product_id: "required",
                product_variant_id: "required",
                price: "required",
                discounted_price: {
                    lessThanEqual: "#price"
                },
                start_date: "required",
                end_date: "required",
            }
        });

        $('#add_flash_sales_form').on('submit', function(e) {
            e.preventDefault();
            var formData = new FormData(this);
            id = $('#flash_sales_id').val();
            if ($("#add_flash_sales_form").validate().form()) {
                $.ajax({
                    type: 'POST',
                    url: $(this).attr('action'),
                    data: formData,
                    dataType: 'json',
                    beforeSend: function() {
                        $('#submit_btn').val('Please wait..').attr('disabled', true);
                    },
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function(result) {
                        $('#result').html(result.message);
                        $('#result').show().delay(6000).fadeOut();
                        $('#submit_btn').attr('disabled', false);
                        $('#add_flash_sales_products').val(1);
                        $('#flash_sales_products_id').val(id);
                        $('#submit_btn').val('Create');
                        $('#flash_sales_table').bootstrapTable('refresh');
                    }
                });
            }
        });
        $('#edit_flash_sales_form').on('submit', function(e) {
            e.preventDefault();
            id = $('#flash_sales_id').val();
            var formData = new FormData(this);
            if ($("#edit_flash_sales_form").validate().form()) {
                $.ajax({
                    type: 'POST',
                    url: $(this).attr('action'),
                    data: formData,
                    dataType: 'json',
                    beforeSend: function() {
                        $('#edit_btn').val('Please wait..').attr('disabled', true);
                    },
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function(result) {
                        $('#results').html(result.message);
                        $('#results').show().delay(6000).fadeOut();
                        $('#edit_btn').attr('disabled', false);
                        $('#edit_flash_sales_products').val(1);
                        $('#edit_flash_sales_products_id').val('');
                        $('#update_flash_sales_id').val(id);
                        $('#flash_sales_id').val();
                        $('#edit_btn').val('Update');
                        $('#flash_sales_table').bootstrapTable('refresh');
                    }
                });
            }
        });

        $('#btnClear').on('click', function() {
            for (instance in CKEDITOR.instances) {
                CKEDITOR.instances[instance].setData('');
            }
        });
    </script>
    <script>
        window.actionEvents = {
            'click .edit_flash_sales_products': function(e, value, row, index) {
                if (row.status == 0) {
                    $("input[name=status][value=0]").prop('checked', true);
                } else {
                    $("input[name=status][value=1]").prop('checked', true);
                }

                $('#add_flash_sales_products').val('');
                $('#edit_flash_sales_products').val(1);
                $('#edit_flash_sales_products_id').val(row.id);
                $('#edit_product_id').val(row.product_id);
                $('#edit_product_variant_id').val(row.product_variant_id);
                $('#edit_price').val(row.price);
                $('#edit_discounted_price').val(row.discounted_price);
                $('#edit_start_date').val(row.start_date);
                $('#edit_end_date').val(row.end_date);
                $('#status').val(row.status);
                $('#edit_btn').val('Update');

                $.ajax({
                    type: 'POST',
                    url: "api-firebase/flash-sales.php",
                    data: 'accesskey=90336&get_variants_of_products=1&product_id=' + row.product_id,
                    beforeSend: function() {
                        $('#product_variant_id').html('<option>Please wait..</option>');
                    },
                    success: function(result) {
                        $('#product_variant_id').html(result);
                        if (row.product_variant_id != '') {
                            $('#product_variant_id').val(row.product_variant_id);
                        }
                        if (row.product_variant_id == 0) {
                            $('#product_variant_id').html('<option>Select Product Variants</option>');
                            $('#product_variant_id').html(result);
                        }
                    }
                });

                $.ajax({
                    type: 'POST',
                    url: "api-firebase/flash-sales.php",
                    data: 'accesskey=90336&get_variants_of_products=1&product_id=' + row.product_id,
                    beforeSend: function() {
                        $('#edit_product_variant_id').html('<option>Please wait..</option>');
                    },
                    success: function(result) {
                        $('#edit_product_variant_id').html(result);
                        if (row.product_variant_id != '') {
                            $('#edit_product_variant_id').val(row.product_variant_id);
                        }
                        if (row.product_variant_id == 0) {
                            $('#edit_product_variant_id').html('<option>Select Product Variants</option>');
                            $('#edit_product_variant_id').html(result);
                        }
                    }
                });

            }
        };
    </script>
    <script>
        $(document).on('click', '#reset_btn', function() {
            $('#add_flash_sales_products').val(1);
            $('#edit_flash_sales_products').val('');
            $('#flash_sales_products_id').val('');
            $('#submit_btn').val('Create');
        });
    </script>
    <script>
        $(document).on('click', '.delete-flash-sales-products', function() {
            if (confirm('Are you sure?')) {
                id = $(this).data("id");
                $.ajax({
                    url: 'api-firebase/flash-sales.php',
                    type: "get",
                    data: 'accesskey=90336&id=' + id + '&type=delete-flash-sales-products',
                    success: function(result) {
                        if (result == 1) {
                            $('#flash_sales_table').bootstrapTable('refresh');
                        }
                        if (result == 2) {
                            alert('You have no permission to delete flash sales products');
                        }
                        if (result == 0) {
                            alert('Error! flash sales products could not be deleted');
                        }
                    }
                });
            }
        });
    </script>

    <script>
        $('#add_variation').on('click', function() {
            html = '<div class=""><div class="container-fluid product" style="border: 1px solid black">' +
                '<div class="" style="padding: 5px 2px 3px 97%;"><a class="remove_variation text-danger" title="Remove variation of product" style="cursor: pointer;"><i class="fa fa-times fa-2x"></i></a></div>' +
                '<div class="row"><div class="col-md-6"><div class="form-group">' +
                '<label class="control-label " for="product_id">Products</label>' +
                '<select id="product_id" name="product_id[]" class="form-control products_list" required="">' +
                '<option value="">Select product</option>' +
                '<?php foreach ($products as $row) {
                        echo "<option value=" . $row['id'] . ">" . $row['slug'] . "</option>";
                    } ?> ' +
                '</select></div></div>' +

                '<div class="col-md-6"><div class="form-group">' +
                '<label class="control-label " for="product_variant_id">Products Variants</label>' +
                '<select id="product_variant_id" name="product_variant_id[]" class="form-control product_variants" required="">' +
                '<option value="">--Select Product Variants--</option></select></div></div>' +
                '</div>' +

                '<div class="row"><div class="form-group">' +
                '<div class="col-md-6"><div class="form-group"><label for="price">Price  (<?= $settings['currency'] ?>):</label> <i class="text-danger asterik">*</i>' +
                '<input type="number" step="any" min="0" class="form-control variant_price" name="price[]" required=""></div></div>' +

                '<div class="col-md-6"><div class="form-group"><label for="discounted_price">Discounted Price(<?= $settings['currency'] ?>):</label>' +
                '<input type="number" step="any"  min="0" class="form-control" name="discounted_price[]" required=""/></div></div>' +

                '</div>' +

                '<div class="form-group col-md-6"><label for="start_date">Start Date :</label><div class="input-group date dtpickerdemo1">' +
                '<input type="text" class="form-control" name="start_date[]" id="start_date" required=""><span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span></div></div>' +

                '<div class="form-group col-md-6"><label for="end_date">End Date :</label><div class="input-group date dtpickerdemo1">' +
                '<input type="text" class="form-control" name="end_date[]" id="end_date" required=""><span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span></div></div>' +

                '</div></div></div>';
            $('#variations').append(html);
        });

        $(document).on('click', '.remove_variation', function() {
            $(this).closest('.product').remove();
        });

        $(document).on('change', '.products_list', function(e) {
            var product_id = $(this).val();
            $.ajax({
                url: "public/db-operation.php",
                data: "product_id=" + product_id + "&change_product=1",
                method: "POST",
                success: function(data) {
                    $(e.target).closest(".row").find('select.product_variants').html("<option value=''>---Select Product Variant---</option>" + data);
                }
            });
        });

        $(document).on('change', '.product_variants', function(e) {
            var product_variant_id = $(this).val();
            $.ajax({
                url: "public/db-operation.php",
                data: "product_variant_id=" + product_variant_id + "&change_price=1",
                method: "POST",
                success: function(data) {
                    $('#price').val(data);
                }
            });
        });

        $(document).on('change', '.product_variants', function(e) {
            var product_variant_id = $(this).val();
            $.ajax({
                url: "public/db-operation.php",
                data: "product_variant_id=" + product_variant_id + "&change_discounted_price=1",
                method: "POST",
                success: function(data) {
                    $('#discounted_price').val(data);
                }
            });
        });

        $(document).on('change', '.product_variants', function(e) {
            var product_variant_id = $(this).val();
            $.ajax({
                url: "public/db-operation.php",
                data: "product_variant_id=" + product_variant_id + "&change_price=1",
                method: "POST",
                success: function(data) {
                    $('#edit_price').val(data);
                }
            });
        });

        $(document).on('change', '.product_variants', function(e) {
            var product_variant_id = $(this).val();
            $.ajax({
                url: "public/db-operation.php",
                data: "product_variant_id=" + product_variant_id + "&change_discounted_price=1",
                method: "POST",
                success: function(data) {
                    $('#edit_discounted_price').val(data);
                }
            });
        });
        $(document).on('click', '.dtpickerdemo1', function(e) {
            $('.dtpickerdemo1').datetimepicker({
                format: 'YYYY-MM-DD hh:mm:ss',
            });
        });
    </script>
</body>

</html>
<?php include "footer.php"; ?>