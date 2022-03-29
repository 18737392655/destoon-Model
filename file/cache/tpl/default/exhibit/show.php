<?php defined('IN_DESTOON') or exit('Access Denied');?><!-- 公共header -->
<?php include template('header', 'common');?>
<!-- 公共header -->
<!-- 新加入css 叠加样式 -->
<link rel="stylesheet" href="<?php echo DT_SKIN;?>/static/css/other.css" type="text/css" />
<link rel="stylesheet" href="<?php echo DT_SKIN;?>/static/css/news.css" type="text/css" />
<style type="text/css">
.post-lead, .post-lead *{
font-size: 13px;
}
.post-lead table tr td:first-child{
width: 33%;
}
</style>
<!-- 新加入css 叠加样式 -->

<!-- 公共导航菜单 -->
<?php include template('topmenu', 'common');?>
<!-- 公共导航菜单 -->
<!-- 公共轮播图 -->
<?php include template('banner', 'common');?>
<!-- 公共轮播图 -->
<div class="wrap flex">
<div class="post-content-main pull-left">
<h1 class="post-title"><?php echo $title;?></h1>
<div class="post-info clearfix">
<p class="pull-left"><i class="n-i n-i-author"></i><em><?php echo $editor;?></em></p>
<p class="pull-left"><i class="n-i n-i-time"></i>发布时间：<em><?php echo date('Y-m-d H:i:s',$addtime);?></em></p>
<?php if($level==1) { ?><a class="post-type pull-right">热点</a><?php } ?>
<p class="pull-right"><i class="n-i n-i-view"></i><?php echo $hits;?></p>
<a href="#postShare" class="post-topshare pull-right" onclick="Dshare(<?php echo $moduleid;?>, <?php echo $itemid;?>);"><i class="n-i n-i-share"></i>分享</a>
</div>
<div class="post-body clearfix">


<div class="post-body-main pull-right" style="width: 100%">

<div class="post-text" id="content">
<div class="content" id="article">
<?php echo $content;?>
</div>
</div>
<!--上下篇-->
<ul class="post-prev-next clearfix">
<?php $tags1=tag("table=exhibit_8&condition=itemid<".$itemid." and status=3&pagesize=1&order=itemid desc&template=null");?>
<?php if(is_array($tags1)) { foreach($tags1 as $key1 => $val1) { ?>
<li class="post-prev pull-left">
<a class="ami" href="<?php echo $MOD['linkurl'];?><?php echo $val1['linkurl'];?>" title="<?php echo $val1['title'];?>"><?php echo $val1['title'];?></a>
</li>
<?php } } ?>
<?php $tags2=tag("table=exhibit_8&condition=itemid>".$itemid." and status=3&pagesize=1&order=itemid asc&template=null");?>
<?php if(is_array($tags2)) { foreach($tags2 as $key2 => $val2) { ?>
<li class="post-next pull-left" style="margin-left: 24%;">
<a class="ami" href="<?php echo $MOD['linkurl'];?><?php echo $val2['linkurl'];?>" title="<?php echo $val2['title'];?>"><?php echo $val2['title'];?></a>
</li>
<?php } } ?>
</ul>
<!--上下篇 end-->
<script type="text/javascript" src="<?php echo DT_SKIN;?>/static/js/comment.js"></script>
</div>
</div>
</div>
<div class="post-content-side pull-right">
<blockquote class="post-lead" style="margin: 10px 0px 30px 20px;">
<table cellspacing="1" cellpadding="10" width="100%" class="ctb" style="font-size: 13px;">
<tr>
<td class="ltd">展会日期</td>
<td class="rtd"><?php echo $fromtime;?> 至 <?php echo $totime;?></td>
</tr>
<tr>
<td class="ltd">展出城市</td>
<td class="rtd"><?php echo $city?$city:'暂无'?></td>
</tr>
<tr>
<td class="ltd">展出地址</td>
<td class="rtd"><a href="<?php echo DT_PATH;?>api/address.php?auth=<?php echo encrypt($address.'|'.$title, DT_KEY.'MAP');?>" target="_blank"><?php echo $address;?></a></td>
</tr>
<tr>
<td class="ltd">展馆名称</td>
<td class="rtd"><?php echo $hallname;?></td>
</tr>
<tr>
<td class="ltd">主办单位</td>
<td class="rtd"><?php echo $sponsor;?></td>
</tr>
<?php if($undertaker) { ?>
<tr>
<td class="ltd">承办单位</td>
<td class="rtd"><?php echo $undertaker;?></td>
</tr>
<?php } ?>
</table>
</blockquote>

<div class="post-side-module" style="margin: 10px 0px 30px 20px;background: #fff;padding: 8px 10px;">
<div class="post-side-module-hd">展会推荐</div>
<div class="post-side-module-bd">
<?php $tags15=tag("table=exhibit_8&condition=level=1 and catid<>33&status=3&pagesize=6&order=addtime desc&template=null");?>
<?php if(is_array($tags15)) { foreach($tags15 as $key15 => $val14) { ?>
<a href="" target="_blank" class="post-recommend-card clearfix" title="<?php echo $val14['title'];?>">
<img class="post-recommend-card-img pull-left" src="<?php echo $val14['thumb'];?>"
alt="<?php echo $val14['title'];?>" />
<p class="post-recommend-card-txt"><?php echo $val14['title'];?></p>
</a>
<?php } } ?>
</div>
</div>

<div class="post-jd-ad mt30">
</div>
</div>
</div>

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