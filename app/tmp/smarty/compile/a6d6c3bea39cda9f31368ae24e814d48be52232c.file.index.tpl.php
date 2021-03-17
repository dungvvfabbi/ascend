<?php /* Smarty version Smarty-3.1.15, created on 2021-03-03 10:50:05
         compiled from "/opt/lampp/htdocs/cakephp/app/View/CallListNg/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:8139376603eeb4d27c872-57658982%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a6d6c3bea39cda9f31368ae24e814d48be52232c' => 
    array (
      0 => '/opt/lampp/htdocs/cakephp/app/View/CallListNg/index.tpl',
      1 => 1614576995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8139376603eeb4d27c872-57658982',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'max_tel_param' => 0,
    'enable_download_or_delete' => 0,
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
  'unifunc' => 'content_603eeb4d2c5a30_35225343',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_603eeb4d2c5a30_35225343')) {function content_603eeb4d2c5a30_35225343($_smarty_tpl) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'calllistng/call_list_ng_index'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'common/jquery-ui.css'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.validate'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/calllistng/call_list_ng_index','charset'=>"UTF-8"),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/calllistng/call_list_ng_validate','charset'=>"UTF-8"),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'pager'),$_smarty_tpl);?>



<script>
	var max_tel_param = <?php echo $_smarty_tpl->tpl_vars['max_tel_param']->value['M99SystemParameter']['parameter_value'];?>
;
	var enable_download_or_delete = "<?php echo $_smarty_tpl->tpl_vars['enable_download_or_delete']->value;?>
";
</script>

<div class="col-lg-10 col-sm-10" id="content">
<!-- content starts -->

	<!--<div class="alert alert-info">フラッシュアラート・・・　テーブルに関する参考URL： <a href="http://datatables.net/" target="_blank">http://datatables.net/</a></div>-->
	<!-- <?php echo $_smarty_tpl->tpl_vars['this']->value->Session->flash();?>
 -->
	<?php if ($_smarty_tpl->tpl_vars['mode']->value=="save") {?>
		<div class="alert alert-success fade in">
			<button type="button" class="close">×</button><p>リストのアップロードが完了しました。</p>
		</div>
	<?php }?>
	<?php if ($_smarty_tpl->tpl_vars['mode']->value=="delete") {?>
		<div class="alert alert-success fade in">
			<button type="button" class="close">×</button><p><?php echo $_smarty_tpl->tpl_vars['del_count']->value;?>
件削除しました。</p>
		</div>
	<?php }?>
	<div class="alert alert-success fade in" id="calllist-success-message" style="display:none;">
		<button type="button" class="close">×</button><p></p>
	</div>
	<div class="alert alert-danger fade in" id="calllist-error-message" style="display:none;">
		<button type="button" class="close">×</button><p></p>
	</div>
	<div class="row">
		<div class="form-group col-md-12">
			<?php if ($_smarty_tpl->tpl_vars['enable_create']->value) {?>
				<a href="javascript:void(0);" title="新規作成" data-toggle="tooltip" class="btn btn-primary btn-setting" id="btnCreate">新規登録</a>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['enable_delete']->value) {?>
				<!-- 20160405 Edit by Giang - #6854 - disable double-click -->
				<a href="javascript:void(0);" title="選択項目を削除" data-toggle="tooltip" class="btn btn-default executebtn" id="btnDelete">選択項目を削除</a>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['enable_download']->value) {?>
				<!-- 20160405 Edit by Giang - #6854 - disable double-click -->
				<a href="javascript:void(0);" title="選択項目のDL" data-toggle="tooltip" class="btn btn-default executebtn" id="btnDownload">選択項目のDL</a>
			<?php }?>
		</div>
	</div>

	<div class="rules_div">
		<div class="wrap">
			<form id="T14CallListNgIndexForm">
			<table class="table table-striped table-bordered" id="callListNgTable">
				<colgroup>
					<?php if ($_smarty_tpl->tpl_vars['enable_download_or_delete']->value) {?> <!-- 20160311 Edit by Giang : #6538 - refactor code -->
						<col span="1" width="5%">
					<?php }?>
					<col span="1" width="5%">
					<col>
					<col span="1" width="10%">
					<col>
					<col>
					<col>
					<col span="1" width="10%">
				</colgroup>
				<thead>
					<tr>
						<?php if ($_smarty_tpl->tpl_vars['enable_download_or_delete']->value) {?> <!-- 20160311 Edit by Giang : #6538 - refactor code -->
							<th class="remove sorter-false filter-false alignCenter">
								<input type="checkbox" id="bundleCheckbox" data-checkbox="cbSelect">
								<label for="bundleCheckbox" class="bundleCheckbox"></label>
							</th>
						<?php }?>
						<th class="text-center">NO</th>
						<th class="text-center">リスト名</th>
						<th class="text-center">件数</th>
						<th class="text-center">有効期間</th>
						<th class="text-center">作成日時</th>
						<th class="text-center">作成者</th>
						<th class="remove sorter-false filter-false text-center">アクション</th>
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

<!-- 新規登録MODAL START -->
	<div class="modal fade" id="dialog_add_call_list_ng" tabindex="-1" role="dialog" aria-hidden="true" data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close"
					   data-dismiss="modal">
						   <span aria-hidden="true">&times;</span>
						   <span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">
						新規登録
					</h4>
				</div>

				<!-- Modal Body -->
				<div class="modal-body">

					<form class="form-horizontal" role="form" id="form_add_call_list_ng" method="post" action="<?php echo Router::url('',true);?>
" accept-charset="utf-8" enctype="multipart/form-data">
					<div class="form-group">
						<div class="err_msg_new_180" style="margin-left: 0px; text-align: center;">
							<div id="data_error_div"></div>
							<label class="error" id="err_create_call_list" style="margin-top: 7px; font-size: 1.2em;"><?php echo $_smarty_tpl->tpl_vars['msg_error']->value;?>
</label>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">リスト名</label>
						<div class="col-sm-7">
							<input type="text" id="call_list_ng_name" name="data[T14OutgoingNgList][ListName]"
							data-rule-maxlength="100"
							data-msg-required="リスト名は必須項目です。"
							class="form-control" placeholder="リスト名"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">ファイル</label>
						<div class="col-sm-7">
							<input type="text" id="txt-restriction" name="txt-restriction" class="form-control" readonly/>
							<input type="file" id="file_to_upload" name="data[T14OutgoingNgList][File]" class="hide"/>
						</div>
						<div class="col-sm-3">
							<a href="#" id='btnUpload' class="btn btn-primary executebtn">ファイルを選択</a> <!-- 20160405 Edit by Giang - #6854 - disable double-click -->
						</div>
						<label class="col-sm-12 col-md-offset-2 control-label uploadlbl">※CSV、TXTファイルのみ</label>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">有効期間</label>
						<div class="col-sm-3">
							<div class="form-group date">
								<input type="text" id="expired_date_from" name="data[T14OutgoingNgList][expired_date_from]"
								data-rule-maxlength="100"
								data-msg-required="有効期限は必須項目です。"
								class="form-control expired" placeholder="yyyy-mm-dd" readonly aria-invalid="false"/>
								<label class="input-group-btn" for="expired_date_from">
									<span class="btn btn-default ui-datepicker-trigger date_picker_btn" id="date_picker_btn1">
										<span class="glyphicon glyphicon-calendar"></span>
									</span>
								</label>
							</div>
							<div><label id="expired_date_from-error" class="error" for="expired_date_from"></label></div>
						</div>

						<div class="col-sm-1 ptop7" style="text-align:center;">～</div>
						<div class="col-sm-3">
							<div class="form-group date">
								<input type="text" id="expired_date_to" name="data[T14OutgoingNgList][expired_date_to]"
								data-rule-maxlength="100"
								data-msg-required="有効期限は必須項目です。"
								class="form-control expired" placeholder="yyyy-mm-dd" readonly aria-invalid="false"/>
								<label class="input-group-btn" for="expired_date_to">
									<span class="btn btn-default ui-datepicker-trigger date_picker_btn" id="date_picker_btn2">
										<span class="glyphicon glyphicon-calendar"></span>
									</span>
								</label>
							</div>
							<div><label id="expired_date_to-error" class="error" for="expired_date_to"></label></div>
						</div>
					</div>
					<div><label id="expired_error" style="color:red;padding-left:140px;"></label></div>

					<hr>
  					<div style="overflow-y:hidden;">
						<div id="data_csv_error_div"></div>
					</div>

					</form>
				</div>

				<!-- Modal Footer -->
				<div class="modal-footer">
					<a href="javascript:void(0);" id="btnCancel" class="btn btn-default executebtn" data-dismiss="modal">閉じる</a> <!-- 20160405 Edit by Giang - #6854 - disable double-click -->
					<a href="javascript:void(0);" id="btnSave" class="btn btn-primary executebtn">保存</a> <!-- 20160405 Edit by Giang - #6854 - disable double-click -->
				</div>
			</div>
		</div>
	</div>
<!-- 新規登録MODAL END-->

<!-- content ends -->
</div><?php }} ?>
