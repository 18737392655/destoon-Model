<?php defined('IN_DESTOON') or exit('Access Denied');?><!-- 公共header -->
<?php include template('header', 'common');?>
<!-- 公共header -->
<!-- 新加入css 叠加样式 -->
<link rel="stylesheet" href="<?php echo DT_SKIN;?>/static/css/other.css" type="text/css" />
<link rel="stylesheet" href="<?php echo DT_SKIN;?>/static/css/newlist.css" type="text/css" />
<style type="text/css">
.hide{
display: none;
}
</style>
<!-- 新加入css 叠加样式 -->
<!-- 公共导航菜单 --><?php include template('topmenu', 'common');?>
<!-- 公共导航菜单 -->
<!-- 公共轮播图 -->
<?php include template('banner', 'common');?>
<!-- 公共轮播图 -->
<div class="wrap">

<div class="column">
<?php 
$catid = $_GET['catid'];
$tags = $db->get_one("select * from ".$DT_PRE."category where catid='".$catid."'");
?>

<div class="column-head clearfix">
<h2 class="column-name pull-left">
<i class="n-i n-i-c1"></i>
<a href="" target="_blank" title="{$tags[catname]"><?php echo $tags['catname'];?></a>
</h2>
<b class="column-en-name pull-left">news</b>
<a class="column-head-more pull-right" href="javascript:window.history.go(-1)"
title="{$tags[catname]">返回</a>
</div>
<div class="column-body clearfix">
<div class="column-main  pull-left" style="width: 60%;">
<div class="column-news-list pull-left">
<ul class="column-txt-list">
<?php if($tags['level'] != 1) { ?>
<?php $tags2=tag("table=article_21&condition=catid='".$catid."' and status=3&order=addtime desc&template=null");?>
<?php } else if($tags['level'] == 1) { ?>
<?php $tags10=tag("table=category&condition=moduleid=21 and parentid='".$catid."' and level=2&template=null");?>
<?php
$idArray=[];

foreach($tags10 as $i => $v){
array_push($idArray,$v['catid']);
}
$idStr = implode(',',$idArray);
?>
<?php
    $tags2 = [];
$result = $db->query("select * from ".$DT_PRE."article_21 where catid in(".$idStr.") and status=3 order by addtime desc");
while($r = $db->fetch_array($result)) {
$tags2[] = $r;
}
?>

<?php } ?>

<?php if(is_array($tags2)) { foreach($tags2 as $key2 => $val2) { ?>
<li class="clearfix">
<p class="column-txt-list-title text-overflow pull-left">
<a href="<?php echo $MOD['linkurl'];?><?php echo $val2['linkurl'];?>" target="_blank" title="<?php echo $val2['title'];?>"><?php echo $val2['title'];?></a></p>
<span class="column-txt-list-date pull-right"><?php echo date('Y-m-d',$val2['addtime']);?></span>
</li>
<?php } } ?>
<?php if(count($tags2)<1 && count($tags1)>0) { ?><p>暂无更多资讯推荐</p><?php } else if((count($tags2)<1 && count($tags1)<1)) { ?> <?php } ?>
</ul>
</div>
</div>
<div class="column-side column-rank pull-right" style="flex: 1;">
<div class="column-rank-head clearfix">
<h3 class="pull-left">排行</h3>
<ul class="column-rank-tab pull-right li" style="text-align: right;flex: 1;">
<li data-index="0">一周</li>
<li data-index="1">全部</li>
</ul>
</div>
<div class="column-rank-body body">
<ul>
<?php
$tags4 = [];
$result1 = $db->query("select * from ".$DT_PRE."article_21 where catid in(".$idStr.") and status=3 and DATE_SUB(CURDATE(), INTERVAL 7 DAY) <=addtime order by hits desc limit 8");
while($r1 = $db->fetch_array($result1)) {
$tags4[] = $r1;
}
?>

<?php if(is_array($tags4)) { foreach($tags4 as $key4 => $val4) { ?>
<li class="column-rank-item">
<i class="column-rank-num"><?php echo $key4+1;?></i>
<p class="column-rank-title text-overflow"><a
href="<?php echo $MOD['linkurl'];?><?php echo $val4['linkurl'];?>" target="_blank"
title="<?php echo $val4['title'];?>"><?php echo dsubstr($val4['title'], 40, '...');?></a></p>
</li>
<?php } } ?>
<?php if(count($tags4)<1) { ?><p>暂无更多资讯</p> <?php } ?>

</ul>

<ul>
<?php
$tags5 = [];
$result2 = $db->query("select * from ".$DT_PRE."article_21 where catid in(".$idStr.") and status=3 order by hits desc limit 8");
while($r2 = $db->fetch_array($result2)) {
$tags5[] = $r2;
}
?>
<?php if(is_array($tags5)) { foreach($tags5 as $key5 => $val5) { ?>
<li class="column-rank-item">
<i class="column-rank-num"><?php echo $key5+1;?></i>
<p class="column-rank-title text-overflow"><a
href="<?php echo $MOD['linkurl'];?><?php echo $val5['linkurl'];?>" target="_blank"
title="<?php echo $val5['title'];?>"><?php echo dsubstr($val5['title'], 40, '...');?></a></p>
</li>
<?php } } ?>
<?php if(count($tags5)<1) { ?><p>暂无更多资讯</p> <?php } ?>


</ul>
</div>
</div>
</div>
</div>

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