<?php /* Smarty version Smarty-3.1.15, created on 2021-03-03 16:13:05
         compiled from "/opt/lampp/htdocs/cakephp/app/View/Template/template.tpl" */ ?>
<?php /*%%SmartyHeaderCode:316274081603f3701ab1162-33856285%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '92605797c8b229e9e7688d650974cb0255faf247' => 
    array (
      0 => '/opt/lampp/htdocs/cakephp/app/View/Template/template.tpl',
      1 => 1614576995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '316274081603f3701ab1162-33856285',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'jsObjectkey' => 0,
    'exist_schedule' => 0,
    'post_code' => 0,
    'action' => 0,
    'template_id' => 0,
    'template_name' => 0,
    'permission_flag' => 0,
    'description' => 0,
    'ques_info' => 0,
    'data' => 0,
    'ques_no' => 0,
    'arr_answ' => 0,
    'answ' => 0,
    'jump_ques' => 0,
    'answer_titles' => 0,
    'answer_title' => 0,
    'key' => 0,
    'ques_types' => 0,
    'ques_type' => 0,
    'view' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_603f3701c31a47_91682365',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_603f3701c31a47_91682365')) {function content_603f3701c31a47_91682365($_smarty_tpl) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'pager'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/template/template'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/template/add_ques'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/template/validate'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'template/index'),$_smarty_tpl);?>

<script type="text/javascript">
	glb_arr_ques = <?php if ($_smarty_tpl->tpl_vars['jsObjectkey']->value) {?><?php echo $_smarty_tpl->tpl_vars['jsObjectkey']->value;?>
<?php } else { ?><?php echo 'new Object()';?>
<?php }?>;
</script>
<div id="audio-player" style="display: none;">
	<audio controls class="audio_plugin" src="" type="audio/x-wav"></audio>
</div>
<div class="col-lg-10 col-sm-10" id="content">
<!-- content starts -->
	<?php if ($_smarty_tpl->tpl_vars['exist_schedule']->value&&$_smarty_tpl->tpl_vars['post_code']->value!="U30"&&$_smarty_tpl->tpl_vars['post_code']->value!="G30") {?>
		<div class="alert alert-danger fade in"><button type="button" class="close">×</button>予定されているスケジュールに存在するテンプレートの為編集できません。</div>
	<?php }?>

	<div class="alert alert-danger fade in" id="template-error-message" style="display:none">
		<button type="button" class="close">×</button>
	</div>

	<div class="row">
		<div class="alert alert-danger" style="display: none;" id="flash-error"></div>
		<form class="form form-inline" id="TemplateForm">
			<div class="form-group col-xs-12 col-sm-6 col-lg-4">
				<label for="txtTemplateName" class="col-xs-5">テンプレート名</label>
				<div class="col-xs-7">
					<?php if ($_smarty_tpl->tpl_vars['action']->value=="update") {?>
					<input type="text" id="hdTemplateId" value="<?php if (isset($_smarty_tpl->tpl_vars['template_id']->value)&&!empty($_smarty_tpl->tpl_vars['template_id']->value)) {?><?php echo $_smarty_tpl->tpl_vars['template_id']->value;?>
<?php }?>" name="data[T30Template][id]" style="display: none;"/>
					<?php }?>
					<input type="text" class="form-control input-sm" maxlength="50" id="txtTemplateName" value="<?php if (isset($_smarty_tpl->tpl_vars['template_name']->value)&&!empty($_smarty_tpl->tpl_vars['template_name']->value)&&$_smarty_tpl->tpl_vars['action']->value=='update') {?><?php echo $_smarty_tpl->tpl_vars['template_name']->value;?>
<?php }?>" name="data[T30Template][template_name]" placeholder="テンプレート名" <?php if (!$_smarty_tpl->tpl_vars['permission_flag']->value||$_smarty_tpl->tpl_vars['exist_schedule']->value) {?>disabled<?php }?>/>
				</div>
			</div>
			<div class="form-group col-xs-12 col-sm-6 col-lg-4">
				<label for="txtTemplateDescription" class="col-xs-5">説明</label>
				<div class="col-xs-7">
					<input type="text" class="form-control input-sm"　maxlength="200" id="txtTemplateDescription" value="<?php if (isset($_smarty_tpl->tpl_vars['description']->value)&&!empty($_smarty_tpl->tpl_vars['description']->value)) {?><?php echo $_smarty_tpl->tpl_vars['description']->value;?>
<?php }?>" name="data[T30Template][description]" placeholder="説明" <?php if (!$_smarty_tpl->tpl_vars['permission_flag']->value||$_smarty_tpl->tpl_vars['exist_schedule']->value) {?>disabled<?php }?>/>
				</div>
			</div>
			<div class="form-group col-xs-12 col-sm-6 col-lg-4">
				<a href="#" title="全て開く" id="btnShowAll" data-toggle="tooltip" class="btn btn-primary btn-sm col-xs-5">全て開く</a>
				<a href="#" title="全て閉じる" id="btnHideAll" data-toggle="tooltip" class="btn btn-primary btn-sm col-xs-5 col-xs-offset-1">全て閉じる</a>
			</div>
		</form>
	</div>
	<div class="row">
		<div class="form-group col-xs-12 col-sm-6 col-lg-4">
			<?php if ($_smarty_tpl->tpl_vars['permission_flag']->value&&!$_smarty_tpl->tpl_vars['exist_schedule']->value) {?>
				<a href="#" title="セクションの追加" id="btnAddQues" data-toggle="tooltip" class="btn btn-primary col-xs-5">セクションの追加</a>
				<?php if ($_smarty_tpl->tpl_vars['action']->value=="insert"||$_smarty_tpl->tpl_vars['action']->value=="duplicate") {?>
					<a href="#" title="保存" id="btnSubmit" data-toggle="tooltip" class="btn btn-primary col-xs-5 col-xs-offset-1">保存</a>
				<?php } elseif ($_smarty_tpl->tpl_vars['action']->value=="update") {?>
					<a href="#" title="更新" id="btnSubmit" data-toggle="tooltip" class="btn btn-primary col-xs-5 col-xs-offset-1">更新</a>
				<?php }?>
			<?php }?>
		</div>
	</div>

	<div class="template">
		<?php  $_smarty_tpl->tpl_vars['data'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['data']->_loop = false;
 $_smarty_tpl->tpl_vars['ques_no'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['ques_info']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['data']->key => $_smarty_tpl->tpl_vars['data']->value) {
$_smarty_tpl->tpl_vars['data']->_loop = true;
 $_smarty_tpl->tpl_vars['ques_no']->value = $_smarty_tpl->tpl_vars['data']->key;
?>
			<?php if ($_smarty_tpl->tpl_vars['data']->value['question_type']!='9') {?>
			<div class="row row_question">
				<div class="box col-md-12">
					<div class="box-inner">
						<div class="box-header well" data-original-title="">
							<h2><span class="ques_no"><?php echo $_smarty_tpl->tpl_vars['ques_no']->value;?>
</span>. <span class="ques_type_txt"><?php echo $_smarty_tpl->tpl_vars['data']->value['question_type_txt'];?>
</span></h2>
							<span class="ques_title">&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['data']->value['question_title'];?>
</span>
							<?php if ($_smarty_tpl->tpl_vars['data']->value['question_yuko']==1) {?>
							    <span class="label-success label label-default">有効</span>
							<?php }?>
							<div class="box-icon">
								<?php if ($_smarty_tpl->tpl_vars['permission_flag']->value&&!$_smarty_tpl->tpl_vars['exist_schedule']->value) {?>
									<input type="text" name="id" class="hdQuesId" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['id'];?>
" style="display: none;">
									<input type="text" class="hdQuesNo" value="<?php echo $_smarty_tpl->tpl_vars['ques_no']->value;?>
" style="display: none;">
									<a href="#" class="btn btnEdit btn-round btn-default">
										<i title="編集" class="glyphicon glyphicon-edit"></i>
									</a>
									<a href="#" class="btn btnDelete btn-round btn-default">
										<i title="削除" class="glyphicon glyphicon-trash"></i>
									</a>
								<?php }?>
									<a href="#" class="btn btnShowHide btn-round btn-default">
										<i title="最小化/最大化" class="glyphicon glyphicon-chevron-down"></i>
									</a>
								<?php if ($_smarty_tpl->tpl_vars['permission_flag']->value&&!$_smarty_tpl->tpl_vars['exist_schedule']->value) {?>
									<a href="#" class="btn btnMove btn-round btn-default">
										<i title="位置移動" class="glyphicon glyphicon-move"></i>
									</a>
								<?php }?>
							</div>
						</div>
						<?php if ($_smarty_tpl->tpl_vars['data']->value['question_type']==1) {?><!-- 再生 -->
						<div class="box-content">
							<div class="row">
								<div class="col-md-2">
									<p>飛び先</p>
								</div>
								<div class="col-md-2 select_jump_ques_container" jump_question="<?php echo $_smarty_tpl->tpl_vars['data']->value['jump_question'];?>
"></div>
							</div>

							<div class="row">
								<div class="col-md-2">
									<p>音声</p>
								</div>
								<div class="col-md-10">
									<?php if ($_smarty_tpl->tpl_vars['data']->value['audio_type']==0) {?>
									<div class="col-md-3">
										<p><label> <?php echo $_smarty_tpl->tpl_vars['data']->value['audio_name'];?>
 </label></p>
									</div>
									<div class="col-md-7">
										<p>
											<a class="btn btnPlay btn-default" audio_id="<?php echo $_smarty_tpl->tpl_vars['data']->value['audio_id'];?>
">
												<i class="glyphicon glyphicon-play" ></i>
											</a>
											<a class="btn btnStop btn-default">
												<i class="glyphicon glyphicon-stop" ></i>
											</a>
										</p>
									</div>
									<?php } else { ?>
									<p><?php echo $_smarty_tpl->tpl_vars['data']->value['audio_content'];?>
</p>
									<?php }?>
								</div>
							</div>
						</div>
						<?php } elseif ($_smarty_tpl->tpl_vars['data']->value['question_type']==2) {?><!-- 質問 -->
						<div class="box-content">
<!-- 							<div class="row"> -->
<!-- 								<div class="col-md-2"> -->
<!-- 									<p>有効質問</p> -->
<!-- 								</div> -->
<!-- 								<div class="col-md-10"> -->
<!-- 									<?php if ($_smarty_tpl->tpl_vars['data']->value['question_yuko']==0) {?> -->
<!-- 										<p>なし</p> -->
<!-- 									<?php } else { ?> -->
<!-- 										<p>あり</p> -->
<!-- 									<?php }?> -->
<!-- 								</div> -->
<!-- 							</div> -->
							<div class="row">
								<div class="col-md-2">
									<p>音声</p>
								</div>
								<div class="col-md-10">
									<?php if ($_smarty_tpl->tpl_vars['data']->value['audio_type']==0) {?>
									<div class="col-md-3">
										<p><label> <?php echo $_smarty_tpl->tpl_vars['data']->value['audio_name'];?>
 </label></p>
									</div>
									<div class="col-md-7">
										<p>
											<a class="btn btnPlay btn-default" audio_id="<?php echo $_smarty_tpl->tpl_vars['data']->value['audio_id'];?>
">
												<i class="glyphicon glyphicon-play" ></i>
											</a>
											<a class="btn btnStop btn-default">
												<i class="glyphicon glyphicon-stop" ></i>
											</a>
										</p>
									</div>
									<?php } else { ?>
									<p><?php echo $_smarty_tpl->tpl_vars['data']->value['audio_content'];?>
</p>
									<?php }?>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2">
									<p>繰り返し</p>
								</div>
								<div class="col-md-10">
									<p><?php if ($_smarty_tpl->tpl_vars['data']->value['question_repeat']>0) {?><?php echo $_smarty_tpl->tpl_vars['data']->value['question_repeat'];?>
回<?php } else { ?>なし<?php }?></p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8">
									<p>回答</p>
									<table class="table table-bordered table-striped table-condensed">
										<thead>
											<tr>
												<th class="alignCenter templateTable-60">番号</th>
												<th class="alignCenter templateTable-40">テキスト</th>
												<th class="alignCenter templateTable-60">有効</th>
												<th class="alignCenter col-md-3">飛び先</th>
											</tr>
										</thead>
										<tbody>
											<?php  $_smarty_tpl->tpl_vars['answ'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['answ']->_loop = false;
 $_smarty_tpl->tpl_vars['ques_no_tmp'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['arr_answ']->value[$_smarty_tpl->tpl_vars['ques_no']->value]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['answ']->key => $_smarty_tpl->tpl_vars['answ']->value) {
$_smarty_tpl->tpl_vars['answ']->_loop = true;
 $_smarty_tpl->tpl_vars['ques_no_tmp']->value = $_smarty_tpl->tpl_vars['answ']->key;
?>
												<?php if ($_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['answer_no']!=0&&$_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['answer_no']!=51&&$_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['answer_no']!=52&&$_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['answer_no']!=99) {?>
												<tr>
													<td class="alignCenter">
														<?php echo $_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['answer_no'];?>

													</td>
													<td> <?php echo $_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['answer_content'];?>
 </td>
													<td class="alignCenter">
														<?php if ($_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['yuko_flag']==1) {?>
														<span class="label-success label label-default">〇</span>
														<?php } else { ?>
														<span class="label-default label">×</span>
														<?php }?>
													</td>
													<td class="alignCenter select_jump_ques_container" jump_question="<?php echo $_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['jump_question'];?>
" ans_no="<?php echo $_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['answer_no'];?>
"></td>
												</tr>
												<?php }?>
											<?php } ?>

											<?php  $_smarty_tpl->tpl_vars['answ'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['answ']->_loop = false;
 $_smarty_tpl->tpl_vars['ques_no_tmp'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['arr_answ']->value[$_smarty_tpl->tpl_vars['ques_no']->value]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['answ']->key => $_smarty_tpl->tpl_vars['answ']->value) {
$_smarty_tpl->tpl_vars['answ']->_loop = true;
 $_smarty_tpl->tpl_vars['ques_no_tmp']->value = $_smarty_tpl->tpl_vars['answ']->key;
?>
												<?php if ($_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['answer_no']==0) {?>
												<tr>
													<td class="alignCenter">
														<?php echo $_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['answer_no'];?>

													</td>
													<td> <?php echo $_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['answer_content'];?>
 </td>
													<td class="alignCenter">
														<?php if ($_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['yuko_flag']==1) {?>
														<span class="label-success label label-default">〇</span>
														<?php } else { ?>
														<span class="label-default label">×</span>
														<?php }?>
													</td>
													<td class="alignCenter select_jump_ques_container" jump_question="<?php echo $_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['jump_question'];?>
" ans_no="<?php echo $_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['answer_no'];?>
"></td>
												</tr>
												<?php }?>
											<?php } ?>

											<?php  $_smarty_tpl->tpl_vars['answ'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['answ']->_loop = false;
 $_smarty_tpl->tpl_vars['ques_no_tmp'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['arr_answ']->value[$_smarty_tpl->tpl_vars['ques_no']->value]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['answ']->key => $_smarty_tpl->tpl_vars['answ']->value) {
$_smarty_tpl->tpl_vars['answ']->_loop = true;
 $_smarty_tpl->tpl_vars['ques_no_tmp']->value = $_smarty_tpl->tpl_vars['answ']->key;
?>
												<?php if ($_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['answer_no']==51||$_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['answer_no']==52) {?>
												<tr>
													<td class="alignCenter">
														<?php if ($_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['answer_no']==51) {?>
															*
														<?php } elseif ($_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['answer_no']==52) {?>
															#
														<?php }?>
													</td>
													<td> <?php echo $_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['answer_content'];?>
 </td>
													<td class="alignCenter">
														<?php if ($_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['yuko_flag']==1) {?>
														<span class="label-success label label-default">〇</span>
														<?php } else { ?>
														<span class="label-default label">×</span>
														<?php }?>
													</td>
													<td class="alignCenter select_jump_ques_container" jump_question="<?php echo $_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['jump_question'];?>
" ans_no="<?php echo $_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['answer_no'];?>
"></td>
												</tr>
												<?php }?>
											<?php } ?>
											<tr>
												<td colspan="3">タイムアウト</td>
												<?php if (isset($_smarty_tpl->tpl_vars['jump_ques'])) {$_smarty_tpl->tpl_vars['jump_ques'] = clone $_smarty_tpl->tpl_vars['jump_ques'];
$_smarty_tpl->tpl_vars['jump_ques']->value = ''; $_smarty_tpl->tpl_vars['jump_ques']->nocache = null; $_smarty_tpl->tpl_vars['jump_ques']->scope = 0;
} else $_smarty_tpl->tpl_vars['jump_ques'] = new Smarty_variable('', null, 0);?>
												<?php  $_smarty_tpl->tpl_vars['answ'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['answ']->_loop = false;
 $_smarty_tpl->tpl_vars['ques_no_tmp'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['arr_answ']->value[$_smarty_tpl->tpl_vars['ques_no']->value]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['answ']->key => $_smarty_tpl->tpl_vars['answ']->value) {
$_smarty_tpl->tpl_vars['answ']->_loop = true;
 $_smarty_tpl->tpl_vars['ques_no_tmp']->value = $_smarty_tpl->tpl_vars['answ']->key;
?>
													<?php if ($_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['answer_no']==99) {?>
														<?php if (isset($_smarty_tpl->tpl_vars['jump_ques'])) {$_smarty_tpl->tpl_vars['jump_ques'] = clone $_smarty_tpl->tpl_vars['jump_ques'];
$_smarty_tpl->tpl_vars['jump_ques']->value = $_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['jump_question']; $_smarty_tpl->tpl_vars['jump_ques']->nocache = null; $_smarty_tpl->tpl_vars['jump_ques']->scope = 0;
} else $_smarty_tpl->tpl_vars['jump_ques'] = new Smarty_variable($_smarty_tpl->tpl_vars['answ']->value['T32TemplateButton']['jump_question'], null, 0);?>
													<?php }?>
												<?php } ?>
												<td class="alignCenter select_jump_ques_container" jump_question="<?php echo $_smarty_tpl->tpl_vars['jump_ques']->value;?>
" ans_no="99"></td>
											</tr>
											<tr>
												<td colspan="3">他の場合</td>
												<td class="alignCenter select_jump_ques_container" jump_question="<?php echo $_smarty_tpl->tpl_vars['data']->value['jump_question'];?>
"></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<?php } elseif (($_smarty_tpl->tpl_vars['data']->value['question_type']==3||$_smarty_tpl->tpl_vars['data']->value['question_type']==10)) {?><!-- 数値認証 or 文字列認証 -->
						<div class="box-content">
							<div class="row">
								<div class="col-md-2">
									<p>音声</p>
								</div>
								<div class="col-md-10">
									<?php if ($_smarty_tpl->tpl_vars['data']->value['audio_type']==0) {?>
									<div class="col-md-3">
										<p><label> <?php echo $_smarty_tpl->tpl_vars['data']->value['audio_name'];?>
 </label></p>
									</div>
									<div class="col-md-7">
										<p>
											<a class="btn btnPlay btn-default" audio_id="<?php echo $_smarty_tpl->tpl_vars['data']->value['audio_id'];?>
">
												<i class="glyphicon glyphicon-play" ></i>
											</a>
											<a class="btn btnStop btn-default">
												<i class="glyphicon glyphicon-stop" ></i>
											</a>
										</p>
									</div>
									<?php } else { ?>
									<p><?php echo $_smarty_tpl->tpl_vars['data']->value['audio_content'];?>
</p>
									<?php }?>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2">
									<p>認証項目</p>
								</div>
								<div class="col-md-10">
									<?php echo $_smarty_tpl->tpl_vars['data']->value['auth_item_name'];?>

								</div>
							</div>
							<div class="row">
								<div class="col-md-2">
									<p>桁数</p>
								</div>
								<div class="col-md-10">
									<?php echo $_smarty_tpl->tpl_vars['data']->value['digit_auth'];?>

								</div>
							</div>
							<div class="row">
								<div class="col-md-2"><p>繰返確認</p></div>
								<div class="col-md-10">
									<?php if ($_smarty_tpl->tpl_vars['data']->value['recheck_flag']==0) {?>
										<p>なし</p>
									<?php } else { ?>
										<p>あり</p>
									<?php }?>
								</div>
							</div>
							<?php if ($_smarty_tpl->tpl_vars['data']->value['recheck_flag']==1) {?>
								<div class="row">
									<div class="col-md-2">
										<p>繰返確認音声</p>
									</div>
									<div class="col-md-10">
										<?php if (($_smarty_tpl->tpl_vars['data']->value['recheck_audio_type']==1||$_smarty_tpl->tpl_vars['data']->value['recheck_audio_type']==2)) {?>
											<?php echo $_smarty_tpl->tpl_vars['data']->value['recheck_audio_content'];?>

										<?php } else { ?>
										<div class="col-md-3">
											<p><label><?php echo $_smarty_tpl->tpl_vars['data']->value['recheck_audio_name'];?>
</label></p>
										</div>
										<div class="col-md-7">
											<p>
												<a class="btn btnPlay btn-default" audio_id="<?php echo $_smarty_tpl->tpl_vars['data']->value['recheck_audio_id'];?>
">
													<i class="glyphicon glyphicon-play" ></i>
												</a>
												<a class="btn btnStop btn-default">
													<i class="glyphicon glyphicon-stop" ></i>
												</a>
											</p>
										</div>
										<?php }?>
									</div>
								</div>
							<?php }?>
							<?php if ($_smarty_tpl->tpl_vars['data']->value['recheck_flag']==1) {?>
							<div class="row">
								<div class="col-md-2">
									<p>正番号</p>
								</div>
								<div class="col-md-10">
									<?php if ($_smarty_tpl->tpl_vars['data']->value['recheck_button_next']==51) {?>*
									<?php } elseif ($_smarty_tpl->tpl_vars['data']->value['recheck_button_next']==52) {?>#
									<?php } else { ?> <?php echo $_smarty_tpl->tpl_vars['data']->value['recheck_button_next'];?>

									<?php }?>
								</div>
							</div>
							<?php }?>
							<div class="row">
								<div class="col-md-8">
									<p>回答</p>
									<table class="table table-bordered table-striped table-condensed">
										<thead>
											<tr>
												<th class="alignCenter" style="width:40px;min-width:140px;">判断</th>
												<th class="alignCenter" style="min-width:40px;">テキスト</th>
												<th class="alignCenter" style="width:60px;min-width:60px;">有効</th>
												<th class="alignCenter col-md-3">飛び先</th>
											</tr>
										</thead>
										<?php if (($_smarty_tpl->tpl_vars['data']->value['question_type']==3)) {?>
											<?php if (isset($_smarty_tpl->tpl_vars['answer_titles'])) {$_smarty_tpl->tpl_vars['answer_titles'] = clone $_smarty_tpl->tpl_vars['answer_titles'];
$_smarty_tpl->tpl_vars['answer_titles']->value = array(0=>'入力値 ＜ 認証項目',1=>'入力値 ＝ 認証項目',2=>'入力値 ＞ 認証項目'); $_smarty_tpl->tpl_vars['answer_titles']->nocache = null; $_smarty_tpl->tpl_vars['answer_titles']->scope = 0;
} else $_smarty_tpl->tpl_vars['answer_titles'] = new Smarty_variable(array(0=>'入力値 ＜ 認証項目',1=>'入力値 ＝ 認証項目',2=>'入力値 ＞ 認証項目'), null, 0);?>
										<?php } else { ?>
											<?php if (isset($_smarty_tpl->tpl_vars['answer_titles'])) {$_smarty_tpl->tpl_vars['answer_titles'] = clone $_smarty_tpl->tpl_vars['answer_titles'];
$_smarty_tpl->tpl_vars['answer_titles']->value = array(0=>'入力値 ＝ 認証項目',1=>'入力値 ≠ 認証項目'); $_smarty_tpl->tpl_vars['answer_titles']->nocache = null; $_smarty_tpl->tpl_vars['answer_titles']->scope = 0;
} else $_smarty_tpl->tpl_vars['answer_titles'] = new Smarty_variable(array(0=>'入力値 ＝ 認証項目',1=>'入力値 ≠ 認証項目'), null, 0);?>
										<?php }?>
										<tbody>
											<?php  $_smarty_tpl->tpl_vars['answer_title'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['answer_title']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['answer_titles']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['answer_title']->key => $_smarty_tpl->tpl_vars['answer_title']->value) {
$_smarty_tpl->tpl_vars['answer_title']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['answer_title']->key;
?>
												<tr>
													<td class="alignCenter"><?php echo $_smarty_tpl->tpl_vars['answer_title']->value;?>
</td>
													<td> <?php echo $_smarty_tpl->tpl_vars['arr_answ']->value[$_smarty_tpl->tpl_vars['ques_no']->value][$_smarty_tpl->tpl_vars['key']->value]['T32TemplateButton']['answer_content'];?>
 </td>
													<td class="alignCenter">
														<?php if ($_smarty_tpl->tpl_vars['arr_answ']->value[$_smarty_tpl->tpl_vars['ques_no']->value][$_smarty_tpl->tpl_vars['key']->value]['T32TemplateButton']['yuko_flag']==1) {?>
															<span class="label-success label label-default">〇</span>
														<?php } else { ?>
															<span class="label-default label">×</span>
														<?php }?>
													</td>
													<td class="alignCenter select_jump_ques_container" jump_question="<?php echo $_smarty_tpl->tpl_vars['arr_answ']->value[$_smarty_tpl->tpl_vars['ques_no']->value][$_smarty_tpl->tpl_vars['key']->value]['T32TemplateButton']['jump_question'];?>
" ans_no="<?php echo $_smarty_tpl->tpl_vars['arr_answ']->value[$_smarty_tpl->tpl_vars['ques_no']->value][$_smarty_tpl->tpl_vars['key']->value]['T32TemplateButton']['answer_no'];?>
"></td>
												</tr>
											<?php } ?>
											<tr>
												<td colspan="3">
													タイムアウト
												</td>
												<td class="alignCenter select_jump_ques_container" jump_question="<?php echo $_smarty_tpl->tpl_vars['arr_answ']->value[$_smarty_tpl->tpl_vars['ques_no']->value][$_smarty_tpl->tpl_vars['key']->value+1]['T32TemplateButton']['jump_question'];?>
" ans_no="<?php echo $_smarty_tpl->tpl_vars['arr_answ']->value[$_smarty_tpl->tpl_vars['ques_no']->value][$_smarty_tpl->tpl_vars['key']->value+1]['T32TemplateButton']['answer_no'];?>
"></td>
											</tr>
											<?php if (($_smarty_tpl->tpl_vars['data']->value['question_type']==3)) {?>
												<tr>
													<td colspan="3">
														他の場合
													</td>
													<td class="alignCenter select_jump_ques_container" jump_question="<?php echo $_smarty_tpl->tpl_vars['data']->value['jump_question'];?>
"></td>
												</tr>
											<?php }?>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<?php } elseif ($_smarty_tpl->tpl_vars['data']->value['question_type']==4) {?><!-- 番号入力 -->
						<div class="box-content">
							<div class="row">
								<div class="col-md-2">
									<p>飛び先</p>
								</div>
								<div class="col-md-2 select_jump_ques_container" jump_question="<?php echo $_smarty_tpl->tpl_vars['data']->value['jump_question'];?>
"></div>
							</div>
							<div class="row">
								<div class="col-md-2">
									<p>タイムアウト</p>
								</div>
								<?php if ((isset($_smarty_tpl->tpl_vars['arr_answ']->value[$_smarty_tpl->tpl_vars['ques_no']->value][0]))) {?>
									<div class="col-md-2 select_jump_ques_container" jump_question="<?php echo $_smarty_tpl->tpl_vars['arr_answ']->value[$_smarty_tpl->tpl_vars['ques_no']->value][0]['T32TemplateButton']['jump_question'];?>
" ans_no="<?php echo $_smarty_tpl->tpl_vars['arr_answ']->value[$_smarty_tpl->tpl_vars['ques_no']->value][0]['T32TemplateButton']['answer_no'];?>
"></div>
								<?php } else { ?>
									<div class="col-md-2 select_jump_ques_container" jump_question="" ans_no="99"></div>
								<?php }?>
							</div>
							<div class="row">
								<div class="col-md-2"><p>音声</p></div>
								<div class="col-md-10">
									<?php if ($_smarty_tpl->tpl_vars['data']->value['audio_type']==0) {?>
									<div class="col-md-3">
										<p><label> <?php echo $_smarty_tpl->tpl_vars['data']->value['audio_name'];?>
 </label></p>
									</div>
									<div class="col-md-7">
										<p>
											<a class="btn btnPlay btn-default" audio_id="<?php echo $_smarty_tpl->tpl_vars['data']->value['audio_id'];?>
">
												<i class="glyphicon glyphicon-play" ></i>
											</a>
											<a class="btn btnStop btn-default">
												<i class="glyphicon glyphicon-stop" ></i>
											</a>
										</p>
									</div>
									<?php } else { ?>
									<p><?php echo $_smarty_tpl->tpl_vars['data']->value['audio_content'];?>
</p>
									<?php }?>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"><p>桁数</p></div>
								<div class="col-md-10"><?php echo $_smarty_tpl->tpl_vars['data']->value['digit_tel'];?>
</div>
							</div>

							<div class="row">
								<div class="col-md-2"><p>繰返確認</p></div>
								<div class="col-md-10">
									<?php if ($_smarty_tpl->tpl_vars['data']->value['recheck_flag']==0) {?>
										<p>なし</p>
									<?php } else { ?>
										<p>あり</p>
									<?php }?>
								</div>
							</div>
							<?php if ($_smarty_tpl->tpl_vars['data']->value['recheck_flag']==1) {?>
							<div class="row">
								<div class="col-md-2">
									<p>繰返確認音声</p>
								</div>
								<div class="col-md-10">
									<?php if (($_smarty_tpl->tpl_vars['data']->value['recheck_audio_type']==1||$_smarty_tpl->tpl_vars['data']->value['recheck_audio_type']==2)) {?>
										<?php echo $_smarty_tpl->tpl_vars['data']->value['recheck_audio_content'];?>

									<?php } else { ?>
									<div class="col-md-3">
										<p><label><?php echo $_smarty_tpl->tpl_vars['data']->value['recheck_audio_name'];?>
</label></p>
									</div>
									<div class="col-md-7">
										<p>
											<a class="btn btnPlay btn-default" audio_id="<?php echo $_smarty_tpl->tpl_vars['data']->value['recheck_audio_id'];?>
">
												<i class="glyphicon glyphicon-play" ></i>
											</a>
											<a class="btn btnStop btn-default">
												<i class="glyphicon glyphicon-stop" ></i>
											</a>
										</p>
									</div>
									<?php }?>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2">
									<p>正番号</p>
								</div>
								<div class="col-md-10">
									<?php if ($_smarty_tpl->tpl_vars['data']->value['recheck_button_next']==51) {?>*
									<?php } elseif ($_smarty_tpl->tpl_vars['data']->value['recheck_button_next']==52) {?>#
									<?php } else { ?> <?php echo $_smarty_tpl->tpl_vars['data']->value['recheck_button_next'];?>

									<?php }?>
								</div>
							</div>
							<?php }?>
						</div>
						<?php } elseif ($_smarty_tpl->tpl_vars['data']->value['question_type']==5) {?><!-- 転送 -->
						<div class="box-content">
							<div class="row">
								<div class="col-md-2">
									<p>転送飛び先音声</p>
								</div>
								<div class="col-md-10">
									<?php if ($_smarty_tpl->tpl_vars['data']->value['audio_type']==0) {?>
									<div class="col-md-3">
										<p><label> <?php echo $_smarty_tpl->tpl_vars['data']->value['audio_name'];?>
 </label></p>
									</div>
									<div class="col-md-7">
										<p>
											<a class="btn btnPlay btn-default" audio_id="<?php echo $_smarty_tpl->tpl_vars['data']->value['audio_id'];?>
">
												<i class="glyphicon glyphicon-play" ></i>
											</a>
											<a class="btn btnStop btn-default">
												<i class="glyphicon glyphicon-stop" ></i>
											</a>
										</p>
									</div>
									<?php } else { ?>
									<p><?php echo $_smarty_tpl->tpl_vars['data']->value['audio_content'];?>
</p>
									<?php }?>
								</div>
							</div>

							<div class="row">
								<div class="col-md-2">
									<p>転送タイムアウト音声</p>
								</div>
								<div class="col-md-10">
									<?php if ($_smarty_tpl->tpl_vars['data']->value['trans_timeout_audio_type']==0) {?>
									<div class="col-md-3">
										<p><label> <?php echo $_smarty_tpl->tpl_vars['data']->value['trans_timeout_audio_name'];?>
 </label></p>
									</div>
									<div class="col-md-7">
										<p>
											<a class="btn btnPlay btn-default" audio_id="<?php echo $_smarty_tpl->tpl_vars['data']->value['trans_timeout_audio_id'];?>
">
												<i class="glyphicon glyphicon-play" ></i>
											</a>
											<a class="btn btnStop btn-default">
												<i class="glyphicon glyphicon-stop" ></i>
											</a>
										</p>
									</div>
									<?php } else { ?>
									<p><?php echo $_smarty_tpl->tpl_vars['data']->value['trans_timeout_audio_content'];?>
</p>
									<?php }?>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"><p>転送先電話番号</p></div>
								<div class="col-md-10"><?php echo $_smarty_tpl->tpl_vars['data']->value['trans_tel'];?>
</div>
							</div>
							<div class="row">
								<div class="col-md-2"><p>転送先席数</p></div>
								<div class="col-md-10"><?php echo $_smarty_tpl->tpl_vars['data']->value['trans_seat_num'];?>
</div>
							</div>
							<div class="row">
								<div class="col-md-2"><p>空き席数無し時<br>発信停止</p></div>
								<div class="col-md-10">
									<?php if ($_smarty_tpl->tpl_vars['data']->value['trans_empty_seat_flag']==0) {?>
										なし
									<?php } else { ?>
										あり
									<?php }?>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"><p>転送タイムアウト(秒)</p></div>
								<div class="col-md-10"><?php echo $_smarty_tpl->tpl_vars['data']->value['trans_timeout'];?>
</div>
							</div>
							<div class="row">
								<div class="col-md-2"><p>転送元番号再生</p></div>
								<div class="col-md-10">
									<?php if ($_smarty_tpl->tpl_vars['data']->value['trans_phone_number_play_flag']==0) {?>
										なし
									<?php } else { ?>
										あり
									<?php }?>
								</div>
							</div>
						</div>
						<?php } elseif ($_smarty_tpl->tpl_vars['data']->value['question_type']==6) {?><!-- 録音 -->
						<div class="box-content">
							<div class="row">
								<div class="col-md-2">
									<p>飛び先</p>
								</div>
								<div class="col-md-2 select_jump_ques_container" jump_question="<?php echo $_smarty_tpl->tpl_vars['data']->value['jump_question'];?>
">
								</div>
							</div>
							<div class="row">
								<div class="col-md-2">
									<p>音声</p>
								</div>
								<div class="col-md-10">
									<?php if ($_smarty_tpl->tpl_vars['data']->value['audio_type']==0) {?>
									<div class="col-md-3">
										<p><label> <?php echo $_smarty_tpl->tpl_vars['data']->value['audio_name'];?>
 </label></p>
									</div>
									<div class="col-md-7">
										<p>
											<a class="btn btnPlay btn-default" audio_id="<?php echo $_smarty_tpl->tpl_vars['data']->value['audio_id'];?>
">
												<i class="glyphicon glyphicon-play" ></i>
											</a>
											<a class="btn btnStop btn-default">
												<i class="glyphicon glyphicon-stop" ></i>
											</a>
										</p>
									</div>
									<?php } else { ?>
									<p><?php echo $_smarty_tpl->tpl_vars['data']->value['audio_content'];?>
</p>
									<?php }?>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2">
									<p>秒数</p>
								</div>
								<div class="col-md-10">
									<?php echo $_smarty_tpl->tpl_vars['data']->value['second_record'];?>

								</div>
							</div>
							<div class="row">
								<div class="col-md-2">
									<p>#ボタン終了</p>
								</div>
								<div class="col-md-10">
									<?php if ($_smarty_tpl->tpl_vars['data']->value['yuko_button_record']=='1') {?>あり<?php } else { ?>なし<?php }?>
								</div>
							</div>
						</div>
						<?php } elseif ($_smarty_tpl->tpl_vars['data']->value['question_type']==7) {?><!-- カウント -->
						<div class="box-content">
							<div class="row">
								<div class="col-md-2">
									<p>飛び先</p>
								</div>
								<div class="col-md-2 select_jump_ques_container" jump_question="<?php echo $_smarty_tpl->tpl_vars['data']->value['jump_question'];?>
"></div>
							</div>
						</div>
						<?php } elseif ($_smarty_tpl->tpl_vars['data']->value['question_type']==8) {?><!-- 切断 -->
						<?php } elseif ($_smarty_tpl->tpl_vars['data']->value['question_type']==9) {?>
						<?php } elseif ($_smarty_tpl->tpl_vars['data']->value['question_type']==13) {?>
						<div class="box-content">
							<div class="row">
								<div class="col-md-2">
									<p>飛び先</p>
								</div>
								<div class="col-md-2 select_jump_ques_container"
									 jump_question="<?php echo $_smarty_tpl->tpl_vars['data']->value['jump_question'];?>
"></div>
							</div>
							<div class="row">
								<div class="col-md-2">
									<p>通知番号</p>
								</div>
								<div class="col-md-10"><?php echo $_smarty_tpl->tpl_vars['data']->value['smsPhoneNumber'];?>
</div>
							</div>
							<div class="row">
								<div class="col-md-2"><p>本文</p></div>
								<div class="col-md-10"><?php echo $_smarty_tpl->tpl_vars['data']->value['smsBodyContent'];?>
</div>
							</div>
							<div class="row">
								<div class="col-md-2"><p>短縮URL</p></div>
								<!---   -->
								<div class="col-md-10"><?php if ($_smarty_tpl->tpl_vars['data']->value['sms_use_short_url']=='1') {?>あり<?php } else { ?>なし<?php }?></div>
							</div>
						</div>
						<?php }?>
					</div>
				</div>
			</div>
			<?php }?>
		<?php } ?>
	</div>
	<div class="timeout">
		<?php  $_smarty_tpl->tpl_vars['data'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['data']->_loop = false;
 $_smarty_tpl->tpl_vars['ques_no'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['ques_info']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['data']->key => $_smarty_tpl->tpl_vars['data']->value) {
$_smarty_tpl->tpl_vars['data']->_loop = true;
 $_smarty_tpl->tpl_vars['ques_no']->value = $_smarty_tpl->tpl_vars['data']->key;
?>
		<?php if ($_smarty_tpl->tpl_vars['data']->value['question_type']=='9') {?>
		<div class="row row_question">
			<div class="box col-md-12">
				<div class="box-inner">
					<div class="box-header well" data-original-title="">
						<h2><span class="ques_no"><?php echo $_smarty_tpl->tpl_vars['ques_no']->value;?>
</span>. <span class="ques_type_txt"><?php echo $_smarty_tpl->tpl_vars['data']->value['question_type_txt'];?>
</span></h2>
						<span class="ques_title">&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['data']->value['question_title'];?>
</span>
						<div class="box-icon">
							<?php if ($_smarty_tpl->tpl_vars['permission_flag']->value&&!$_smarty_tpl->tpl_vars['exist_schedule']->value) {?>
								<input type="text" name="id" class="hdQuesId" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['id'];?>
" style="display: none;">
								<input type="text" class="hdQuesNo" value="<?php echo $_smarty_tpl->tpl_vars['ques_no']->value;?>
" style="display: none;">
								<a href="#" class="btn btnEdit btn-round btn-default">
									<i title="編集" class="glyphicon glyphicon-edit"></i>
								</a>
								<a href="#" class="btn btnDelete btn-round btn-default">
									<i title="削除" class="glyphicon glyphicon-trash"></i>
								</a>
							<?php }?>
								<a href="#" class="btn btnShowHide btn-round btn-default">
									<i title="最小化/最大化" class="glyphicon glyphicon-chevron-down"></i>
								</a>
						</div>
					</div>
					<div class="box-content">
						<div class="row">
							<div class="col-md-2">
								<p>音声</p>
							</div>
							<div class="col-md-10">
								<?php if ($_smarty_tpl->tpl_vars['data']->value['audio_type']==0) {?>
								<div class="col-md-3">
									<p><label> <?php echo $_smarty_tpl->tpl_vars['data']->value['audio_name'];?>
 </label></p>
								</div>
								<div class="col-md-7">
									<p>
										<a class="btn btnPlay btn-default" audio_id="<?php echo $_smarty_tpl->tpl_vars['data']->value['audio_id'];?>
">
											<i class="glyphicon glyphicon-play" ></i>
										</a>
										<a class="btn btnStop btn-default">
											<i class="glyphicon glyphicon-stop" ></i>
										</a>
									</p>
								</div>
								<?php } else { ?>
								<p><?php echo $_smarty_tpl->tpl_vars['data']->value['audio_content'];?>
</p>
								<?php }?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<?php }?>
		<?php } ?>
	</div>
	<!-- セクションの追加のMODAL START-->
	<!-- 20160222 Edit by Giang : #6495 - Bug 132 - disable close popup add ques when upload wav file -->
	<div class="modal" id="dialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog" style="width: 800px;">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<!-- 20160222 Edit by Giang : #6495 - Bug 132 - disable close popup add ques when upload wav file -->
					<button type="button" class="close btnClosePopupAddQues" data-dismiss="modal">
						   <span aria-hidden="true">&times;</span>
						   <span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">
						セクションの追加
					</h4>
				</div>

				<!-- Modal Body -->
				<div class="modal-body" style="height:600px;">
					<form class="form-horizontal" role="form" id="form_add_call_list" method="post" action="<?php echo Router::url('',true);?>
" accept-charset="utf-8" enctype="multipart/form-data">
						<div class="alert alert-danger fade in" id="popupflash-error" style="display:none;">
							<button type="button" class="close">×</button>
						</div>
						<input type="text" name="id" value="" style="display: none;"/>
						<input type="text" name="question_no" value="" style="display: none;"/>
						<input type="hidden" id ="edit_flg">
						<div class="form-group">
							<div class="form-group">
								<label class="col-sm-2 control-label">種類</label>
								<div class="form-group col-sm-7">
									<select id="slQuesType" name="question_type" class="form-control">
									<?php  $_smarty_tpl->tpl_vars['ques_type'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ques_type']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['ques_types']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ques_type']->key => $_smarty_tpl->tpl_vars['ques_type']->value) {
$_smarty_tpl->tpl_vars['ques_type']->_loop = true;
?>
										<option value="<?php echo $_smarty_tpl->tpl_vars['ques_type']->value['M90PulldownCode']['item_code'];?>
"><?php echo $_smarty_tpl->tpl_vars['ques_type']->value['M90PulldownCode']['item_name'];?>
</option>
									<?php } ?>
								  	</select>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="form-group">
								<label class="col-sm-2 control-label">タイトル</label>
								<div class="col-sm-7">
									<input type="text" maxlength="50" class="form-control" name="question_title" id="txtQuesTitle" placeholder="タイトル"/>
								</div>
							</div>
						</div>
						<div id="add_ques">
						<?php echo $_smarty_tpl->tpl_vars['view']->value->element('template/add_ques');?>

						</div>
					</form>
				</div>
				<!-- Modal Footer -->
				<div class="modal-footer">
					<!-- 20160222 Edit by Giang : #6495 - Bug 132 - disable close popup add ques when upload wav file -->
					<button type="button" class="btn btn-default btnClosePopupAddQues" data-dismiss="modal">閉じる</button>
					<button type="button" id="btnSubmitQues" class="btn btn-primary" ques_no="">保存</button>
				</div>
			</div>
		</div>
	</div>
	<!-- セクションの追加のMODAL END-->

<!-- content ends -->
</div><?php }} ?>
