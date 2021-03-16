<?php /* Smarty version Smarty-3.1.15, created on 2021-03-03 16:45:43
         compiled from "/opt/lampp/htdocs/cakephp/app/View/CallList/detail.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1987663909603f3ea761c755-03082956%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6e392abbe84f13c09c60b10c427cc9f7a9bc5b1a' => 
    array (
      0 => '/opt/lampp/htdocs/cakephp/app/View/CallList/detail.tpl',
      1 => 1614576995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1987663909603f3ea761c755-03082956',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'list' => 0,
    'enable_edit_call_list' => 0,
    't12_list_items' => 0,
    't12_list_item' => 0,
    'this' => 0,
    'mode' => 0,
    'enable_create' => 0,
    'enable_delete' => 0,
    'enable_report_not_effective' => 0,
    'headers' => 0,
    'enable_edit' => 0,
    'header' => 0,
    'view' => 0,
    'sortColumn' => 0,
    'sortType' => 0,
    'page' => 0,
    'time' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_603f3ea76c74e6_86190672',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_603f3ea76c74e6_86190672')) {function content_603f3ea76c74e6_86190672($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_select_date')) include '/opt/lampp/htdocs/cakephp/app/Vendor/smarty/plugins/function.html_select_date.php';
?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'calllist/calllist'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.validate'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'calllist/call_list_detail'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/calllist/call_list_detail'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'pager'),$_smarty_tpl);?>



<script>
	var list_name_old = "<?php echo $_smarty_tpl->tpl_vars['list']->value['T10CallList']['list_name'];?>
";
	var enable_edit_call_list = "<?php echo $_smarty_tpl->tpl_vars['enable_edit_call_list']->value;?>
";
	
		<?php  $_smarty_tpl->tpl_vars['t12_list_item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['t12_list_item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['t12_list_items']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['t12_list_item']->key => $_smarty_tpl->tpl_vars['t12_list_item']->value) {
$_smarty_tpl->tpl_vars['t12_list_item']->_loop = true;
?>
			<?php if ($_smarty_tpl->tpl_vars['t12_list_item']->value['T12ListItem']['item_code']=='tel_no') {?>
				var indexTelNo = "<?php echo $_smarty_tpl->tpl_vars['t12_list_item']->value['T12ListItem']['column'];?>
";
			<?php }?>
		<?php } ?>
	
</script>


<div class="col-lg-10 col-sm-10" id="content">
<!-- content starts -->

	<?php echo $_smarty_tpl->tpl_vars['this']->value->Session->flash();?>

	<?php if ($_smarty_tpl->tpl_vars['mode']->value=="save") {?>
		<div class="alert alert-success">保存しました。</div>
	<?php }?>
	<?php if ($_smarty_tpl->tpl_vars['mode']->value=="delete") {?>
		<div class="alert alert-success">削除しました。</div>
	<?php }?>
	<div class="alert alert-success fade in" id="cl-detail-success-message" style="display:none;">
		<button type="button" class="close">×</button><p></p>
	</div>
	<div class="alert alert-danger fade in" id="cl-detail-error-message" style="display:none;">
		<button type="button" class="close">×</button><p></p>
	</div>
	<div class="row">
		<form class="form-horizontal" role="form"  action="" id="form_update_list_info">
		  <div class="form-group">
			<input type="hidden" value="<?php echo $_smarty_tpl->tpl_vars['list']->value['T10CallList']['id'];?>
" name="unlockEditCallList" id="call_list_id" class="input_box_new"/>
			<label class="col-sm-2 control-label">リスト名</label>
			<div class="col-sm-4">
			  <input type="text" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['list']->value['T10CallList']['list_name'];?>
" name="data[T10CallList][ListName]" id="call_list_name" data-rule-maxlength="100" data-msg-required="リスト名は必須項目です。" placeholder="リスト名" <?php if (!$_smarty_tpl->tpl_vars['enable_edit_call_list']->value) {?>readonly<?php }?>/>
			</div>
			<?php if ($_smarty_tpl->tpl_vars['enable_edit_call_list']->value) {?>
			<div class="col-sm-4">
				<!-- 20160405 Edit by Giang - #6854 - disable double-click -->
				<a href="javascript:void(0);" title="保存" data-toggle="tooltip" class="btn btn-primary btn-setting executebtn" id="btnSaveTelList">保存</a>
			</div>
			<?php }?>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2 control-label">テストリスト</label>
			<div class="col-sm-4 ptop7">
			  <input type="checkbox" name="data[T10CallList][ListTestFlag]" id="list_test_flag" <?php if ($_smarty_tpl->tpl_vars['list']->value['T10CallList']['list_test_flag']=='1') {?>checked<?php }?> <?php if (!$_smarty_tpl->tpl_vars['enable_edit_call_list']->value) {?>disabled<?php }?>>
			  <label for="list_test_flag"></label>
			</div>
		  </div>
		</form>
	</div>

	<div class="row">
		<div class="form-group col-md-12">
			<?php if ($_smarty_tpl->tpl_vars['enable_create']->value) {?>
				<a href="javascript:void(0);" title="新規登録" data-toggle="tooltip" class="btn btn-primary btn-setting" id="btnAddTel">新規登録</a>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['enable_delete']->value) {?>
				<!-- 20160405 Edit by Giang - #6854 - disable double-click -->
				<a href="javascript:void(0);" title="選択項目を削除" data-toggle="tooltip" class="btn btn-default executebtn" id="btnDelTel" call_list_id="<?php echo $_smarty_tpl->tpl_vars['list']->value['T10CallList']['id'];?>
" tel_total="<?php echo $_smarty_tpl->tpl_vars['list']->value['T10CallList']['tel_total'];?>
">選択項目を削除</a>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['enable_report_not_effective']->value) {?>
				<!-- 20160405 Edit by Giang - #6854 - disable double-click -->
				<a href="javascript:void(0);" title="無効項目を反映" data-toggle="tooltip" class="btn btn-default executebtn" id="btnInefficient">無効項目を反映</a>
			<?php }?>
		</div>
	</div>

	<div class="rules_div">
		<div class="wrap">
			<form id="T11TellListIndexForm">
			<table id="telListTable" class="table table-striped table-bordered">
				<colgroup>
					<?php if ($_smarty_tpl->tpl_vars['enable_delete']->value) {?>
						<col span="1" width="5%">
					<?php }?>
					<col span="1" width="5%">
					<?php  $_smarty_tpl->tpl_vars['header'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['header']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['headers']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['header']->key => $_smarty_tpl->tpl_vars['header']->value) {
$_smarty_tpl->tpl_vars['header']->_loop = true;
?>
						<col>
					<?php } ?>
					<col span="1" width="5%">
					<?php if ($_smarty_tpl->tpl_vars['enable_edit']->value) {?>
					<col span="1" width="5%">
					<?php }?>
				</colgroup>
				<thead class="head">
					<tr>
						<?php if ($_smarty_tpl->tpl_vars['enable_delete']->value) {?>
							<th class="remove sorter-false filter-false alignCenter">
								<input type="checkbox" id="bundleCheckbox" data-checkbox="cbSelect">
								<label for="bundleCheckbox" class="bundleCheckbox"></label>
							</th>
						<?php }?>
						<th style="text-align:center;">NO</th>
						<?php  $_smarty_tpl->tpl_vars['header'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['header']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['headers']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['header']->key => $_smarty_tpl->tpl_vars['header']->value) {
$_smarty_tpl->tpl_vars['header']->_loop = true;
?>
							<th style="text-align:center;"><?php echo $_smarty_tpl->tpl_vars['header']->value;?>
</th>
						<?php } ?>
						<th class="remove sorter-false filter-false text-center">無効</th>
						<?php if ($_smarty_tpl->tpl_vars['enable_edit']->value) {?>
						<th class="remove sorter-false filter-false text-center">アクション</th>
						<?php }?>
					</tr>
				</thead>
				<tbody>
				</tbody>
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
<!-- 新規登録MODAL START -->
	<div class="modal fade" id="dialog_add_tel_list" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close"
					   data-dismiss="modal">
						   <span aria-hidden="true">&times;</span>
						   <span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">
						新規登録
					</h4>
				</div>

				<form id="form_add_edit_tel" method="post" action="<?php echo Router::url('',true);?>
" accept-charset="utf-8" enctype="multipart/form-data">
				<!-- Modal Body -->
				<div class="modal-body">

					<div class="form-group">
						<label class="col-sm-3 control-label">リスト名</label>
						<div class="col-sm-8">
							<p class="form-control-static"><?php echo $_smarty_tpl->tpl_vars['list']->value['T10CallList']['list_name'];?>
</p>
							<input type="text" id="id" name="id" class="hide">
						</div>
					</div>
					<?php  $_smarty_tpl->tpl_vars['t12_list_item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['t12_list_item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['t12_list_items']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['t12_list_item']->key => $_smarty_tpl->tpl_vars['t12_list_item']->value) {
$_smarty_tpl->tpl_vars['t12_list_item']->_loop = true;
?>
						<div class="form-group">
							<label class="col-sm-3 control-label"><?php echo $_smarty_tpl->tpl_vars['headers']->value[$_smarty_tpl->tpl_vars['t12_list_item']->value['T12ListItem']['column']];?>
</label>
							<div class="form-group col-sm-8">
								<?php if ($_smarty_tpl->tpl_vars['t12_list_item']->value['T12ListItem']['item_code']=='birthday') {?>
								<div class="row">
									<?php echo smarty_function_html_select_date(array('prefix'=>'birthday','time'=>$_smarty_tpl->tpl_vars['time']->value,'start_year'=>'-100','year_empty'=>"---",'month_empty'=>"---",'day_empty'=>"---",'field_order'=>"YMD",'month_format'=>"%m",'day_value_format'=>"%02d",'reverse_years'=>"true"),$_smarty_tpl);?>

								</div>
								<input type="text" id="<?php echo $_smarty_tpl->tpl_vars['t12_list_item']->value['T12ListItem']['column'];?>
" name="birthday_date" class="birthday_date hide" readonly/>
								<?php } elseif ($_smarty_tpl->tpl_vars['t12_list_item']->value['T12ListItem']['item_code']=='tel_no') {?>
									<input type="text" id="<?php echo $_smarty_tpl->tpl_vars['t12_list_item']->value['T12ListItem']['column'];?>
" name="tel_number" class="form-control input-sm"/>
								<?php } elseif ($_smarty_tpl->tpl_vars['t12_list_item']->value['T12ListItem']['item_code']=='money') {?>
									<input type="text" id="<?php echo $_smarty_tpl->tpl_vars['t12_list_item']->value['T12ListItem']['column'];?>
" name="fee" class="form-control input-sm"/>
								<?php } else { ?>
									<input type="text" id="<?php echo $_smarty_tpl->tpl_vars['t12_list_item']->value['T12ListItem']['column'];?>
" name="<?php echo $_smarty_tpl->tpl_vars['t12_list_item']->value['T12ListItem']['column'];?>
" class="form-control input-sm"/>
								<?php }?>
							</div>
						</div>
					<?php } ?>

				</div>

				<!-- Modal Footer -->
				<div class="modal-footer">
					<a href="javascript:void(0);" class="btn btn-default executebtn" id="btn_cancel_add_tel" data-dismiss="modal">閉じる</a> <!-- 20160405 Edit by Giang - #6854 - disable double-click -->
					<a href="javascript:void(0);" class="btn btn-primary executebtn" id="btn_add_edit_tel">保存</a> <!-- 20160405 Edit by Giang - #6854 - disable double-click -->
				</div>
				</form>
			</div>
		</div>
	</div>
<!-- 新規登録MODAL END-->

<!-- content ends -->
</div><?php }} ?>
