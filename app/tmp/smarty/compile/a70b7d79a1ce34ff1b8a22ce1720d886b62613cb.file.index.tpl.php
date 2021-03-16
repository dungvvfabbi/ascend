<?php /* Smarty version Smarty-3.1.15, created on 2021-03-03 16:35:40
         compiled from "/opt/lampp/htdocs/cakephp/app/View/ManageAccount/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:200103624603f3c4c36e261-50662719%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a70b7d79a1ce34ff1b8a22ce1720d886b62613cb' => 
    array (
      0 => '/opt/lampp/htdocs/cakephp/app/View/ManageAccount/index.tpl',
      1 => 1614576995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '200103624603f3c4c36e261-50662719',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'create_flag' => 0,
    'delete_flag' => 0,
    'view_only_flag' => 0,
    'view' => 0,
    'sortColumn' => 0,
    'sortType' => 0,
    'page' => 0,
    'sync_voice' => 0,
    'item' => 0,
    'recall' => 0,
    'outbound_setup_sys' => 0,
    'number_info' => 0,
    'outbound_unit' => 0,
    'outbound_voice' => 0,
    'inbound_setup_sys' => 0,
    'inbound_unit' => 0,
    'inbound_voice' => 0,
    'post_code' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_603f3c4c40c146_37615023',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_603f3c4c40c146_37615023')) {function content_603f3c4c40c146_37615023($_smarty_tpl) {?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'css','path'=>'manageaccount/index'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'pager'),$_smarty_tpl);?>

<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['html'][0][0]->wrapper(array('func'=>'script','url'=>'view/manageaccount/index'),$_smarty_tpl);?>

<div class="col-lg-10 col-sm-10" id="content">
    <!-- content starts -->
    <div class="alert alert-success fade in" id="account-success-message" style="display:none;">
        <button type="button" class="close">×</button><p></p>
    </div>
    <div class="alert alert-danger fade in" id="account-error-message" style="display:none;">
        <button type="button" class="close">×</button><p></p>
    </div>
    <div class="row">
        <div class="form-group col-md-12">
            <?php if ($_smarty_tpl->tpl_vars['create_flag']->value) {?>
                <a href="javascript:void(0);" title="新規登録" data-toggle="tooltip" class="btn btn-primary" id="btnCreateAccount">新規登録</a>
            <?php }?>
            <?php if ($_smarty_tpl->tpl_vars['delete_flag']->value) {?>
                <a href="javascript:void(0);" title="選択項目を削除" data-toggle="tooltip" class="btn btn-default" id="btnDelete">選択項目を削除</a>
            <?php }?>
        </div>
    </div>

    <div class="rules_div">
        <div class="wrap">
            <form id="formManageAccount" method="post" accept-charset="utf-8" enctype="multipart/form-data">
                <table id="tblManageAccount" class="table table-striped table-bordered tablesorter">
                    <colgroup>
                        <?php if ($_smarty_tpl->tpl_vars['delete_flag']->value) {?>
                            <col width="4%">
                        <?php }?>
                        <col width="5%">
                        <col width="15%">
                        <col width="15%">
                        <col width="9%">
                        <col width="9%">
                        <col width="12%">
                        <col width="13%">
                        <col width="10%">
                        <?php if ($_smarty_tpl->tpl_vars['view_only_flag']->value) {?>
                            <col width="8%">
                        <?php }?>
                    </colgroup>
                    <thead class="head">
                        <tr>
                            <?php if ($_smarty_tpl->tpl_vars['delete_flag']->value) {?>
                                <th class="remove sorter-false filter-false alignCenter"></th>
                            <?php }?>
                            <th class="alignCenter tablesorter-headerUnSorted">No</th>
                            <th class="alignCenter tablesorter-headerUnSorted">アカウント</th>
                            <th class="alignCenter tablesorter-headerDesc">企業名</th>
                            <th class="alignCenter tablesorter-headerUnSorted">電話番号数</th>
                            <th class="alignCenter tablesorter-headerUnSorted">音声合成</th>
                            <th class="alignCenter tablesorter-headerUnSorted">最大リダイヤル数</th>
                            <th class="alignCenter tablesorter-headerUnSorted">作成日時</th>
                            <th class="alignCenter tablesorter-headerUnSorted">作成者</th>
                            <?php if ($_smarty_tpl->tpl_vars['view_only_flag']->value) {?>
                                <th class="remove sorter-false filter-false alignCenter">アクション</th>
                            <?php }?>
                        </tr>
                    </thead>
                    <tbody class="inner_table">
                    </tbody>
                </table>
                <!-- pager -->
                <?php echo $_smarty_tpl->tpl_vars['view']->value->element('pager/pager');?>

            </form>
        </div>
    </div>

    <input type="hidden" value="<?php if (isset($_smarty_tpl->tpl_vars['sortColumn']->value)) {?><?php echo $_smarty_tpl->tpl_vars['sortColumn']->value;?>
<?php }?>" id="hdSortColumnAccount"/>
    <input type="hidden" value="<?php if (isset($_smarty_tpl->tpl_vars['sortType']->value)) {?><?php echo $_smarty_tpl->tpl_vars['sortType']->value;?>
<?php }?>" id="hdSortTypeAccount"/>
    <input type="hidden" value="<?php if (isset($_smarty_tpl->tpl_vars['page']->value)) {?><?php echo $_smarty_tpl->tpl_vars['page']->value;?>
<?php }?>" id="hdPageAccount"/>

    <!-- アカウントを新規登録MODAL START -->
    <div class="modal fade" id="dialog_add_edit_account" tabindex="-100" role="dialog" aria-labelledby="lbl_account_form" aria-hidden="true" data-backdrop="static">
        <div class="modal-dialog" style="width: 600px" id="div_account">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <button type="button" class="close"
                            data-dismiss="modal">
                        <span aria-hidden="true">&times;</span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title" id="lbl_account_form">
                        新規登録
                    </h4>
                </div>

                <form class="form-horizontal" role="form" id="form_add_edit_account" method="post" action="<?php echo Router::url('',true);?>
" accept-charset="utf-8" enctype="multipart/form-data">
                    <input type="text" id="id" name="id" hidden="hidden">
                    <input type="text" id="company_id" name="company_id" hidden="hidden">
                    <input type="text" id="max_id" name="max_id" hidden="hidden">

                    <!-- Modal Body -->
                    <div class="modal-body">

                        <div class="form-group">
                            <label class="col-sm-3 control-label">アカウント</label>
                            <div class="col-sm-7">
                                <input type="text" id="company_code" name="company_code"
                                       data-rule-maxlength="128"
                                       data-msg-required="アカウントを入力してください。"
                                       data-msg-remote="アカウントは既に登録されています。"
                                       class="form-control" placeholder="アカウント"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">企業名</label>
                            <div class="col-sm-7">
                                <input type="text" id="company_name" name="company_name"
                                       data-rule-maxlength="128"
                                       class="form-control" placeholder="企業名"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">音声合成</label>
                            <div class="col-sm-7">
                                <?php if (count($_smarty_tpl->tpl_vars['sync_voice']->value)>0) {?>
                                <select id="audio_mix_flag" name="audio_mix_flag" class="form-control" data-msg-required="音声合成を選択してください。">
                                    <option value="">---</option>
                                    <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['sync_voice']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
                                        <option value="<?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_code'];?>
"><?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_name'];?>
</option>
                                    <?php } ?>
                                </select>
                                <?php }?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">最大リダイヤル数</label>
                            <div class="col-sm-7">
                                <?php if (count($_smarty_tpl->tpl_vars['recall']->value)>0) {?>
                                <select id="max_redial" name="max_redial" class="form-control" data-msg-required="最大リダイヤル数を選択してください。">
                                    <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['recall']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
                                        <option value="<?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_code'];?>
"><?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_name'];?>
</option>
                                    <?php } ?>
                                </select>
                                <?php }?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">電話番号</label>
                            <div class="col-sm-7">
                                <a href="javascript:void(0);" class="btn btn-primary" id="btnCreateNumber">新規登録</a>
                            </div>
                        </div>
                        <div class="form-group" id="list_number_div">
                            <table id="tblListNumber" class="table table-striped table-bordered hidden">
                                <colgroup>
                                    <col width="">
                                    <col width="">
                                    <col width="">
                                    <col width="">
                                    <col width="">
                                    <col width="">
                                    <col width="">
                                    <col width="">
                                    <col width="">
                                </colgroup>

                                <thead class="head">
                                <tr>
                                    <th rowspan="2" class="text-center">No</th>
                                    <th rowspan="2" class="text-center">電話番号</th>
                                    <th rowspan="2" class="text-center">区分</th>
                                    <th colspan="2" class="text-center">セットアップ</th>
                                    <th rowspan="2" class="text-center">単位</th>
                                    <th rowspan="2" class="text-center">固定</th>
                                    <th rowspan="2" class="text-center">携帯</th>
                                    <th rowspan="2" class="text-center">アクション</th>
                                </tr>
                                <tr>
                                    <th class="text-center">体系</th>
                                    <th class="text-center">金額</th>
                                </tr>
                                </thead>
                                <tbody class="inner_table" id="number_data">

                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Modal Footer -->
                    <div class="modal-footer">
                        <a href="javascript:void(0);" class="btn btn-default" id="btnCancel" data-dismiss="modal">閉じる</a>
                        <a href="javascript:void(0);" class="btn btn-primary" id="btnSave">保存</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- アカウントを新規登録MODAL END-->

    <!-- 電話番号を新規登録MODAL START -->
    <div class="modal fade" id="dialog_add_edit_number" tabindex="33" role="dialog" aria-labelledby="lbl_number_form" aria-hidden="true" data-backdrop="static">
        <div class="modal-dialog" style="width: 800px">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <button type="button" class="close"
                            data-dismiss="modal">
                        <span aria-hidden="true">&times;</span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title" id="lbl_number_form">
                        新規登録
                    </h4>
                </div>

                <form class="form-horizontal" role="form" id="form_add_edit_number" method="post" action="<?php echo Router::url('',true);?>
" accept-charset="utf-8" enctype="multipart/form-data">
                    <input type="text" id="number_id" name="id" hidden="hidden" >
                    <!-- Modal Body -->
                    <div class="modal-body" id="div_add_number">

                        <div class="form-group">
                            <label class="col-sm-3 control-label">電話番号</label>
                            <div class="col-sm-5">
                                <input type="text" id="external_number" name="external_number"
                                       data-msg-required="電話番号を入力してください。"
                                       data-msg-remote="電話番号は既に登録されています。"
                                       class="form-control" placeholder="電話番号"
                                />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">アウトバウンド</label>
                        </div>
                        <div class="form-group ">
                            <label class="col-sm-3 col-sm-offset-1 control-label">セットアップ体系</label>
                            <div class="col-sm-5">
                                <?php if (count($_smarty_tpl->tpl_vars['outbound_setup_sys']->value)>0) {?>
                                    <select id="out_setup_sys" name="out_setup_sys" class="form-control" data-msg-required="セットアップ体系選択してください。">
                                        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['outbound_setup_sys']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
                                            <option value="<?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_code'];?>
" ><?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_name'];?>
</option>
                                        <?php } ?>
                                    </select>
                                <?php }?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 col-sm-offset-1 control-label">セットアップ金額</label>
                            <div class="col-sm-5">
                                <input type="text" id="out_price" name="out_price"
                                       data-msg-required="金額を入力してください。"
                                       class="form-control" placeholder=""
                                        <?php if (isset($_smarty_tpl->tpl_vars['number_info']->value['M06CompanyExternal']['out_price'])) {?>
                                            value="<?php echo $_smarty_tpl->tpl_vars['number_info']->value['M06CompanyExternal']['out_price'];?>
"
                                        <?php }?>
                                />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 col-sm-offset-1 control-label">単位</label>
                            <div class="col-sm-5">
                                <?php if (count($_smarty_tpl->tpl_vars['outbound_unit']->value)>0) {?>
                                    <select id="out_unit" name="out_unit" class="form-control" data-msg-required="単位を選択してください。">
                                        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['outbound_unit']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
                                            <option value="<?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_code'];?>
" ><?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_name'];?>
</option>
                                        <?php } ?>
                                    </select>
                                <?php }?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 col-sm-offset-1 control-label">固定</label>
                            <div class="col-sm-5">
                                <input type="text" id="out_phone" name="out_phone"
                                       data-msg-required="固定を入力してください。"
                                       class="form-control" placeholder=""
                                        <?php if (isset($_smarty_tpl->tpl_vars['number_info']->value['M06CompanyExternal']['out_phone'])) {?>
                                            value="<?php echo $_smarty_tpl->tpl_vars['number_info']->value['M06CompanyExternal']['out_phone'];?>
"
                                        <?php }?>
                                />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 col-sm-offset-1 control-label">携帯</label>
                            <div class="col-sm-5">
                                <input type="text" id="out_mobile" name="out_mobile"
                                       data-msg-required="携帯を入力してください。"
                                       class="form-control" placeholder=""
                                        <?php if (isset($_smarty_tpl->tpl_vars['number_info']->value['M06CompanyExternal']['out_mobile'])) {?>
                                            value="<?php echo $_smarty_tpl->tpl_vars['number_info']->value['M06CompanyExternal']['out_mobile'];?>
"
                                        <?php }?>
                                />
                            </div>
                        </div>
                        <!-- <div class="form-group">
                            <label class="col-sm-3 col-sm-offset-1 control-label">音声合成</label>
                            <div class="col-sm-5">
                                <?php if (count($_smarty_tpl->tpl_vars['outbound_voice']->value)>0) {?>
                                    <select id="out_voice" name="out_voice" class="form-control" data-msg-required="音声合成を選択してください。">
                                        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['outbound_voice']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
                                            <option value="<?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_code'];?>
" <?php if ($_smarty_tpl->tpl_vars['number_info']->value['M06CompanyExternal']['out_voice']==$_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_code']) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_name'];?>
</option>
                                        <?php } ?>
                                    </select>
                                <?php }?>
                            </div>
                        </div> -->
                        <div class="form-group">
                            <label class="col-sm-3 control-label">インバウンド</label>
                        </div>
                        <div class="form-group ">
                            <label class="col-sm-3 col-sm-offset-1 control-label">セットアップ体系</label>
                            <div class="col-sm-5">
                                <?php if (count($_smarty_tpl->tpl_vars['inbound_setup_sys']->value)>0) {?>
                                    <select id="in_setup_sys" name="in_setup_sys" class="form-control" data-msg-required="セットアップ体系を選択してください。">
                                        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['inbound_setup_sys']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
                                            <option value="<?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_code'];?>
" ><?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_name'];?>
</option>
                                        <?php } ?>
                                    </select>
                                <?php }?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 col-sm-offset-1 control-label">セットアップ金額</label>
                            <div class="col-sm-5">
                                <input type="text" id="in_price" name="in_price"
                                       data-msg-required="金額を入力してください。"
                                       class="form-control" placeholder=""
                                        <?php if (isset($_smarty_tpl->tpl_vars['number_info']->value['M06CompanyExternal']['in_price'])) {?>
                                            value="<?php echo $_smarty_tpl->tpl_vars['number_info']->value['M06CompanyExternal']['in_price'];?>
"
                                        <?php }?>
                                />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 col-sm-offset-1 control-label">単位</label>
                            <div class="col-sm-5">
                                <?php if (count($_smarty_tpl->tpl_vars['inbound_unit']->value)>0) {?>
                                    <select id="in_unit" name="in_unit" class="form-control" data-msg-required="単位を選択してください。">
                                        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['inbound_unit']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
                                            <option value="<?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_code'];?>
" ><?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_name'];?>
</option>
                                        <?php } ?>
                                    </select>
                                <?php }?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 col-sm-offset-1 control-label">固定</label>
                            <div class="col-sm-5">
                                <input type="text" id="in_phone" name="in_phone"
                                       data-msg-required="固定を入力してください。"
                                       class="form-control" placeholder=""
                                        <?php if (isset($_smarty_tpl->tpl_vars['number_info']->value['M06CompanyExternal']['in_phone'])) {?>
                                            value="<?php echo $_smarty_tpl->tpl_vars['number_info']->value['M06CompanyExternal']['in_phone'];?>
"
                                        <?php }?>
                                />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 col-sm-offset-1 control-label">携帯</label>
                            <div class="col-sm-5">
                                <input type="text" id="in_mobile" name="in_mobile"
                                       data-msg-required="携帯を入力してください。"
                                       class="form-control" placeholder=""
                                        <?php if (isset($_smarty_tpl->tpl_vars['number_info']->value['M06CompanyExternal']['in_mobile'])) {?>
                                            value="<?php echo $_smarty_tpl->tpl_vars['number_info']->value['M06CompanyExternal']['in_mobile'];?>
"
                                        <?php }?>
                                />
                            </div>
                        </div>
                        <!-- <div class="form-group">
                            <label class="col-sm-3 col-sm-offset-1 control-label">音声合成</label>
                            <div class="col-sm-5">
                                <?php if (count($_smarty_tpl->tpl_vars['inbound_voice']->value)>0) {?>
                                    <select id="in_voice" name="in_voice" class="form-control" data-msg-required="音声合成を選択してください。">
                                        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['inbound_voice']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
                                            <option value="<?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_code'];?>
" <?php if ($_smarty_tpl->tpl_vars['number_info']->value['M06CompanyExternal']['in_voice']==$_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_code']) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['item']->value['M90PulldownCode']['item_name'];?>
</option>
                                        <?php } ?>
                                    </select>
                                <?php }?>
                            </div>
                        </div> -->
                    </div>

                    <!-- Modal Footer -->
                    <div class="modal-footer">
                        <a href="javascript:void(0);" class="btn btn-default" id="btnCancelNumber" data-dismiss="modal">閉じる</a>
                        <a href="javascript:void(0);" class="btn btn-primary" id="btnSaveNumber">反映</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- 電話番号を新規登録MODAL END-->
    <input type="hidden" id="post_code" value="<?php echo $_smarty_tpl->tpl_vars['post_code']->value;?>
"/>


    <!-- content ends -->
</div><?php }} ?>
