<?php /* Smarty version Smarty-3.1.15, created on 2021-03-02 19:47:10
         compiled from "/opt/lampp/htdocs/cakephp/app/View/Elements/menu/menu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1074140199603e17aea575d3-96368106%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3ecb936c849c0c3d7e136df38749c81a616ed123' => 
    array (
      0 => '/opt/lampp/htdocs/cakephp/app/View/Elements/menu/menu.tpl',
      1 => 1614576995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1074140199603e17aea575d3-96368106',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'data_hide_menu' => 0,
    'controller' => 0,
    'enable_manage_account' => 0,
    'enable_list_manageuser' => 0,
    'enable_manage_menu' => 0,
    'enable_download_result' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_603e17aea94193_59702475',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_603e17aea94193_59702475')) {function content_603e17aea94193_59702475($_smarty_tpl) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/menu/menu'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.validate'),$_smarty_tpl);?>

<!-- left menu starts -->
<div class="row">
	<div class="col-sm-2 col-lg-2">
		<div class="sidebar-nav">
			<div class="nav-canvas">
				<div class="nav-sm nav nav-stacked">

				</div>
				<?php if (!(isset($_smarty_tpl->tpl_vars['data_hide_menu']->value['outbound'])&&$_smarty_tpl->tpl_vars['data_hide_menu']->value['outbound']==1)) {?>
				<ul class="nav nav-pills nav-stacked main-menu">
					<li class="nav-header"><i class="glyphicon glyphicon-circle-arrow-right"></i><span>アウトバウンド</li>
					<li <?php if ($_smarty_tpl->tpl_vars['controller']->value=="template") {?>class="active"<?php }?>><a class="ajax-link" href="javascript:void(0);" id="lnkOutboundTemplate"><i class="glyphicon glyphicon-list-alt"></i><span> テンプレート</span></a></li>
					<li <?php if ($_smarty_tpl->tpl_vars['controller']->value=="calllist") {?>class="active"<?php }?>><a class="ajax-link" href="javascript:void(0);" id="lnkCallList"><i class="glyphicon glyphicon-list"></i><span> 発信リスト</span></a></li>
					<!-- 20160226 Add by Giang : #6532 - add menu call_list_ng -->
					<li <?php if ($_smarty_tpl->tpl_vars['controller']->value=="calllistng") {?>class="active"<?php }?>><a class="ajax-link" href="javascript:void(0);" id="lnkCallListNg"><i class="glyphicon glyphicon-list"></i><span> 発信NGリスト</span></a></li>
					<li <?php if ($_smarty_tpl->tpl_vars['controller']->value=="outschedule") {?>class="active"<?php }?>><a class="ajax-link" href="javascript:void(0);" id="lnkOutSchedule"><i class="glyphicon glyphicon-calendar"></i><span> スケジュール</span></a></li>
				</ul>
				<?php }?>
				<?php if (!(isset($_smarty_tpl->tpl_vars['data_hide_menu']->value['inbound'])&&$_smarty_tpl->tpl_vars['data_hide_menu']->value['inbound']==1)) {?>
				<ul class="nav nav-pills nav-stacked main-menu">
					<li class="nav-header"><i class="glyphicon glyphicon-circle-arrow-left"></i>インバウンド</li>
					<li <?php if ($_smarty_tpl->tpl_vars['controller']->value=="inboundtemplate") {?>class="active"<?php }?>><a class="ajax-link" href="javascript:void(0);" id="lnkInboundTemplate"><i class="glyphicon glyphicon-list-alt"></i><span> テンプレート</span></a></li>
					<li <?php if ($_smarty_tpl->tpl_vars['controller']->value=="inboundcalllist") {?>class="active"<?php }?>><a class="ajax-link" href="javascript:void(0);" id="lnkInboundCallList"><i class="glyphicon glyphicon-list"></i><span> 着信リスト</span></a></li>
					<li <?php if ($_smarty_tpl->tpl_vars['controller']->value=="inboundincominghistory") {?>class="active"<?php }?>><a class="ajax-link" href="javascript:void(0);" id="lnkInboundIncomingHistory"><i class="glyphicon glyphicon-book"></i><span> 着信設定</span></a></li>
					<li <?php if ($_smarty_tpl->tpl_vars['controller']->value=="inboundrestrict") {?>class="active"<?php }?>><a class="ajax-link" href="javascript:void(0);" id="lnkInboundRestrictIncoming"><i class="glyphicon glyphicon-list"></i><span> 着信拒否リスト</span></a></li>
				</ul>
				<?php }?>
				<?php if (!(isset($_smarty_tpl->tpl_vars['data_hide_menu']->value['sms'])&&$_smarty_tpl->tpl_vars['data_hide_menu']->value['sms']==1)) {?>
				<!-- 20160420 Add by Ascend-Hung : #7017 - Add SMS Menu -->
				<ul class="nav nav-pills nav-stacked main-menu">
					<li class="nav-header"><i class="glyphicon glyphicon-circle-arrow-right"></i><span>SMS</li>
					<li <?php if ($_smarty_tpl->tpl_vars['controller']->value=="smstemplate") {?>class="active"<?php }?>><a class="ajax-link" href="javascript:void(0);" id="lnkSmsTemplate"><i class="glyphicon glyphicon-list-alt"></i><span> テンプレート</span></a></li>
					<li <?php if ($_smarty_tpl->tpl_vars['controller']->value=="smssendlist") {?>class="active"<?php }?>><a class="ajax-link" href="javascript:void(0);" id="lnkSmsSendList"><i class="glyphicon glyphicon-book"></i><span> 送信リスト</span></a></li>	
					<li <?php if ($_smarty_tpl->tpl_vars['controller']->value=="smsschedule") {?>class="active"<?php }?>><a class="ajax-link" href="javascript:void(0);" id="lnkSmsSchedule"><i class="glyphicon glyphicon-calendar"></i><span> スケジュール</span></a></li>
				</ul>
				<?php }?>
				<?php if ($_smarty_tpl->tpl_vars['enable_manage_account']->value||$_smarty_tpl->tpl_vars['enable_list_manageuser']->value||$_smarty_tpl->tpl_vars['enable_manage_menu']->value) {?>
					<ul class="nav nav-pills nav-stacked main-menu">
						<li class="nav-header"><i class="glyphicon glyphicon-cog"></i>管理</li>
						<?php if ($_smarty_tpl->tpl_vars['enable_manage_account']->value) {?>
							<li <?php if ($_smarty_tpl->tpl_vars['controller']->value=="manageaccount") {?>class="active"<?php }?>><a class="ajax-link" href="javascript:void(0);" id="lnkManageAccount"><i class="glyphicon glyphicon-wrench"></i><span> アカウント管理</span></a></li>
						<?php }?>
						<?php if ($_smarty_tpl->tpl_vars['enable_list_manageuser']->value) {?>
							<li <?php if ($_smarty_tpl->tpl_vars['controller']->value=="manageuser") {?>class="active"<?php }?>><a class="ajax-link" href="javascript:void(0);" id="lnkManageUser"><i class="glyphicon glyphicon-user"></i><span> ユーザー管理</span></a></li>
						<?php }?>
						<?php if ($_smarty_tpl->tpl_vars['enable_manage_menu']->value) {?>
							<li <?php if ($_smarty_tpl->tpl_vars['controller']->value=="managemenu") {?>class="active"<?php }?>><a class="ajax-link" href="javascript:void(0);" id="lnkManageMenu"><i class="glyphicon glyphicon-menu-hamburger"></i><span> メニュー管理</span></a></li>
						<?php }?>
						<?php if ($_smarty_tpl->tpl_vars['enable_download_result']->value) {?>
							<li <?php if ($_smarty_tpl->tpl_vars['controller']->value=="downloadresult") {?>class="active"<?php }?>><a class="ajax-link" href="javascript:void(0);" id="lnkDownloadResult"><i class="glyphicon glyphicon glyphicon-download"></i><span> 結果ログ一括DL</span></a></li>
						<?php }?>
						
					</ul>
				<?php }?>
				<ul class="nav nav-pills nav-stacked main-menu">
					<li class="nav-header"><i class="glyphicon glyphicon-cog"></i>マニュアルダウンロード</li>
					<li><a class="ajax-link" href="javascript:void(0);" id="lnkDownloadManual"><i class="glyphicon glyphicon-file"></i><span> 操作マニュアル</span></a></li>
					<li><a class="ajax-link" href="javascript:void(0);" id="lnkDownloadClearCacheGuide"><i class="glyphicon glyphicon-file"></i><span> キャッシュ削除マニュアル</span></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--/span-->
	<!-- left menu ends -->
<?php }} ?>
