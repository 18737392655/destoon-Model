<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header', 'member');?>
<div class="menu">
<table cellpadding="0" cellspacing="0">
<tr>
<td class="tab" id="add"><a href="?mid=<?php echo $mid;?>&action=add"><span>添加<?php echo $MOD['name'];?></span></a></td>
<?php if($_userid) { ?>
<td class="tab" id="s3"><a href="?mid=<?php echo $mid;?>"><span>已发布(<?php echo $nums['3'];?>)</span></a></td>
<td class="tab" id="s2"><a href="?mid=<?php echo $mid;?>&status=2"><span>审核中(<?php echo $nums['2'];?>)</span></a></td>
<td class="tab" id="s1"><a href="?mid=<?php echo $mid;?>&status=1"><span>未通过(<?php echo $nums['1'];?>)</span></a></td>
<?php } ?>
</tr>
</table>
</div>
<?php if($action=='add' || $action=='edit') { ?>
<iframe src="" name="send" id="send" style="display:none;"></iframe>
<form method="post" action="?" id="dform" target="send" onsubmit="return check();">
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="itemid" value="<?php echo $itemid;?>"/>
<input type="hidden" name="forward" value="<?php echo $forward;?>"/>
<table cellpadding="10" cellspacing="1" class="tb">
<?php if($status==1 && $action=='edit' && $note) { ?>
<tr>
<td class="tl">未通过原因</td>
<td class="tr f_blue"><?php echo $note;?></td>
</tr>
<?php } ?>
<tr>
<td class="tl"><span class="f_red">*</span> 所属分类</td>
<td class="tr"><?php echo category_select('post[catid]', '选择分类', $catid, $moduleid);?> <span id="dcatid" class="f_red"></span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> <?php echo $MOD['name'];?>名称</td>
<td class="tr"><input name="post[title]" type="text" id="title" size="50" value="<?php echo $title;?>"/> <span id="dtitle" class="f_red"></span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 标题图片</td>
<td class="tr"><input name="post[thumb]" id="thumb" type="text" size="60" value="<?php echo $thumb;?>" readonly/>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="Dthumb(<?php echo $moduleid;?>,<?php echo $MOD['thumb_width'];?>,<?php echo $MOD['thumb_height'];?>, Dd('thumb').value, true);" class="t">[上传]</a>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="_preview(Dd('thumb').value);" class="t">[预览]</a>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="Dd('thumb').value='';" class="t">[删除]</a> <span id="dthumb" class="f_red"></span></td>
</tr>
<?php if($action=='add' && $could_color) { ?>
<tr>
<td class="tl">标题颜色</td>
<td class="tr">
<?php echo dstyle('color');?>&nbsp;
设置信息标题颜色需消费 <strong class="f_red"><?php echo $MOD['credit_color'];?></strong> <?php echo $DT['credit_name'];?>
</td>
</tr>
<?php } ?>
<?php if($CP) { ?>
<script type="text/javascript">
var property_catid = <?php echo $catid;?>;
var property_itemid = <?php echo $itemid;?>;
var property_admin = 0;
</script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/property.js"></script>
<tbody id="load_property" style="display:none;">
<tr><td></td><td></td></tr>
</tbody>
<?php } ?>
<?php if($FD) { ?><?php echo fields_html('<td class="tl">', '<td class="tr">', $item);?><?php } ?>
<tr>
<td class="tl"><?php echo $MOD['name'];?>说明</td>
<td class="tr"><textarea name="post[content]" id="content" class="dsn"><?php echo $content;?></textarea><?php echo deditor($moduleid, 'content', $group_editor, '100%', 350);?><br/><span id="dcontent" class="f_red"></span>
</td>
</tr>
<tr>
<td class="tl">公开程度</td>
<td class="tr">
<input type="radio" name="post[open]" value="3"<?php if($open==3) { ?> checked<?php } ?> id="o_3" onclick="Dh('op_2');Dh('op_1');"/><label for="o_3"> 开放</label>
<input type="radio" name="post[open]" value="2"<?php if($open==2) { ?> checked<?php } ?> id="o_2" onclick="Ds('op_2');Dh('op_1');"/><label for="o_2"> 密码验证</label>
<input type="radio" name="post[open]" value="1"<?php if($open==1) { ?> checked<?php } ?> id="o_1" onclick="Dh('op_2');Ds('op_1');"/><label for="o_1"> 问题验证</label>
</td>
</tr>
<tr id="op_2" style="display:<?php if($open==2) { ?><?php } else { ?>none<?php } ?>;">
<td class="tl"><span class="f_red">*</span> 验证密码</td>
<td class="tr"><input name="post[password]" type="text" id="pass" size="30" value="<?php echo $password;?>"/> <span id="dpass" class="f_red"></span></td>
</tr>
<tr id="op_1" style="display:<?php if($open==1) { ?><?php } else { ?>none<?php } ?>;">
<td class="tl"><span class="f_red">*</span> 验证问题</td>
<td class="tr"><input name="post[question]" type="text" id="qa" size="30" value="<?php echo $question;?>"/> 
答案 <input name="post[answer]" type="text" id="an" size="30" value="<?php echo $answer;?>"/> <span id="dqa" class="f_red"></span></td>
</tr>
<?php if($fee_add) { ?>
<tr>
<td class="tl">发布此信息需消费</td>
<td class="tr"><span class="f_b f_red"><?php echo $fee_add;?></span> <?php echo $fee_unit;?></td>
</tr>
<?php if($fee_currency == 'money') { ?>
<tr>
<td class="tl"><?php echo $DT['money_name'];?>余额</td>
<td class="tr"><span class="f_blue f_b"><?php echo $_money;?><?php echo $fee_unit;?></span> <a href="charge.php?action=pay" target="_blank" class="t">[充值]</a></td>
</tr>
<?php } else { ?>
<tr>
<td class="tl"><?php echo $DT['credit_name'];?>余额</td>
<td class="tr"><span class="f_blue f_b"><?php echo $_credit;?><?php echo $fee_unit;?></span> <a href="credit.php?action=buy" target="_blank" class="t">[购买]</a></td>
</tr>
<?php } ?>
<?php } ?>
<?php if($need_password) { ?>
<tr>
<td class="tl"><span class="f_red">*</span> 支付密码</td>
<td class="tr"><?php include template('password', 'chip');?> <span id="dpassword" class="f_red"></span></td>
</tr>
<?php } ?>
<?php if($need_question) { ?>
<tr>
<td class="tl"><span class="f_red">*</span> 验证问题</td>
<td class="tr"><?php include template('question', 'chip');?> <span id="danswer" class="f_red"></span></td>
</tr>
<?php } ?>
<?php if($need_captcha) { ?>
<tr>
<td class="tl"><span class="f_red">*</span> 验证码</td>
<td class="tr"><?php include template('captcha', 'chip');?> <span id="dcaptcha" class="f_red"></span></td>
</tr>
<?php } ?>
<?php if($action=='add') { ?>
<tr style="display:none;" id="weibo_sync">
<td class="tl">同步主题</td>
<td class="tr" id="weibo_show"></td>
</tr>
<?php } ?>
<tr>
<td class="tl">&nbsp;</td>
<td class="tr" height="50"><input type="submit" name="submit" value="<?php if($action=='add') { ?>下一步<?php } else { ?> 提 交 <?php } ?>" class="btn_g"/><?php if($action=='edit') { ?>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value=" 上传图片 " class="btn_b" onclick="Go('?mid=<?php echo $mid;?>&action=item&itemid=<?php echo $itemid;?>');"/><?php } ?>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value=" 返 回 " class="btn" onclick="history.back(-1);"/></td>
</tr>
</table>
</form>
<?php echo load('clear.js');?>
<?php if($action=='add') { ?>
<script type="text/javascript">s('mid_<?php echo $mid;?>');m('<?php echo $action;?>');</script>
<?php } else { ?>
<script type="text/javascript">s('mid_<?php echo $mid;?>');m('s<?php echo $status;?>');</script>
<?php } ?>
<?php } else if($action == 'item') { ?>
<div class="tt">
<span class="f_r">
已上传：<strong class="f_green"><?php echo $items;?></strong>/<strong class="f_red"><?php echo $MOD['maxitem'];?></strong>&nbsp;&nbsp;
</span>
<strong>上传图片至：</strong><a href="<?php echo $MOD['linkurl'];?><?php echo $item['linkurl'];?>" target="_blank" class="t"><?php echo $item['title'];?></a>
</div>
<form method="post" action="?" id="dform">
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<input type="hidden" name="itemid" value="<?php echo $itemid;?>"/>
<input type="hidden" name="forward" value="<?php echo $forward;?>"/>
<input type="hidden" name="update" value="1"/>
<input type="hidden" name="swf_upload" id="swf_upload"/>
<table cellpadding="2" cellspacing="1" class="tb">
<tr>
<td>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<div style="width:130px;float:left;">
<input type="hidden" name="post[<?php echo $v['itemid'];?>][thumb]" id="thumb<?php echo $v['itemid'];?>" value="<?php echo $v['thumb'];?>"/>
<table width="120">
<tr align="center" height="110" class="c_p">
<td width="120"><img src="<?php echo $v['thumb'];?>" width="100" height="100" id="showthumb<?php echo $v['itemid'];?>" title="预览图片" alt="" onclick="if(this.src.indexOf('waitpic.gif') == -1){_preview(this.src, 1);}else{Dphoto(<?php echo $v['itemid'];?>,<?php echo $mid;?>,100,100, Dd('thumb<?php echo $v['itemid'];?>').value, true);}"/></td>
</tr>
<tr align="center">
<td height="20">
<a href="?mid=<?php echo $mid;?>&action=item_delete&itemid=<?php echo $v['itemid'];?>" onclick="return _delete();" class="t" title="点击删除此图片"><img src="image/img_delete.gif" width="12" height="12" title="删除"/></a>&nbsp;
<span onclick="Dphoto(<?php echo $v['itemid'];?>,<?php echo $mid;?>,100,100, Dd('thumb<?php echo $v['itemid'];?>').value, true);" class="jt"><img src="image/img_upload.gif" width="12" height="12" title="上传"/></span>
</td>
</tr>
<tr align="center" title="<?php echo $v['introduce'];?>">
<td><textarea name="post[<?php echo $v['itemid'];?>][introduce]" style="width:90px;height:40px;" onfocus="if(this.value=='简介：')this.value='';"><?php echo $v['introduce'];?></textarea></td>
</tr>
<tr align="center" title="排序">
<td><input type="text" size="3" name="post[<?php echo $v['itemid'];?>][listorder]" value="<?php echo $v['listorder'];?>"/></td>
</tr>
</table>
</div>
<?php } } ?>
<?php if($items < $MOD['maxitem']) { ?>
<div style="width:130px;float:left;">
<input type="hidden" name="post[0][thumb]" id="thumb0"/>
<table width="120">
<tr align="center" height="110" class="c_p">
<td width="120"><img src="<?php echo DT_SKIN;?>image/waitpic.gif" width="100" height="100" id="showthumb0" title="预览图片" alt="" onclick="if(this.src.indexOf('waitpic.gif') == -1){_preview(this.src, 1);}else{Dphoto(0,<?php echo $mid;?>,100,100, Dd('thumb0').value, true);}"/></td>
</tr>
<tr align="center">
<td height="20"><span onclick="Dphoto(0,<?php echo $mid;?>,100,100, Dd('thumb0').value, true);" class="jt"><img src="image/img_upload.gif" width="12" height="12" title="上传"/></span></td>
</tr>
<tr align="center" title="简介">
<td><textarea name="post[0][introduce]" style="width:90px;height:40px;" onfocus="if(this.value=='简介：')this.value='';">简介：</textarea></td>
</tr>
<tr align="center" title="排序">
<td><input type="text" size="3" name="post[0][listorder]" value="0"/></td>
</tr>
</table>
</div>
<?php } ?>
</td>
</tr>
</table>
<div class="sbt"><input type="submit" value=" 更 新 " class="btn_g"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value=" 返 回 " class="btn" onclick="Go('?mid=<?php echo $mid;?>');"/></div>
</form>
<div class="pages"><?php echo $pages;?></div>
<?php if($MOD['swfu_max'] > -1 && $items < $MOD['maxitem'] && !$MODULE['2']['domain']) { ?>
<table cellpadding="10" cellspacing="1" class="tb">
<tr>
<td class="tl">批量上传</td>
<td class="tr">
<?php if($MOD['swfu_max'] && $MOD['swfu_max'] > ($MOD['maxitem'] - $items)) { ?>
<?php $MOD['swfu_max'] = $MOD['maxitem'] - $items;?>
<?php } ?>
<link href="<?php echo $MODULE['1']['linkurl'];?>api/swfupload/style.css" rel="stylesheet" type="text/css"/>
<form>
<div class="swfuploadbtn">
<span id="spanButtonPlaceholder"></span>
</div>
</form>
<div id="divFileProgressContainer"></div>
<div id="thumbnails"></div>
<script type="text/javascript" src="<?php echo $MODULE['1']['linkurl'];?>api/swfupload/swfupload.js"></script>
<script type="text/javascript">var swfu_max = <?php echo $MOD['swfu_max'];?>;</script>
<script type="text/javascript" src="<?php echo $MODULE['1']['linkurl'];?>api/swfupload/handlers_photo.js"></script>
<script type="text/javascript">
var swfu;
/* window.onload = function () { */
swfu = new SWFUpload({
upload_url: UPPath,
post_params: {"moduleid": "<?php echo $moduleid;?>", "moduleid": "<?php echo $moduleid;?>", "from": "photo", "width": "100", "height": "100", "swf_userid": "<?php echo $_userid;?>", "swf_username": "<?php echo $_username;?>", "swf_groupid": "<?php echo $_groupid;?>", "swf_company": "<?php echo $_company;?>", "swf_auth": "<?php echo md5($_userid.$_username.$_groupid.$_company.DT_KEY.$DT_IP);?>", "swfupload": "1"},
file_size_limit : "32 MB",
file_types : "*.jpg;*.gif;*.png",
file_types_description : "Images",
file_upload_limit : swfu_max,
/*
// Event Handler Settings - these functions as defined in Handlers.js
//  The handlers are not part of SWFUpload but are part of my website and control how
//  my website reacts to the SWFUpload events.
*/
file_queue_error_handler : fileQueueError,
file_dialog_complete_handler : fileDialogComplete,
upload_progress_handler : uploadProgress,
upload_error_handler : uploadError,
upload_success_handler : uploadSuccess,
upload_complete_handler : uploadComplete,
button_image_url : "<?php echo $MODULE['1']['linkurl'];?>api/swfupload/upload3.png",
button_placeholder_id : "spanButtonPlaceholder",
button_width: 195,
button_height: 25,
button_window_mode: SWFUpload.WINDOW_MODE.TRANSPARENT,
button_cursor: SWFUpload.CURSOR.HAND,

flash_url : "<?php echo $MODULE['1']['linkurl'];?>api/swfupload/swfupload.swf",
custom_settings : {
upload_target : "divFileProgressContainer"
},

debug: false
});
/* }; */
</script>
</td>
</tr>
<tr>
<td class="tl">提示信息</td>
<td class="tr f_gray">&nbsp;点击批量上传图片按钮，按Ctrl键或拖动鼠标框选多个图片
</td>
</tr>
<?php } ?>
<script type="text/javascript">s('mid_<?php echo $mid;?>');m('s<?php echo $item['status'];?>');</script>
<?php } else { ?>
<div class="tt">
<form action="?">
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="status" value="<?php echo $status;?>"/>
&nbsp;<?php echo category_select('catid', '所有分类', $catid, $moduleid);?>&nbsp;
<input type="text" size="50" name="kw" value="<?php echo $kw;?>" title="关键词"/>&nbsp;
<input type="submit" value=" 搜 索 " class="btn"/>&nbsp;
<input type="button" value=" 重 置 " class="btn" onclick="Go('?mid=<?php echo $mid;?>&status=<?php echo $status;?>');"/>
</form>
</div>
<div class="ls">
<form method="post">
<table cellpadding="10" cellspacing="0" class="tb">
<tr>
<th width="20"><input type="checkbox" onclick="checkall(this.form);"/></th>
<th width="90">图 片</th>
<th>标 题</th>
<th>分 类</th>
<th><?php if($timetype=='add') { ?>添加<?php } else { ?>更新<?php } ?>时间</th>
<th>图片</th>
<?php if($MOD['hits']) { ?><th>浏览</th><?php } ?>
<th width="80">管理</th>
</tr>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<tr align="center">
<td><input type="checkbox" name="itemid[]" value="<?php echo $v['itemid'];?>"/></td>
<td><a href="javascript:_preview('<?php echo $v['thumb'];?>');"><img src="<?php echo $v['thumb'];?>" width="50" class="thumb"/></a></td>
<td align="left" title="<?php echo $v['alt'];?>">&nbsp;<?php if($v['open']<3) { ?><img src="image/ico_lock.gif"/> <?php } ?><?php if($v['status']==3) { ?><a href="<?php echo $v['linkurl'];?>" target="_blank" class="t"><?php } else { ?><a href="?mid=<?php echo $mid;?>&action=edit&itemid=<?php echo $v['itemid'];?>" class="t"><?php } ?><?php echo $v['title'];?></a><?php if($v['status']==1 && $v['note']) { ?> <a href="javascript:" onclick="alert('<?php echo $v['note'];?>');"><img src="image/why.gif" title="未通过原因"/></a><?php } ?></td>
<td>&nbsp;&nbsp;<a href="<?php echo $v['caturl'];?>" target="_blank"><?php echo $v['catname'];?></a>&nbsp;&nbsp;</td>
<?php if($timetype=='add') { ?>
<td class="f_gray" title="更新时间 <?php echo $v['editdate'];?>"><?php echo $v['adddate'];?></td>
<?php } else { ?>
<td class="f_gray" title="添加时间 <?php echo $v['adddate'];?>"><?php echo $v['editdate'];?></td>
<?php } ?>
<td class="f_gray"><?php echo $v['items'];?></td>
<?php if($MOD['hits']) { ?><td class="f_gray"><?php echo $v['hits'];?></td><?php } ?>
<td>
<a href="?mid=<?php echo $mid;?>&action=item&itemid=<?php echo $v['itemid'];?>"><img width="16" height="16" src="image/photo.gif" title="管理图片" alt=""/></a>
&nbsp;<a href="?mid=<?php echo $mid;?>&action=edit&itemid=<?php echo $v['itemid'];?>"><img width="16" height="16" src="image/edit.png" title="修改" alt=""/></a>
<?php if($MG['delete']) { ?>&nbsp;<a href="?mid=<?php echo $mid;?>&action=delete&itemid=<?php echo $v['itemid'];?>" onclick="return confirm('确定要删除吗？此操作将不可撤销');"><img width="16" height="16" src="image/delete.png" title="删除" alt=""/></a><?php } ?>
</td>
</tr>
<?php } } ?>
</table>
</div>
<?php if($MG['delete']) { ?>
<div class="btns">
<input type="submit" value=" 删除选中 " class="btn" onclick="if(confirm('确定要删除选中<?php echo $MOD['name'];?>吗？')){this.form.action='?mid=<?php echo $mid;?>&status=<?php echo $status;?>&action=delete'}else{return false;}"/>
</div>
<?php } ?>
</form>
<?php if($mod_limit || (!$MG['fee_mode'] && $MOD['fee_add'])) { ?>
<div class="limit">
<?php if($mod_limit) { ?>
总共可发 <span class="f_b f_red"><?php echo $mod_limit;?></span> 条&nbsp;&nbsp;&nbsp;
当前已发 <span class="f_b"><?php echo $limit_used;?></span> 条&nbsp;&nbsp;&nbsp;
还可以发 <span class="f_b f_blue"><?php echo $limit_free;?></span> 条&nbsp;&nbsp;&nbsp;
<?php } ?>
<?php if(!$MG['fee_mode'] && $MOD['fee_add']) { ?>
发布信息收费 <span class="f_b f_red"><?php echo $MOD['fee_add'];?></span> <?php if($MOD['fee_currency'] == 'money') { ?><?php echo $DT['money_unit'];?><?php } else { ?><?php echo $DT['credit_unit'];?><?php } ?>/条&nbsp;&nbsp;&nbsp;
可免费发布 <span class="f_b"><?php if($mod_free_limit<0) { ?>无限<?php } else { ?><?php echo $mod_free_limit;?><?php } ?></span> 条&nbsp;&nbsp;&nbsp;
<?php } ?>
</div>
<?php } ?>
<div class="pages"><?php echo $pages;?></div>
<script type="text/javascript">s('mid_<?php echo $mid;?>');m('s<?php echo $status;?>');</script>
<?php } ?>
<?php if($action == 'add' || $action == 'edit') { ?>
<script type="text/javascript">
function check() {
var l;
var f;
f = 'catid_1';
if(Dd(f).value == 0) {
Dmsg('请选择所属分类', 'catid', 1);
return false;
}
f = 'title';
l = Dd(f).value.length;
if(l < 2 || l > 30) {
Dmsg('标题应为2-30字，当前已输入'+l+'字', f);
return false;
}
f = 'thumb';
l = Dd(f).value.length;
if(l < 10) {
Dmsg('请上传LOGO', f);
return false;
}
if(Dd('o_2').checked) {
f = 'pass';
l = Dd(f).value.length;
if(l < 1) {
Dmsg('请填写密码', f);
return false;
}
}
if(Dd('o_1').checked) {
f = 'qa';
l = Dd(f).value.length;
if(l < 1) {
Dmsg('请填写问题', 'qa');
return false;
}
f = 'an';
l = Dd(f).value.length;
if(l < 1) {
Dmsg('请填写答案', 'qa');
return false;
}
}
<?php if($FD) { ?><?php echo fields_js();?><?php } ?>
<?php if($CP) { ?><?php echo property_js();?><?php } ?>
<?php if($need_password) { ?>
f = 'password';
l = Dd(f).value.length;
if(l < 6) {
Dmsg('请填写支付密码', f);
return false;
}
<?php } ?>
<?php if($need_question) { ?>
f = 'answer';
if($('#c'+f).html().indexOf('ok.png') == -1) {
Dmsg('请填写正确的验证问题', f);
return false;
}
<?php } ?>
<?php if($need_captcha) { ?>
f = 'captcha';
if($('#c'+f).html().indexOf('ok.png') == -1) {
Dmsg('请填写正确的验证码', f);
return false;
}
<?php } ?>
return true;
}
var destoon_oauth = '<?php echo $EXT['oauth'];?>';
</script>
<?php } ?>
<?php if($action=='add' && strlen($EXT['oauth']) > 1) { ?><?php echo load('weibo.js');?><?php } ?>
<?php include template('footer', 'member');?>