<?php /* Smarty version Smarty-3.1.15, created on 2021-03-03 16:52:03
         compiled from "/opt/lampp/htdocs/cakephp/app/View/SmsSchedule/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1166772744603f4023deb528-68578544%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1b726c4ad4f454ffdec3c4f2109e11a26a98744d' => 
    array (
      0 => '/opt/lampp/htdocs/cakephp/app/View/SmsSchedule/index.tpl',
      1 => 1614576995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1166772744603f4023deb528-68578544',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'min_distance_send_time' => 0,
    'mode' => 0,
    'del_count' => 0,
    'create_flag' => 0,
    'delete_flag' => 0,
    'download_flag' => 0,
    'schedule_time_reload' => 0,
    'values' => 0,
    'time_reload' => 0,
    'status_infos' => 0,
    'status_info' => 0,
    'view' => 0,
    'sortColumn' => 0,
    'sortType' => 0,
    'page' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_603f4023e467d3_87626304',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_603f4023e467d3_87626304')) {function content_603f4023e467d3_87626304($_smarty_tpl) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.validate'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'outschedule/dhtmlxscheduler'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'smsschedule/my_dhtmlxscheduler'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'smsschedule/style'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'common/jquery-ui.css'),$_smarty_tpl);?>


<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'pager'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'dhtmlxscheduler'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'dhtmlxscheduler_timeline'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'dhtmlxscheduler_tooltip'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/smsschedule/index'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/smsschedule/init_timeline'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/smsschedule/create'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/smsschedule/popup_resend'),$_smarty_tpl);?>



<script>
	var min_call_time = <?php echo $_smarty_tpl->tpl_vars['min_distance_send_time']->value;?>
;
</script>


<div class="col-lg-10 col-sm-10" id="content">
<!-- content starts -->

	<div id="alert alert-success schedule_error" class="error"></div>
	<?php if ($_smarty_tpl->tpl_vars['mode']->value=="success") {?>
		<div class="alert alert-success fade in">
			<button type="button" class="close">×</button><p>保存しました。</p>
		</div>
	<?php }?>
	<?php if ($_smarty_tpl->tpl_vars['mode']->value=="delete") {?>
		<div class="alert alert-success fade in">
			<button type="button" class="close">×</button><p><?php echo $_smarty_tpl->tpl_vars['del_count']->value;?>
件削除しました。</p> <!-- 20160311 Edit by Giang : #6695 - display the record quantity has been deleted -->
		</div>
	<?php }?>
	<div class="alert alert-success fade in" id="smsschedule-success-message" style="display:none;">
		<button type="button" class="close">×</button><p></p>
	</div>
	<div class="alert alert-danger fade in" id="smsschedule-error-message" style="display:none;">
		<button type="button" class="close">×</button><p></p>
	</div>
	<div class="row">
		<div class="form-group col-md-9">
			<?php if ($_smarty_tpl->tpl_vars['create_flag']->value==true) {?>
				<a href="javascript:void(0);" title="新規登録" data-toggle="tooltip" class="btn btn-primary" id="create_schedule">新規登録</a>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['delete_flag']->value==true) {?>
				<a href="javascript:void(0);" title="選択項目を削除" data-toggle="tooltip" class="btn btn-default" id="btn_delete">選択項目を削除</a>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['download_flag']->value==true) {?>
				<select id="select_type_download" data-rel="NotSearchable">
					<option value="select_download">選択項目のDL</option>
					<option value="download_unsend">未送信ダウンロード</option>
					<option value="download_all_log">全ての送信履歴</option>
				</select>
			<?php }?>
		</div>
		<div class="form-group col-md-2 pull-right">
			<select id="schedule_reload" class="operation_time_start" style="width: 120px;" data-rel="NotSearchable">
				<?php  $_smarty_tpl->tpl_vars['values'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['values']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['schedule_time_reload']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['values']->key => $_smarty_tpl->tpl_vars['values']->value) {
$_smarty_tpl->tpl_vars['values']->_loop = true;
?>
					<option value="<?php echo $_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_code'];?>
"
						<?php if (isset($_smarty_tpl->tpl_vars['time_reload']->value)&&$_smarty_tpl->tpl_vars['time_reload']->value==$_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_code']) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_name'];?>
</option>
				<?php } ?>
			</select> 毎自動更新
		</div>
	</div>

	<div class="rules_div" style="margin-left: -1px;">
		<form id="T200SmsSendScheduleIndexForm" method="post" accept-charset="utf-8" enctype="multipart/form-data">
			<table id="scheduleTable" class="table table-striped table-bordered tablesorter" style="margin-top: 8px;">
				<colgroup>
					<?php if ($_smarty_tpl->tpl_vars['delete_flag']->value) {?>
						<col width="2%">
					<?php }?>
					<col width="2%">
					<col width="13%">
					<col width="9%">
					<col width="9%">
					<col width="13%">
					<col width="13%">
					<col width="6%">
					<col width="6%">
					<col width="9%">
					<col width="6%">
					<col width="10%">
				</colgroup>
				<thead class="head">
					<tr>
						<?php if ($_smarty_tpl->tpl_vars['delete_flag']->value) {?>
							<th class="remove sorter-false filter-false alignCenter">
								<input type="checkbox" id="bundleCheckbox" data-checkbox="cbSelect">
								<label for="bundleCheckbox" class="bundleCheckbox"></label>
							</th>
						<?php }?>
						<th class="alignCenter tablesorter-headerUnSorted">NO</th>
						<th class="alignCenter tablesorter-headerUnSorted">スケジュール名</th>
						<th class="alignCenter tablesorter-headerDesc">送信日</th>
						<th class="alignCenter tablesorter-headerUnSorted">送信時間</th>
						<th class="alignCenter tablesorter-headerUnSorted">テンプレート</th>
						<th class="alignCenter tablesorter-headerUnSorted">送信リスト</th>
						<th class="alignCenter tablesorter-headerUnSorted">リスト数</th>
						<th class="alignCenter tablesorter-headerUnSorted">送信件数</th>
						<th class="alignCenter tablesorter-headerUnSorted">作成日時</th>
						<th class="alignCenter tablesorter-headerUnSorted">作成者</th>
						<th class="remove sorter-false filter-false alignCenter">アクション</th>
					</tr>
				</thead>
				<tbody class="inner_table">
				</tbody>
			</table>
			<div>
				<div style="float: left; padding: 5px;" class="textDefault">
					<?php  $_smarty_tpl->tpl_vars['status_info'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['status_info']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['status_infos']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['status_info']->key => $_smarty_tpl->tpl_vars['status_info']->value) {
$_smarty_tpl->tpl_vars['status_info']->_loop = true;
?>
						<div style="float: left;">
							<span style="width: 12px; height: 12px; background: <?php echo $_smarty_tpl->tpl_vars['status_info']->value['color'];?>
; float: left;margin-left: 2px;margin-right: 2px;margin-top: 3px;"></span>
							<b style="margin-right: 10px;"><?php echo $_smarty_tpl->tpl_vars['status_info']->value['text'];?>
</b>
						</div>
					<?php } ?>
				</div>
				<!-- pager -->
				<?php echo $_smarty_tpl->tpl_vars['view']->value->element('pager/pager');?>

			</div>
			<input type="hidden" value="<?php if (isset($_smarty_tpl->tpl_vars['sortColumn']->value)) {?><?php echo $_smarty_tpl->tpl_vars['sortColumn']->value;?>
<?php }?>" id="hdSortColumnSchedule"/>
			<input type="hidden" value="<?php if (isset($_smarty_tpl->tpl_vars['sortType']->value)) {?><?php echo $_smarty_tpl->tpl_vars['sortType']->value;?>
<?php }?>" id="hdSortTypeSchedule"/>
			<input type="hidden" value="<?php if (isset($_smarty_tpl->tpl_vars['page']->value)) {?><?php echo $_smarty_tpl->tpl_vars['page']->value;?>
<?php }?>" id="hdPageSchedule"/>

			<input type="hidden" value="<?php echo $_smarty_tpl->tpl_vars['min_distance_send_time']->value;?>
" id="hdMinDistanceSendTime">
		</form>
	</div>

	<div id="form_container"></div>
<!-- content ends -->
</div>
<?php }} ?>
