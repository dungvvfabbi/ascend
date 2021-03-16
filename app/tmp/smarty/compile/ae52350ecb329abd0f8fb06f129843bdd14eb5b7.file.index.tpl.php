<?php /* Smarty version Smarty-3.1.15, created on 2021-03-03 16:35:34
         compiled from "/opt/lampp/htdocs/cakephp/app/View/ManageUser/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:305955153603f3c469a7c16-79524782%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ae52350ecb329abd0f8fb06f129843bdd14eb5b7' => 
    array (
      0 => '/opt/lampp/htdocs/cakephp/app/View/ManageUser/index.tpl',
      1 => 1614576995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '305955153603f3c469a7c16-79524782',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'enable_create' => 0,
    'enable_delete' => 0,
    'enable_unlock' => 0,
    'enable_edit' => 0,
    'view' => 0,
    'sortColumn' => 0,
    'sortType' => 0,
    'page' => 0,
    'm02companies' => 0,
    'company' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_603f3c469f7641_79876623',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_603f3c469f7641_79876623')) {function content_603f3c469f7641_79876623($_smarty_tpl) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'manageuser/manage_user_index'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.validate'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/manageuser/manage_user_index'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'pager'),$_smarty_tpl);?>



<div class="col-lg-10 col-sm-10" id="content">
<!-- content starts -->
	<div class="alert alert-success fade in" id="user-success-message" style="display:none;">
		<button type="button" class="close">×</button><p></p>
	</div>
	<div class="alert alert-danger fade in" id="user-error-message" style="display:none;">
		<button type="button" class="close">×</button><p></p>
	</div>
	<div class="row">
		<div class="form-group col-md-12">
			<?php if ($_smarty_tpl->tpl_vars['enable_create']->value) {?>
				<a href="javascript:void(0);" class="btn btn-primary" id="btnAddUser">新規登録</a>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['enable_delete']->value) {?>
				<a href="javascript:void(0);" class="btn btn-default" id="btnDelete">選択項目を削除</a>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['enable_unlock']->value) {?>
				<a href="javascript:void(0);" class="btn btn-default" id="btnUnlock">選択項目をロック解除</a>
			<?php }?>
		</div>
	</div>

	<div class="rules_div">
		<div class="wrap">
			<table id="userListTable">
				<thead class="head">
					<tr>
						<?php if ($_smarty_tpl->tpl_vars['enable_delete']->value) {?>
							<th class="remove sorter-false filter-false alignCenter"></th>
						<?php }?>
						<!-- <th style="text-align:center;">No</th> -->
						<th class="alignCenter tablesorter-headerUnSorted">企業名</th>
						<th class="alignCenter tablesorter-headerUnSorted">ユーザーID</th>
						<th class="alignCenter tablesorter-headerUnSorted">ユーザー名</th>
						<th class="alignCenter tablesorter-headerUnSorted">権限</th>
						<th class="alignCenter tablesorter-headerUnSorted">作成日時</th>
						<?php if ($_smarty_tpl->tpl_vars['enable_unlock']->value) {?>
						<th class="remove sorter-false filter-false text-center">ロック</th>
						<?php }?>
						<?php if ($_smarty_tpl->tpl_vars['enable_edit']->value) {?>
						<th class="remove sorter-false filter-false text-center">アクション</th>
						<?php }?>
					</tr>
				</thead>
				<tbody class="inner_table">
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
		</div>
	</div>

	<!-- 新規登録MODAL START -->
	<div class="modal fade" id="dialog_add_and_edit_user" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
		<div class="modal-dialog" style="width:650px;">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close"
					   data-dismiss="modal">
						   <span aria-hidden="true">&times;</span>
						   <span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="modal_title_add_edit_user"></h4>
				</div>

				<form class="form-horizontal" role="form" id="form_add_and_edit_user" method="post" action="<?php echo Router::url('',true);?>
" accept-charset="utf-8" enctype="multipart/form-data">
				<input type="text" id="id" name="id" hidden="hidden">
				<!-- Modal Body -->
				<div class="modal-body">

					<div class="form-group">
						<label class="col-sm-3 control-label">アカウント</label>
						<div class="col-sm-7">
							<?php if (count($_smarty_tpl->tpl_vars['m02companies']->value)>1) {?>
								<select id="company_id" name="company_id" class="form-control">
									<option value="">---</option>
									<?php  $_smarty_tpl->tpl_vars['company'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['company']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['m02companies']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['company']->key => $_smarty_tpl->tpl_vars['company']->value) {
$_smarty_tpl->tpl_vars['company']->_loop = true;
?>
										<option value="<?php echo $_smarty_tpl->tpl_vars['company']->value['M02Company']['company_id'];?>
"><?php echo $_smarty_tpl->tpl_vars['company']->value['M02Company']['company_name'];?>
</option>
									<?php } ?>
								</select>
							<?php } elseif (count($_smarty_tpl->tpl_vars['m02companies']->value)==1) {?>
								<label class="control-label"><?php echo $_smarty_tpl->tpl_vars['m02companies']->value['M02Company']['company_name'];?>
</label>
								<input type="hidden" value="<?php echo $_smarty_tpl->tpl_vars['m02companies']->value['M02Company']['company_id'];?>
" id="company_id" name="company_id">
							<?php }?>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">ユーザーID</label>
						<div class="col-sm-7">
							<input type="text" id="user_id" name="user_id"
							data-rule-maxlength="20"
							class="form-control" placeholder="ユーザーID"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">ユーザー名</label>
						<div class="col-sm-7">
							<input type="text" id="user_name" name="user_name"
							data-rule-maxlength="64"
							class="form-control" placeholder="ユーザー名"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">パスワード</label>
						<div class="col-sm-7">
							<input type="password" id="user_pass" name="user_pass"
							data-rule-maxlength="128"
							data-rule-minlength="6"
							class="form-control" placeholder="パスワード"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">確認用パスワード</label>
						<div class="col-sm-7">
							<input type="password" id="user_pass_confirm" name="user_pass_confirm"
							data-rule-maxlength="128"
							data-rule-minlength="6"
							class="form-control" placeholder="確認用パスワード"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">権限</label>
						<div class="col-sm-7">
							<select id="post_code" name="post_code" class="form-control">
								<option value="">---</option>
							</select>
						</div>
					</div>

				</div>

				<!-- Modal Footer -->
				<div class="modal-footer">
					<a href="javascript:void(0);" class="btn btn-default executebtn" id="btnCancel" data-dismiss="modal">閉じる</a>
					<a href="javascript:void(0);" class="btn btn-primary executebtn" id="btnSave">保存</a>
				</div>
				</form>
			</div>
		</div>
	</div>
	<!-- 新規登録MODAL END-->

<!-- content ends -->
</div><?php }} ?>
