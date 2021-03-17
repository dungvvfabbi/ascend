<?php /* Smarty version Smarty-3.1.15, created on 2021-03-03 16:43:47
         compiled from "/opt/lampp/htdocs/cakephp/app/View/Elements/outschedule/status_view.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1204173467603f3e33494ef5-89279683%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '41a516264bc5e735398ca21c7e0cf3fb732eb4bf' => 
    array (
      0 => '/opt/lampp/htdocs/cakephp/app/View/Elements/outschedule/status_view.tpl',
      1 => 1614576995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1204173467603f3e33494ef5-89279683',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'schedule' => 0,
    'call_times' => 0,
    'key' => 0,
    'call_time' => 0,
    'time_end_expect' => 0,
    'show_time_end' => 0,
    'time_end' => 0,
    'show_redial_time' => 0,
    'time_redial' => 0,
    'show_redial_num' => 0,
    'recall_num' => 0,
    'recall_flag' => 0,
    'show_btn' => 0,
    'show_btn_recall' => 0,
    'call_now_flag' => 0,
    'show_btn_call_now' => 0,
    'finish_flag' => 0,
    'btn_finish_name' => 0,
    'show_btn_finish' => 0,
    'msg_confirm_finish' => 0,
    'stop_flag' => 0,
    'show_btn_stop' => 0,
    'show_btn_stoping' => 0,
    'show_btn_finishing' => 0,
    'download_flag' => 0,
    'show_reload' => 0,
    'schedule_time_reload' => 0,
    'values' => 0,
    'time_reload' => 0,
    'num_skip' => 0,
    'tel_total' => 0,
    'num_called' => 0,
    'num_connected' => 0,
    'num_yuko' => 0,
    'value' => 0,
    'percent1' => 0,
    'percent2' => 0,
    'percent3' => 0,
    'data_questions' => 0,
    'question' => 0,
    'smsData' => 0,
    'progressData' => 0,
    'title' => 0,
    'answer' => 0,
    'anws_no' => 0,
    'total' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_603f3e3362de55_38432318',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_603f3e3362de55_38432318')) {function content_603f3e3362de55_38432318($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include '/opt/lampp/htdocs/cakephp/app/Vendor/smarty/plugins/modifier.date_format.php';
if (!is_callable('smarty_modifier_replace')) include '/opt/lampp/htdocs/cakephp/app/Vendor/smarty/plugins/modifier.replace.php';
?><form id="T20OutScheduleIndexForm">
	<input type="hidden" name="schedule_id" id="schedule_id" value="<?php echo $_smarty_tpl->tpl_vars['schedule']->value['T20OutSchedule']['id'];?>
">
	<input type="hidden" name="status" id="status" value="<?php echo $_smarty_tpl->tpl_vars['schedule']->value['T20OutSchedule']['status'];?>
">
	<div class="row">
		<div class="form-group col-xs-12 col-sm-6 col-lg-6">
			<label for="txtTemplateName" class="col-xs-3">テンプレート</label>
			<div class="col-xs-9">
				<p class="col-xs-12"><?php echo $_smarty_tpl->tpl_vars['schedule']->value['T60TemplateHistory']['template_name'];?>
</p>
			</div>
		</div>
		<div class="form-group col-xs-12 col-sm-6 col-lg-6">
			<label for="txtTemplateDescription" class="col-xs-3">発信予定日時</label>
			<div class="col-xs-9 t21_out_time_date">
				<?php  $_smarty_tpl->tpl_vars['call_time'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['call_time']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['call_times']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['call_time']->key => $_smarty_tpl->tpl_vars['call_time']->value) {
$_smarty_tpl->tpl_vars['call_time']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['call_time']->key;
?>
					<?php if (($_smarty_tpl->tpl_vars['key']->value==0)) {?>
						<p class="col-xs-4"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['call_time']->value['T21OutTime']['time_start'],"%Y-%m-%d");?>
</p>
					<?php } else { ?>
						<p class="col-xs-4"></p>
					<?php }?>
					<p class="col-xs-8"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['call_time']->value['T21OutTime']['time_start'],"%H:%M");?>
～<?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['call_time']->value['T21OutTime']['time_end'],"%H:%M");?>
</p>
				<?php } ?>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="form-group col-xs-12 col-sm-6 col-lg-6">
			<label for="txtTemplateName" class="col-xs-3">発信リスト</label>
			<div class="col-xs-9">
				<p class="col-xs-12"><?php echo $_smarty_tpl->tpl_vars['schedule']->value['T50ListHistory']['list_name'];?>
</p>
			</div>
		</div>
		<div class="form-group col-xs-12 col-sm-6 col-lg-6">
			<?php if ((isset($_smarty_tpl->tpl_vars['time_end_expect']->value)&&!empty($_smarty_tpl->tpl_vars['time_end_expect']->value))) {?>
				<label for="txtTemplateDescription" class="col-xs-3">終了見込み日時</label>
				<div class="col-xs-3">
					<p class="col-xs-12 elereload"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['time_end_expect']->value,"%Y-%m-%d %H:%M");?>
</p>
				</div>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['show_time_end']->value) {?>
				<label for="txtTemplateDescription" class="col-xs-3">終了日時</label>
				<div class="col-xs-3">
					<p class="col-xs-12"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['time_end']->value,"%Y-%m-%d %H:%M");?>
</p>
				</div>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['show_redial_time']->value) {?>
				<label for="txtTemplateDescription" class="col-xs-3">リダイヤル開始時間</label>
				<div class="col-xs-3">
					<p class="col-xs-12"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['time_redial']->value,"%Y-%m-%d %H:%M");?>
</p>
				</div>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['show_redial_num']->value) {?>
				<label for="txtTemplateDescription" class="col-xs-3">リダイヤル回数</label>
				<div class="col-xs-3">
					<p class="col-xs-12"><?php echo $_smarty_tpl->tpl_vars['recall_num']->value;?>
</p>
				</div>
			<?php }?>
		</div>
	</div>
	<div class="row">
		<div class="form-group col-xs-12 col-sm-6 col-lg-6">
			<label for="txtTemplateName" class="col-xs-3">発信番号</label>
			<div class="col-xs-9">
				<p class="col-xs-12">
					<?php echo $_smarty_tpl->tpl_vars['schedule']->value['T20OutSchedule']['external_number'];?>

				</p>
			</div>
		</div>

		<div class="form-group col-xs-12 col-sm-6 col-lg-6">
			<?php if (($_smarty_tpl->tpl_vars['recall_flag']->value)) {?>
				<label class="col-xs-3">ch数</label>
				<div class="col-xs-5 change_proc_num_container">
					<?php if ((isset($_smarty_tpl->tpl_vars['schedule']->value))) {?> <?php echo $_smarty_tpl->tpl_vars['schedule']->value['T20OutSchedule']['proc_num'];?>
 ch <?php }?>
				</div>
			<?php }?>
			<?php if ((!$_smarty_tpl->tpl_vars['show_btn']->value)) {?>
				<div class="col-xs-3 pull-right none_padding">
					<?php if (($_smarty_tpl->tpl_vars['recall_flag']->value)) {?>
						<div title="再開" title_btn="再開" id="btn_recall" data-toggle="tooltip" screen="status" action="recall" schedule_id="<?php echo $_smarty_tpl->tpl_vars['schedule']->value['T20OutSchedule']['id'];?>
" class="lnkRestart btn btn-primary btn-sm col-xs-<?php if (($_smarty_tpl->tpl_vars['show_btn_recall']->value)) {?>6<?php } else { ?>12<?php }?>" style="<?php if ((!$_smarty_tpl->tpl_vars['show_btn_recall']->value)) {?>display:none;<?php }?>">再開</div>
					<?php }?>
					<?php if (($_smarty_tpl->tpl_vars['call_now_flag']->value)) {?>
						<div title="即時発信" title_btn="即時発信" id="btn_call_now" data-toggle="tooltip" screen="status" action="call" schedule_id="<?php echo $_smarty_tpl->tpl_vars['schedule']->value['T20OutSchedule']['id'];?>
" class="lnkRestart btn btn-primary btn-sm col-xs-6" style="<?php if ((!$_smarty_tpl->tpl_vars['show_btn_call_now']->value)) {?>display:none;<?php }?>">即時発信</div>
					<?php }?>
					<?php if (($_smarty_tpl->tpl_vars['finish_flag']->value)) {?>
						<div title="<?php echo $_smarty_tpl->tpl_vars['btn_finish_name']->value;?>
" id="btn_finish" data-toggle="tooltip" class="btn btn-primary btn-sm col-xs-6" style="<?php if ((!$_smarty_tpl->tpl_vars['show_btn_finish']->value)) {?>display:none;<?php }?>" data-msgconfirm="<?php echo $_smarty_tpl->tpl_vars['msg_confirm_finish']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['btn_finish_name']->value;?>
</div>
					<?php }?>
					<?php if (($_smarty_tpl->tpl_vars['stop_flag']->value)) {?>
						<div title="停止" id="btn_stop_call" data-toggle="tooltip" class="btn btn-primary btn-sm col-xs-12" style="<?php if ((!$_smarty_tpl->tpl_vars['show_btn_stop']->value)) {?>display:none;<?php }?>">停止</div>
					<?php }?>
					<button type="button" title="停止中" id="btn_stoping" data-toggle="tooltip" class="btn btn-primary btn-sm col-xs-12" style="<?php if ((!$_smarty_tpl->tpl_vars['show_btn_stoping']->value)) {?>display:none;<?php }?>" disabled>停止中</button>
					<button type="button" title="終了中" id="btn_finishing" data-toggle="tooltip" class="btn btn-primary btn-sm col-xs-12" style="<?php if ((!$_smarty_tpl->tpl_vars['show_btn_finishing']->value)) {?>display:none;<?php }?>" disabled>終了中</button>
				</div>
			<?php }?>
		</div>
	</div>

	<div class="row">
		<div class="form-group col-xs-12 col-sm-6 col-lg-6 pull-right">
			<button title="" class="btn btn-primary col-xs-2 col-sm-6 col-lg-3" id="btnDetail" type="button" data-original-title="詳細" data-toggle="tooltip">詳細</button>
			<?php if (($_smarty_tpl->tpl_vars['download_flag']->value)) {?>
				<div class="btn btnDownload btn-primary col-xs-2 col-sm-6 col-lg-3" func-name="download_uncalled" id="btnDownloadUnCalled" data-original-title="未処理DL" data-toggle="tooltip">未処理DL</div>
				<div class="btn btnDownload btn-primary col-xs-2 col-sm-6 col-lg-3" func-name="download_all_log" id="btnDownloadLog" data-original-title="履歴DL" data-toggle="tooltip">履歴DL</div>
				<div class="btn btnDownload btn-primary col-xs-2 col-sm-6 col-lg-3" func-name="download_ans_log" id="btnDownloadLogAns" data-original-title="有効DL" data-toggle="tooltip">有効DL</div>
			<?php }?>
		</div>
	</div>
	<div class="row">
		<div id="auto_reload" class="form-group col-xs-12 pull-right">
			<p class="form-control-static pull-right">
				毎自動更新
			</p>
			<div class="col-xs-1 pull-right">
				<select class="form-control pull-right" id="schedule_reload"  <?php if ((!$_smarty_tpl->tpl_vars['show_reload']->value)) {?>disabled<?php }?>>
					<?php  $_smarty_tpl->tpl_vars['values'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['values']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['schedule_time_reload']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['values']->key => $_smarty_tpl->tpl_vars['values']->value) {
$_smarty_tpl->tpl_vars['values']->_loop = true;
?>
						<option value="<?php echo $_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_code'];?>
" <?php if (((isset($_smarty_tpl->tpl_vars['time_reload']->value)&&$_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_code']==$_smarty_tpl->tpl_vars['time_reload']->value)||$_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_code']=="1")) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['values']->value['M90PulldownCode']['item_name'];?>
</option>
					<?php } ?>
				</select>
			</div>
			<?php if ($_smarty_tpl->tpl_vars['num_skip']->value>0) {?>
				<div class="col-xs-6">
					<label class="col-sm-offset-2 error" style="font-size: 20px;">スキップ件数：　<?php echo $_smarty_tpl->tpl_vars['num_skip']->value;?>
件</label>
				</div>
			<?php }?>
		</div>
	</div>
</form>

<input type="hidden" id="num_skip" value="<?php echo $_smarty_tpl->tpl_vars['num_skip']->value;?>
">
<div class=" row">
	<div class="col-md-2 col-sm-2 col-xs-6 col-md-offset-1 col-sm-offset-1">
		<div title="" class="well top-block" href="#" data-original-title="" data-toggle="tooltip">
			<i class="glyphicon glyphicon-list red"></i>
			<div style="color: #25B29C">リスト件数</div>
			<div style="color: #25B29C"><?php echo number_format($_smarty_tpl->tpl_vars['tel_total']->value,0,'.',',');?>
件</div>
			
		</div>
	</div>

	<div class="col-md-2 col-sm-2 col-xs-6">
		<div title="" class="well top-block" href="#" data-original-title="" data-toggle="tooltip">
			<i class="glyphicon glyphicon-earphone green"></i>
			<div style="color: #25B29C">発信件数</div>
			<div style="color: #25B29C" class="elereload"><?php echo number_format($_smarty_tpl->tpl_vars['num_called']->value,0,'.',',');?>
件</div>
			
		</div>
	</div>

	<div class="col-md-2 col-sm-2 col-xs-6">
		<div title="" class="well top-block" href="#" data-original-title="" data-toggle="tooltip">
			<i class="glyphicon glyphicon-signal yellow"></i>
			<div style="color: #25B29C">接続件数</div>
			<div style="color: #25B29C" class="elereload"><?php echo number_format($_smarty_tpl->tpl_vars['num_connected']->value,0,'.',',');?>
件</div>
			
		</div>
	</div>

	 <div class="col-md-2 col-sm-2 col-xs-6">
		<div title="" class="well top-block" href="#" data-original-title="" data-toggle="tooltip">
			<i class="glyphicon glyphicon-stats red"></i>
			<div style="color: #25B29C">接続率</div>
			<div style="color: #25B29C" class="elereload"><?php echo number_format(($_smarty_tpl->tpl_vars['num_connected']->value/$_smarty_tpl->tpl_vars['num_called']->value*100),1,'.',',');?>
%</div>
			
		</div>
	</div>

	 <div class="col-md-2 col-sm-2 col-xs-6">
		<div title="" class="well top-block" href="#" data-original-title="" data-toggle="tooltip">
			<i class="glyphicon glyphicon-ok green"></i>
			<div style="color: #25B29C">有効回答数</div>
			<div style="color: #25B29C" class="elereload"><?php echo number_format($_smarty_tpl->tpl_vars['num_yuko']->value,0,'.',',');?>
件</div>
			
		</div>
	</div>
</div>

<div class="row">
	<div class="form-group col-xs-12">
		<div class="col-xs-6">
			<label class="col-sm-offset-2">リスト状況（リスト件数<?php echo $_smarty_tpl->tpl_vars['tel_total']->value;?>
件）</label>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-sm-offset-1 col-xs-10">
		<div class="progress">

			<?php if (isset($_smarty_tpl->tpl_vars['value'])) {$_smarty_tpl->tpl_vars['value'] = clone $_smarty_tpl->tpl_vars['value'];
$_smarty_tpl->tpl_vars['value']->value = $_smarty_tpl->tpl_vars['num_yuko']->value; $_smarty_tpl->tpl_vars['value']->nocache = null; $_smarty_tpl->tpl_vars['value']->scope = 0;
} else $_smarty_tpl->tpl_vars['value'] = new Smarty_variable($_smarty_tpl->tpl_vars['num_yuko']->value, null, 0);?>
			<?php if (isset($_smarty_tpl->tpl_vars['percent1'])) {$_smarty_tpl->tpl_vars['percent1'] = clone $_smarty_tpl->tpl_vars['percent1'];
$_smarty_tpl->tpl_vars['percent1']->value = number_format(($_smarty_tpl->tpl_vars['value']->value/$_smarty_tpl->tpl_vars['num_called']->value*100),1,'.',','); $_smarty_tpl->tpl_vars['percent1']->nocache = null; $_smarty_tpl->tpl_vars['percent1']->scope = 0;
} else $_smarty_tpl->tpl_vars['percent1'] = new Smarty_variable(number_format(($_smarty_tpl->tpl_vars['value']->value/$_smarty_tpl->tpl_vars['num_called']->value*100),1,'.',','), null, 0);?>
			<div class="progress-bar progress-bar-success" role="progressbar" style="width:<?php echo $_smarty_tpl->tpl_vars['percent1']->value;?>
%;" data-original-title="有効回答:<?php echo number_format($_smarty_tpl->tpl_vars['value']->value,0,'.',',');?>
件(<?php echo $_smarty_tpl->tpl_vars['percent1']->value;?>
%)" data-toggle="tooltip">
				<div>有効回答</div>
				<div class="elereload"><?php echo number_format($_smarty_tpl->tpl_vars['value']->value,0,'.',',');?>
件(<?php echo $_smarty_tpl->tpl_vars['percent1']->value;?>
%)</div>
			</div>

			<?php if (isset($_smarty_tpl->tpl_vars['value'])) {$_smarty_tpl->tpl_vars['value'] = clone $_smarty_tpl->tpl_vars['value'];
$_smarty_tpl->tpl_vars['value']->value = $_smarty_tpl->tpl_vars['num_connected']->value-$_smarty_tpl->tpl_vars['num_yuko']->value; $_smarty_tpl->tpl_vars['value']->nocache = null; $_smarty_tpl->tpl_vars['value']->scope = 0;
} else $_smarty_tpl->tpl_vars['value'] = new Smarty_variable($_smarty_tpl->tpl_vars['num_connected']->value-$_smarty_tpl->tpl_vars['num_yuko']->value, null, 0);?>
			<?php if (isset($_smarty_tpl->tpl_vars['percent2'])) {$_smarty_tpl->tpl_vars['percent2'] = clone $_smarty_tpl->tpl_vars['percent2'];
$_smarty_tpl->tpl_vars['percent2']->value = number_format(($_smarty_tpl->tpl_vars['value']->value/$_smarty_tpl->tpl_vars['num_called']->value*100),1,'.',','); $_smarty_tpl->tpl_vars['percent2']->nocache = null; $_smarty_tpl->tpl_vars['percent2']->scope = 0;
} else $_smarty_tpl->tpl_vars['percent2'] = new Smarty_variable(number_format(($_smarty_tpl->tpl_vars['value']->value/$_smarty_tpl->tpl_vars['num_called']->value*100),1,'.',','), null, 0);?>
			<div class="progress-bar progress-bar-warning" role="progressbar" style="width:<?php echo $_smarty_tpl->tpl_vars['percent2']->value;?>
%" data-original-title="接続（無効回答）:<?php echo number_format($_smarty_tpl->tpl_vars['value']->value,0,'.',',');?>
件(<?php echo $_smarty_tpl->tpl_vars['percent2']->value;?>
%)" data-toggle="tooltip">
				<div>接続（無効回答）</div>
				<div class="elereload"><?php echo number_format($_smarty_tpl->tpl_vars['value']->value,0,'.',',');?>
件(<?php echo $_smarty_tpl->tpl_vars['percent2']->value;?>
%)</div>
			</div>

			<?php if (isset($_smarty_tpl->tpl_vars['value'])) {$_smarty_tpl->tpl_vars['value'] = clone $_smarty_tpl->tpl_vars['value'];
$_smarty_tpl->tpl_vars['value']->value = $_smarty_tpl->tpl_vars['num_called']->value-$_smarty_tpl->tpl_vars['num_connected']->value; $_smarty_tpl->tpl_vars['value']->nocache = null; $_smarty_tpl->tpl_vars['value']->scope = 0;
} else $_smarty_tpl->tpl_vars['value'] = new Smarty_variable($_smarty_tpl->tpl_vars['num_called']->value-$_smarty_tpl->tpl_vars['num_connected']->value, null, 0);?>
			<?php if (isset($_smarty_tpl->tpl_vars['percent3'])) {$_smarty_tpl->tpl_vars['percent3'] = clone $_smarty_tpl->tpl_vars['percent3'];
$_smarty_tpl->tpl_vars['percent3']->value = 100-$_smarty_tpl->tpl_vars['percent1']->value-$_smarty_tpl->tpl_vars['percent2']->value; $_smarty_tpl->tpl_vars['percent3']->nocache = null; $_smarty_tpl->tpl_vars['percent3']->scope = 0;
} else $_smarty_tpl->tpl_vars['percent3'] = new Smarty_variable(100-$_smarty_tpl->tpl_vars['percent1']->value-$_smarty_tpl->tpl_vars['percent2']->value, null, 0);?>
			<div class="progress-bar progress-bar-danger" role="progressbar" style="width:<?php echo $_smarty_tpl->tpl_vars['percent3']->value;?>
%" data-original-title="未接続:<?php echo number_format($_smarty_tpl->tpl_vars['value']->value,0,'.',',');?>
件(<?php echo $_smarty_tpl->tpl_vars['percent3']->value;?>
%)" data-toggle="tooltip">
				<div>未接続</div>
				<div class="elereload"><?php echo number_format($_smarty_tpl->tpl_vars['value']->value,0,'.',',');?>
件(<?php echo $_smarty_tpl->tpl_vars['percent3']->value;?>
%)</div>
			</div>
		</div>
	</div>
</div>

<?php  $_smarty_tpl->tpl_vars['question'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['question']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['data_questions']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['question']->key => $_smarty_tpl->tpl_vars['question']->value) {
$_smarty_tpl->tpl_vars['question']->_loop = true;
?>
<div class="row">
	<div class="box col-md-12">
		<div class="box-inner">
			<?php if ((isset($_smarty_tpl->tpl_vars['question']->value['ques_count_flag']))) {?>
				<div class="box-header well" data-original-title="">
					<h2><span class="ques_no"><?php echo $_smarty_tpl->tpl_vars['question']->value['T61QuestionHistory']['question_no'];?>
</span>. <?php echo $_smarty_tpl->tpl_vars['question']->value['question_type_txt'];?>
</h2>
					<span>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['question']->value['T61QuestionHistory']['question_title'];?>
</span>
					<span>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['question']->value['statistic_ans'][0];?>
</span>
					<div class="box-icon">
						<a href="#" class="btn btn-minimize btn-round btn-default"><i title="最小化/最大化" data-toggle="tooltip" class="glyphicon glyphicon-chevron-up"></i></a>
					</div>
				</div>
			<?php } elseif ($_smarty_tpl->tpl_vars['question']->value['question_type']=='13') {?>
				<div class="box-header well" data-original-title="">
					<h2><span class="ques_no"><?php echo $_smarty_tpl->tpl_vars['question']->value['T61QuestionHistory']['question_no'];?>
</span>. <?php echo $_smarty_tpl->tpl_vars['question']->value['question_type_txt'];?>
&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['question']->value['T61QuestionHistory']['question_title'];?>
</h2>
					<div class="box-icon">
						<a href="#" class="btn btn-minimize btn-round btn-default"><i title="最小化/最大化" data-toggle="tooltip" class="glyphicon glyphicon-chevron-up"></i></a>
					</div>
				</div>
				<div class="box-content">
					<div class="row <?php echo $_smarty_tpl->tpl_vars['question']->value['T61QuestionHistory']['question_no'];?>
">
						<div class="col-md-4">
							<table style="width: 100%;">
								<tr>
									<td>SMS内容</td>
								</tr>
								<tr style="background-color:#f5f5f5">
									<td><?php echo nl2br(smarty_modifier_replace($_smarty_tpl->tpl_vars['question']->value['T61QuestionHistory']['sms_content']," ","&nbsp;"));?>
</td>
								</tr>
							</table>
						</div>
						<div class="col-md-8">
							<table style="width: 100%;">
								<tr>
									<td>
										送信件数： <?php if ((!empty($_smarty_tpl->tpl_vars['smsData']->value[$_smarty_tpl->tpl_vars['question']->value['T61QuestionHistory']['question_no']]['total_tel_send']))) {?>
										<?php echo $_smarty_tpl->tpl_vars['smsData']->value[$_smarty_tpl->tpl_vars['question']->value['T61QuestionHistory']['question_no']]['total_tel_send'];?>

										<?php } else { ?>0
										<?php }?>件</td>
								</tr>
								<tr>
									<td>
										到達件数： <?php if ((!empty($_smarty_tpl->tpl_vars['smsData']->value[$_smarty_tpl->tpl_vars['question']->value['T61QuestionHistory']['question_no']]['send_complete']))) {?>
										<?php echo $_smarty_tpl->tpl_vars['smsData']->value[$_smarty_tpl->tpl_vars['question']->value['T61QuestionHistory']['question_no']]['send_complete'];?>

										<?php } else { ?>0
										<?php }?>件
									</td>
								</tr>
								<?php if ((!empty($_smarty_tpl->tpl_vars['smsData']->value[$_smarty_tpl->tpl_vars['question']->value['T61QuestionHistory']['question_no']]['progress']))) {?>
								<tr>
									<td>
										<div class="progress">
											<?php  $_smarty_tpl->tpl_vars['progressData'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['progressData']->_loop = false;
 $_smarty_tpl->tpl_vars['title'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['smsData']->value[$_smarty_tpl->tpl_vars['question']->value['T61QuestionHistory']['question_no']]['progress']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['progressData']->key => $_smarty_tpl->tpl_vars['progressData']->value) {
$_smarty_tpl->tpl_vars['progressData']->_loop = true;
 $_smarty_tpl->tpl_vars['title']->value = $_smarty_tpl->tpl_vars['progressData']->key;
?>
												<div class="progress-bar <?php echo $_smarty_tpl->tpl_vars['progressData']->value['class'];?>
" role="progressbar"
													 aria-valuenow="<?php echo $_smarty_tpl->tpl_vars['progressData']->value['percent'];?>
" aria-valuemin="0"
													 aria-valuemax="100" style="width:<?php echo $_smarty_tpl->tpl_vars['progressData']->value['percent'];?>
%;" title="<?php echo $_smarty_tpl->tpl_vars['title']->value;?>
<?php echo $_smarty_tpl->tpl_vars['progressData']->value['value'];?>
件(<?php echo number_format(($_smarty_tpl->tpl_vars['progressData']->value['percent']),1,'.',',');?>
%)">
													<?php echo $_smarty_tpl->tpl_vars['title']->value;?>
<br>
													<?php echo $_smarty_tpl->tpl_vars['progressData']->value['value'];?>

													件(<?php echo number_format(($_smarty_tpl->tpl_vars['progressData']->value['percent']),1,'.',',');?>
%)
												</div>
											<?php } ?>
										</div>
									</td>
								</tr>
									<?php }?>
							</table>
						</div>
					</div>
				</div>
			<?php } else { ?>
			<div class="box-header well" data-original-title="">
				<h2><span class="ques_no"><?php echo $_smarty_tpl->tpl_vars['question']->value['T61QuestionHistory']['question_no'];?>
</span>. <?php echo $_smarty_tpl->tpl_vars['question']->value['question_type_txt'];?>
</h2>
				<span>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['question']->value['T61QuestionHistory']['question_title'];?>
</span>
				<?php if ($_smarty_tpl->tpl_vars['question']->value['T61QuestionHistory']['question_yuko']==1) {?>
				<span class="label-success label label-default">有効</span>
				<?php }?>
				<div class="box-icon">
					<a href="#" class="btn btn-minimize btn-round btn-default"><i title="最小化/最大化" data-toggle="tooltip" class="glyphicon glyphicon-chevron-up"></i></a>
				</div>
			</div>
			<div class="box-content">
				<div class="row">
					<div class="col-md-6">
						<table class="table table-bordered table-striped table-condensed">
							<thead>
							<tr>
								<th class="alignCenter templateTable-60">色</th>
								<th class="alignCenter templateTable-60">番号</th>
								<th class="alignCenter templateTable-40">テキスト</th>
								<th class="alignCenter templateTable-60">件数</th>
							</tr>
							</thead>
							<tbody>
							<?php if (isset($_smarty_tpl->tpl_vars['total'])) {$_smarty_tpl->tpl_vars['total'] = clone $_smarty_tpl->tpl_vars['total'];
$_smarty_tpl->tpl_vars['total']->value = 0; $_smarty_tpl->tpl_vars['total']->nocache = null; $_smarty_tpl->tpl_vars['total']->scope = 0;
} else $_smarty_tpl->tpl_vars['total'] = new Smarty_variable(0, null, 0);?>
							<?php  $_smarty_tpl->tpl_vars['answer'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['answer']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['question']->value['list_answers']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['answer']->key => $_smarty_tpl->tpl_vars['answer']->value) {
$_smarty_tpl->tpl_vars['answer']->_loop = true;
?>
								<?php if (isset($_smarty_tpl->tpl_vars['anws_no'])) {$_smarty_tpl->tpl_vars['anws_no'] = clone $_smarty_tpl->tpl_vars['anws_no'];
$_smarty_tpl->tpl_vars['anws_no']->value = $_smarty_tpl->tpl_vars['answer']->value['answer_no']; $_smarty_tpl->tpl_vars['anws_no']->nocache = null; $_smarty_tpl->tpl_vars['anws_no']->scope = 0;
} else $_smarty_tpl->tpl_vars['anws_no'] = new Smarty_variable($_smarty_tpl->tpl_vars['answer']->value['answer_no'], null, 0);?>
								<?php if ($_smarty_tpl->tpl_vars['anws_no']->value!=0&&$_smarty_tpl->tpl_vars['anws_no']->value!=51&&$_smarty_tpl->tpl_vars['anws_no']->value!=52&&$_smarty_tpl->tpl_vars['anws_no']->value!=99) {?>
									<?php if (isset($_smarty_tpl->tpl_vars['total'])) {$_smarty_tpl->tpl_vars['total'] = clone $_smarty_tpl->tpl_vars['total'];
$_smarty_tpl->tpl_vars['total']->value = $_smarty_tpl->tpl_vars['total']->value+$_smarty_tpl->tpl_vars['question']->value['statistic_ans'][$_smarty_tpl->tpl_vars['anws_no']->value]; $_smarty_tpl->tpl_vars['total']->nocache = null; $_smarty_tpl->tpl_vars['total']->scope = 0;
} else $_smarty_tpl->tpl_vars['total'] = new Smarty_variable($_smarty_tpl->tpl_vars['total']->value+$_smarty_tpl->tpl_vars['question']->value['statistic_ans'][$_smarty_tpl->tpl_vars['anws_no']->value], null, 0);?>
									<tr>
										<td class="alignCenter">
											<span class="color_element"></span>
										</td>
										<td class="alignCenter"><?php echo $_smarty_tpl->tpl_vars['anws_no']->value;?>
</td>
										<td class="data_chart-title"><?php echo $_smarty_tpl->tpl_vars['answer']->value['answer_content'];?>
</td>
										<td class="alignRight data_chart-value elereload" answer_no="<?php echo $_smarty_tpl->tpl_vars['anws_no']->value;?>
"><?php if (isset($_smarty_tpl->tpl_vars['question']->value['statistic_ans'][$_smarty_tpl->tpl_vars['anws_no']->value])) {?><?php echo $_smarty_tpl->tpl_vars['question']->value['statistic_ans'][$_smarty_tpl->tpl_vars['anws_no']->value];?>
<?php } else { ?>0<?php }?></td>
									</tr>
								<?php }?>
							<?php } ?>
							<?php  $_smarty_tpl->tpl_vars['answer'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['answer']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['question']->value['list_answers']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['answer']->key => $_smarty_tpl->tpl_vars['answer']->value) {
$_smarty_tpl->tpl_vars['answer']->_loop = true;
?>
								<?php if (isset($_smarty_tpl->tpl_vars['anws_no'])) {$_smarty_tpl->tpl_vars['anws_no'] = clone $_smarty_tpl->tpl_vars['anws_no'];
$_smarty_tpl->tpl_vars['anws_no']->value = $_smarty_tpl->tpl_vars['answer']->value['answer_no']; $_smarty_tpl->tpl_vars['anws_no']->nocache = null; $_smarty_tpl->tpl_vars['anws_no']->scope = 0;
} else $_smarty_tpl->tpl_vars['anws_no'] = new Smarty_variable($_smarty_tpl->tpl_vars['answer']->value['answer_no'], null, 0);?>
								<?php if ($_smarty_tpl->tpl_vars['anws_no']->value==0) {?>
									<?php if (isset($_smarty_tpl->tpl_vars['total'])) {$_smarty_tpl->tpl_vars['total'] = clone $_smarty_tpl->tpl_vars['total'];
$_smarty_tpl->tpl_vars['total']->value = $_smarty_tpl->tpl_vars['total']->value+$_smarty_tpl->tpl_vars['question']->value['statistic_ans'][$_smarty_tpl->tpl_vars['anws_no']->value]; $_smarty_tpl->tpl_vars['total']->nocache = null; $_smarty_tpl->tpl_vars['total']->scope = 0;
} else $_smarty_tpl->tpl_vars['total'] = new Smarty_variable($_smarty_tpl->tpl_vars['total']->value+$_smarty_tpl->tpl_vars['question']->value['statistic_ans'][$_smarty_tpl->tpl_vars['anws_no']->value], null, 0);?>
									<tr>
										<td class="alignCenter">
											<span class="color_element"></span>
										</td>
										<td class="alignCenter"><?php echo $_smarty_tpl->tpl_vars['anws_no']->value;?>
</td>
										<td class="data_chart-title"><?php echo $_smarty_tpl->tpl_vars['answer']->value['answer_content'];?>
</td>
										<td class="alignRight data_chart-value elereload" answer_no="<?php echo $_smarty_tpl->tpl_vars['anws_no']->value;?>
"><?php if (isset($_smarty_tpl->tpl_vars['question']->value['statistic_ans'][$_smarty_tpl->tpl_vars['anws_no']->value])) {?><?php echo $_smarty_tpl->tpl_vars['question']->value['statistic_ans'][$_smarty_tpl->tpl_vars['anws_no']->value];?>
<?php } else { ?>0<?php }?></td>
									</tr>
								<?php }?>
							<?php } ?>
							<?php  $_smarty_tpl->tpl_vars['answer'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['answer']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['question']->value['list_answers']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['answer']->key => $_smarty_tpl->tpl_vars['answer']->value) {
$_smarty_tpl->tpl_vars['answer']->_loop = true;
?>
								<?php if (isset($_smarty_tpl->tpl_vars['anws_no'])) {$_smarty_tpl->tpl_vars['anws_no'] = clone $_smarty_tpl->tpl_vars['anws_no'];
$_smarty_tpl->tpl_vars['anws_no']->value = $_smarty_tpl->tpl_vars['answer']->value['answer_no']; $_smarty_tpl->tpl_vars['anws_no']->nocache = null; $_smarty_tpl->tpl_vars['anws_no']->scope = 0;
} else $_smarty_tpl->tpl_vars['anws_no'] = new Smarty_variable($_smarty_tpl->tpl_vars['answer']->value['answer_no'], null, 0);?>
								<?php if ($_smarty_tpl->tpl_vars['anws_no']->value==51||$_smarty_tpl->tpl_vars['anws_no']->value==52) {?>
									<?php if (isset($_smarty_tpl->tpl_vars['total'])) {$_smarty_tpl->tpl_vars['total'] = clone $_smarty_tpl->tpl_vars['total'];
$_smarty_tpl->tpl_vars['total']->value = $_smarty_tpl->tpl_vars['total']->value+$_smarty_tpl->tpl_vars['question']->value['statistic_ans'][$_smarty_tpl->tpl_vars['anws_no']->value]; $_smarty_tpl->tpl_vars['total']->nocache = null; $_smarty_tpl->tpl_vars['total']->scope = 0;
} else $_smarty_tpl->tpl_vars['total'] = new Smarty_variable($_smarty_tpl->tpl_vars['total']->value+$_smarty_tpl->tpl_vars['question']->value['statistic_ans'][$_smarty_tpl->tpl_vars['anws_no']->value], null, 0);?>
									<tr>
										<td class="alignCenter">
											<span class="color_element"></span>
										</td>
										<td class="alignCenter">
											<?php if ($_smarty_tpl->tpl_vars['anws_no']->value==51) {?>
												*
											<?php } elseif ($_smarty_tpl->tpl_vars['anws_no']->value==52) {?>
												#
											<?php }?>
										</td>
										<td class="data_chart-title"><?php echo $_smarty_tpl->tpl_vars['answer']->value['answer_content'];?>
</td>
										<td class="alignRight data_chart-value elereload" answer_no="<?php echo $_smarty_tpl->tpl_vars['anws_no']->value;?>
"><?php if (isset($_smarty_tpl->tpl_vars['question']->value['statistic_ans'][$_smarty_tpl->tpl_vars['anws_no']->value])) {?><?php echo $_smarty_tpl->tpl_vars['question']->value['statistic_ans'][$_smarty_tpl->tpl_vars['anws_no']->value];?>
<?php } else { ?>0<?php }?></td>
									</tr>
								<?php }?>
							<?php } ?>
							<tr>
								<td colspan="2">合計</td>
								<td></td>
								<td class="alignRight elereload"><?php echo $_smarty_tpl->tpl_vars['total']->value;?>
</td>
							</tr>
							</tbody>
						</table>
					</div>
					<div class="col-md-6">
						<div class="chart_area alignCenter elereload" id="canvas-holder-<?php echo $_smarty_tpl->tpl_vars['question']->value['T61QuestionHistory']['question_no'];?>
">
							<canvas id="chart-area-<?php echo $_smarty_tpl->tpl_vars['question']->value['T61QuestionHistory']['question_no'];?>
" width="180" height="180"/>
						</div>
						<div class="chartjs-tooltip"></div>
					</div>
				</div>
			</div>
			<?php }?>
		</div>
	</div>
</div>
<?php } ?><?php }} ?>
