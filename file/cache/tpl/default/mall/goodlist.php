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

<?php $catid = $_GET['catid'];?>
<?php $tags1=tag("table=category&condition=catid='".$catid."'&template=null");?>
<div class="wrap main" id="ixh-01">
<div class="m-head clearfix">
<div class="m-txt">
<h2 class="fl"><a href="javascript:void(0)" target="_blank" le="<?php echo $tags1['0']['catname'];?>"><?php echo $tags1['0']['catname'];?>
</a></h2>
</div>
<div class="txt-hot fr">
<a href="javascript:void(0)" class="m-more" title="<?php echo $tags1['0']['catname'];?>" target="_blank">更多</a>
</div>
</div>
<div class="main-body clearfix flex">

<!--推荐产品S-->
<div class="wen clearfix two">
<!-- 获取一级分类的catname -->
<?php $tags2=tag("table=category&condition=catid='".$catid."'&template=null");?>
<?php while($tags2['0']['level']!=1){ ?>
<?php $tags2=tag("table=category&condition=catid='".$tags2['0']['parentid']."'&template=null");?>
<?php }?>



<div class="mrtb-tit">
<span class="fr"><?php echo $tags2['0']['catname'];?>品牌猎头</span><i class="icon-redbar"></i>优质产品
</div>


<div class="maxch">
<?php $tags7=tag("table=mall_16&condition=catid='".$catid."' and status=3&order=addtime desc&template=null");?>
<?php if(is_array($tags7)) { foreach($tags7 as $key7 => $val7) { ?>
<div class="mrbch">
<div class="mrb">
<a href="/<?php echo $MODULE['16']['module'];?>/<?php echo $val7['linkurl'];?>" title="" target="_blank">
<img alt="" src="<?php echo $val7['thumb'];?>" class="lazy"

style="display: inline;"></a>
</div>
<p class="tit"><a href="" title="<?php echo $val7['title'];?>" target="_blank"><?php echo $val7['title'];?></a></p>
<p class="mprice">面议</p>
</div>
<?php } } ?>
<div style="clear: both;">

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