<?php /* Smarty version Smarty-3.1.15, created on 2021-03-17 11:04:52
         compiled from "/opt/lampp/htdocs/ascend/app/View/Layouts/default.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2126807438605163c4cbb2d1-73730541%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1380c6ab7be1d57dc19c3f001fe871e8dfacd524' => 
    array (
      0 => '/opt/lampp/htdocs/ascend/app/View/Layouts/default.tpl',
      1 => 1614576995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2126807438605163c4cbb2d1-73730541',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'appRoot' => 0,
    'controller' => 0,
    'view' => 0,
    'hide_menu_flag' => 0,
    'content_for_layout' => 0,
    'current_action' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_605163c4d07909_16086978',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_605163c4d07909_16086978')) {function content_605163c4d07909_16086978($_smarty_tpl) {?><!DOCTYPE html>
<html>
<head>
	<meta charset = "UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="robots" content="noindex, nofollow">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ロボットコールセンター</title>
	<script type='text/javascript'>
		var appRoot = "<?php echo $_smarty_tpl->tpl_vars['appRoot']->value;?>
/";
	</script>
	
	<!-- CSS -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'common/bootstrap'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'common/charisma-app'),$_smarty_tpl);?>

	
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'chosen/chosen'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'colorbox/example3/colorbox'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'responsive-tables/responsive-tables'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'common/jquery.noty'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'common/noty_theme_default'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'common/elfinder.min'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'common/elfinder.theme'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'common/jquery.iphone.toggle'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'common/uploadify'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'common/animate.min'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'common/style'),$_smarty_tpl);?>

	<!-- jQuery -->
	
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery-1.11.2'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery-ui'),$_smarty_tpl);?>

	
	<!-- external javascript -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'bootstrap.min'),$_smarty_tpl);?>

	<!-- library for cookie management -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.cookie'),$_smarty_tpl);?>

	<!-- calender plugin -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'moment/min/moment.min'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'fullcalendar/dist/fullcalendar.min'),$_smarty_tpl);?>

	<!-- data table plugin -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.dataTables.min'),$_smarty_tpl);?>

	<!-- select or dropdown enhancer -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'chosen/chosen.jquery.min'),$_smarty_tpl);?>

	<!-- plugin for gallery image view -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'colorbox/jquery.colorbox-min'),$_smarty_tpl);?>

	<!-- notification plugin -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.noty'),$_smarty_tpl);?>

	<!-- library for making tables responsive -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'responsive-tables/responsive-tables'),$_smarty_tpl);?>

	<!-- tour plugin -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'bootstrap-tour/build/js/bootstrap-tour.min'),$_smarty_tpl);?>

	<!-- star rating plugin -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.raty.min'),$_smarty_tpl);?>

	<!-- for iOS style toggle switch -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.iphone.toggle'),$_smarty_tpl);?>

	<!-- autogrowing textarea plugin -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.autogrow-textarea'),$_smarty_tpl);?>

	<!-- multiple file upload plugin -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.uploadify-3.1.min'),$_smarty_tpl);?>

	<!-- history.js for cross-browser state change on ajax -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.history'),$_smarty_tpl);?>

	<!-- application script for Charisma demo -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'charisma'),$_smarty_tpl);?>

	
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery-ui-timepicker-addon'),$_smarty_tpl);?>

	
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery-ui-datetimepicker-localization'),$_smarty_tpl);?>

	
	

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.blockUI'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'common/util'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'common/messages'),$_smarty_tpl);?>


	<!-- Tablesorter -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'common/theme.gold.css'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.tablesorter'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.tablesorter.widgets'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.tablesorter.widget-cssStickyHeaders'),$_smarty_tpl);?>


	<!-- Tablesorter pager -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'common/jquery.tablesorter.pager.css'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.tablesorter.pager'),$_smarty_tpl);?>


	<!-- clipboard.min.js -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'clipboard.min'),$_smarty_tpl);?>

	
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'menu/menu'),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/menu/menu'),$_smarty_tpl);?>

</head>

<body>
	<?php if ($_smarty_tpl->tpl_vars['controller']->value!='login') {?>
		<div class="navbar navbar-default" role="navigation">
			<?php echo $_smarty_tpl->tpl_vars['view']->value->element('header/header');?>

		</div>
	<?php }?>
	<div class="ch-container">
		<?php if ($_smarty_tpl->tpl_vars['controller']->value!='login') {?>
			<?php if ((isset($_smarty_tpl->tpl_vars['hide_menu_flag']->value)&&$_smarty_tpl->tpl_vars['hide_menu_flag']->value)) {?>
				<div id="menu_blank"></div>
			<?php } else { ?>
				<?php echo $_smarty_tpl->tpl_vars['view']->value->element('menu/menu');?>

			<?php }?>
		<?php }?>
		<?php echo $_smarty_tpl->tpl_vars['content_for_layout']->value;?>

		<?php echo $_smarty_tpl->tpl_vars['view']->value->element('debug/sql_dump');?>

		<div id="current_controller" style="display:none;"><?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
</div>
		<div id="current_action" style="display:none;"><?php echo $_smarty_tpl->tpl_vars['current_action']->value;?>
</div>
	</div><!--/.fluid-container-->
	<?php if ($_smarty_tpl->tpl_vars['controller']->value!='login') {?>
		<div id="footer">
			<?php echo $_smarty_tpl->tpl_vars['view']->value->element('footer/footer');?>

		</div>
	<?php }?>
</body>

</html>
<?php }} ?>
