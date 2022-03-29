<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header', 'member');?>
<div class="menu">
<table cellpadding="0" cellspacing="0">
<tr>
<td class="tab" id="add"><a href="?mid=<?php echo $mid;?>&action=add"><span>添加<?php echo $MOD['name'];?></span></a></td>
<?php if($_userid) { ?>
<td class="tab" id="s3"><a href="?mid=<?php echo $mid;?>"><span>已发布(<?php echo $nums['3'];?>)</span></a></td>
<td class="tab" id="s2"><a href="?mid=<?php echo $mid;?>&status=2"><span>审核中(<?php echo $nums['2'];?>)</span></a></td>
<td class="tab" id="s1"><a href="?mid=<?php echo $mid;?>&status=1"><span>未通过(<?php echo $nums['1'];?>)</span></a></td>
<td class="tab" id="s4"><a href="?mid=<?php echo $mid;?>&status=4"><span>已过期(<?php echo $nums['4'];?>)</span></a></td>
<td class="tab" id="s5"><a href="?mid=<?php echo $mid;?>&action=sign"><span>报名管理(<?php echo $nums['5'];?>)</span></a></td>
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
<td class="tl"><span class="f_red">*</span> 展会标题</td>
<td class="tr"><input name="post[title]" type="text" id="title" size="50" value="<?php echo $title;?>"/> <span id="dtitle" class="f_red"></span></td>
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
<tr>
<td class="tl"><span class="f_red">*</span> 展会日期</td>
<td class="tr"><?php echo dcalendar('post[fromtime]', $fromtime);?> 至 <?php echo dcalendar('post[totime]', $totime);?> <span id="dtime" class="f_red"></span></td>
</tr>
<tr>
<td class="tl">所在地区</td>
<td class="tr"><?php echo ajax_area_select('post[areaid]', '请选择', $areaid);?></td>
</tr>
<tr>
<td class="tl">展出城市</td>
<td class="tr"><input name="post[city]" type="text" id="city" size="10" value="<?php echo $city;?>"/> <span id="dcity" class="f_red"></span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 展出地址</td>
<td class="tr"><input name="post[address]" type="text" id="address" size="60" value="<?php echo $address;?>"/> <span id="daddress" class="f_red"></span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 展馆名称</td>
<td class="tr"><input name="post[hallname]" type="text" id="hallname" size="40" value="<?php echo $hallname;?>"/> <span id="dhallname" class="f_red"></span></td>
</tr>
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
<td class="tl">展会说明</td>
<td class="tr"><textarea name="post[content]" id="content" class="dsn"><?php echo $content;?></textarea><?php echo deditor($moduleid, 'content', $group_editor, '100%', 350);?><br/><span id="dcontent" class="f_red"></span></td>
</tr>
<tr>
<td class="tl">展会备注</td>
<td class="tr"><textarea name="post[remark]" style="width:90%;height:45px;"><?php echo $remark;?></textarea></td>
</tr>
<tr>
<td class="tl">标题图片</td>
<td class="tr"><input name="post[thumb]" id="thumb" type="text" size="60" value="<?php echo $thumb;?>" readonly/>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="Dthumb(<?php echo $moduleid;?>,<?php echo $MOD['thumb_width'];?>,<?php echo $MOD['thumb_height'];?>, Dd('thumb').value, true);" class="t">[上传]</a>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="_preview(Dd('thumb').value);" class="t">[预览]</a>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="Dd('thumb').value='';" class="t">[删除]</a></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 主办单位</td>
<td class="tr"><input name="post[sponsor]" type="text" id="sponsor" size="60" value="<?php echo $sponsor;?>" /> <span id="dsponsor" class="f_red"></span></td>
</tr>
<tr>
<td class="tl">承办单位</td>
<td class="tr"><input name="post[undertaker]" type="text" size="60" value="<?php echo $undertaker;?>" /></td>
</tr>
<tr>
<td class="tl">官方网站</td>
<td class="tr"><input name="post[homepage]" type="text" size="60" value="<?php echo $homepage;?>" /></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 联系人</td>
<td class="tr"><input name="post[truename]" type="text" id="truename" size="10" value="<?php echo $truename;?>" /> <span id="dtruename" class="f_red"></span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 联系电话</td>
<td class="tr"><input name="post[telephone]" type="text" id="telephone" size="30" value="<?php echo $telephone;?>" /> <span id="dtelephone" class="f_red"></span></td>
</tr>
<tr>
<td class="tl">联系手机</td>
<td class="tr"><input name="post[mobile]" type="text" id="mobile" size="30" value="<?php echo $mobile;?>" /> <span id="dmobile" class="f_red"></span></td>
</tr>
<tr>
<td class="tl">通讯地址</td>
<td class="tr"><input name="post[addr]" type="text" size="60" value="<?php echo $addr;?>" /></td>
</tr>
<tr>
<td class="tl">邮政编码</td>
<td class="tr"><input name="post[postcode]" type="text" size="10" value="<?php echo $postcode;?>" /></td>
</tr>
<tr>
<td class="tl">联系传真</td>
<td class="tr"><input name="post[fax]" type="text" size="30" value="<?php echo $fax;?>" /></td>
</tr>
<tr>
<td class="tl">电子邮件</td>
<td class="tr"><input name="post[email]" type="text" size="30" value="<?php echo $email;?>" /></td>
</tr>
<?php if($DT['im_qq']) { ?>
<tr>
<td class="tl">QQ</td>
<td class="tr"><input name="post[qq]" type="text" size="30" value="<?php echo $qq;?>"/></td>
</tr>
<?php } ?>
<?php if($DT['im_wx']) { ?>
<tr>
<td class="tl">微信</td>
<td class="tr"><input name="post[wx]" type="text" size="30" value="<?php echo $wx;?>"/></td>
</tr>
<?php } ?>
<tr>
<td class="tl">在线报名</td>
<td class="tr">
<input type="radio" name="post[sign]" value="1"<?php if($sign == 1) { ?> checked<?php } ?>/> 开启
<input type="radio" name="post[sign]" value="0"<?php if(!$sign) { ?> checked<?php } ?>/> 关闭</td>
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
<td class="tr" height="50"><input type="submit" name="submit" value=" 提 交 " class="btn_g"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value=" 返 回 " class="btn" onclick="history.back(-1);"/></td>
</tr>
</table>
</form>
<?php echo load('guest.js');?>
<?php echo load('clear.js');?>
<?php if($action=='add') { ?>
<script type="text/javascript">s('mid_<?php echo $mid;?>');m('<?php echo $action;?>');</script>
<?php } else { ?>
<script type="text/javascript">s('mid_<?php echo $mid;?>');m('s<?php echo $status;?>');</script>
<?php } ?>
<?php } else if($action=='sign') { ?>
<div class="tt">
<form action="?">
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<?php echo $fields_select;?>&nbsp;
<input type="text" size="20" name="kw" value="<?php echo $kw;?>" title="关键词"/>&nbsp;
<?php echo dcalendar('fromdate', $fromdate);?> 至 <?php echo dcalendar('todate', $todate);?>&nbsp;
展会ID：<input type="text" size="10" name="id" value="<?php echo $id;?>"/>&nbsp;
<input type="submit" value=" 搜 索 " class="btn"/>&nbsp;
<input type="button" value=" 重 置 " class="btn" onclick="Go('?mid=<?php echo $mid;?>&action=<?php echo $action;?>');"/><br/>
</form>
</div>
<div class="bd">
<table cellpadding="10" cellspacing="0" class="tb">
<tr>
<th>展会</th>
<th>会员</th>
<th>联系方式</th>
<th width="200">备注事项</th>
</tr>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<tr <?php if($k%2==1) { ?> bgcolor="#FAFAFA"<?php } ?>>
<td style="line-height:22px;padding:5px 10px 5px 10px;color:#555555;">
<a href="<?php echo $v['linkurl'];?>" target="_blank" class="t"><?php echo $v['title'];?></a>
<br/>报名时间：<?php echo $v['addtime'];?>&nbsp;&nbsp;报名人数：<?php echo $v['amount'];?>
</td>
<td style="padding:8px 0 0 0;" align="center">
<?php if($v['username']) { ?><a href="<?php echo userurl($v['username'], 'file=contact');?>" target="_blank"><?php echo $v['username'];?></a><?php } ?>
<div style="padding:8px 0 8px 0;">
<?php if($DT['im_web'] && $v['username']) { ?><?php echo im_web($v['username']);?> <?php } ?>
<?php if($v['username']) { ?><a href="message.php?action=send&touser=<?php echo $v['username'];?>"><img src="<?php echo DT_SKIN;?>/image/msg.gif" title="发送站内信" align="absmiddle"/></a> <?php } ?>
<?php if($DT['im_qq'] && $v['qq']) { ?><?php echo im_qq($v['qq']);?> <?php } ?>
<?php if($DT['im_wx'] && $v['wx']) { ?><?php echo im_wx($v['wx'], $v['username']);?> <?php } ?>
<?php if($DT['mail_type'] != 'close' && $v['email']) { ?><a href="mailto:<?php echo $v['email'];?>" target="_blank"><img src="<?php echo DT_SKIN;?>/image/email.gif" title="发送邮件" align="absmiddle"/></a> <?php } ?>
</div>
</td>
<td style="line-height:22px;padding:5px 10px 5px 10px;">
<?php echo $v['truename'];?> <?php echo $v['company'];?> <?php echo $v['mobile'];?> <?php echo $v['email'];?><br/>
<?php if($v['areaid']) { ?><?php echo area_pos($v['areaid']);?><?php } ?><?php echo $v['address'];?> <?php echo $v['postcode'];?>
</td>
<td style="line-height:22px;padding:5px 10px 5px 10px;color:#555555;"><?php echo nl2br($v['content']);?></td>
</tr>
<?php } } ?>
</table>
</div>
<div class="pages"><?php echo $pages;?></div>
<script type="text/javascript">s('mid_<?php echo $mid;?>');m('s5');</script>
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
<th>标 题</th>
<th>分 类</th>
<th width="60">状态</th>
<th><?php if($timetype=='add') { ?>添加<?php } else { ?>更新<?php } ?>时间</th>
<th>报名</th>
<?php if($MOD['hits']) { ?><th>浏览</th><?php } ?>
<th width="80">管理</th>
</tr>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<tr align="center">
<td><input type="checkbox" name="itemid[]" value="<?php echo $v['itemid'];?>"/></td>
<td align="left" title="<?php echo $v['alt'];?>">&nbsp;&nbsp;<?php if($v['status']==3) { ?><a href="<?php echo $v['linkurl'];?>" target="_blank" class="t"><?php } else { ?><a href="?mid=<?php echo $mid;?>&action=edit&itemid=<?php echo $v['itemid'];?>" class="t"><?php } ?><?php echo $v['title'];?></a><?php if($v['status']==1 && $v['note']) { ?> <a href="javascript:" onclick="alert('<?php echo $v['note'];?>');"><img src="image/why.gif" title="未通过原因"/></a><?php } ?></td>
<td>&nbsp;&nbsp;<a href="<?php echo $v['caturl'];?>" target="_blank"><?php echo $v['catname'];?></a>&nbsp;&nbsp;</td>
<td><img src="<?php echo DT_STATIC;?>file/image/process_<?php echo $v['process'];?>.gif" title="<?php echo $v['city'];?> <?php echo $v['fromdate'];?> ~ <?php echo $v['todate'];?>" alt=""/></td>
<?php if($timetype=='add') { ?>
<td class="f_gray" title="更新时间 <?php echo $v['editdate'];?>"><?php echo $v['adddate'];?></td>
<?php } else { ?>
<td class="f_gray" title="添加时间 <?php echo $v['adddate'];?>"><?php echo $v['editdate'];?></td>
<?php } ?>
<td class="f_gray c_p" onclick="Go('?mid=<?php echo $mid;?>&action=sign&id=<?php echo $v['itemid'];?>');"><?php echo $v['orders'];?></td>
<?php if($MOD['hits']) { ?><td class="f_gray"><?php echo $v['hits'];?></td><?php } ?>
<td>
<a href="?mid=<?php echo $mid;?>&action=edit&itemid=<?php echo $v['itemid'];?>"><img width="16" height="16" src="image/edit.png" title="修改" alt=""/></a>
<?php if($MG['copy']) { ?>&nbsp;<a href="?mid=<?php echo $mid;?>&action=add&itemid=<?php echo $v['itemid'];?>"><img width="16" height="16" src="image/new.png" title="复制信息" alt=""/></a><?php } ?>
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
if(l < 5 || l > 30) {
Dmsg('标题应为5-30字，当前已输入'+l+'字', f);
return false;
}
if(Dd('postfromtime').value.length != 10 || Dd('posttotime').value.length != 10) {
Dmsg('请选择展会日期', 'time', 1);
return false;
}
f = 'address';
l = Dd(f).value.length;
if(l < 6) {
Dmsg('请填写详细的展出地址', f);
return false;
}
f = 'hallname';
l = Dd(f).value.length;
if(l < 2) {
Dmsg('请填写展馆名称', f);
return false;
}
f = 'sponsor';
l = Dd(f).value.length;
if(l < 2) {
Dmsg('请填写主办单位', f);
return false;
}
f = 'truename';
l = Dd(f).value.length;
if(l < 2) {
Dmsg('请填写联系人', f);
return false;
}
f = 'telephone';
l = Dd(f).value.length;
if(l < 7) {
Dmsg('请填写联系电话', f);
return false;
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