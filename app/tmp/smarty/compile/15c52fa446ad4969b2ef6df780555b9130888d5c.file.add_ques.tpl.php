<?php /* Smarty version Smarty-3.1.15, created on 2021-03-03 16:13:05
         compiled from "/opt/lampp/htdocs/cakephp/app/View/Elements/template/add_ques.tpl" */ ?>
<?php /*%%SmartyHeaderCode:936700080603f3701c3a963-76095013%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '15c52fa446ad4969b2ef6df780555b9130888d5c' => 
    array (
      0 => '/opt/lampp/htdocs/cakephp/app/View/Elements/template/add_ques.tpl',
      1 => 1614576995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '936700080603f3701c3a963-76095013',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'audio_mix_flag' => 0,
    'audio_mix_item' => 0,
    'item' => 0,
    'question_repeat' => 0,
    'i' => 0,
    'auth_item' => 0,
    'answer_titles' => 0,
    'answer_title' => 0,
    'answer_no' => 0,
    'phoneNotifyList' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_603f3701cc58d8_60296680',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_603f3701cc58d8_60296680')) {function content_603f3701cc58d8_60296680($_smarty_tpl) {?><!-- 有効質問 -->
<div class="form-group tblAddQues" id="tblYukoQues" style="display: none;">
	<div class="form-group">
		<label class="col-sm-2 control-label">有効質問</label>
		<div class="col-sm-7 ptop7">
			<input type="checkbox" name="question_yuko" id="question_yuko" value="1">
			<label for="question_yuko" style="margin-top: 2px;"></label>
		</div>
	</div>
</div>

<!-- 再生 -->
<div class="form-group tblAddQues" id="tblQuesPlayback" style="display: block;">
	<div id="basic-audio" class="form-group form-audio">
		<label class="col-sm-2 control-label">音声</label>
		<div class="col-sm-7">
			<?php if ($_smarty_tpl->tpl_vars['audio_mix_flag']->value=='1') {?>
			<div class="form-audio-type">
				<input type="radio" name="audio_type" value="0" class="rdAudio" checked> 音声ファイル
				<input type="radio" name="audio_type" value="1" class="rdAudio"> 音声合成(男性)
				<input type="radio" name="audio_type" value="2" class="rdAudio"> 音声合成(女性)
			</div>
			<?php } else { ?>
				<input type="radio" name="audio_type" value="0" class="rdAudio hidden" checked>
			<?php }?>
			<div class="audio" style="display: block;">
				<input type="text" name="audio_id" id="hdAudioId" class="hdAudioId" value="" style="display: none;"/>
				<input type="text" name="audio_name" class="hdAudioName" value="" style="display: none;"/>
				<input class="btnUploadAudio" type="file" accept="audio/wav" name="data[UploadFile][0]" onchange="upload_file(this);"/>
				<div class="progress" style="display: none;">
					<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
						0%
					</div>
				</div>
			</div>
			<?php if ($_smarty_tpl->tpl_vars['audio_mix_flag']->value=='1') {?>
			<div class="audio_mix" style="display: none;">
				<textarea class="form-control txtAudioContent" rows="3" cols="50" id="txtAudioContent" name="audio_content"></textarea>
				<select class="form-control slCustInfo" id="tounyuu" name="slCustInfo">
					<?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['audio_mix_item']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
						<option value="<?php echo $_smarty_tpl->tpl_vars['item']->value['T12ListItem']['item_name'];?>
"><?php echo $_smarty_tpl->tpl_vars['item']->value['T12ListItem']['item_name'];?>
</option>
					<?php } ?>
				</select>
				<button type="button" name="btnCustInfo" class="btn btn-primary btnCustInfo">挿入</button>
			</div>
			<?php }?>
		</div>
	</div>
</div>

<!-- 質問 -->
<div class="form-group tblAddQues" id="tblQuesBasic" style="display: none;">
	<div class="form-group">
		<label class="col-sm-2 control-label">繰り返し</label>
		<div class="col-sm-7">
			<select class="form-control slQuestionRepeat" id="question_repeat" name="question_repeat">
				<?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['question_repeat']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
					<option value="<?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_code'];?>
"><?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_name'];?>
</option>
				<?php } ?>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">回答番号</label>
		<div class="col-sm-9">
			<label id="cbYukoAnsw1-error" class="error" for="cbYukoAnsw1"></label>
			<table class="table table-striped table-bordered bootstrap-datatable responsive">
				<colgroup>
					<col width="10%">
					<col width="10%">
					<col width="80%">
				</colgroup>
				<thead>
					<tr>
						<th class="alignCenter">有効</th>
						<th class="alignCenter">番号</th>
						<th class="alignCenter">テキスト</th>
					</tr>
				</thead>
				<tbody>
					<?php $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['i']->step = 1;$_smarty_tpl->tpl_vars['i']->total = (int) ceil(($_smarty_tpl->tpl_vars['i']->step > 0 ? 9+1 - (1) : 1-(9)+1)/abs($_smarty_tpl->tpl_vars['i']->step));
if ($_smarty_tpl->tpl_vars['i']->total > 0) {
for ($_smarty_tpl->tpl_vars['i']->value = 1, $_smarty_tpl->tpl_vars['i']->iteration = 1;$_smarty_tpl->tpl_vars['i']->iteration <= $_smarty_tpl->tpl_vars['i']->total;$_smarty_tpl->tpl_vars['i']->value += $_smarty_tpl->tpl_vars['i']->step, $_smarty_tpl->tpl_vars['i']->iteration++) {
$_smarty_tpl->tpl_vars['i']->first = $_smarty_tpl->tpl_vars['i']->iteration == 1;$_smarty_tpl->tpl_vars['i']->last = $_smarty_tpl->tpl_vars['i']->iteration == $_smarty_tpl->tpl_vars['i']->total;?>
    				<tr>
						<input type="text" name="hdAnswId<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" answer_no="1" id="hdAnswId<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" style="display: none;"/>
						<td class="alignCenter">
							<input type="checkbox" name="cbYukoAnsw<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" id="cbYukoAnsw<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" class="cbYukoAnsw" value="<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" answer_no="<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
"/>
							<label for="cbYukoAnsw<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" style="margin-top: 2px;"></label>
						</td>
						<td class="alignCenter"><?php echo $_smarty_tpl->tpl_vars['i']->value;?>
</td>
						<td>
							<input type="text" maxlength="50" name="txtAnswContent<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" answer_no="<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" id="txtAnswContent<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" class="form-control input-xs txtAnswContent"/>
							<input type="text" name="txtAnswJump<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" style="display: none;"/>
						</td>
					</tr>
					<?php }} ?>
					<tr>
						<input type="text" name="hdAnswId0" answer_no="0" id="hdAnswId0" style="display: none;"/>
						<td class="alignCenter">
							<input type="checkbox" name="cbYukoAnsw0" answer_no="0" value="0" id="cbYukoAnsw0" class="cbYukoAnsw"/>
							<label for="cbYukoAnsw0" style="margin-top: 2px;"></label>
						</td>
						<td class="alignCenter">0</td>
						<td>
							<input type="text" maxlength="50" name="txtAnswContent0" answer_no="0" id="txtAnswContent0" class="form-control input-xs txtAnswContent"/>
							<input type="text" name="txtAnswJump0" style="display: none;"/>
						</td>
					</tr>
					<tr>
						<input type="text" name="hdAnswId51" answer_no="51" id="hdAnswId51" style="display: none;"/>
						<td class="alignCenter">
							<input type="checkbox" name="cbYukoAnsw51" id="cbYukoAnsw51" class="cbYukoAnsw" value="51"/>
							<label for="cbYukoAnsw51" style="margin-top: 2px;"></label>
						</td>
						<td class="alignCenter">*</td>
						<td>
							<input type="text" maxlength="50" name="txtAnswContent51" answer_no="51" id="txtAnswContent51" class="form-control input-xs txtAnswContent"/>
							<input type="text" name="txtAnswJump51" style="display: none;"/>
						</td>
					</tr>
					<tr>
						<input type="text" name="hdAnswId52" answer_no="52" id="hdAnswId52" style="display: none;"/>
						<td class="alignCenter">
							<input type="checkbox" name="cbYukoAnsw52" answer_no="52" id="cbYukoAnsw52" class="cbYukoAnsw" value="52"/>
							<label for="cbYukoAnsw52" style="margin-top: 2px;"></label>
						</td>
						<td class="alignCenter">#</td>
						<td>
							<input type="text" maxlength="50" name="txtAnswContent52" answer_no="52" id="txtAnswContent52" class="form-control input-xs txtAnswContent"/>
							<input type="text" name="txtAnswJump52" style="display: none;"/>
							<input type="text" name="hdAnswId99" answer_no="99" id="hdAnswId99" style="display: none;"/>
							<input type="text" name="txtAnswJump99" style="display: none;"/>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>

<div class="form-group tblAddQues" id="tblQuesAuthItem" style="display: none;">
	<div class="form-group">
		<label class="col-sm-2 control-label">認証項目</label>
		<div class="col-sm-7">
			<select id="slAuthItem" class="form-control" name="auth_item">
				<?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['auth_item']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
					<option value="<?php echo $_smarty_tpl->tpl_vars['item']->value['T12ListItem']['item_name'];?>
"><?php echo $_smarty_tpl->tpl_vars['item']->value['T12ListItem']['item_name'];?>
</option>
				<?php } ?>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">桁数</label>
		<div class="col-sm-7">
			<input type="text" class="form-control" name="digit_auth" id="txtDigitAuth" placeholder="桁数"/>
		</div>
	</div>
</div>

<!-- 数値認証 -->
<div class="form-group tblAddQues" id="tblQuesAuth" style="display: none;">
	<div class="form-group">
		<label class="col-sm-2 control-label">回答番号</label>
		<div class="col-sm-9">
			<table class="table table-striped table-bordered bootstrap-datatable responsive">
				<colgroup>
					<col width="10%">
					<col width="25%">
					<col width="65%">
				</colgroup>
				<thead>
					<tr>
						<th class="alignCenter">有効</th>
						<th class="alignCenter">判断</th>
						<th class="alignCenter">テキスト</th>
					</tr>
				</thead>
				<tbody>
					<?php $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['i']->step = 1;$_smarty_tpl->tpl_vars['i']->total = (int) ceil(($_smarty_tpl->tpl_vars['i']->step > 0 ? 3+1 - (1) : 1-(3)+1)/abs($_smarty_tpl->tpl_vars['i']->step));
if ($_smarty_tpl->tpl_vars['i']->total > 0) {
for ($_smarty_tpl->tpl_vars['i']->value = 1, $_smarty_tpl->tpl_vars['i']->iteration = 1;$_smarty_tpl->tpl_vars['i']->iteration <= $_smarty_tpl->tpl_vars['i']->total;$_smarty_tpl->tpl_vars['i']->value += $_smarty_tpl->tpl_vars['i']->step, $_smarty_tpl->tpl_vars['i']->iteration++) {
$_smarty_tpl->tpl_vars['i']->first = $_smarty_tpl->tpl_vars['i']->iteration == 1;$_smarty_tpl->tpl_vars['i']->last = $_smarty_tpl->tpl_vars['i']->iteration == $_smarty_tpl->tpl_vars['i']->total;?>
					<tr>
						<input type="text" name="hdAnswId<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" answer_no="<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" id="hdAnswId<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" style="display: none;"/>
						<td class="alignCenter">
							<input type="checkbox" name="cbYukoAnswAuth<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" id="cbYukoAnswAuth<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" answer_no="<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" value="<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" class="cbYukoAnswAuth"/>
							<label for="cbYukoAnswAuth<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" style="margin-top: 2px;"></label>
						</td>
						<?php if ($_smarty_tpl->tpl_vars['i']->value==1) {?>
						<td class="alignCenter small">入力値 ＜ 認証項目</td>
						<?php } elseif ($_smarty_tpl->tpl_vars['i']->value==2) {?>
						<td class="alignCenter small">入力値 ＝ 認証項目</td>
						<?php } elseif ($_smarty_tpl->tpl_vars['i']->value==3) {?>
						<td class="alignCenter small">入力値 ＞ 認証項目</td>
						<?php }?>
						<td>
							<input type="text" name="txtAnswContentAuth<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" id="txtAnswContentAuth<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" answer_no="<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" class="form-control input-xs txtAnswContent"/>
							<input type="text" name="txtAnswJumpAuth<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
" style="display: none;"/>
						</td>
					</tr>
					<?php }} ?>
					<input type="text" name="txtAnswJumpAuth99" style="display: none;"/>
				</tbody>
			</table>
		</div>
	</div>
</div>

<!-- 文字列認証 -->
<div class="form-group tblAddQues" id="tblQuesAuthChar" style="display: none;">
	<div class="form-group">
		<label class="col-sm-2 control-label">回答番号</label>
		<div class="col-sm-9">
			<table class="table table-striped table-bordered bootstrap-datatable responsive">
				<colgroup>
					<col width="10%">
					<col width="25%">
					<col width="65%">
				</colgroup>
				<thead>
				<tr>
					<th class="alignCenter">有効</th>
					<th class="alignCenter">判断</th>
					<th class="alignCenter">テキスト</th>
				</tr>
				</thead>
				<tbody>
				<?php if (isset($_smarty_tpl->tpl_vars['answer_titles'])) {$_smarty_tpl->tpl_vars['answer_titles'] = clone $_smarty_tpl->tpl_vars['answer_titles'];
$_smarty_tpl->tpl_vars['answer_titles']->value = array(0=>'入力値 ＝ 認証項目',1=>'入力値 ≠ 認証項目'); $_smarty_tpl->tpl_vars['answer_titles']->nocache = null; $_smarty_tpl->tpl_vars['answer_titles']->scope = 0;
} else $_smarty_tpl->tpl_vars['answer_titles'] = new Smarty_variable(array(0=>'入力値 ＝ 認証項目',1=>'入力値 ≠ 認証項目'), null, 0);?>
				<?php  $_smarty_tpl->tpl_vars['answer_title'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['answer_title']->_loop = false;
 $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['answer_titles']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['answer_title']->key => $_smarty_tpl->tpl_vars['answer_title']->value) {
$_smarty_tpl->tpl_vars['answer_title']->_loop = true;
 $_smarty_tpl->tpl_vars['i']->value = $_smarty_tpl->tpl_vars['answer_title']->key;
?>
					<tr>
						<input type="text" name="hdAnswId<?php echo $_smarty_tpl->tpl_vars['i']->value+1;?>
" answer_no="<?php echo $_smarty_tpl->tpl_vars['i']->value+1;?>
" id="hdAnswId<?php echo $_smarty_tpl->tpl_vars['i']->value+1;?>
" style="display: none;"/>
						<td class="alignCenter">
							<input type="checkbox" name="cbYukoAnswAuthChar<?php echo $_smarty_tpl->tpl_vars['i']->value+1;?>
" id="cbYukoAnswAuthChar<?php echo $_smarty_tpl->tpl_vars['i']->value+1;?>
" answer_no="<?php echo $_smarty_tpl->tpl_vars['i']->value+1;?>
" value="<?php echo $_smarty_tpl->tpl_vars['i']->value+1;?>
" class="cbYukoAnswAuth"/>
							<label for="cbYukoAnswAuthChar<?php echo $_smarty_tpl->tpl_vars['i']->value+1;?>
" style="margin-top: 2px;"></label>
						</td>
						<td class="alignCenter small"><?php echo $_smarty_tpl->tpl_vars['answer_title']->value;?>
</td>
						<td>
							<input type="text" name="txtAnswContentAuthChar<?php echo $_smarty_tpl->tpl_vars['i']->value+1;?>
" id="txtAnswContentAuthChar<?php echo $_smarty_tpl->tpl_vars['i']->value+1;?>
" answer_no="<?php echo $_smarty_tpl->tpl_vars['i']->value+1;?>
" class="form-control input-xs txtAnswContentChar"/>
							<input type="text" name="txtAnswJumpAuthChar<?php echo $_smarty_tpl->tpl_vars['i']->value+1;?>
" style="display: none;"/>
						</td>
					</tr>
				<?php } ?>
				<input type="text" name="txtAnswJumpAuthChar99" style="display: none;"/>
				</tbody>
			</table>
		</div>
	</div>
</div>

<!-- 転送 -->
<div class="form-group tblAddQues" id="tblQuesTrans" style="display: none;">
	<div id="trans-audio" class="form-group form-audio">
		<label class="col-sm-2 control-label">転送呼び出し音声</label>
		<div class="col-sm-7">
			<?php if ($_smarty_tpl->tpl_vars['audio_mix_flag']->value=='1') {?>
			<div class="form-audio-type">
				<input type="radio" name="trans_audio_type" value="0" checked class="rdAudio"> 音声ファイル
				<input type="radio" name="trans_audio_type" value="1" class="rdAudio"> 音声合成(男性)
				<input type="radio" name="trans_audio_type" value="2" class="rdAudio"> 音声合成(女性)
			</div>
			<?php } else { ?>
			<input type="radio" name="trans_audio_type" value="0" class="rdAudio hidden" checked>
			<?php }?>
			<div class="audio" style="display: block;">
				<input type="text" name="trans_audio_id" id="hdTransAudioId" class="hdAudioId" value="" style="display: none;"/>
				<input type="text" name="trans_audio_name" class="hdAudioName" value="" style="display: none;"/>
				<input class="btnUploadAudio" type="file" accept="audio/wav" name="data[UploadFile][0]" onchange="upload_file(this);"/>
				<div class="progress" style="display: none;">
					<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
						0%
					</div>
				</div>
			</div>
			<div class="audio_mix" style="display: none;">
				<textarea rows="3" cols="50" name="trans_audio_content" id="txtAudioTransContent" class="form-control txtAudioContent"></textarea>
				<select class="form-control slCustInfo" name="slCustInfo">
					<?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['audio_mix_item']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
						<option value="<?php echo $_smarty_tpl->tpl_vars['item']->value['T12ListItem']['item_name'];?>
"><?php echo $_smarty_tpl->tpl_vars['item']->value['T12ListItem']['item_name'];?>
</option>
					<?php } ?>
				</select>
				<button type="button" name="btnCustInfo" class="btn btn-primary btnCustInfo">挿入</button>
			</div>
		</div>
	</div>
	<div id="trans-timeout-audio" class="form-group form-audio">
		<label class="col-sm-2 control-label">転送タイムアウト音声</label>
		<div class="col-sm-7">
			<?php if ($_smarty_tpl->tpl_vars['audio_mix_flag']->value=='1') {?>
			<div class="form-audio-type">
				<input type="radio" name="trans_timeout_audio_type" value="0" checked class="rdAudio"> 音声ファイル
				<input type="radio" name="trans_timeout_audio_type" value="1" class="rdAudio"> 音声合成(男性)
				<input type="radio" name="trans_timeout_audio_type" value="2" class="rdAudio"> 音声合成(女性)
			</div>
			<?php } else { ?>
				<input type="radio" name="trans_timeout_audio_type" value="0" class="rdAudio hidden" checked>
			<?php }?>
			<div class="audio" style="display: block;">
				<input type="text" name="trans_timeout_audio_id" id="hdTransTimeoutAudioId" class="hdAudioId" value="" style="display: none;"/>
				<input type="text" name="trans_timeout_audio_name" class="hdAudioName" value="" style="display: none;"/>
				<input class="btnUploadAudio" type="file" accept="audio/wav" name="data[UploadFile][0]" onchange="upload_file(this);"/>
				<div class="progress" style="display: none;">
					<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
						0%
					</div>
				</div>
			</div>
			<?php if ($_smarty_tpl->tpl_vars['audio_mix_flag']->value=='1') {?>
			<div class="audio_mix" style="display: none;">
				<textarea rows="3" cols="50" id="txtAudioTransTimeoutContent" class="form-control txtAudioContent" name="trans_timeout_audio_content"></textarea>
			</div>
			<?php }?>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">転送先電話番号</label>
		<div class="col-sm-7">
			<input type="text" class="form-control" name="trans_tel" id="txtTransTel" placeholder="転送先" maxlength="11"/>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">転送先席数</label>
		<div class="col-sm-7">
			<input type="text" class="form-control" name="trans_seat_num" id="txtSeatNum" placeholder="席数"/>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">空き席数無し時<br>発信停止</label>
		<div class="col-sm-7 ptop7">
			<input type="checkbox" name="trans_empty_seat_flag" id="cbTransEmptySeatFlag" class="cbSeatEmpty" value="1"/>
			<label for="cbTransEmptySeatFlag" style="margin-top: 2px;"></label>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">転送タイムアウト(秒)</label>
		<div class="col-sm-7">
			<input type="text" class="form-control" name="trans_timeout" id="txtTimeout" placeholder="タイムアウト"/>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">転送元番号再生</label>
		<div class="col-sm-7 ptop7">
			<input type="checkbox" name="trans_phone_number_play_flag" id="cbTransPhoneNumberFlag" class="cbSeatEmpty" value="1"/>
			<label for="cbTransPhoneNumberFlag" style="margin-top: 2px;"></label>
		</div>
	</div>


</div>

<!-- 電話番号入力 -->
<div class="form-group tblAddQues" id="tblQuesTel" style="display: none;">
	<label class="col-sm-2 control-label">桁数</label>
	<div class="col-sm-7">
		<input type="text" class="form-control" name="digit_tel" id="txtDigitTel" placeholder="桁数"/>
	</div>
	<input type="text" name="hdAnswId99" answer_no="99" id="hdAnswId99" style="display: none;"/>
	<input type="text" name="txtAnswJumpTel99" style="display: none;"/>
</div>
<!-- 録音 -->
<div class="form-group tblAddQues" id="tblQuesRecord" style="display: none;">
	<div class="form-group">
		<label class="col-sm-2 control-label">秒数</label>
		<div class="col-sm-7">
			<input type="text" class="form-control" name="second_record" id="txtSecondRecord" placeholder="秒数"/>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">#ボタン終了</label>
		<div class="col-sm-7 ptop7">
			<input type="checkbox" name="yuko_button_record" id="cbYukoButtonRecord" value="1"/>
			<label for="cbYukoButtonRecord" style="margin-top: 2px;"></label>
		</div>
	</div>
</div>

<div class="form-group tblAddQues" id="tblRecheck" style="display: none;">
	<div class="form-group">
		<label class="col-sm-2 control-label">繰返確認</label>
		<div class="col-sm-7 ptop7">
			<input type="checkbox" name="recheck_flag" id="cbRecheckFlag" value="1">
			<label for="cbRecheckFlag" style="margin-top: 2px;"></label>
		</div>
	</div>
	<div id="recheck-audio" class="form-group form-audio recheckAudio" style="display: none;">
		<label class="col-sm-2 control-label">音声</label>
		<div class="col-sm-10">
			<div>
				<p class="red12">
					繰返確認時の音声は、入力値読み上げ後の音声を設定してください。
				</p>
				<p class="red12">
					設定した正番号の確認も音声に入れてください。
				</p>
				<p class="red12">
					例）「012345でよろしいですか。」の場合、「でよろしければ１を、間違っていれば２を押して下さい。」
				</p>
			</div>
		</div>
		<label class="col-sm-2 control-label"></label>
		<div class="col-sm-7">
			<?php if ($_smarty_tpl->tpl_vars['audio_mix_flag']->value=='1') {?>
			<div class="form-audio-type">
				<input type="radio" name="recheck_audio_type" value="0" checked class="rdAudio"> 音声ファイル
				<input type="radio" name="recheck_audio_type" value="1" class="rdAudio"> 音声合成(男性)
				<input type="radio" name="recheck_audio_type" value="2" class="rdAudio"> 音声合成(女性)
			</div>
			<?php } else { ?>
				<input type="radio" name="recheck_audio_type" value="0" class="rdAudio hidden" checked>
			<?php }?>
			<div class="audio" style="display: block;">
				<input type="text" name="recheck_audio_id" id="hdRecheckAudioId" class="hdAudioId" value="" style="display: none;"/>
				<input type="text" name="recheck_audio_name" class="hdAudioName" value="" style="display: none;"/>
				<input class="btnUploadAudio" type="file" accept="audio/wav" name="data[UploadFile][0]" onchange="upload_file(this);"/>
				<div class="progress" style="display: none;">
					<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
						0%
					</div>
				</div>
			</div>
			<?php if ($_smarty_tpl->tpl_vars['audio_mix_flag']->value=='1') {?>
			<div class="audio_mix" style="display: none;">
				<textarea rows="3" cols="50" id="txtAudioRecheckContent" class="form-control txtAudioContent" name="recheck_audio_content"></textarea>
<!-- 				<select class="form-control slCustInfo" name="slCustInfo"> -->
<!-- 					<?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['audio_mix_item']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?> -->
<!-- 						<option value="<?php echo $_smarty_tpl->tpl_vars['item']->value['T12ListItem']['item_name'];?>
"><?php echo $_smarty_tpl->tpl_vars['item']->value['T12ListItem']['item_name'];?>
</option> -->
<!-- 					<?php } ?> -->
<!-- 				</select> -->
<!-- 				<button type="button" name="btnCustInfo" class="btn btn-primary btnCustInfo">挿入</button> -->
			</div>
			<?php }?>
		</div>
	</div>
	<div class="form-group recheckButtonNext" style="display: none;">
		<label class="col-sm-2 control-label">正番号</label>
		<div class="col-sm-7">
			<select id="slRecheckNext" class="form-control" name="recheck_button_next">
				<?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['answer_no']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
					<option value="<?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_code'];?>
"><?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_name'];?>
</option>
				<?php } ?>
			</select>
		</div>
	</div>
</div>

<div class="form-group tblSMS" id="tblSMS" style="display: none;">
    <div class="form-group">
        <label class="col-sm-2 control-label">通知番号</label>
        <div class="col-sm-7">
            <select class="form-control" name="smsPhoneNumber" id="slSMSPhoneNumber">
                <option></option>
                <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['phoneNotifyList']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
                    <?php if ($_smarty_tpl->tpl_vars['item']->value['M08SmsApiInfo']['api_id']==@constant('SMS_API_V2_VALUE')) {?>
                        <option class="<?php echo @constant('SMS_API_V2_STRING');?>
" value="<?php echo $_smarty_tpl->tpl_vars['item']->value['M08SmsApiInfo']['display_number'];?>
" data-flag="<?php echo $_smarty_tpl->tpl_vars['item']->value['M08SmsApiInfo']['sms_short_url_allow_flag'];?>
"><?php echo $_smarty_tpl->tpl_vars['item']->value['M08SmsApiInfo']['display_number'];?>
<?php echo @constant('SMS_API_V2_AFTER_TELL_STRING');?>
</option>
                    <?php } else { ?>
                        <option class="<?php echo @constant('SMS_API_V1_STRING');?>
" value="<?php echo $_smarty_tpl->tpl_vars['item']->value['M08SmsApiInfo']['display_number'];?>
" data-flag="<?php echo $_smarty_tpl->tpl_vars['item']->value['M08SmsApiInfo']['sms_short_url_allow_flag'];?>
"><?php echo $_smarty_tpl->tpl_vars['item']->value['M08SmsApiInfo']['display_number'];?>
</option>
                    <?php }?>
                <?php } ?>
            </select>
        </div>
    </div>
    <div class="form-group form-audio">
        <label class="col-sm-2 control-label">本文</label>
        <div class="col-sm-7">
            <textarea class="form-control txtAudioContent" name="smsBodyContent" id="smsBodyContent" placeholder="本文" rows="4"></textarea>
            ※本文の文字数：<span id="smsBodyCount" style="color: red;font-weight: bold">0</span>文字(挿入項目は含まない)
            <div class="audio_mix">
	        <select class="form-control slCustInfo" id="sms_tounyuu" name="slCustInfo">
				<?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['audio_mix_item']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
					<option value="<?php echo $_smarty_tpl->tpl_vars['item']->value['T12ListItem']['item_name'];?>
"><?php echo $_smarty_tpl->tpl_vars['item']->value['T12ListItem']['item_name'];?>
</option>
				<?php } ?>
			</select>
			<button type="button" name="btnCustInfo" class="btn btn-primary btnCustInfo">挿入</button>
			</div>
        </div>
    </div>
	<div class="form-group">
		<label class="col-sm-2 control-label">短縮URL</label>
		<div class="col-sm-7 ptop7">
			<input type="checkbox" name="sms_use_short_url" id="sms_use_short_url" value="1" disabled/>
			<label for="sms_use_short_url" style="margin-top: 2px;"></label>
		</div>
    </div>
</div>

<!-- jump_ques -->
<div class="form-group tblAddQues" id="tblJumpQues" style="display: none;">
	<input type="text" name="jump_question" style="display: none;"/>
</div><?php }} ?>
