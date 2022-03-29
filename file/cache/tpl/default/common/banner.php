<?php defined('IN_DESTOON') or exit('Access Denied');?><link rel="stylesheet" type="text/css" href="<?php echo DT_SKIN;?>/static/css/swiper.min.css" />
<style type="text/css">
#navxh .category_new {
display: block !important;
}
.category_new {
display: block
}
</style>
<div id="ipad_tips" style="display:none;"></div>
<div class="xh_bg">
<!--幻灯区-->
<div class="navgationBox clearfix">
<div class="m clearfix">
<!--1p-l-s-->
<div class="H_Bside_cont"> </div>
<!--1p-l-e-->
<!--1P r-s-->
<div class="index-user clearfix">
<!--1P-->
<div class="userbar">
<!--会员状态 S-->
<script type="text/javascript">
var destoon_uname = get_cookie('username');
document.write(' <div class="xh_dl"><div class="xub">');
document.write('<div class="xub-img"><a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_login'];?>"><img src="' + DTPath +
'api/avatar/show.php?size=large&reload=1622689777&username=' + destoon_uname + '"/></a></div>');
document.write('<div class="xub-info">');
if (get_cookie('auth')) {
document.write('<div class="xub-name"><strong>Hi,<i>' + destoon_uname +
'</i></strong></div><div class="xub-greet"><a href="<?php echo $MODULE['2']['linkurl'];?>biz.php" rel="nofollow">商户后台</a><span class="mlr">|</span><a href="<?php echo $MODULE['2']['linkurl'];?>message.php" class="a" target="_blank">站内信件<span class="red" id="destoon_message"></span></a><span class="mlr">|</span><a href="<?php echo $MODULE['2']['linkurl'];?>logout.php" class="red">退出</a></div>'
);
} else {
if (destoon_uname) {
document.write('<div class="xub-name"><strong>Hi,<i>' + destoon_uname +
'</i></strong></div><div class="xub-greet"><a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_login'];?>">点击登录</a></div>'
);
} else {
document.write(
'<div class="xub-name"><strong>Hi,<i>您好</i></strong></div><div class="xub-greet"><i></i>赚积分,换广告位</div>'
);
}
}
document.write('</div></div>');
document.write('<div class="xub-register"><ul class="member_ul">');
if (get_cookie('auth')) {
document.write(
'<li class="seller_li"><a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_my'];?>?mid=16" target="_blank" rel="nofollow" class="a"><i class="icon-login-y"></i>管理商城产品</a></li><li class="seller_li"><a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_my'];?>?mid=6&action=add" target="_blank" rel="nofollow"><i class="icon-register-y"></i>发布采购信息</a></li>'
);
} else {
if (destoon_uname) {
document.write(
'<li class="seller_li"><a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_login'];?>" rel="nofollow" target="_blank" class="a">用户登录</a></li><li class="seller_li"><a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_register'];?>" rel="nofollow" target="_blank">免费注册</a></li>'
);
} else {
document.write(
'<li class="seller_li"><a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_login'];?>" rel="nofollow" target="_blank" class="a">用户登录</a></li><li class="seller_li"><a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_register'];?>" rel="nofollow" target="_blank">免费注册</a></li>'
);
}
}
document.write('</ul></div>');
document.write('</div>');
</script>
<!-- 引入公共部分user -->
<div class="xub-server">
<div class="xubs-tit">
<div class="fl xubs-tits"><span class="icon-redbar"></span>服务精选</div>
<div class="fr xubs-tite" id="site_stats">
<ul>
<?php $cps = DB::get_one("select count(*) as num from ".$DT_PRE."mall_16 where status=3");?>
<?php $cgs = DB::get_one("select count(*) as num from ".$DT_PRE."buy_6 where status=3");?>
<?php $qys = DB::get_one("select count(*) as num from ".$DT_PRE."company");?>

<li class="tong">产品数：<span class="tongji"><?php echo number_format($cps['num']);?> </span></li>
<li class="tong">采购数：<span class="tongji"><?php echo number_format($cgs['num']);?></span></li>
<li class="tong">企业数：<span class="tongji"><?php echo number_format($qys['num']);?></span></li>
<!-- <li class="tong">在线会员：<span class="tongji">345 </span></li> -->
</ul>
</div>
</div>
<a href="<?php echo $MODULE['2']['linkurl'];?>grade.php" rel="nofollow" target="_blank" class="fwio">
<span style="top: 0px;">
<i class="icon-vip"></i>
<p class="xubs-name">VIP会员</p>
</span>
</a>
<a href="<?php echo $EXT['spread_url'];?>" rel="nofollow" target="_blank" class="fwio">
<span style="top: 0px;">
<i class="icon-hyfw"></i>
<p class="xubs-name">排名推广</p>
</span>
</a>
<a onclick="msg(0,'暂未开放该功能!')" rel="nofollow" target="_blank" class="fwio">
<span style="top: 0px;">
<i class="icon-jzfw"></i>
<p class="xubs-name">商铺排行榜</p>
</span>
</a>
<a href="<?php echo $MODULE['2']['mobile'];?>grade.php" rel="nofollow" target="_blank" class="fwio">
<span style="top: 0px;">
<i class="icon-hysj"></i>
<p class="xubs-name">会员升级</p>
</span>
</a>
<a href="<?php echo $EXT['gift_url'];?>" rel="nofollow" target="_blank" class="fwio">
<span style="top: 0px;">
<i class="icon-jfsc"></i>
<p class="xubs-name">积分商城</p>
</span>
</a>
<a href="<?php echo $MODULE['2']['linkurl'];?>ad.php" rel="nofollow" target="_blank" class="fwio">
<span style="top: 0px;">
<i class="icon-adfw"></i>
<p class="xubs-name">广告服务</p>
</span>
</a>
</div>
<!--公告-->
<div class="xub-news">
<div class="xub-tab">
<ul>
<li id="one1" onmouseover="setTab('one',1,4)" class="hover"><span>公告</span></li>
<li id="one2" onmouseover="setTab('one',2,4)" class=""><span>行业展会</span></li>
<li id="one3" onmouseover="setTab('one',3,4)" class=""><span>微视频</span></li>
<li id="one4" onmouseover="setTab('one',4,4)" class=""><span>企业资讯</span></li>
</ul>
</div>
<div class="xub-tab-con">
<div id="con_one_1" class="hover" style="display: block;">
<ul class="xubt-list">
<li>
<?php $tags19=tag("table=article_21&condition=catid=47 and level=1 and status=3&pagesize=2&order=hits desc&template=null");?>
<?php if(is_array($tags19)) { foreach($tags19 as $key19 => $val19) { ?>
<a href="/<?php echo $MODULE['21']['module'];?>/<?php echo $val19['linkurl'];?>" target="_blank" title="">【公告】<?php echo $val19['title'];?></a>
<?php } } ?>
</li>
</ul>
</div>
<div id="con_one_2" style="display: none;">
<ul class="xubt-list">
<?php $tags12=tag("table=exhibit_8&condition=level=2 and catid=32&pagesize=2&order=hits desc&template=null");?>
<?php if(is_array($tags12)) { foreach($tags12 as $key12 => $val12) { ?>
<li><a href="/<?php echo $MODULE['8']['module'];?>/<?php echo $val12['linkurl'];?>" target="_blank" title="">【展会】<?php echo $val12['title'];?></a></li>
<?php } } ?>
</ul>
</div>
<div id="con_one_3" style="display: none;">
<ul class="xubt-list">
<?php $tags26=tag("table=article_21&condition=catid=48 and level=1 and status=3&pagesize=2&order=hits desc&template=null");?>
<?php if(is_array($tags26)) { foreach($tags26 as $key26 => $val26) { ?>
<li><a href="/<?php echo $MODULE['21']['module'];?>/<?php echo $val26['linkurl'];?>" target="_blank" title="">【Vlog】<?php echo dsubstr($val26['title'], 45, '...', 'utf-8');?></a></li>
<?php } } ?>
</ul>
</div>
<div id="con_one_4" style="display: none;">
<ul class="xubt-list">
<?php $tags20=tag("table=article_21&condition=catid=46 and level=1 and status=3&pagesize=4&order=hits desc&template=null");?>
<?php if(is_array($tags20)) { foreach($tags20 as $key20 => $val20) { ?>
<li><a href="/<?php echo $MODULE['21']['module'];?>/<?php echo $val20['linkurl'];?>" target="_blank" title="">【企闻】<?php echo $val20['title'];?></a></li>
<?php } } ?>
</ul>
</div>
</div>
</div>
<!-- 引入公共部分user -->
</div>
</div>
<!--1P r-s-->
</div>
<!-- 引入公共部分banner -->
<!--中幻灯s-->
<div class="index-banner">
<div class="swiper-container swiper-banner xh-banner">
<div class="swiper-wrapper">
<?php $tags=tag("table=ad&condition=pid=14 and status=3&pagesize=2&order=edittime asc&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $key => $val) { ?>
<div class="swiper-slide" style="background:#dadbdc">
<a href="" class="index-banner-link" target="_blank" rel="nofollow">
<img src="<?php echo $val['image_src'];?>" class="index-banner-img" alt="<?php echo $val['title'];?>">
</a>
</div>
<?php } } ?>


</div>
<div class="swiper-ctrl-wrap">
<div class="swiper-pagination swiper-banner-pagination"></div>
<div class="swiper-banner-btn swiper-banner-prev"><i class="iconfontbt"></i></div>
<div class="swiper-banner-btn swiper-banner-next"><i class="iconfontbt"></i></div>
</div>
</div>
</div>
<!--中幻灯e-->

<!-- 引入公共部分banner -->
</div>
</div>

<script src="<?php echo DT_SKIN;?>/static/js/swiper.min.js"></script>
<script type="text/javascript">
//轮播图初始化
var bannerSwiper = new Swiper('.xh-banner', {
autoplay: true,
//autoplay: {
//delay: 5000
//},
effect: 'fade',
loop: true,
pagination: {
el: '.swiper-banner-pagination',
clickable: true,
bulletClass: 'swiper-banner-bullet',
},
navigation: {
prevEl: '.swiper-banner-prev',
nextEl: '.swiper-banner-next',
},
})
</script>