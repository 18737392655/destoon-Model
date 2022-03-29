<?php defined('IN_DESTOON') or exit('Access Denied');?><!-- 新加入css 叠加样式 -->
<link rel="stylesheet" href="<?php echo DT_SKIN;?>/static/css/other.css" type="text/css" />
<style>
.m-left{
float: unset;
height: auto !important;
width: 280px;
}
#contact{
border: 0px;
}
.companyName{
background: #efefef;
}
.contactUs a{
width: 139px;
padding-left: 104px;
}
</style>
<!-- 新加入css 叠加样式 -->
<?php if($user_status == 3) { ?>
<div class="m-left lou1 contact proRight">

<?php if($member) { ?>
<div id="contact">
<div class="companyName">
<h3><?php echo $member['company'];?></h3>
<div class="jwsy"><a href="<?php echo $MODULE['2']['linkurl'];?>friend.php?action=add&username=<?php echo $member['username'];?>" class="jwsy1" rel="nofollow">+ 加为商友</a> 
<a href="<?php echo $MODULE['2']['linkurl'];?>message.php?action=send&touser=<?php echo $member['username'];?>" class="jwsy2" rel="nofollow">发送信件</a>
<font class="jwsy3"><?php if(online($member['userid'])==1) { ?><font>当前在线</font><?php } else { ?>当前离线<?php } ?></font>
</div>
</div>
<?php if($member['vip']) { ?>
<p class="mt10" style="position: relative;"><i>会员级别：</i>
<font class="level_bg"><span title="VIP会员"><i class="icon icon-vip"></i><em
class="fl v-year product"><?php echo $member['vip'];?></em><em class="fl vip-name">VIP会员</em></span></font>
</p>
<?php } ?>
<?php if($member['deposit']) { ?>
<p class="px12"><i>已缴纳：</i><strong class="f_red"><?php echo $member['deposit'];?></strong> 元保证金</p>
<?php } ?>
<p class="px12"><i>我的勋章：</i> 
<?php if($member['vcompany']) { ?>&nbsp;<img src="<?php echo $MODULE['2']['linkurl'];?>image/v_company.gif" width="16" height="16" align="absmiddle" title="通过工商认证"/><?php } ?>
<?php if($member['vtruename']) { ?>&nbsp;<img src="<?php echo $MODULE['2']['linkurl'];?>image/v_truename.gif" width="16" height="16" align="absmiddle" title="通过实名认证"/><?php } ?>
<?php if($member['vbank']) { ?>&nbsp;<img src="<?php echo $MODULE['2']['linkurl'];?>image/v_bank.gif" width="16" height="16" align="absmiddle" title="通过银行帐号认证"/><?php } ?>
<?php if($member['vmobile']) { ?>&nbsp;<img src="<?php echo $MODULE['2']['linkurl'];?>image/v_mobile.gif" width="16" height="16" align="absmiddle" title="通过手机认证"/><?php } ?>
<?php if($member['vemail']) { ?>&nbsp;<img src="<?php echo $MODULE['2']['linkurl'];?>image/v_email.gif" width="16" height="16" align="absmiddle" title="通过邮件认证"/><?php } ?>
<?php if($member['validated']) { ?>&nbsp;<img src="<?php echo DT_STATIC;?>file/image/check-ok.png" align="absmiddle"/> 通过<?php echo $member['validator'];?>认证<?php } ?>
<a href="<?php echo userurl($member['username'], 'file=credit');?>" target="_blank">[诚信档案]</a></p>
<p><i>在线客服：</i>
<?php if($member['username'] && $DT['im_web']) { ?><?php echo im_web($member['username'].'&mid='.$moduleid.'&itemid='.$itemid);?>&nbsp;<?php } ?>
<a onclick="msg(0,'暂未开放该功能!')" target="_blank" rel="nofollow">
   <img src="http://amos.alicdn.com/online.aw?v=2&uid=bydkj88&site=cnalichn&s=6&charset=UTF-8"
title="点击旺旺交谈/留言" alt="" align="absmiddle"
onerror="this.src=DTPath+'file/image/ali-off.gif';"
onload="if(this.width>20)this.src=SKPath+'image/ali-off.gif';" /></a> 
</p>
<!-- 企业二维码 -->

<!-- 公司信息 -->
<?php if($moduleid == 5 || $moduleid == 6) { ?>
<div class="companyInfo">
<a class="website px12" onclick="msg(0,'店铺暂未开放!')" title="进入店铺" target="_blank" rel="nofollow">进入店铺</a>
<a class="introduce px12" onclick="openbox('<?php echo $member['business'];?>')" title="公司介绍" target="_blank">公司介绍</a>
<a class="position px12" onclick="openbox('<?php echo $member['address'];?>')" title="公司地址" target="_blank">公司地址</a>
<a class="infos px12" onclick="openbox('<?php echo $content;?>')" title="<?php echo $item;?>产品信息" target="_blank">产品信息</a>
</div>
<?php } ?>
<!-- 联系企业 -->
<?php if($moduleid == 5 || $moduleid == 6) { ?>
<div class="contactUs">
<a class="contact" onclick="openbox('<?php echo $member['telephone'];?>')" target="_blank">联系我们</a>
<a class="inquiry" target="_blank" href="<?php echo $MODULE['2']['linkurl'];?>chat.php?touser=<?php echo $member['username'];?>&mid=<?php echo $moduleid;?>&itemid=<?php echo $itemid;?>" title="在线询价">在线询价</a>
</div>
<?php } ?>
</div>
<?php } ?>
</div>
<?php } ?>
<!-- 联系我们滑动事件 -->
<script type="text/javascript">
$(document).ready(function(){
   var a,b,c;
a = $(window).height();    //浏览器窗口高度
var group = $("#scroll");
$(window).scroll(function(){
    b = $(this).scrollTop();
    c = 500;    //元素距离文档（document）顶部的高度
    if(b<c){
       $(".m-left.lou1.contact").removeClass('fixed');
    }else{
       $(".m-left.lou1.contact").addClass('fixed');
    }
});
});


</script>