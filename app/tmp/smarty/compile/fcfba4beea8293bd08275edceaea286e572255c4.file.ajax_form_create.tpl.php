<?php /* Smarty version Smarty-3.1.15, created on 2021-03-03 16:43:39
         compiled from "/opt/lampp/htdocs/cakephp/app/View/OutSchedule/ajax_form_create.tpl" */ ?>
<?php /*%%SmartyHeaderCode:533622934603f3e2b786b94-50233691%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fcfba4beea8293bd08275edceaea286e572255c4' => 
    array (
      0 => '/opt/lampp/htdocs/cakephp/app/View/OutSchedule/ajax_form_create.tpl',
      1 => 1614576995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '533622934603f3e2b786b94-50233691',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'edit_flag' => 0,
    'msg_edit' => 0,
    'data' => 0,
    'call_type' => 0,
    'values' => 0,
    'external_number' => 0,
    'list_ngs' => 0,
    'templates' => 0,
    'lists' => 0,
    'proc_num' => 0,
    'dial_wait_time' => 0,
    'ans_timeout' => 0,
    'recall' => 0,
    'call_right_away_flag' => 0,
    'disable_input_flag' => 0,
    'id' => 0,
    'outgoing_time' => 0,
    'i' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_603f3e2b83a6b2_77640243',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_603f3e2b83a6b2_77640243')) {function content_603f3e2b83a6b2_77640243($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include '/opt/lampp/htdocs/cakephp/app/Vendor/smarty/plugins/modifier.date_format.php';
?><form class="form-horizontal" role="form" id="OutSchedule" method="post" accept-charset="utf-8" novalidate="novalidate">
	<div>
		<!-- 新規登録MODAL START -->
		<div class="modal " id="modalAddSchedule" tabindex="-1" role="dialog" aria-labelledby="modalAddScheduleLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- Modal Header -->
					<div class="modal-header">
						<button type="button" class="close"
						   data-dismiss="modal">
							   <span aria-hidden="true">&times;</span>
							   <span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="modalAddScheduleLabel">
							<?php if (($_smarty_tpl->tpl_vars['edit_flag']->value==1)) {?>
								スケジュール編集
							<?php } else { ?>
								新規登録
							<?php }?>
						</h4>
					</div>

					<!-- Modal Body -->
					<div class="modal-body">
						<?php if (($_smarty_tpl->tpl_vars['msg_edit']->value!='')) {?>
							<label class="temp_finish_alert"><?php echo $_smarty_tpl->tpl_vars['msg_edit']->value;?>
</label>
						<?php }?>
						<div class="form-group">
							<label class="col-sm-3 control-label">スケジュール名</label>
							<div class="col-sm-7">
								<input type="text" id="ipScheduleName" maxlength="50" name="data[T20OutSchedule][schedule_name]" value="<?php if ((($_smarty_tpl->tpl_vars['edit_flag']->value==1)&&isset($_smarty_tpl->tpl_vars['data']->value))) {?><?php echo $_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['schedule_name'];?>
<?php }?>" class="form-control" placeholder="スケジュール名">
							</div>
						</div>
						<!-- 発信日DESIGN START-->
						<div class="form-group">
							<label class="col-sm-3 control-label">発信日</label>
							<div class="col-sm-7">
								<div class="form-group date">
									<input name="data[T20OutSchedule][create_date]" class="form-control pull-left create_date" id="create_date" aria-invalid="false" type="text" readonly="" placeholder="YYYY-MM-DD" value="<?php if (isset($_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['create_date'])) {?><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['create_date'],'%Y-%m-%d');?>
<?php }?>">
									<label class="input-group-btn" for="create_date">
										<span class="btn btn-default ui-datepicker-trigger" id="date_picker_btn">
											<span class="glyphicon glyphicon-calendar"></span>
										</span>
									</label>
								</div>
								<div><label id="create_date-error" class="error" for="create_date"></label></div>
							</div>
						</div>
						<!-- 発信日DESIGN END-->
						<div class="form-group">
							<label class="col-sm-3 control-label">時間帯</label>
							<div class="col-sm-7">
								<div class="timeline_container">
									<div id="scheduler_here" class="dhx_cal_container">
										<div class="dhx_cal_navline">
											<div class="dhx_cal_date"></div>
										</div>
										<div class="dhx_cal_header">
										</div>
										<div class="dhx_cal_data">
										</div>
									</div>
									<div class="over_timeline_disabled"></div>
								</div>
								<input type="hidden" id="hdCallTimes" name="data[T20OutSchedule][call_times]" value='<?php if (isset($_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['call_times'])) {?><?php echo $_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['call_times'];?>
<?php }?>'>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">番号通知</label>
							<div class="form-group col-sm-7">
								<select id="call_type" name="data[T20OutSchedule][call_type]" class="form-control">
									<?php  $_smarty_tpl->tpl_vars['values'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['values']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['call_type']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['values']->key => $_smarty_tpl->tpl_vars['values']->value) {
$_smarty_tpl->tpl_vars['values']->_loop = true;
?>
										<option value="<?php echo $_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_code'];?>
" <?php if (isset($_smarty_tpl->tpl_vars['data']->value)&&$_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['call_type']==$_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_code']) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_name'];?>
</option>
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">発信番号</label>
							<div class="form-group col-sm-7">
								<select id="external_number" name="data[T20OutSchedule][external_number]" class="form-control">
									<option value=""></option>
									<?php  $_smarty_tpl->tpl_vars['values'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['values']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['external_number']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['values']->key => $_smarty_tpl->tpl_vars['values']->value) {
$_smarty_tpl->tpl_vars['values']->_loop = true;
?>
										<option value="<?php echo $_smarty_tpl->tpl_vars['values']->value['M06CompanyExternal']['external_number'];?>
" <?php if (isset($_smarty_tpl->tpl_vars['data']->value)&&$_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['external_number']==$_smarty_tpl->tpl_vars['values']->value['M06CompanyExternal']['external_number']) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['values']->value['M06CompanyExternal']['external_number'];?>
</option>
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">発信NGリスト</label>
							<div class="form-group col-sm-7">
								<select id="list_ng_id" name="data[T20OutSchedule][list_ng_id]" class="form-control">
									<option value=""></option>
									<?php  $_smarty_tpl->tpl_vars['values'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['values']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['list_ngs']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['values']->key => $_smarty_tpl->tpl_vars['values']->value) {
$_smarty_tpl->tpl_vars['values']->_loop = true;
?>
										<option value="<?php echo $_smarty_tpl->tpl_vars['values']->value['T14OutgoingNgList']['id'];?>
" <?php if (isset($_smarty_tpl->tpl_vars['data']->value)&&$_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['list_ng_id']==$_smarty_tpl->tpl_vars['values']->value['T14OutgoingNgList']['id']) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['values']->value['T14OutgoingNgList']['list_name'];?>
</option>
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">テンプレート</label>
							<div class="form-group col-sm-7">
								<select id="template_id" name="data[T20OutSchedule][template_id]" class="form-control">
									<option value=""></option>
									<?php  $_smarty_tpl->tpl_vars['values'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['values']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['templates']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['values']->key => $_smarty_tpl->tpl_vars['values']->value) {
$_smarty_tpl->tpl_vars['values']->_loop = true;
?>
										<option value="<?php echo $_smarty_tpl->tpl_vars['values']->value['T30Template']['id'];?>
" <?php if (isset($_smarty_tpl->tpl_vars['data']->value)&&$_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['template_id']==$_smarty_tpl->tpl_vars['values']->value['T30Template']['id']) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['values']->value['T30Template']['template_name'];?>
</option>
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">発信リスト</label>
							<div class="form-group col-sm-7">
								<select id="list_id" name="data[T20OutSchedule][list_id]" class="form-control">
									<option value=""></option>
									<?php  $_smarty_tpl->tpl_vars['values'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['values']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['lists']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['values']->key => $_smarty_tpl->tpl_vars['values']->value) {
$_smarty_tpl->tpl_vars['values']->_loop = true;
?>
										<option tel_total="<?php echo $_smarty_tpl->tpl_vars['values']->value['T10CallList']['tel_total'];?>
" value="<?php echo $_smarty_tpl->tpl_vars['values']->value['T10CallList']['id'];?>
" <?php if (isset($_smarty_tpl->tpl_vars['data']->value)&&$_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['list_id']==$_smarty_tpl->tpl_vars['values']->value['T10CallList']['id']) {?>selected<?php }?>><?php if ($_smarty_tpl->tpl_vars['values']->value['T10CallList']['list_test_flag']=="1") {?><font color='red'>(テスト)<?php }?><?php echo $_smarty_tpl->tpl_vars['values']->value['T10CallList']['list_name'];?>
</option>
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">ch数</label>
							<div class="form-group col-sm-7">
								<select id="proc_num" name="data[T20OutSchedule][proc_num]" class="form-control">
									<option value=""></option>
									<?php  $_smarty_tpl->tpl_vars['values'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['values']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['proc_num']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['values']->key => $_smarty_tpl->tpl_vars['values']->value) {
$_smarty_tpl->tpl_vars['values']->_loop = true;
?>
										<option value="<?php echo $_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_code'];?>
" <?php if (isset($_smarty_tpl->tpl_vars['data']->value)&&$_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['proc_num']==$_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_code']) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_name'];?>
</option>
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">呼び出し時間</label>
							<div class="form-group col-sm-7">
								<select id="dial_wait_time" name="data[T20OutSchedule][dial_wait_time]" class="form-control">
									<?php  $_smarty_tpl->tpl_vars['values'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['values']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dial_wait_time']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['values']->key => $_smarty_tpl->tpl_vars['values']->value) {
$_smarty_tpl->tpl_vars['values']->_loop = true;
?>
										<option value="<?php echo $_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_code'];?>
" <?php if (isset($_smarty_tpl->tpl_vars['data']->value)&&$_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['dial_wait_time']==$_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_code']) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_name'];?>
</option>
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">回答待ち時間</label>
							<div class="form-group col-sm-7">
								<select id="ans_timeout" name="data[T20OutSchedule][ans_timeout]" class="form-control">
									<?php  $_smarty_tpl->tpl_vars['values'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['values']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['ans_timeout']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['values']->key => $_smarty_tpl->tpl_vars['values']->value) {
$_smarty_tpl->tpl_vars['values']->_loop = true;
?>
										<option value="<?php echo $_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_code'];?>
" <?php if (isset($_smarty_tpl->tpl_vars['data']->value)&&$_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['ans_timeout']==$_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_code']) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_name'];?>
</option>
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">自動停止有効回答数</label>
							<div class="form-group col-sm-7">
								<input type="text" id="term_valid_count" maxlength="5" name="data[T20OutSchedule][term_valid_count]" value="<?php if (isset($_smarty_tpl->tpl_vars['data']->value)) {?><?php echo $_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['term_valid_count'];?>
<?php }?>" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">自動停止接続数</label>
							<div class="form-group col-sm-7">
								<input type="text" id="term_connect_count" maxlength="5" name="data[T20OutSchedule][term_connect_count]" value="<?php if (isset($_smarty_tpl->tpl_vars['data']->value)) {?><?php echo $_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['term_connect_count'];?>
<?php }?>" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">リダイヤル</label>
							<div class="form-group col-sm-7">
								<select id="recall" name="data[T20OutSchedule][recall]" class="form-control">
									<?php  $_smarty_tpl->tpl_vars['values'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['values']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['recall']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['values']->key => $_smarty_tpl->tpl_vars['values']->value) {
$_smarty_tpl->tpl_vars['values']->_loop = true;
?>
										<option value="<?php echo $_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_code'];?>
" <?php if (isset($_smarty_tpl->tpl_vars['data']->value)&&$_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['recall']==$_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_code']) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_name'];?>
</option>
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">リダイヤル間隔(分)</label>
							<div class="form-group col-sm-7">
								
								<input type="text" id="recall_time" maxlength="3" name="data[T20OutSchedule][recall_time]" value="<?php if (isset($_smarty_tpl->tpl_vars['data']->value)) {?><?php echo $_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['recall_time'];?>
<?php }?>" class="form-control" <?php if (!isset($_smarty_tpl->tpl_vars['data']->value)||$_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['recall']==0) {?>disabled<?php }?>>
							</div>
						</div>
					</div>

					<!-- Modal Footer -->
					<div class="modal-footer">
						<?php if (($_smarty_tpl->tpl_vars['call_right_away_flag']->value)) {?>
							<div class="pull-left">
								<button type="button" class="btn btn-primary btnSubmit" id="btnCallPopup" action="popup">即時発信</button>
							</div>
						<?php }?>
						<div class="pull-right">
							
							<button type="button" class="btn btn-default" id="resetBtn" data-dismiss="modal" >閉じる</button>
							<?php if (($_smarty_tpl->tpl_vars['edit_flag']->value==1)) {?>
								<?php if ((!$_smarty_tpl->tpl_vars['disable_input_flag']->value)) {?>
									
									<button type="button" class="btn btn-primary btnSubmit" id="btnUpdate" action="update">更新</button>
								<?php }?>
							<?php } else { ?>
								<?php if ((isset($_smarty_tpl->tpl_vars['id']->value))) {?>
									
									<button type="button" class="btn btn-primary btnSubmit" id="btnDuplicate" action="duplicate">保存</button>
								<?php } else { ?>
									
									<button type="button" class="btn btn-primary btnSubmit" id="btnCreate" action="create">保存</button>
								<?php }?>
							<?php }?>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 新規登録MODAL END-->
	</div>

	<div>
		<!-- CALL RIGHT AWAY MODAL START -->
		<div class="modal " id="modalCallRightAway" tabindex="-1" role="dialog" aria-labelledby="modalCallRightAwayLabel" aria-hidden="true" data-backdrop="static">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- Modal Header -->
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="modalCallRightAwayLabel">
							発信確認
						</h4>
					</div>

					<!-- Modal Body -->
					<div class="modal-body">
						<div class="form-group">
							<label class="col-sm-12 control-label temp_finish_alert" id="dialog_end_call-error" for="dialog_end_call"></label>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label">発信開始時間</label>
							<div class="form-group col-sm-7">
								<label class="col-sm-5 control-label dialog-start-call"></label>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label">発信終了時間</label>
							<div class="form-group col-sm-7">
								<select id="dialog_hour_end_call" name="data[T20OutSchedule][dialog_end_call]" class="form-control pull-left dialog_end_call">
									<option value=""></option>
									<?php  $_smarty_tpl->tpl_vars['values'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['values']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['outgoing_time']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['values']->key => $_smarty_tpl->tpl_vars['values']->value) {
$_smarty_tpl->tpl_vars['values']->_loop = true;
?>
										<option value="<?php echo $_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_code'];?>
"><?php echo $_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_name'];?>
</option>
									<?php } ?>
								</select>
								<label class="control-label pull-left">&nbsp;：&nbsp;</label>
								<select id="dialog_minute_end_call" name="data[T20OutSchedule][dialog_end_call]" class="form-control pull-left dialog_end_call">
									<option value=""></option>
									<?php $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['i']->step = 1;$_smarty_tpl->tpl_vars['i']->total = (int) ceil(($_smarty_tpl->tpl_vars['i']->step > 0 ? 59+1 - (0) : 0-(59)+1)/abs($_smarty_tpl->tpl_vars['i']->step));
if ($_smarty_tpl->tpl_vars['i']->total > 0) {
for ($_smarty_tpl->tpl_vars['i']->value = 0, $_smarty_tpl->tpl_vars['i']->iteration = 1;$_smarty_tpl->tpl_vars['i']->iteration <= $_smarty_tpl->tpl_vars['i']->total;$_smarty_tpl->tpl_vars['i']->value += $_smarty_tpl->tpl_vars['i']->step, $_smarty_tpl->tpl_vars['i']->iteration++) {
$_smarty_tpl->tpl_vars['i']->first = $_smarty_tpl->tpl_vars['i']->iteration == 1;$_smarty_tpl->tpl_vars['i']->last = $_smarty_tpl->tpl_vars['i']->iteration == $_smarty_tpl->tpl_vars['i']->total;?>
										<option value="<?php if (($_smarty_tpl->tpl_vars['i']->value<10)) {?>0<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
<?php } else { ?><?php echo $_smarty_tpl->tpl_vars['i']->value;?>
<?php }?>"><?php if (($_smarty_tpl->tpl_vars['i']->value<10)) {?>0<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
<?php } else { ?><?php echo $_smarty_tpl->tpl_vars['i']->value;?>
<?php }?></option>
									<?php }} ?>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label">時間帯</label>
							<div class="col-sm-8">
								<div class="timeline_container">
									<div id="scheduler_here2" class="dhx_cal_container">
										<div class="dhx_cal_navline">
											<div class="dhx_cal_date"></div>
										</div>
										<div class="dhx_cal_header">
										</div>
										<div class="dhx_cal_data">
										</div>
									</div>
									<div class="over_timeline_disabled"></div>
								</div>
							</div>
						</div>
					</div>

					<!-- Modal Footer -->
					<div class="modal-footer">
						<div class="pull-right">
							<button type="button" class="btn btn-default" id="btn_cancel" data-dismiss="modal">閉じる</button> 
							<button type="button" class="btn btn-primary btnSubmit" id="btnCall" action="call">発信</button> 
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- CALL RIGHT AWAY MODAL END -->
	</div>

	<div style="display:none;">
		<input type="hidden" id="id" class="hdId" name="data[T20OutSchedule][id]" value="<?php if ((isset($_smarty_tpl->tpl_vars['id']->value)&&$_smarty_tpl->tpl_vars['edit_flag']->value==1)) {?><?php echo $_smarty_tpl->tpl_vars['id']->value;?>
<?php }?>" />
		<input type="hidden" id="hdCreateDate" name="data[T20OutSchedule][create_date2]" value="<?php if (isset($_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['create_date'])) {?><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['data']->value['T20OutSchedule']['create_date'],'%Y-%m-%d');?>
<?php }?>">
		<input type="hidden" id="hdCallTimes2" name="data[T20OutSchedule][call_times2]" value="">
		<input type="hidden" id="disable_input_flag" name="data[T20OutSchedule][disable_input_flag]" value="<?php if ((isset($_smarty_tpl->tpl_vars['disable_input_flag']->value))) {?><?php echo $_smarty_tpl->tpl_vars['disable_input_flag']->value;?>
<?php }?>">
	</div>
</form><?php }} ?>
