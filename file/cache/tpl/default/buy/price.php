<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header');?>
<div class="m">
<div class="nav"><a href="<?php echo $MODULE['1']['linkurl'];?>">首页</a> <i>&gt;</i> <a href="<?php echo $MOD['linkurl'];?>"><?php echo $MOD['name'];?></a> <i>&gt;</i> <a href="<?php echo $linkurl;?>"><?php echo $item['title'];?></a> <i>&gt;</i> 报价单</div>
</div>
<div class="m">
<form method="post" action="price.php" id="price_form" onsubmit="return price_check();">
<input type="hidden" name="forward" value="<?php echo $forward;?>"/>
<input type="hidden" name="itemid" value="<?php echo $itemid;?>"/>
<table cellpadding="16" cellspacing="0" class="tf">
<tr>
<td class="tl"><span class="f_red">*</span> 报价主题</td>
<td><input type="text" name="title" value="<?php echo $title;?>" size="60" id="title"/> <img src="<?php echo DT_SKIN;?>image/ico_tips.gif" alt="" title="建议您修改主题，吸引对方注意,得到优先回复!"/> <span class="f_red" id="dtitle"></span></td>
</tr>
<tr>
<td class="tl">快捷提问</td>
<td>
<select onchange="if(this.value)Dd('content').value+=this.value+'\n';">
<option value="">请选择常用问题</option>
<?php if(is_array($iask)) { foreach($iask as $v) { ?>
<option value="<?php echo $v;?>"><?php echo $v;?></option>
<?php } } ?>
</select>
<span class="f_gray">(不用打字 “快捷提问”帮您忙！) </span>
</td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 主要内容</td>
<td><textarea rows="8" cols="80" name="content" id="content"></textarea><br/><span class="f_red" id="dcontent"></span>
</td>
</tr>
<tr>
<td class="tl">回复日期</td>
<td><?php echo dcalendar('date', $date);?> 之前</td>
</tr>
<?php if($_userid) { ?>
<tr>
<td class="tl"><strong>联系方式</strong></td>
<td align="right"><a href="<?php echo $MODULE['2']['linkurl'];?>edit.php" class="b">修改</a></td>
</tr>
<tr>
<td class="tl">公司</td>
<td><?php echo $company;?></td>
</tr>
<tr>
<td class="tl">姓名</td>
<td><?php echo $truename;?></td>
</tr>
<tr>
<td class="tl">电话</td>
<td><?php echo $telephone;?></td>
</tr>
<tr>
<td class="tl">邮件</td>
<td><?php echo $email;?></td>
</tr>
<?php if($DT['im_qq']) { ?>
<tr>
<td class="tl">QQ</td>
<td><?php echo $qq;?></td>
</tr>
<?php } ?> 
<?php if($DT['im_wx']) { ?>
<tr>
<td class="tl">微信</td>
<td><?php echo $wx;?></td>
</tr>
<?php } ?> 
<?php if($DT['im_ali']) { ?>
<tr>
<td class="tl">阿里旺旺</td>
<td><?php echo $ali;?></td>
</tr>
<?php } ?>
<?php if($DT['im_skype']) { ?>
<tr>
<td class="tl">Skype</td>
<td><?php echo $Skype;?></td>
</tr>
<?php } ?>
<?php } else { ?>
<tr>
<td class="tl"><strong>联系方式</strong></td>
<td>还不是会员？请 <a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_register'];?>" class="b">注册</a> 或 请留下您的联系方式&nbsp;&nbsp;已经是会员？请 <a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_login'];?>" class="b">登录</a></td>
</tr>
<tr>
<td class="tl">公司</td>
<td><input type="text" name="company" size="30" id="company"/></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 姓名</td>
<td><input type="text" name="truename" size="30" id="truename"/> <span class="f_red" id="dtruename"></span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 电话</td>
<td><input type="text" name="telephone" size="30" id="telephone"/> <span class="f_red" id="dtelephone"></span></td>
</tr>
<tr>
<td class="tl">邮件</td>
<td><input type="text" name="email" size="30" id="email"/> <span class="f_red" id="demail"></span></td>
</tr>
<?php if($DT['im_qq']) { ?>
<tr>
<td class="tl">QQ</td>
<td><input type="text" size="20" name="qq" id="qq"/></td>
</tr>
<?php } ?>
<?php if($DT['im_wx']) { ?>
<tr>
<td class="tl">微信</td>
<td><input type="text" size="20" name="wx" id="wx"/></td>
</tr>
<?php } ?>
<?php if($DT['im_ali']) { ?>
<tr>
<td class="tl">阿里旺旺</td>
<td><input type="text" size="20" name="ali" id="ali"/></td>
</tr>
<?php } ?>
<?php if($DT['im_skype']) { ?>
<tr>
<td class="tl">Skype</td>
<td><input type="text" size="20" name="skype" id="skype"/></td>
</tr>
<?php } ?>
<?php } ?>
<?php if($need_question) { ?>
<tr>
<td class="tl"><span class="f_red">*</span> 验证问题</td>
<td><?php include template('question', 'chip');?> <span id="danswer" class="f_red"></span></td>
</tr>
<?php } ?>
<?php if($need_captcha) { ?>
<tr>
<td class="tl"><span class="f_red">*</span> 验证码</td>
<td><?php include template('captcha', 'chip');?> <span id="dcaptcha" class="f_red"></span></td>
</tr>
<?php } ?>
<?php if($_userid && $DT['sms']) { ?>
<tr>
<td class="tl">短信通知</td>
<td><input type="checkbox" name="sendsms" value="1"/> 发送短信通知至接收人手机 (<a href="<?php echo $MODULE['2']['linkurl'];?>sms.php" target="_blank">我的可用短信 <strong class="f_blue"><?php echo $_sms;?></strong> 条</a>)</td>
</tr>
<?php } ?>
<tr>
<td bgcolor="#F7F7F7"></td>
<td>
<input type="submit" name="submit" value=" 发送报价 " class="btn-blue"/>
<?php if($MG['price_limit']) { ?>
&nbsp;&nbsp;&nbsp;今日可报价 <span class="f_b f_red"><?php echo $MG['price_limit'];?></span> 次
&nbsp;&nbsp;&nbsp;当前已报价 <span class="f_b"><?php echo $limit_used;?></span> 次
&nbsp;&nbsp;&nbsp;还可以报价 <span class="f_b f_blue"><?php echo $limit_free;?></span> 次
<?php } ?>

</td>
</tr>
</table>
</form>
</div>
<?php if(!$_userid) { ?><script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/guest.js"></script><?php } ?>
<script type="text/javascript">
function price_check() {
var l;
var f;
f = 'title';
l = Dd(f).value.length;
if(l < 5 || l > 50) {
Dmsg('主题应为5-50字，当前已输入'+l+'字', f);
return false;
}
f = 'content';
l = Dd(f).value.length;
if(l < 10 || l > 2000) {
Dmsg('内容应为10-2000字，当前已输入'+l+'字', f);
return false;
}
<?php if(!$_userid) { ?>
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
<?php } ?>
<?php if($need_captcha) { ?>
f = 'captcha';
if($('#c'+f).html().indexOf('ok.png') == -1) {
Dmsg('请填写正确的验证码', f);
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
}
</script>
<?php include template('footer');?>