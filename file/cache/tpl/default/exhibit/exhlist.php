<?php defined('IN_DESTOON') or exit('Access Denied');?><!-- 公共header -->
<?php include template('header', 'common');?>
<!-- 公共header -->
<!-- 新加入css 叠加样式 -->
<link rel="stylesheet" href="<?php echo DT_SKIN;?>/static/css/other.css" type="text/css" />
<link rel="stylesheet" href="<?php echo DT_SKIN;?>/static/css/newlist.css" type="text/css" />
<style type="text/css">
.headnews-txt-list li:nth-child(2n){
margin-left: 5%;
}
.headnews-txt-list li{
width: 46%;
}
</style>
<!-- 新加入css 叠加样式 -->
<!-- 公共导航菜单 -->
<?php include template('topmenu', 'common');?>
<!-- 公共导航菜单 -->
<!-- 公共轮播图 -->
<?php include template('banner', 'common');?>
<!-- 公共轮播图 -->
<div class="wrap">
<div class="headnews clearfix" style="display: flex;flex-wrap: wrap;">
<div class="headnews-list pull-left">
<?php $tags13=tag("table=exhibit_8&condition=level=1 and catid=33&pagesize=4&order=addtime desc&template=null");?>
<?php if(is_array($tags13)) { foreach($tags13 as $key13 => $val13) { ?>
<div class="headnews-top">
<h2 class="headnews-top-title text-overflow">
<a href="<?php echo $MOD['linkurl'];?><?php echo $val13['linkurl'];?>" title="<?php echo $val13['title'];?>">盘点：<?php echo $val13['title'];?></a></h2>
<div class="headnews-top-desc">
主办方：<?php echo $val13['sponsor'];?>   &nbsp;&nbsp;&nbsp;地点：<?php echo $val13['hallname'];?>&nbsp;&nbsp;&nbsp;
<a href="" target="_blank" title="管道除湿机原理及其在无尘车间的应用？">[详细]</a>
</div>
</div>
<?php } } ?>


</div>
<div class="headnews-slide pull-right" style="display: flex;">
<div class="bd pull-left">
<ul>
<?php $tags15=tag("table=exhibit_8&condition=level=1 and catid<>33&status=3&pagesize=12&order=addtime desc&template=null");?>
<?php if(is_array($tags15)) { foreach($tags15 as $key15 => $val14) { ?>
<li>
<a href="<?php echo $MOD['linkurl'];?><?php echo $val14['linkurl'];?>" target="_blank">
<img src="<?php echo $val14['thumb'];?>" title="<?php echo $val14['title'];?>" />
</a>
<p class="text-overflow">
<a href="<?php echo $MOD['linkurl'];?><?php echo $val14['linkurl'];?>" target="_blank"><?php echo $val14['title'];?></a>
</p>
</li>
<?php } } ?>
</ul>
</div>
<div class="hd  pull-right">
<ul>
<?php $tags15=tag("table=exhibit_8&condition=level=1 and catid<>33&status=3&pagesize=5&order=addtime desc&template=null");?>
<?php if(is_array($tags15)) { foreach($tags15 as $key15 => $val14) { ?>
<li class="on">
<a href="<?php echo $MOD['linkurl'];?><?php echo $val14['linkurl'];?>">
<img src="<?php echo $val14['thumb'];?>" alt="<?php echo $val14['title'];?>">
</a>
</li>
<?php } } ?>
</ul>
</div>

</div>
<ul class="headnews-slide-data" style="display: none;"></ul>
<ul class="headnews-txt-list clearfix">
<?php $tags14=tag("table=exhibit_8&condition=status=3&pagesize=12&order=fromtime desc&template=null");?>
<?php if(is_array($tags14)) { foreach($tags14 as $key14 => $val14) { ?>
<li class="clearfix">
<p class="headnews-txt-list-title pull-left text-overflow">
<a href="<?php echo $MOD['linkurl'];?><?php echo $val14['linkurl'];?>" target="_blank" title="<?php echo $val14['title'];?>">
<?php echo $val14['title'];?>   <span style="float: right;"><?php echo date('Y-m-d',$val14['fromtime']);?></span>
</a>
</p>
</li>
<?php } } ?>
</ul>
</div>

<script type="text/javascript">
// 文字列表轮播
jQuery(".column-rank").slide({

titCell: ".column-rank-head ul li",

mainCell: ".column-rank-body"

});
jQuery(".headnews-slide").slide({
mainCell: ".bd ul",
effect: "left",
autoPlay: true,
interTime: 6000,
});
</script>

</div>

<script type="text/javascript">
// 标签卡
$(function(){
$(".li li").eq(0).addClass("on");
$(".body ul").eq(1).addClass("hide");

$(".li_copy li").eq(0).addClass("on");
$(".body_copy ul").eq(1).addClass("hide");
})

$(".li li").click(function(e){
if(e.currentTarget.dataset.index == 0){
$(".li li").eq(0).addClass("on");
$(".li li").eq(1).removeClass("on");
$(".body ul").eq(0).removeClass("hide");
$(".body ul").eq(1).addClass("hide");
}else{
$(".li li").eq(1).addClass("on");
$(".li li").eq(0).removeClass("on");
$(".body ul").eq(1).removeClass("hide");
$(".body ul").eq(0).addClass("hide");
}
})

$(".li_copy li").click(function(e){
if(e.currentTarget.dataset.index == 0){
$(".li_copy li").eq(0).addClass("on");
$(".li_copy li").eq(1).removeClass("on");
$(".body_copy ul").eq(0).removeClass("hide");
$(".body_copy ul").eq(1).addClass("hide");
}else{
$(".li_copy li").eq(1).addClass("on");
$(".li_copy li").eq(0).removeClass("on");
$(".body_copy ul").eq(1).removeClass("hide");
$(".body_copy ul").eq(0).addClass("hide");
}
})
</script>



<!--2p-e-->
<script type="text/javascript" src="<?php echo DT_SKIN;?>/static/js/xhindexlou1.js"></script>
<!--3p-->
<!--楼层S-->




<!--12友情链接-->
<div class="wrap" id="friendly">
<!-- 引入公共部友情链接 -->
<?php include template('friendly', 'common');?>
<!-- 引入公共部友情链接 -->
</div>
<!--友情链接E-->


<!-- 主题部分结束 -->
<!-- 右侧导航 -->
<?php include template('siderbar-right', 'common');?>
<!-- 右侧导航 -->
<!-- 公共底部 -->
<?php include template('footer', 'common');?>
<!-- 公共底部 -->