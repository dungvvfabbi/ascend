<?php /* Smarty version Smarty-3.1.15, created on 2021-03-03 10:50:07
         compiled from "/opt/lampp/htdocs/cakephp/app/View/CallList/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:39612287603eeb4f0e7507-42438455%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '44f71ce24fb4fa44e364a1c54169cd8387222090' => 
    array (
      0 => '/opt/lampp/htdocs/cakephp/app/View/CallList/index.tpl',
      1 => 1614576995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '39612287603eeb4f0e7507-42438455',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'max_tel_param' => 0,
    'headers' => 0,
    'this' => 0,
    'mode' => 0,
    'del_count' => 0,
    'enable_create' => 0,
    'enable_delete' => 0,
    'enable_download' => 0,
    'view' => 0,
    'sortColumn' => 0,
    'sortType' => 0,
    'page' => 0,
    'msg_error' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_603eeb4f13c6c7_46365240',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_603eeb4f13c6c7_46365240')) {function content_603eeb4f13c6c7_46365240($_smarty_tpl) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'calllist/calllist'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.validate'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/calllist/calllist','charset'=>"UTF-8"),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/calllist/call_list_validate','charset'=>"UTF-8"),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'pager'),$_smarty_tpl);?>



<script>
	var max_tel_param = <?php echo $_smarty_tpl->tpl_vars['max_tel_param']->value['M99SystemParameter']['parameter_value'];?>
;
	/* 20160225 Edit by Giang : #6532 - refactor code - begin */
	const TITLE_TEL_NUMBER = "<?php echo $_smarty_tpl->tpl_vars['headers']->value['tel_no'];?>
";
	const TITLE_CUSTOMER_NAME = "<?php echo $_smarty_tpl->tpl_vars['headers']->value['customer_name'];?>
";
	const TITLE_ADDRESS = "<?php echo $_smarty_tpl->tpl_vars['headers']->value['address'];?>
";
	const TITLE_BIRTHDAY = "<?php echo $_smarty_tpl->tpl_vars['headers']->value['birthday'];?>
";
	const TITLE_FEE = "<?php echo $_smarty_tpl->tpl_vars['headers']->value['money'];?>
";
	/* 20160225 Edit by Giang : #6532 - refactor code - begin */
</script>

<div class="col-lg-10 col-sm-10" id="content">
<!-- content starts -->

	<!--<div class="alert alert-info">?????????????????????????????????????????????????????????????????????URL??? <a href="http://datatables.net/" target="_blank">http://datatables.net/</a></div>-->
	<!-- <?php echo $_smarty_tpl->tpl_vars['this']->value->Session->flash();?>
 -->
	<?php if ($_smarty_tpl->tpl_vars['mode']->value=="save") {?>
		<div class="alert alert-success fade in">
			<button type="button" class="close">??</button><p>??????????????????????????????????????????????????????</p>
		</div>
	<?php }?>
	<?php if ($_smarty_tpl->tpl_vars['mode']->value=="delete") {?>
		<div class="alert alert-success fade in">
			<button type="button" class="close">??</button><p><?php echo $_smarty_tpl->tpl_vars['del_count']->value;?>
????????????????????????</p>
		</div>
	<?php }?>
	<div class="alert alert-success fade in" id="calllist-success-message" style="display:none;">
		<button type="button" class="close">??</button><p></p>
	</div>
	<div class="alert alert-danger fade in" id="calllist-error-message" style="display:none;">
		<button type="button" class="close">??</button><p></p>
	</div>
	<div class="row">
		<div class="form-group col-md-12">
			<?php if ($_smarty_tpl->tpl_vars['enable_create']->value) {?>
				<a href="javascript:void(0);" title="????????????" data-toggle="tooltip" class="btn btn-primary btn-setting" id="add_call_list">????????????</a>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['enable_delete']->value) {?>
				<a href="javascript:void(0);" title="?????????????????????" data-toggle="tooltip" class="btn btn-default executebtn" id="btn_delete">?????????????????????</a> <!-- 20160405 Edit by Giang - #6854 - disable double-click -->
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['enable_download']->value) {?>
				<a href="javascript:void(0);" title="???????????????DL" data-toggle="tooltip" class="btn btn-default executebtn" id="btn_download">???????????????DL</a> <!-- 20160405 Edit by Giang - #6854 - disable double-click -->
			<?php }?>
		</div>
	</div>

	<div class="rules_div">
		<div class="wrap">
			<form id="T10CallListIndexForm">
			<table class="table table-striped table-bordered" id="callListTable">
				<colgroup>
					<?php if ($_smarty_tpl->tpl_vars['enable_delete']->value||$_smarty_tpl->tpl_vars['enable_download']->value) {?>
						<col span="1" width="5%">
					<?php }?>
					<col span="1" width="5%">
					<col span="1" width="40%">
					<col span="1" width="10%">
					<col span="1" width="20%">
					<col span="1" width="13%">
					<col span="1" width="7%">
				</colgroup>
				<thead>
					<tr>
						<?php if ($_smarty_tpl->tpl_vars['enable_delete']->value||$_smarty_tpl->tpl_vars['enable_download']->value) {?>
							<th class="remove sorter-false filter-false alignCenter">
								<input type="checkbox" id="bundleCheckbox" data-checkbox="cbSelect">
								<label for="bundleCheckbox" class="bundleCheckbox"></label>
							</th>
						<?php }?>
						<th class="text-center">NO.</th>
						<th class="text-center">????????????</th>
						<th class="text-center">??????</th>
						<th class="text-center">????????????</th>
						<th class="text-center">?????????</th>
						<th class="remove sorter-false filter-false text-center">???????????????</th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
			<!-- pager -->
			<?php echo $_smarty_tpl->tpl_vars['view']->value->element('pager/pager');?>

			<input type="hidden" value="<?php if (isset($_smarty_tpl->tpl_vars['sortColumn']->value)) {?><?php echo $_smarty_tpl->tpl_vars['sortColumn']->value;?>
<?php }?>" id="hdSortColumnList"/>
			<input type="hidden" value="<?php if (isset($_smarty_tpl->tpl_vars['sortType']->value)) {?><?php echo $_smarty_tpl->tpl_vars['sortType']->value;?>
<?php }?>" id="hdSortTypeList"/>
			<input type="hidden" value="<?php if (isset($_smarty_tpl->tpl_vars['page']->value)) {?><?php echo $_smarty_tpl->tpl_vars['page']->value;?>
<?php }?>" id="hdPageList"/>
			</form>
		</div>
	</div>

<!-- ????????????MODAL START -->
	<div class="modal fade" id="dialog_add_call_list" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
		<div class="modal-dialog" style="width: 1022px;">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close"
					   data-dismiss="modal">
						   <span aria-hidden="true">&times;</span>
						   <span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">
						????????????
					</h4>
				</div>

				<!-- Modal Body -->
				<div class="modal-body">

					<form class="form-horizontal" role="form" id="form_add_call_list" method="post" action="<?php echo Router::url('',true);?>
" accept-charset="utf-8" enctype="multipart/form-data">
					<div class="form-group">
					<div class="err_msg_new_180" style="margin-left: 0px; text-align: center;">
						<div id="data_error_div"></div>
						<label class="error" id="err_create_call_list" style="margin-top: 7px; font-size: 1.2em;"><?php echo $_smarty_tpl->tpl_vars['msg_error']->value;?>
</label>
					</div>
					</div>
					<div class="form-group">
					<label class="col-sm-2 control-label">????????????</label>
					<div class="col-sm-7">
						<input type="text" id="call_list_name" name="data[T10CallList][ListName]"
						data-rule-maxlength="100"
						data-msg-required="????????????????????????????????????"
						class="form-control" placeholder="????????????"/>
					</div>
					</div>
					<div class="form-group">
					<label class="col-sm-2 control-label">????????????</label>
					<div class="col-sm-7">
						<input type="text" id="txt-restriction" name="txt-restriction" class="form-control" readonly/>
						<input type="file" id="file_to_upload" name="data[T10CallList][File]" class="hide"/>
					</div>
					<div class="col-sm-3">
						<!-- <button type="button" class="btn btn-primary" id='btn_upload'>?????????????????????</button> -->
						<a href="#" id='btn_upload' class="btn btn-primary executebtn">?????????????????????</a> <!-- 20160405 Edit by Giang - #6854 - disable double-click -->
					</div>
					<label class="col-sm-12 col-md-offset-2 control-label uploadlbl">???CSV???TXT??????????????????</label>
					</div>
					<div class="form-group">
					<label class="col-sm-2 control-label list_test_flag_label">??????????????????</label>
					<div class="col-sm-9 ptop7">
						<input type="checkbox" name="data[T10CallList][ListTestFlag]" id="list_test_flag">
						<label for="list_test_flag"></label>
					</div>
					</div>

					<hr>


  					<div style="overflow-y:hidden;">
						<div id="preview_div"></div>
						<div id="data_csv_error_div"></div>
					</div>

					</form>
				</div>

				<!-- Modal Footer -->
				<div class="modal-footer">
					<a href="javascript:void(0);" id="btn_cancel" class="btn btn-default executebtn" data-dismiss="modal">?????????</a> <!-- 20160405 Edit by Giang - #6854 - disable double-click -->
					<a href="javascript:void(0);" id="btn_submit" class="btn btn-primary executebtn">??????</a> <!-- 20160405 Edit by Giang - #6854 - disable double-click -->
				</div>
			</div>
		</div>
	</div>
<!-- ????????????MODAL END-->

<!-- content ends -->
</div><?php }} ?>
