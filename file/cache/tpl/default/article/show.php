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
<?php if($copyfrom!=Null) { ?><p class="pull-left"><i class="n-i n-i-source"></i>来源：<em><?php echo $copyfrom;?></em></p><?php } ?>
<p class="pull-left"><i class="n-i n-i-time"></i>发布时间：<em><?php echo date('Y-m-d H:i:s',$addtime);?></em></p>
<?php if($hits>100) { ?><a class="post-type pull-right">热点</a><?php } ?>
<p class="pull-right"><i class="n-i n-i-view"></i><?php echo $hits;?></p>
<a href="#postShare" class="post-topshare pull-right" onclick="Dshare(<?php echo $moduleid;?>, <?php echo $itemid;?>);"><i class="n-i n-i-share"></i>分享</a>

</div>
<div class="post-body clearfix">
<!--相关文章-->
<div class="post-relate pull-left">
<div id="">
<div class="hm-t-container" style="width: 200px; height: 402px;">
<div class="hm-t-main">
<div class="hm-t-header">猜你喜欢</div>
<div class="hm-t-body">
<ul class="hm-t-list hm-t-list-img">
<?php $tags1=tag("table=article_21&condition=catid='".$catid."' and itemid!='".$itemid."' and level=3 and status=3&pagesize=4&order=addtime desc&template=null");?>
<?php for($i=1;$i<3;$i++){?>
<li class="hm-t-item hm-t-item-img">
<?php if(is_array($tags1)) { foreach($tags1 as $key1 => $val1) { ?>
<?php if((2*($i-1)-1)<$key1 && $key1<((2*$i))) { ?><a class="hm-t-img" href="<?php echo $MOD['linkurl'];?><?php echo $val1['linkurl'];?>" target="_self" title="<?php echo $val1['title'];?>">
<img src="<?php echo $val1['thumb'];?>" style="width: 80px; height: 80px; margin-left: 0px; margin-top: -6.66667px;">
</a><?php } ?>
<?php } } ?>
</li>
<?php }?>
</ul>
<ul class="hm-t-list hm-t-list-txt">
<?php $tags2=tag("table=article_21&condition=catid='".$catid."' and itemid!='".$itemid."' and level=4 and status=3&pagesize=6&order=addtime desc&template=null");?>
<?php if(is_array($tags2)) { foreach($tags2 as $key2 => $val2) { ?>
<li class="hm-t-item hm-t-item-txt">
<div class="hm-t-txt-wrapper">
<a class="hm-t-txt" href="<?php echo $MOD['linkurl'];?><?php echo $val2['linkurl'];?>" target="_self"
title="<?php echo $val2['title'];?>"><?php echo $val2['title'];?></a>
</div>
</li>
<?php } } ?>
</ul>
</div>
<div class="hm-t-footer"></div>
</div>
</div>
</div>
</div>

<!-- 联系我们滑动事件 -->
<script type="text/javascript">
$(document).ready(function(){
   var a,b,c;
a = $(window).height();    //浏览器窗口高度
var group = $("#scroll");
$(window).scroll(function(){
    b = $(this).scrollTop();
    c = 850;    //元素距离文档（document）顶部的高度
    if(b<c){
       $(".post-relate").removeClass('fixed');
   $(".post-body-main").removeClass('fixed');
    }else{
   $(".post-body-main").addClass('fixed');
   if(b>2820){
   $(".post-relate").addClass('btm_fixed');
   $(".post-relate").removeClass('fixed');
   }else{
   $(".post-relate").addClass('fixed');
   $(".post-relate").removeClass('btm_fixed');
   }
       
   
    }
});
});
</script>

<div class="post-body-main pull-right">
<blockquote class="post-lead">
核心提示：<?php echo $introduce;?></blockquote>
<div class="post-text" id="content">
<div id="content"><?php include template('content', 'chip');?></div>
</div>
<!--上下篇-->
<ul class="post-prev-next clearfix">
<?php $tags3=tag("table=article_21&condition=itemid<".$itemid." and status=3&pagesize=1&order=itemid desc&template=null");?>
<?php if(is_array($tags3)) { foreach($tags3 as $key3 => $val3) { ?>
<li class="post-prev pull-left">
<a class="ami" href="<?php echo $MOD['linkurl'];?><?php echo $val3['linkurl'];?>" title="<?php echo $val3['title'];?>"><?php echo $val3['title'];?></a>
</li>
<?php } } ?>
<?php $tags4=tag("table=article_21&condition=itemid>".$itemid." and status=3&pagesize=1&order=itemid asc&template=null");?>
<?php if(is_array($tags4)) { foreach($tags4 as $key4 => $val4) { ?>
<li class="post-next pull-left">
<a class="ami" href="<?php echo $MOD['linkurl'];?><?php echo $val4['linkurl'];?>" title="<?php echo $val4['title'];?>"><?php echo $val4['title'];?></a>
</li>
<?php } } ?>
</ul>
<!--上下篇 end-->
<script type="text/javascript" src="static/js/comment.js"></script>
</div>
</div>
</div>
<div class="post-content-side pull-right">
<div class="post-side-module">
<div class="post-side-module-hd">资讯推荐</div>
<div class="post-side-module-bd">
<?php $tags5=tag("table=article_21&condition=itemid!='".$itemid."' and level=1 and status=3&pagesize=6&order=addtime desc&template=null");?>
<?php if(is_array($tags5)) { foreach($tags5 as $key5 => $val5) { ?>
<a href="<?php echo $MOD['linkurl'];?><?php echo $val5['linkurl'];?>" target="_blank" class="post-recommend-card clearfix" title="<?php echo $val5['title'];?>">
<img class="post-recommend-card-img pull-left" src="<?php echo $val5['thumb'];?>"
alt="<?php echo $val5['title'];?>" />
<p class="post-recommend-card-txt"><?php echo $val5['title'];?></p>
</a>
<?php } } ?>
<?php if($tags5==Null) { ?> <p style="color: #747272;">暂无更多资讯推荐</p> <?php } ?>
</div>
</div>
<div class="post-side-module mt30">
<div class="post-side-module-hd">资讯排行</div>
<div class="post-side-module-bd">
<ul class="post-rank-list">
<?php $tags6=tag("table=article_21&condition=itemid!='".$itemid."' and status=3&pagesize=7&order=hits desc&template=null");?>
<?php if(is_array($tags6)) { foreach($tags6 as $key6 => $val6) { ?>
<li class="post-rank-list-li clearfix">
<i class="post-rank-num pull-left"><?php echo $key6+1;?></i>
<p class="post-rank-txt pull-left"><a href="<?php echo $MOD['linkurl'];?><?php echo $val6['linkurl'];?>"
target="_blank" title="<?php echo $val6['title'];?>"><?php echo $val6['title'];?></a></p>
</li>
<?php } } ?>

</ul>
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