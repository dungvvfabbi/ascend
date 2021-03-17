<?php /* Smarty version Smarty-3.1.15, created on 2021-03-03 16:13:15
         compiled from "/opt/lampp/htdocs/cakephp/app/View/InboundTemplate/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1948908412603f370b76fce0-26030008%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd175b5beab853b3be8b099b8d7793b04bf3b1915' => 
    array (
      0 => '/opt/lampp/htdocs/cakephp/app/View/InboundTemplate/index.tpl',
      1 => 1614576995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1948908412603f370b76fce0-26030008',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'mode' => 0,
    'del_count' => 0,
    'create_flag' => 0,
    'import_flag' => 0,
    'delete_flag' => 0,
    'view' => 0,
    'sortColumnTemplate' => 0,
    'sortTypeTemplate' => 0,
    'sortColumn' => 0,
    'sortType' => 0,
    'page' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_603f370b7b5c72_27023935',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_603f370b7b5c72_27023935')) {function content_603f370b7b5c72_27023935($_smarty_tpl) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'inboundtemplate/index'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'../js/dropzone/css/dropzone.css'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'dropzone/dropzone.js'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'pager'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/inboundtemplate/index'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'clipboard.min'),$_smarty_tpl);?>

<div class="col-lg-10 col-sm-10" id="content">
	<!-- content starts -->

	<?php if ($_smarty_tpl->tpl_vars['mode']->value=="success") {?>
		<div class="alert alert-success fade in"><button type="button" class="close">×</button>保存しました。</div>
	<?php }?>
	<?php if ($_smarty_tpl->tpl_vars['mode']->value=="delete") {?>
		<div class="alert alert-success fade in"><button type="button" class="close">×</button><?php echo $_smarty_tpl->tpl_vars['del_count']->value;?>
件削除しました。</div> <!-- 20160311 Edit by Giang : #6695 - display the record quantity has been deleted -->
	<?php }?>
	<div class="alert alert-danger fade in" id="template-error-message" style="display:none;">
		<button type="button" class="close">×</button><p></p>
	</div>

	<div class="row">
		<div class="form-group col-md-12">
			<?php if ($_smarty_tpl->tpl_vars['create_flag']->value) {?>
				<a href="javascript:void(0);" title="新規登録" data-toggle="tooltip" class="btn btn-primary" id="btnCreate">新規登録</a>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['import_flag']->value) {?>
				<a href="javascript:void(0);" title="インポート" data-toggle="tooltip" class="btn btn-default" id="btnImportTemplate">インポート</a>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['delete_flag']->value) {?>
				<a href="javascript:void(0);" title="選択項目を削除" data-toggle="tooltip" class="btn btn-default" id="btnDelete">選択項目を削除</a>
			<?php }?>
		</div>
	</div>

	<div class="rules_div">
		<div class="wrap">
			<form id="formTemplate" method="post" accept-charset="utf-8" enctype="multipart/form-data">
				<table id="tblTemplate" class="table table-striped table-bordered tablesorter">
					<colgroup>
						<?php if ($_smarty_tpl->tpl_vars['delete_flag']->value) {?>
							<col width="5%">
						<?php }?>
						<col width="5%">
						<col width="25%">
						<col width="25%">
						<col width="15%">
						<col width="15%">
						<col width="10%">
					</colgroup>

					<thead class="head">
					<tr>
						<?php if ($_smarty_tpl->tpl_vars['delete_flag']->value) {?>
							<th class="remove sorter-false filter-false alignCenter"></th>
						<?php }?>
						<th class="alignCenter tablesorter-headerUnSorted">NO</th>
						<th class="alignCenter tablesorter-headerDesc">名称</th>
						<th class="alignCenter tablesorter-headerUnSorted">説明</th>
						<th class="alignCenter tablesorter-headerUnSorted">作成日時</th>
						<th class="alignCenter tablesorter-headerUnSorted">作成者</th>
						<th class="remove sorter-false filter-false alignCenter">アクション</th>
					</tr>
					</thead>
					<tbody class="inner_table">
					</tbody>
				</table>
				<!-- pager -->
				<?php echo $_smarty_tpl->tpl_vars['view']->value->element('pager/pager');?>

			</form>
		</div>
	</div>

	<?php echo $_smarty_tpl->tpl_vars['sortColumnTemplate']->value;?>

	<?php echo $_smarty_tpl->tpl_vars['sortTypeTemplate']->value;?>

	<input type="hidden" value="<?php if (isset($_smarty_tpl->tpl_vars['sortColumn']->value)) {?><?php echo $_smarty_tpl->tpl_vars['sortColumn']->value;?>
<?php }?>" id="hdSortColumnTemplate"/>
	<input type="hidden" value="<?php if (isset($_smarty_tpl->tpl_vars['sortType']->value)) {?><?php echo $_smarty_tpl->tpl_vars['sortType']->value;?>
<?php }?>" id="hdSortTypeTemplate"/>
	<input type="hidden" value="<?php if (isset($_smarty_tpl->tpl_vars['page']->value)) {?><?php echo $_smarty_tpl->tpl_vars['page']->value;?>
<?php }?>" id="hdPageTemplate"/>

	<!-- インポートのMODAL START-->
	<div class="modal fade" id="dialog_area" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title" id="myModalLabel">インポート</h4>
				</div>
				<div class="modal-body">
					<div class="error" id="error-mgs"></div>
					<div class="success-mgs" id="success-mgs"></div>
					<form action="<?php echo Router::url('',true);?>
" class="dropzone" id="my-dropzone" method="post" enctype="multipart/form-data">
						<div class="dz-default dz-message"><span>ファイルをドラッグ</span></div>
						<div class="files" id="previews"></div>
						<div id="error_files" class="data_csv_error_div error" style="display:none; width:100%; height:100px; border: solid 1px black;  overflow-y: scroll;" ></div>
						<a href="javascript:void(0);" id="copyErrorBtn" style="display:none;">コピー</a> <!-- 20160224 Edit by Giang : add '0' before tel_num if first character isnot '0' -->
					</form>
				</div>
				<div class="modal-footer">
					<a href="#" class="btn btn-primary" id="submit-import">インポート</a>
				</div>
			</div>
		</div>
	</div>
	<!-- インポートのMODAL END-->

	<!-- content ends -->
</div><?php }} ?>
