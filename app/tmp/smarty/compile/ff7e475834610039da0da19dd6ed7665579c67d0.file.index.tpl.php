<?php /* Smarty version Smarty-3.1.15, created on 2021-03-03 16:13:19
         compiled from "/opt/lampp/htdocs/cakephp/app/View/InboundIncomingHistory/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:192088525603f370f195ab2-54781025%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ff7e475834610039da0da19dd6ed7665579c67d0' => 
    array (
      0 => '/opt/lampp/htdocs/cakephp/app/View/InboundIncomingHistory/index.tpl',
      1 => 1614576995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '192088525603f370f195ab2-54781025',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'this' => 0,
    'mode' => 0,
    'del_count' => 0,
    'create_flag' => 0,
    'delete_flag' => 0,
    'download_flag' => 0,
    'view' => 0,
    'sortColumn' => 0,
    'sortType' => 0,
    'page' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_603f370f1d7f13_68045704',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_603f370f1d7f13_68045704')) {function content_603f370f1d7f13_68045704($_smarty_tpl) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'inboundincominghistory/setting_inbound'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'jquery.validate'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'pager'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/inboundincominghistory/index'),$_smarty_tpl);?>


<div class="col-lg-10 col-sm-10" id="content">
    <!-- content starts -->

    <!-- <?php echo $_smarty_tpl->tpl_vars['this']->value->Session->flash();?>
 -->
    <?php if ($_smarty_tpl->tpl_vars['mode']->value=="save") {?>
        <div class="alert alert-success fade in">
            <button type="button" class="close">×</button><p>リストのアップロードが完了しました。</p>
        </div>
    <?php }?>
    <?php if ($_smarty_tpl->tpl_vars['mode']->value=="delete") {?>
        <div class="alert alert-success fade in">
            <button type="button" class="close">×</button><p><?php echo $_smarty_tpl->tpl_vars['del_count']->value;?>
件削除しました。</p>
        </div>
    <?php }?>
    <div class="alert alert-success fade in" id="setting_inbound-success-message" style="display:none;">
        <button type="button" class="close">×</button><p></p>
    </div>
    <div class="alert alert-danger fade in" id="setting_inbound-error-message" style="display:none;">
        <button type="button" class="close">×</button><p></p>
    </div>


    <div class="row">
        <div class="form-group col-md-12">
            <?php if ($_smarty_tpl->tpl_vars['create_flag']->value) {?>
                <a href="javascript:void(0);" title="新規登録" data-toggle="tooltip" class="btn btn-primary btn-setting" id="add_setting_inbound">新規登録</a>
            <?php }?>
            <?php if ($_smarty_tpl->tpl_vars['delete_flag']->value==true) {?>
                <a href="javascript:void(0);" title="選択項目を削除" data-toggle="tooltip" class="btn btn-default" id="btn_delete">選択項目を削除</a>
            <?php }?>
            <?php if ($_smarty_tpl->tpl_vars['download_flag']->value==true) {?>
                <select id="select_type_download" data-rel="NotSearchable">
                    <option value="select_download">選択項目のDL</option>
                    <option value="download_uncalled">未着信</option>
                    <option value="download_all_log">全ての着信履歴</option>
                    <option value="download_ans_log">有効回答のみ</option>
                </select>
            <?php }?>
        </div>
    </div>

    <div class="rules_div">
        <div class="wrap">
            <form id="T25SettingInboundIndexForm" method="post" accept-charset="utf-8" enctype="multipart/form-data">
                <table class="table table-striped table-bordered" id="settingInboundTable">
                    <colgroup>
                        <?php if ($_smarty_tpl->tpl_vars['delete_flag']->value||$_smarty_tpl->tpl_vars['download_flag']->value) {?>
                            <col span="1" width="3%">
                        <?php }?>
                        <col span="1" width="3%">
                        <col span="1" width="8%">
                        <col span="1" width="17%">
                        <col span="1" width="13%">
                        <col span="1" width="13%">
                        <col span="1" width="13%">
                        <col span="1" width="13%">
                        <col span="1" width="10%">
                        <col span="1" width="7%">
                    </colgroup>
                    <thead>
                        <tr>
                            <?php if ($_smarty_tpl->tpl_vars['delete_flag']->value||$_smarty_tpl->tpl_vars['download_flag']->value) {?>
                                <th class="remove sorter-false filter-false alignCenter">
                                    <input type="checkbox" id="bundleCheckbox" data-checkbox="cbSelect">
                                    <label for="bundleCheckbox" class="bundleCheckbox"></label>
                                </th>
                            <?php }?>
                            <th class="text-center">NO.</th>
                            <th class="text-center">電話番号</th>
                            <th class="text-center">適用日</th>
                            <th class="text-center">テンプレート</th>
                            <th class="text-center">着信拒否リスト</th>
                            <th class="text-center">着信リスト</th>
                            <th class="text-center">作成日時</th>
                            <th class="text-center">作成者</th>
                            <th class="remove sorter-false filter-false text-center">アクション</th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>
                <!-- pager -->
                <?php echo $_smarty_tpl->tpl_vars['view']->value->element('pager/pager');?>

                <input type="hidden" value="<?php if (isset($_smarty_tpl->tpl_vars['sortColumn']->value)) {?><?php echo $_smarty_tpl->tpl_vars['sortColumn']->value;?>
<?php }?>" id="hdSortColumnSettingInbound"/>
                <input type="hidden" value="<?php if (isset($_smarty_tpl->tpl_vars['sortType']->value)) {?><?php echo $_smarty_tpl->tpl_vars['sortType']->value;?>
<?php }?>" id="hdSortTypeSettingInbound"/>
                <input type="hidden" value="<?php if (isset($_smarty_tpl->tpl_vars['page']->value)) {?><?php echo $_smarty_tpl->tpl_vars['page']->value;?>
<?php }?>" id="hdPageSettingInbound"/>
            </form>
        </div>
    </div>

    <div id="form_container"></div>
    <!-- content ends -->
</div><?php }} ?>
