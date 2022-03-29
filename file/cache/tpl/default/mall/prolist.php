<?php defined('IN_DESTOON') or exit('Access Denied');?><!-- 公共header -->
<?php include template('header', 'common');?>
<!-- 公共header -->
<!-- 新加入css 叠加样式 -->
<link rel="stylesheet" href="<?php echo DT_SKIN;?>/static/css/other.css" type="text/css" />
<!-- 新加入css 叠加样式 -->
<!-- 公共导航菜单 -->
<?php include template('topmenu', 'common');?>
<!-- 公共导航菜单 -->
<!-- 公共轮播图 -->
<?php include template('banner', 'common');?>
<!-- 公共轮播图 -->
<!--广告位one-->
<?php $tags=tag("table=ad&condition=pid=26 and status=3 and title='one'&pagesize=1&order=edittime asc&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $key => $val) { ?>
<div class="wrap">
<div class="rel aag-90"><img src="<?php echo $val['image_src'];?>" width="1200" height="90" alt="" />
<!--i class="icon_tg"></i-->
<div class="adicon">广告</div>
</div>
</div>
<?php } } ?>
<!-- 主题部分开始 -->
<script type="text/javascript" src="<?php echo DT_SKIN;?>/static/js/xhindexlou1.js"></script>

<?php $comname = $_GET['comname'];?>

<div class="wrap main" id="ixh-01">
<div class="m-head clearfix">
<div class="m-txt">
<h2 class="fl"><a href="" target="_blank" le="$comname"><?php echo $comname;?>
</a></h2>
</div>
<div class="txt-hot fr">
<a href="" class="m-more" title="$comname" target="_blank">更多</a>
</div>
</div>
<div class="main-body clearfix flex">
<div class="m-left lou1">
<!--楼层左侧幻灯3张广告位180x260-->
<div class="f-slide js-slide buy-the-card">
<a href="" target="_blank" class="buy-btn">预订此位<span
class="iconfont icon-angle-double-right"></span></a>
<ul class="stack-slide">
<?php $tags1=tag("table=ad&condition=title='".$comname."' and status=3&pagesize=3&order=addtime asc&template=null");?>
<?php if(is_array($tags1)) { foreach($tags1 as $key1 => $val1) { ?>
<li class="slide-item active"><a href="###" class="u-img" target="_blank">
<img src="<?php echo $val1['image_src'];?>" alt="<?php echo $val1['introduce'];?>">
<div class="slide-name"><?php echo $val1['introduce'];?></div>
</a></li>
<?php } } ?>
</ul>
<a href="javascript:;" class="btn_hda prev" id="prev"></a>
<a href="javascript:;" class="btn_hda next" id="next"></a>
<div class="points"><a href="javascript:;" class="blue"><i></i></a><a
href="javascript:;"><i></i></a><a href="javascript:;"><i></i></a></div>
</div>
</div>
<div class="m-right two three">
<div class="mr-top clearfix">
<div class="mrt-brand">
<div class="mrtb-tit"><span class="fr"><a onclick="msg(0,'暂未开放该功能!')" style="color: #777777;">公司官网</a> </span><i class="icon-redbar"></i><?php echo $comname;?> · 旗下产品
</div>
<div class="mrtb-con">
<!--最新当前分类下的推荐1公司-->
<div class="list_mark">
<?php $tags=tag("table=mall_16&condition=brand='".$comname."'&template=null");?>
<?php
    $catid = [];
foreach($tags as $item){
$catid[] = $item['catid'];
}
$catid = array_flip($catid);
$catid = array_flip($catid);
/* 使用array_merge()函数修复键值*/
$catid = array_merge($catid);

?>

<?php if(is_array($catid)) { foreach($catid as $cat_key => $cat_val) { ?>
<?php $tags2=tag("table=category&condition=catid='".$cat_val."' and level=3&order=catid asc&template=null");?>
<?php if(is_array($tags2)) { foreach($tags2 as $key2 => $val2) { ?>
<li class="active"><?php echo $val2['catname'];?></li>
<?php } } ?>
<?php } } ?>
<div style="clear:both"></div>
</div>
<?php if(is_array($catid)) { foreach($catid as $cat_key => $cat_val) { ?>
<ul class="mrtb-list" style="display: <?php if($key3==0) { ?>block<?php } ?>;">
<div class="maxch">
<?php $tags4=tag("table=mall_16&condition=catid='".$cat_val."' and status=3 and brand='".$comname."'&order=catid asc&template=null");?>
<?php if(is_array($tags4)) { foreach($tags4 as $key4 => $val4) { ?>
<div class="mrbch">
<div class="mrb">
<a href="/<?php echo $MODULE['16']['module'];?>/<?php echo $val4['linkurl'];?>" title="" target="_blank">
<img alt="" src="<?php echo $val4['thumb'];?>" class="lazy"

style="display: inline;"></a>
</div>
<p class="tit"><a href="" title="<?php echo $val4['title'];?>" target="_blank"><?php echo $val4['title'];?></a></p>
<p class="mprice">面议</p>
</div>
<?php } } ?>

<div style="clear: both;">

</div>
</div>
</ul>
<?php } } ?>

</div>
</div>

</div>
</div>

<!--推荐产品S-->
<div class="wen clearfix two">
<!-- 获取一级分类的catname -->
<?php $tags6=tag("table=category&condition=catid='".$tags2['0']['parentid']."'&template=null");?>
<?php while($tags6['0']['level']!=1){ ?>
<?php $tags6=tag("table=category&condition=catid='".$tags6['0']['parentid']."'&template=null");?>
<?php }?>

<?php $tags5=tag("table=ad&condition=pid=26 and status=3 and title='".$comname."'&pagesize=1&order=edittime asc&template=null");?>
<?php if(is_array($tags5)) { foreach($tags5 as $key5 => $val5) { ?>
<div class="mrtb-tit"><span class="fr"><?php echo $tags6['0']['catname'];?>实力工厂</span><i class="icon-redbar"></i><?php echo $val5['title'];?> · <?php echo $val5['introduce'];?>
</div>


<div class="wrap" style="margin: 10px auto;">
<div class="rel aag-90"><img src="<?php echo $val5['image_src'];?>" width="1200" height="90" alt="" />
<div class="adicon">广告</div>
</div>
</div>
<?php } } ?>

<div class="mrtb-tit"><span class="fr">其他<?php echo $tags6['0']['catname'];?>实力工厂</span><i class="icon-redbar"></i>猜你想要
</div>


<div class="maxch">
<!-- 获取除了该产房的属于该一级分类的其他产品； -->
<?php $g_array = [];?>
<?php if(is_array($catid)) { foreach($catid as $cat_key => $cat_val) { ?>
<?php $tags8=tag("table=mall_16&condition=catid='".$cat_val."' and status=3 and brand!='".$comname."'&order=catid asc&template=null");?>
<?php if(is_array($tags8)) { foreach($tags8 as $key8 => $val) { ?>
 <?php $g_array[] = $val;?>
<?php } } ?>
<?php } } ?>

<?php $tags7 = $g_array;?>
<?php if(is_array($tags7)) { foreach($tags7 as $key7 => $val7) { ?>
<?php if($key7 < 6) { ?>
<div class="mrbch">
<div class="mrb">
<a href="/<?php echo $MODULE['16']['module'];?>/<?php echo $val7['linkurl'];?>" title="" target="_blank">
<img alt="" src="<?php echo $val7['thumb'];?>" class="lazy"

style="display: inline;"></a>
</div>
<p class="tit"><a href="" title="<?php echo $val7['title'];?>" target="_blank"><?php echo $val7['title'];?></a></p>
<p class="mprice">面议</p>
</div>
<?php } ?>
<?php } } ?>
<div style="clear: both;">

</div>
</div>
</div>
</div>


</div>
</div>



<!-- 按照省份、分类 -->
<?php include template('area', 'common');?>
<!-- 按照省份分类 -->

<!-- 按照其他类目分类 -->
<?php include template('cate', 'common');?>
<!-- 按照其他类目分类 -->

<div class="m-head borderno clearfix wrap" id="font">
<!-- 引入公共部字母分类 -->
<?php include template('font', 'common');?>
<!-- 引入公共部字母分类 -->
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