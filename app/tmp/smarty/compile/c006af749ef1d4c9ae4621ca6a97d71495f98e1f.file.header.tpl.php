<?php /* Smarty version Smarty-3.1.15, created on 2021-03-02 19:47:10
         compiled from "/opt/lampp/htdocs/cakephp/app/View/Elements/header/header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:625459671603e17aea24854-72660567%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c006af749ef1d4c9ae4621ca6a97d71495f98e1f' => 
    array (
      0 => '/opt/lampp/htdocs/cakephp/app/View/Elements/header/header.tpl',
      1 => 1614576995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '625459671603e17aea24854-72660567',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'userName' => 0,
    'companies' => 0,
    'controller' => 0,
    'current_action' => 0,
    'company' => 0,
    'this' => 0,
    'company_name' => 0,
    'postName' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_603e17aea54631_13504475',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_603e17aea54631_13504475')) {function content_603e17aea54631_13504475($_smarty_tpl) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/header/header'),$_smarty_tpl);?>

<div class="navbar-inner">
	<button type="button" class="navbar-toggle pull-left animated flip">
		<span class="sr-only">Toggle navigation</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	</button>
	
	<a class="navbar-brand" href="javascript:void(0);"  style="cursor:default;"><div class="headerLogo"></div></a>
	
	<!-- ユーザー プルダウン starts -->
	<div class="btn-group pull-right">
		<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
			<i class="glyphicon glyphicon-user"></i><span class="hidden-sm hidden-xs"><?php echo $_smarty_tpl->tpl_vars['userName']->value;?>
</span>
			<span class="caret"></span>
		</button>
		<ul class="dropdown-menu">
			<!--li class="divider"></li-->
			<li><a href="javascript:void(0);" id="lnkLogout">ログアウト</a></li>
		</ul>
	</div>
	<!-- ユーザー プルダウン ends -->
	
	<!-- 会社名 starts -->
		<div class="btn-group pull-right">
			<?php if (($_smarty_tpl->tpl_vars['companies']->value&&($_smarty_tpl->tpl_vars['controller']->value=="menu"||($_smarty_tpl->tpl_vars['controller']->value=='template'&&$_smarty_tpl->tpl_vars['current_action']->value!='template')||($_smarty_tpl->tpl_vars['controller']->value=='calllist'&&$_smarty_tpl->tpl_vars['current_action']->value!='detail')||($_smarty_tpl->tpl_vars['controller']->value=='outschedule'&&$_smarty_tpl->tpl_vars['current_action']->value!='status')||($_smarty_tpl->tpl_vars['controller']->value=='calllistng'&&$_smarty_tpl->tpl_vars['current_action']->value!='detail')||($_smarty_tpl->tpl_vars['controller']->value=='inboundrestrict'&&$_smarty_tpl->tpl_vars['current_action']->value!='detail')||($_smarty_tpl->tpl_vars['controller']->value=='inboundtemplate'&&$_smarty_tpl->tpl_vars['current_action']->value=='index')||($_smarty_tpl->tpl_vars['controller']->value=='inboundcalllist'&&$_smarty_tpl->tpl_vars['current_action']->value=='index')||($_smarty_tpl->tpl_vars['controller']->value=='inboundincominghistory'&&$_smarty_tpl->tpl_vars['current_action']->value=='index')||($_smarty_tpl->tpl_vars['controller']->value=='smstemplate'&&$_smarty_tpl->tpl_vars['current_action']->value=='index')||($_smarty_tpl->tpl_vars['controller']->value=='smssendlist'&&$_smarty_tpl->tpl_vars['current_action']->value=='index')||($_smarty_tpl->tpl_vars['controller']->value=='smsschedule'&&$_smarty_tpl->tpl_vars['current_action']->value=='index')))) {?>
				<select id="changeCompany" class="form-control btn btn-default pull-right" onchange="changeCompany();" data-rel="searchable">
					<?php  $_smarty_tpl->tpl_vars['company'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['company']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['companies']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['company']->key => $_smarty_tpl->tpl_vars['company']->value) {
$_smarty_tpl->tpl_vars['company']->_loop = true;
?>
						<option value=<?php echo $_smarty_tpl->tpl_vars['company']->value['M02Company']['company_id'];?>
 <?php if ($_smarty_tpl->tpl_vars['this']->value->Session->read('company_id')==$_smarty_tpl->tpl_vars['company']->value['M02Company']['company_id']) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['company']->value['M02Company']['company_name'];?>
</option>
					<?php } ?>
				</select>
			<?php } else { ?>
				<span class="header-span"><?php echo $_smarty_tpl->tpl_vars['company_name']->value['M02Company']['company_name'];?>
</span>
			<?php }?>
			<span class="header-span"><?php echo $_smarty_tpl->tpl_vars['postName']->value;?>
</span>
		</div>
	<!-- 会社名 ends -->

	<div class="collapse navbar-collapse nav navbar-nav top-menu">
	</div>
	
</div><?php }} ?>
