<?php /* Smarty version Smarty-3.1.15, created on 2021-03-02 19:47:10
         compiled from "/opt/lampp/htdocs/cakephp/app/View/Elements/pager/pager.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1380214202603e17aea09775-69397671%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'baf74243f8924c6f41f6c47bf51c41a8c761201b' => 
    array (
      0 => '/opt/lampp/htdocs/cakephp/app/View/Elements/pager/pager.tpl',
      1 => 1614576995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1380214202603e17aea09775-69397671',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_603e17aea14f11_04616041',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_603e17aea14f11_04616041')) {function content_603e17aea14f11_04616041($_smarty_tpl) {?><div id="pager" class="pager textDefault">
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'image','path'=>'common/pager/first.png','class'=>"first",'alt'=>"最初",'border'=>"0"),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'image','path'=>'common/pager/prev.png','class'=>"prev",'alt'=>"前",'border'=>"0"),$_smarty_tpl);?>

	<span class="pagedisplay"></span> <!-- this can be any element, including an input -->
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'image','path'=>'common/pager/next.png','class'=>"next",'alt'=>"次",'border'=>"0"),$_smarty_tpl);?>

	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'image','path'=>'common/pager/last.png','class'=>"last",'alt'=>"最後",'border'=>"0"),$_smarty_tpl);?>

	<div style="display:none">
		<select id="pagesize" class=".pagesize" title="テーブルサイズ選択">
			<option value="5">5</option>
		</select>
	</div>
	<select class="gotoPage" style="padding: 2px 4px; " title="ページ番号選択"></select>　ページ
</div><?php }} ?>
