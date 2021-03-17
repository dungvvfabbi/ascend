<?php /* Smarty version Smarty-3.1.15, created on 2021-03-03 16:43:47
         compiled from "/opt/lampp/htdocs/cakephp/app/View/OutSchedule/status.tpl" */ ?>
<?php /*%%SmartyHeaderCode:394161949603f3e334142d3-76121770%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9236a9dacbe8e84a5f65d020d2bce824134dabd0' => 
    array (
      0 => '/opt/lampp/htdocs/cakephp/app/View/OutSchedule/status.tpl',
      1 => 1614576995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '394161949603f3e334142d3-76121770',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'min_distance_call_time' => 0,
    'view' => 0,
    'headers' => 0,
    'width_table' => 0,
    'key' => 0,
    'sort_flags' => 0,
    'header' => 0,
    'sortColumn' => 0,
    'sortType' => 0,
    'page' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_603f3e3348d654_33830694',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_603f3e3348d654_33830694')) {function content_603f3e3348d654_33830694($_smarty_tpl) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.validate'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'outschedule/dhtmlxscheduler'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'outschedule/my_dhtmlxscheduler'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'common/jquery-ui.css'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'outschedule/status'),$_smarty_tpl);?>


<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'dhtmlxscheduler'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'dhtmlxscheduler_timeline'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'dhtmlxscheduler_tooltip'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'Chart'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/outschedule/init_timeline'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/outschedule/status'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/outschedule/popup_recall'),$_smarty_tpl);?>



<script>
	var min_call_time = <?php echo $_smarty_tpl->tpl_vars['min_distance_call_time']->value;?>
;
</script>


<div id="audio-player" style="display: none;">
	<audio controls class="audio_plugin" src="" type="audio/x-wav"></audio>
</div>

<div class="col-lg-10 col-sm-10" id="content">
	<!-- content starts -->
	<?php echo $_smarty_tpl->tpl_vars['view']->value->element('outschedule/status_view');?>

</div>

<div class="col-lg-10 col-sm-10">
	<?php if (isset($_smarty_tpl->tpl_vars['width_table'])) {$_smarty_tpl->tpl_vars['width_table'] = clone $_smarty_tpl->tpl_vars['width_table'];
$_smarty_tpl->tpl_vars['width_table']->value = 165+150+150+150; $_smarty_tpl->tpl_vars['width_table']->nocache = null; $_smarty_tpl->tpl_vars['width_table']->scope = 0;
} else $_smarty_tpl->tpl_vars['width_table'] = new Smarty_variable(165+150+150+150, null, 0);?>
	<?php $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['i']->step = 1;$_smarty_tpl->tpl_vars['i']->total = (int) ceil(($_smarty_tpl->tpl_vars['i']->step > 0 ? count($_smarty_tpl->tpl_vars['headers']->value)+1 - (1) : 1-(count($_smarty_tpl->tpl_vars['headers']->value))+1)/abs($_smarty_tpl->tpl_vars['i']->step));
if ($_smarty_tpl->tpl_vars['i']->total > 0) {
for ($_smarty_tpl->tpl_vars['i']->value = 1, $_smarty_tpl->tpl_vars['i']->iteration = 1;$_smarty_tpl->tpl_vars['i']->iteration <= $_smarty_tpl->tpl_vars['i']->total;$_smarty_tpl->tpl_vars['i']->value += $_smarty_tpl->tpl_vars['i']->step, $_smarty_tpl->tpl_vars['i']->iteration++) {
$_smarty_tpl->tpl_vars['i']->first = $_smarty_tpl->tpl_vars['i']->iteration == 1;$_smarty_tpl->tpl_vars['i']->last = $_smarty_tpl->tpl_vars['i']->iteration == $_smarty_tpl->tpl_vars['i']->total;?>
		<?php if (isset($_smarty_tpl->tpl_vars['width_table'])) {$_smarty_tpl->tpl_vars['width_table'] = clone $_smarty_tpl->tpl_vars['width_table'];
$_smarty_tpl->tpl_vars['width_table']->value = $_smarty_tpl->tpl_vars['width_table']->value+80; $_smarty_tpl->tpl_vars['width_table']->nocache = null; $_smarty_tpl->tpl_vars['width_table']->scope = 0;
} else $_smarty_tpl->tpl_vars['width_table'] = new Smarty_variable($_smarty_tpl->tpl_vars['width_table']->value+80, null, 0);?>
	<?php }} ?>

	<div class="modal fade" id="dialog_schedule_detail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static" style="overflow-y:hidden;">
		<div class="modal-dialog" style="width: <?php echo $_smarty_tpl->tpl_vars['width_table']->value+50;?>
px; max-width: 1300px;">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close"	data-dismiss="modal">
						<span aria-hidden="true">&times;</span>
						<span class="sr-only">閉じる</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">
						詳細
					</h4>
				</div>
				<div class="rules_div" style="margin-left: 25px;">
					<form id="T20OutScheduleDetailForm" method="post" accept-charset="utf-8" enctype="multipart/form-data">
						<div style="width: <?php echo $_smarty_tpl->tpl_vars['width_table']->value;?>
px; max-width: 1250px; overflow-x: auto; overflow-y:auto;max-height: 77vh;">
							<table id="scheduleDetailTable" class="tablesorter" style="margin-top: 8px; width: <?php echo $_smarty_tpl->tpl_vars['width_table']->value;?>
px;">
								<!--colgroup>
									<col width="10%">
									<col width="15.5%">
									<col width="15.5%">
									<col width="15.5%">
									<col width="11%">
									<?php $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['i']->step = 1;$_smarty_tpl->tpl_vars['i']->total = (int) ceil(($_smarty_tpl->tpl_vars['i']->step > 0 ? count($_smarty_tpl->tpl_vars['headers']->value)+1 - (1) : 1-(count($_smarty_tpl->tpl_vars['headers']->value))+1)/abs($_smarty_tpl->tpl_vars['i']->step));
if ($_smarty_tpl->tpl_vars['i']->total > 0) {
for ($_smarty_tpl->tpl_vars['i']->value = 1, $_smarty_tpl->tpl_vars['i']->iteration = 1;$_smarty_tpl->tpl_vars['i']->iteration <= $_smarty_tpl->tpl_vars['i']->total;$_smarty_tpl->tpl_vars['i']->value += $_smarty_tpl->tpl_vars['i']->step, $_smarty_tpl->tpl_vars['i']->iteration++) {
$_smarty_tpl->tpl_vars['i']->first = $_smarty_tpl->tpl_vars['i']->iteration == 1;$_smarty_tpl->tpl_vars['i']->last = $_smarty_tpl->tpl_vars['i']->iteration == $_smarty_tpl->tpl_vars['i']->total;?>
										<col width="6.5%">
									<?php }} ?>
								</colgroup-->
								<thead class="head">
								<tr>
									<th class="alignCenter tablesorter-headerDesc" style="min-width:165px;">発信日時</th>
									<th class="alignCenter tablesorter-headerUnSorted" style="min-width:150px;">発信先</th>
									<th class="alignCenter tablesorter-headerUnSorted" style="min-width:150px;">接続時間</th>

									<th id="sort_transfer" class="alignCenter tablesorter-headerUnSorted" position="3" style="min-wid-th:150px;">ステータス</th>
									<?php  $_smarty_tpl->tpl_vars['header'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['header']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['headers']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['header']->key => $_smarty_tpl->tpl_vars['header']->value) {
$_smarty_tpl->tpl_vars['header']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['header']->key;
?>
										<?php if (($_smarty_tpl->tpl_vars['sort_flags']->value[$_smarty_tpl->tpl_vars['key']->value]==1)) {?>
											<th class="alignCenter tablesorter-headerUnSorted" style="min-width:80px;"><?php echo $_smarty_tpl->tpl_vars['header']->value;?>
</th>
										<?php } elseif (($_smarty_tpl->tpl_vars['sort_flags']->value[$_smarty_tpl->tpl_vars['key']->value]==2)) {?>
											<th class="alignCenter tablesorter-headerUnSorted sort_select" position="<?php echo $_smarty_tpl->tpl_vars['key']->value+4;?>
" style="min-width:80px;"><?php echo $_smarty_tpl->tpl_vars['header']->value;?>
</th>
										<?php } elseif (($_smarty_tpl->tpl_vars['sort_flags']->value[$_smarty_tpl->tpl_vars['key']->value]==3)) {?>
											<th class="alignCenter tablesorter-headerUnSorted auth_char" position="<?php echo $_smarty_tpl->tpl_vars['key']->value+4;?>
" style="min-width:80px;"><?php echo $_smarty_tpl->tpl_vars['header']->value;?>
</th>
										<?php } else { ?>
											<th class="remove sorter-false filter-false alignCenter" style="min-width:80px;"><?php echo $_smarty_tpl->tpl_vars['header']->value;?>
</th>
										<?php }?>
									<?php } ?>
								</tr>
								</thead>
								<tbody class="inner_table">
								</tbody>
							</table>
						</div>
						<div>
							<!-- pager -->
							<?php echo $_smarty_tpl->tpl_vars['view']->value->element('pager/pager');?>

						</div>
						<input type="hidden" value="<?php if (isset($_smarty_tpl->tpl_vars['sortColumn']->value)) {?><?php echo $_smarty_tpl->tpl_vars['sortColumn']->value;?>
<?php }?>" id="hdSortColumnScheduleDetail"/>
						<input type="hidden" value="<?php if (isset($_smarty_tpl->tpl_vars['sortType']->value)) {?><?php echo $_smarty_tpl->tpl_vars['sortType']->value;?>
<?php }?>" id="hdSortTypeScheduleDetail"/>
						<input type="hidden" value="<?php if (isset($_smarty_tpl->tpl_vars['page']->value)) {?><?php echo $_smarty_tpl->tpl_vars['page']->value;?>
<?php }?>" id="hdPageScheduleDetail"/>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="form_container"></div><?php }} ?>
