<?php /* Smarty version Smarty-3.1.15, created on 2021-03-16 23:18:01
         compiled from "/opt/lampp/htdocs/ascend/app/View/Login/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:5004256306050be19c37830-71518952%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '48e295b962f5de426bd434345c4987afd45744a3' => 
    array (
      0 => '/opt/lampp/htdocs/ascend/app/View/Login/index.tpl',
      1 => 1614576995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '5004256306050be19c37830-71518952',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'login_url' => 0,
    'login_option' => 0,
    'mode' => 0,
    'error_remaining' => 0,
    'view' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_6050be19c79232_59173095',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_6050be19c79232_59173095')) {function content_6050be19c79232_59173095($_smarty_tpl) {?><?php if (!is_callable('smarty_function_assign_assoc')) include '/opt/lampp/htdocs/ascend/app/Vendor/smarty/plugins/function.assign_assoc.php';
if (!is_callable('smarty_function_assign_option')) include '/opt/lampp/htdocs/ascend/app/Vendor/smarty/plugins/function.assign_option.php';
?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/login/login'),$_smarty_tpl);?>

<div class="row">
		
	<div class="row">
		<div class="col-md-5 center login-header" style="margin-bottom:50px;margin-top:50px;">
			<div class="loginLogo"></div>
		</div>
		<div class="well col-md-5 center login-box">
			<input type="hidden" id="refreshed" value="no">
			<?php echo smarty_function_assign_assoc(array('var'=>'login_url','value'=>"controller=>Login,action=>login"),$_smarty_tpl);?>

			<?php echo smarty_function_assign_option(array('var'=>'login_option','url'=>$_smarty_tpl->tpl_vars['login_url']->value),$_smarty_tpl);?>

			<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['form'][0][0]->wrapper(array('class'=>"form-horizontal",'func'=>'create','model'=>'M05User','options'=>$_smarty_tpl->tpl_vars['login_option']->value),$_smarty_tpl);?>

					<div class="alert alert-danger fade in" id="login-error-message" <?php if ($_smarty_tpl->tpl_vars['mode']->value=='') {?>style="display:none;"<?php }?>>
						<button type="button" class="close">×</button>
						<p>
						<?php if ($_smarty_tpl->tpl_vars['mode']->value=='username_error') {?>
							ユーザー情報が見つかりません。 ご確認の上、再度ログインして下さい。
						<?php }?>
						<?php if ($_smarty_tpl->tpl_vars['mode']->value=='password_error'&&isset($_smarty_tpl->tpl_vars['error_remaining']->value)) {?>
							パスワードが正しくないです。 後<?php echo $_smarty_tpl->tpl_vars['error_remaining']->value;?>
回でこのアカウントがロックされます。
						<?php }?>
						<?php if ($_smarty_tpl->tpl_vars['mode']->value=='systemerror') {?>
							ログインに失敗しました。 ユーザーIDまたはパスワードを再確認して下さい。
						<?php }?>
						<?php if ($_smarty_tpl->tpl_vars['mode']->value=='restore_ok') {?>
							メールアドレスに再発行URLを送信しました。
						<?php }?>
						<?php if ($_smarty_tpl->tpl_vars['mode']->value=='setpass_error') {?>
							新パスワード発行に失敗しました。
						<?php }?>
						<?php if ($_smarty_tpl->tpl_vars['mode']->value=='setpass_success') {?>
							新パスワードが発行されました。
						<?php }?>
						<?php if ($_smarty_tpl->tpl_vars['mode']->value=='expired_link') {?>
							時間切れで無効なリンクになりました。
						<?php }?>
						<?php if ($_smarty_tpl->tpl_vars['mode']->value=='invalid_link') {?>
							無効なリンクです。
						<?php }?>
						<?php if ($_smarty_tpl->tpl_vars['mode']->value=='restore_error') {?>
							ユーザーIDまたはメールアドレスが違います。
						<?php }?>
						<?php if ($_smarty_tpl->tpl_vars['mode']->value=='user_locked') {?>
							アカウントがロックされています。 ロック解除についてはシステム管理者までお問い合わせ下さい。
						<?php }?>
						<?php if ($_smarty_tpl->tpl_vars['mode']->value=='login_other_session') {?>
							すでにログインされているユーザーのためロックされています。 ロック解除についてはシステム管理者までお問い合わせ下さい。
					<?php }?>
						</p>
					</div>

					
			
				<fieldset>
					<div class="input-group input-group-lg">
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<input type="text" class="form-control" placeholder="ユーザーID" required="" autofocus="" name="data[M05User][user_id]" maxLength="30">
					</div>
					<div class="clearfix"></div><br>

					<div class="input-group input-group-lg">
						<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
						<input type="password" class="form-control" placeholder="パスワード" required="" name="data[M05User][password]">
					</div>
					<div class="clearfix"></div>
					<div class="clearfix"></div>

					<p class="center col-md-5">
						<button type="button" class="btn btn-primary btn-lg" id="lnkSubmit">ログイン</button>
					</p>
				</fieldset>
			</form>
			<?php echo $_smarty_tpl->tpl_vars['view']->value->element('footer/footer');?>

		</div>
	</div><!--/row-->
</div><!--/fluid-row--><?php }} ?>
