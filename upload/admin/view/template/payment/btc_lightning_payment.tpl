<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-lightning-payment" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <p><?php echo $test_mode; ?></p>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-lightning-payment" class="form-horizontal">
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="btc_lightning_payment_node_ip"><span data-toggle="tooltip" title="<?php echo $help_lightning_node_ip; ?>"><?php echo $entry_lightning_node_ip; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="btc_lightning_payment_node_ip" value="<?php echo $btc_lightning_payment_node_ip; ?>" placeholder="<?php echo $entry_lightning_node_ip; ?>" id="btc_lightning_payment_node_ip" class="form-control" />
                <?php if ($error_ip) { ?>
                <div class="text-danger"><?php echo $error_ip; ?></div>
                <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="btc_lightning_payment_node_port"><span data-toggle="tooltip" title="<?php echo $help_lightning_node_port; ?>"><?php echo $entry_lightning_node_port; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="btc_lightning_payment_node_port" value="<?php echo $btc_lightning_payment_node_port; ?>" placeholder="<?php echo $entry_lightning_node_port; ?>" id="btc_lightning_payment_node_port" class="form-control" />
                <?php if ($error_port) { ?>
                <div class="text-danger"><?php echo $error_port; ?></div>
                <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="btc_lightning_payment_node_pubkey"><span data-toggle="tooltip" title="<?php echo $help_lightning_node_pubkey; ?>"><?php echo $entry_lightning_node_pubkey; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="btc_lightning_payment_node_pubkey" value="<?php echo $btc_lightning_payment_node_pubkey; ?>" placeholder="<?php echo $entry_lightning_node_pubkey; ?>" id="btc_lightning_payment_node_pubkey" class="form-control" />
                <?php if ($error_pubkey) { ?>
                <div class="text-danger"><?php echo $error_pubkey; ?></div>
                <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="btc_lightning_payment_invoice_macaroon_hex"><?php echo $entry_lightning_node_invoice_macaroon_hex; ?><span data-toggle="tooltip" title="<?php echo $help_lightning_node_invoice_macaroon_hex; ?>"><?php echo $entry_lightning_node_ip; ?></span></label>
            <div class="col-sm-10">
              <div class="input-group">
                <textarea name="btc_lightning_payment_invoice_macaroon_hex" rows="6" cols="60" placeholder="<?php echo $entry_lightning_node_invoice_macaroon_hex; ?>" id="btc_lightning_payment_invoice_macaroon_hex" class="form-control"><?php echo $btc_lightning_payment_invoice_macaroon_hex; ?></textarea>
                <?php if ($error_invoice_macaroon_hex) { ?>
                <div class="text-danger"><?php echo $error_invoice_macaroon_hex; ?></div>
                <?php } ?>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="btc_lightning_payment_total"><span data-toggle="tooltip" title="<?php echo $help_total; ?>"><?php echo $entry_total; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="btc_lightning_payment_total" value="<?php echo $btc_lightning_payment_total; ?>" placeholder="<?php echo $entry_total; ?>" id="btc_lightning_payment_total" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="btc_lightning_payment_add_percent"><span data-toggle="tooltip" title="<?php echo $help_add_percent; ?>"><?php echo $entry_add_percent; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="btc_lightning_payment_add_percent" value="<?php echo $btc_lightning_payment_add_percent; ?>" placeholder="<?php echo $entry_add_percent; ?>" id="btc_lightning_payment_add_percent" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-order-status"><?php echo $entry_order_status; ?></label>
            <div class="col-sm-10">
              <select name="btc_lightning_payment_order_status_id" id="input-order-status" class="form-control">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $btc_lightning_payment_order_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="btc_lightning_payment_status" id="input-status" class="form-control">
                <?php if ($btc_lightning_payment_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
            <div class="col-sm-10">
              <input type="text" name="btc_lightning_payment_sort_order" value="<?php echo $btc_lightning_payment_sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>