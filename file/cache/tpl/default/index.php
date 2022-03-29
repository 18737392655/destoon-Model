<?php defined('IN_DESTOON') or exit('Access Denied');?><!-- 公共header -->
<?php include template('header', 'common');?>
<!-- 公共header -->
<!-- 公共导航菜单 -->
<?php include template('topmenu', 'common');?>
<!-- 公共导航菜单 -->
<!-- 公共轮播图 -->
<?php include template('banner', 'common');?>
<!-- 公共轮播图 -->
<!-- 主题部分开始 -->

<!--2p-s-->
<?php $tags=tag("table=category&condition=moduleid=6 and catdir!=1 and level=1&pagesize=1&order=catid asc&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $key => $val) { ?>
<div class="wrap main buy scrollBoxs" id="ixh-buytui">
<div class="m-head clearfix">
<div class="m-txt">
<div class="scroll_f fl"><?php echo mb_substr($val['catname'],1,1,'utf-8');?></div>
<h2 class="fl">
<a href="/<?php echo $MODULE['6']['module'];?>/" target="_blank" title="<?php echo $val['catname'];?>"><?php echo $val['catname'];?></a>
<em></em><span><?php echo $val['seo_description'];?></span>
</h2>
</div>
<div class="m-tit02"><a class="m-more" href="/<?php echo $MODULE['6']['module'];?>/" target="_blank">更多&gt;&gt;</a> </div>
</div>
<div class="scrollbox_buy clearfix">
<div class="buy_tui clearfix">
<ul>
<?php $tags1=tag("table=buy_6&condition=catid='".$val['catid']."' and level=2 and totime>'".time()."'&pagesize=20&order=addtime desc&template=null");?>
<?php if(is_array($tags1)) { foreach($tags1 as $key1 => $val1) { ?>
<li>
<dl>
<dt>
<div class="purchaseTit">
<a href="/<?php echo $MODULE['6']['module'];?>/<?php echo $val1['linkurl'];?>" target="_blank" title="<?php echo $val['title'];?>"><?php echo $val1['title'];?></a>
</div>
<a class="quoteBtn" href="/<?php echo $MODULE['6']['module'];?>/<?php echo $val1['linkurl'];?>" target="_blank">立即报价</a>
</dt>
<dd>
<span class="fl">采购数量：<b><?php echo $val1[amount]?$val1[amount]:'电议'?></b></span>
<span class="fr">截止时间：<?php echo date('Y-m-d',$val1['totime']);?></span>
</dd>
</dl>
</li>
<?php } } ?>

</ul>
</div>
<script type="text/javascript">
$(function() {
// 采购推荐滚动的js
var setName1;
$(".scrollbox_buy .buy_tui").hover(function() {
clearInterval(setName1);
}, function() {
setName1 = setInterval(function() {
$(".scrollbox_buy .buy_tui").animate({
marginTop: "-120px"
}, 2500, function() {
$(".scrollbox_buy .buy_tui").css("margin-top", "0").find(
"li:lt(4)").appendTo(".scrollbox_buy ul");
});
}, 4000);
}).trigger("mouseleave");
// end-采购推荐滚动的js
});
</script>
</div>
</div>
<?php } } ?>



<!--3p-s-->
<?php $tags=tag("table=category&condition=moduleid=5 and level=1&pagesize=1&order=catid desc&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $key => $val) { ?>
<div class="wrap main niu_company cp-hot" id="ixh-comtui">
<div class="m-head clearfix">
<div class="m-txt">
<div class="scroll_f fl"><?php echo mb_substr($val['catname'],0,1,'utf-8');?></div>
<h2 class="fl"><?php echo $val['catname'];?><em></em><span><?php echo $val['seo_description'];?></span></h2>
</div>
<div class="m-tit02">
<a class="m-more" href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_my'];?>?mid=5" target="_blank">我要入驻&gt;&gt;</a>
</div>
</div>
<!--行业牛商推荐-->
<div class="industryCon" data-p4p-keyword-wrap="" hcmodule="行业货源">
<div class="tabBoxCon" hcmodule="行业选择TAB">
<ul>
<?php $tags1=tag("table=category&condition=parentid='".$val['catid']."' and level=2&pagesize=10&order=catid desc&template=null");?>
<?php if(is_array($tags1)) { foreach($tags1 as $key1 => $val1) { ?>
<li data-cont="cattab<?php echo $key1;?>" class="tabTit1 <?php if($key1 == 0) { ?>tbCur<?php } ?>" data-name="<?php echo $val1['catname'];?>"><b
class="iconfont icon-hangyehuoyuanicon-<?php echo $key1+1;?>"></b><span><?php echo $val1['catname'];?></span></li>
<?php } } ?>


</ul>
</div>
<div class="tabBoxListCon" hcmodule="行业分类">
<?php $tags1=tag("table=category&condition=parentid='".$val['catid']."' and level=2&pagesize=10&order=catid desc&template=null");?>
<?php if(is_array($tags1)) { foreach($tags1 as $key1 => $val1) { ?>
<div id="cattab<?php echo $key1;?>" class="tabBoxList com-tab-<?php echo $key1;?> clearfix" style="display: <?php if($key1 == 0) { ?>block<?php } else { ?>none<?php } ?>;">
<div class="m-body">

<?php $tags2=tag("table=sell_5&condition=catid='".$val1['catid']."' and level=3&pagesize=2&order=addtime desc&template=null");?>
<?php if(is_array($tags2)) { foreach($tags2 as $key2 => $val2) { ?>
<div class="comlist">
<div class="comtype">制造商</div>
<div class="comname"><a href="/<?php echo $MODULE['5']['module'];?>/<?php echo $val2['linkurl'];?>" target="_blank"><?php echo $val2['title'];?></a>
<em class="ico_you"></em><em class="ico_jy"></em></div>
<div class="information">
<ul>
<li><?php echo $val2['n1'];?><span><?php echo $val2['v1'];?></span></li>
<li><?php echo $val2['n2'];?><span><?php echo $val2['v2'];?></span></li>
<li><?php echo $val2['n3'];?><span><?php echo $val2['v3'];?></span></li>
</ul>
</div>
<div class="comsell">
<ul>
<?php $ArrayNum = [0,1,2];?>
<?php if(is_array($ArrayNum)) { foreach($ArrayNum as $key3 => $val3) { ?>
<li><a href="/<?php echo $MODULE['5']['module'];?>/<?php echo $val2['linkurl'];?>" target="_blank" title="FQ8-35/W型风动涡轮潜水泵"><img
src="<?php $val3 = $val3 == 0?'':$val3;echo $val2['thumb'.$val3];?>"
style="display: inline;">
<div class="sellproinfo"><span></span>
<p class="pname">FQ8-35/W型风动涡轮潜水泵</p>
<p class="price">￥<em>电议</em></p>
</div>
</a></li>
<?php } } ?>
</ul>
<div class="sellnum"><a href="/<?php echo $MODULE['5']['module'];?>/<?php echo $val2['linkurl'];?>" target="_blank"><p><?php echo count($ArrayNum)?></p>件产品</a></div>
</div>
<div class="intro"><em></em><?php echo $val2['brand'];?></div>
</div>
<?php } } ?>

</div>
</div>
<?php } } ?>
</div>
</div>
</div>
<?php } } ?>


<!--4p-s-->
<?php $tags=tag("table=category&condition=moduleid=6 and catdir!=1 and level=1&pagesize=1&order=catid desc&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $key => $val) { ?>
<div class="wrap main huiyuan-elite cp-hot" id="ixh-uertui">
<div class="m-head clearfix">
<div class="m-txt">
<div class="scroll_f fl"><?php echo mb_substr($val['catname'],0,1,'utf-8');?></div>
<h2 class="fl"><?php echo $val['catname'];?><em></em><span><?php echo $val['seo_description'];?></span></h2>
</div>
<div class="m-tit02">
<a class="m-more" href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_my'];?>?mid=6"
target="_blank">我要入驻&gt;&gt;</a>
</div>
</div>

<!--会员自主推荐-->
<div class="clearfix" style="display: block;">
<div class="m-body">
<?php $tags1=tag("table=buy_6&condition=catid='".$val['catid']."' and level=2 and totime>'".time()."'&pagesize=6&order=addtime desc&template=null");?>
<?php if(is_array($tags1)) { foreach($tags1 as $key1 => $val1) { ?>
<div class="mrb-box">
<div class="catname_sl"><?php echo $val1['title'];?></div>
<div class="mrb-img"><a href="/<?php echo $MODULE['6']['module'];?>/<?php echo $val1['linkurl'];?>" title="<?php echo $val1['title'];?>"
target="_blank"><img alt="<?php echo $val1['title'];?>" src="<?php echo $val1['thumb'];?>" class="lazy"></a>
</div>
<div class="mrb-b">
<p class="mrb-price"><em><?php echo $val1[amount]?$val1[amount].'台':'电议'?></em></p>
<p class="mrb-tit"><?php echo $val1['title'];?></p>
<p class="mrb-comname"><?php echo $val1['v1'];?></p>
</div>
<div class="catname_sl_h">
<a href="/<?php echo $MODULE['6']['module'];?>/<?php echo $val1['linkurl'];?>" target="_blank">
<div class="firstLine">进入商铺</div>
<div class="secondLine">查看更多企业的货源&gt;</div>
</a>
</div>
</div>
<?php } } ?>


</div>
</div>
</div>
<?php } } ?>

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


<script type="text/javascript" src="<?php echo DT_SKIN;?>/static/js/xhindexlou1.js"></script>

<!--1F-s-->
<?php $tags=tag("table=category&condition=moduleid=16 and catdir!=1 and level=1&order=catid asc&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $key => $val) { ?>
<div class="wrap main" id="ixh-0<?php echo $key+1;?>">
<div class="m-head clearfix">
<div class="m-txt">
<div class="scroll_f fl"><?php echo $key+1;?>F</div>
<h2 class="fl"><a href="/<?php echo $MODULE['16']['module'];?>/bussness.php?catid=<?php echo $val['catid'];?>" target="_blank" le="<?php echo $val['catname'];?>"><?php echo $val['catname'];?></a></h2>
</div>
<div class="txt-hot fr">
<a href="/<?php echo $MODULE['16']['module'];?>/bussness.php?catid=<?php echo $val['catid'];?>" class="m-more" title="<?php echo $val['catname'];?>" target="_blank">更多</a>
</div>
</div>
<div class="main-body clearfix">
<div class="m-left lou<?php echo $key+1;?>">
<!--楼层左侧幻灯3张广告位180x260-->
<div class="f-slide js-slide buy-the-card">
<a href="" target="_blank" class="buy-btn">预订此位<span class="iconfont icon-angle-double-right"></span></a>
<ul class="stack-slide">
<?php $tags1=tag("table=ad&condition=introduce='".$val['catid']."' and note=1 and status=3&pagesize=3&order=addtime asc&template=null");?>
<?php if(is_array($tags1)) { foreach($tags1 as $key1 => $val1) { ?>
<li class="slide-item active"><a href="###" class="u-img" target="_blank">
<img src="<?php echo $val1['image_src'];?>" alt="<?php echo $val1['title'];?>">
<div class="slide-name"><?php echo $val1['title'];?></div>
</a></li>
<?php } } ?>
</ul>
<a href="javascript:;" class="btn_hda prev" id="prev"></a>
<a href="javascript:;" class="btn_hda next" id="next"></a>
<div class="points"><a href="javascript:;" class="blue"><i></i></a><a
href="javascript:;"><i></i></a><a href="javascript:;"><i></i></a></div>
</div>
</div>
<div class="m-right">
<div class="mr-top clearfix">
<div class="mrt-key">
<?php $tags2=tag("table=category&condition=parentid='".$val['catid']."' and level=2&pagesize=4&order=catid asc&template=null");?>
<?php if(is_array($tags2)) { foreach($tags2 as $key2 => $val2) { ?>
<ul>
<li><a target="_blank" href="/<?php echo $MODULE['16']['module'];?>/comlist.php?catid=<?php echo $val2['catid'];?>" title="<?php echo $val2['catname'];?>"><span style="color:#FF0000"><?php echo $val2['catname'];?></span></a></li>

<?php $tags3=tag("table=category&condition=parentid='".$val2['catid']."' and level=3&pagesize=5&order=catid asc&template=null");?>
<?php if(is_array($tags3)) { foreach($tags3 as $key3 => $val3) { ?>
<li><a target="_blank" href="/<?php echo $MODULE['16']['module'];?>/goodlist.php?catid=<?php echo $val3['catid'];?>" title="<?php echo $val3['catname'];?>"><?php echo $val3['catname'];?></a></li>
<?php } } ?>
</ul>
<?php } } ?>


</div>
<div class="mrt-brand">
<div class="mrtb-tit"><span class="fr"><?php echo $val['catname'];?>实力工厂</span><i class="icon-redbar"></i>推荐企业
</div>
<div class="mrtb-con">
<?php $tags4=tag("table=mall_16&condition=mycatid='".$val['catid']."' and level=4&group=brand&order=catid asc&template=null");?>

<!--最新当前分类下的推荐1公司-->
<div class="list_mark">
<?php for($i=0;$i<count($tags4)/2;$i++){ ?>
<li class="active"></li>
<?php }?>
</div>


<?php for($i=0;$i<count($tags4)/2;$i++){ ?>
<ul class="mrtb-list" style="display: block;">
<?php foreach($tags4 as $key4 => $val4){
$n = $key4%2 == 0 ? $key4/2 : ($key4-1)/2;
if($n == $i){?>
<div class="mrtb-name <?php if($key4 % 2==1) echo 'nobtm';?>">
<h2><a href="/<?php echo $MODULE['16']['module'];?>/prolist.php?comname=<?php echo $val4['brand'];?>" target="_blank"
title="<?php echo $val4['brand'];?>"><?php echo $val4['brand'];?></a></h2>

<?php $user=tag("table=company&condition=company='".$val4['brand']."'&template=null");?>
<?php if($user['0']['vip']) { ?>
<div class="mrtb-tag"><span title=""><i
class="icon icon-vip"></i><em class="fl v-year"><?php echo $user['0']['vip'];?></em></span>
</div>
<?php } ?>

<p class="mrtb-a clearfix">
<span>产品：</span>
<?php $tags5=tag("table=mall_16&condition=brand='".$val4['brand']."' and mycatid='".$val['catid']."' and level=4&pagesize=3&order=itemid asc&template=null");?>
<?php if(is_array($tags5)) { foreach($tags5 as $key5 => $val5) { ?>
<a href="/<?php echo $MODULE['16']['module'];?>/show.php?itemid=<?php echo $val5['itemid'];?>" target="_blank" title="<?php echo dsubstr($val5['title'], 12, '...');?>"><?php echo dsubstr($val5['title'], 18, '...');?></a>
<?php } } ?>
</p>
</div>
<?php } }?>
</ul>
<?php }?>
</div>
</div>
<!--推荐产品S-->
<div class="wen clearfix">
<div class="maxch">
<?php $tags6=tag("table=mall_16&condition=mycatid='".$val['catid']."' and  level=4&pagesize=5&order=catid asc&template=null");?>
<?php if(is_array($tags6)) { foreach($tags6 as $key6 => $val6) { ?>
<div class="mrbch">
<div class="mrb"> 
<a href="/<?php echo $MODULE['16']['module'];?>/show.php?itemid=<?php echo $val6['itemid'];?>" title="" target="_blank">
<img alt="" src="<?php echo $val6['thumb'];?>" class="lazy" style="display: inline;">
</a> </div>
<p class="tit"><a href="" title="<?php echo $val6['title'];?>" target="_blank"><?php echo $val6['title'];?></a></p>
<p class="mprice">面议</p>
</div>
<?php } } ?>



</div>
</div>
</div>
</div>
</div>
</div>
<!--广告位 introduce=一级分类id  note2-->
<?php $tags3=tag("table=ad&condition=introduce='".$val['catid']."' and note=2 and status=3&pagesize=1&order=addtime asc&template=null");?>
<?php if(is_array($tags3)) { foreach($tags3 as $key3 => $val3) { ?>
<div class="wrap">
<div class="rel aag-90"><img src="<?php echo $val3['image_src'];?>" width="1200" height="90" alt="" />
<!--i class="icon_tg"></i-->
<div class="adicon">广告</div>
</div>
</div>
<?php } } ?>

<?php } } ?>


<!-- 现货商城 -->
<div class="wrap main cp-hot">
<div class="m-head clearfix">
<div class="m-txt">
<h2 class="fl"><a href="" target="_blank" title="现货商城">现货商城</a></h2>
</div>
<div class="m-tit02">
<a class="m-more" href="" target="_blank">更多&gt;&gt;</a>
</div>
</div>
<!--推荐商品-->
<div class="clearfix" style="display: block;">
<div class="m-body">
<?php $tags7=tag("table=mall_16&condition level=4&pagesize=12&order=addtime desc&template=null");?>
<?php if(is_array($tags7)) { foreach($tags7 as $key7 => $val7) { ?>
<div class="mrb-box">
<?php $tags8=tag("table=category&condition=catid='".$val7['mycatid']."' and level=1&template=null");?>
<?php if(is_array($tags8)) { foreach($tags8 as $key8 => $val8) { ?>
<div class="catname_sl"><?php echo $val8['catname'];?></div>
<?php } } ?>
<div class="mrb-img">
<a href="/<?php echo $MODULE['16']['module'];?>/show.php?itemid=<?php echo $val7['itemid'];?>" title="<?php echo $val7['title'];?>" target="_blank">
<img alt="<?php echo $val7['title'];?>" src="<?php echo $val7['thumb'];?>" class="lazy"></a>
</div>
<div class="mrb-b">
<p class="mrb-price"><span class="fl">￥<em><?php echo $val7['price'];?></em>元</span><span
class="fr">已成交：<?php echo $val7['sales'];?></span></p>
<p class="mrb-tit"><a href="" title="<?php echo $val7['title'];?>"
target="_blank"><?php echo $val7['title'];?></a></p>
</div>
<div class="catname_sl_h">
<a href="" target="_blank">
<div class="firstLine">相似现货</div>
<div class="secondLine">发现更多相似的商品&gt;</div>
</a>
</div>
</div>
<?php } } ?>
</div>
</div>
</div>

<!--广告位one-->
<?php $tags=tag("table=ad&condition=pid=26 and status=3 and title='two'&pagesize=1&order=edittime asc&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $key => $val) { ?>
<div class="wrap">
<div class="rel aag-90"><img src="<?php echo $val['image_src'];?>" width="1200" height="90" alt="" />
<!--i class="icon_tg"></i-->
<div class="adicon">广告</div>
</div>
</div>
<?php } } ?>


<!-- 品牌展会 -->
<!--6p-s-->
<div class="wrap main brand">
<div class="m-head clearfix">
<div class="m-txt">
<!--div class="scroll_f fl">9F</div-->
<h2 class="fl"><a href="" target="_blank" title="品牌">品牌、</a><a
href="" target="_blank" title="招商">招商</a></h2>
</div>
<div class="m-tit02">
<a class="m-more" href=""
rel="nofollow" target="_blank">我也想出现在这里</a>
</div>
</div>
<div class="main-body clearfix">
<div class="m-sort m-tab2">
<div class="hd">
<ul class="m-sort-nav">
<?php $tags9=tag("table=category&condition=moduleid=13 and level=1&order=catid asc&template=null");?>
<?php if(is_array($tags9)) { foreach($tags9 as $key9 => $val9) { ?>
<li class="active"><a href="javascript:" title="<?php echo $val9['catname'];?>" rel="nofollow"
target="_self"><?php echo $val9['catname'];?></a></li>
<?php } } ?>

</ul>
</div>
<div class="bd">
<?php if(is_array($tags9)) { foreach($tags9 as $key9 => $val9) { ?>
<dd class="active" style="display: block;">
<ul class="m-ilist m-w200h90 clearfix">
<?php $tags10=tag("table=brand_13&condition=level=1 and catid='".$val9['catid']."'&pagesize=10&order=addtime desc&template=null");?>
<?php if(is_array($tags10)) { foreach($tags10 as $key10 => $val10) { ?>
<li>
<a href="/<?php echo $MODULE['13']['module'];?>/<?php echo $val10['linkurl'];?>" class="u-img"
target="_blank"><img src="<?php echo $val10['thumb'];?>" class="lazy" alt="<?php echo $val10['title'];?>"></a>
<strong><a href=""><?php echo $val10['title'];?></a></strong>
</li>
<?php } } ?>
</ul>
</dd>
<?php } } ?>
</div>
<script type="text/javascript">
jQuery(".m-tab2").slide({
autoPlay: true,
pnLoop: false
});
</script>
</div>
<!--招商s-->
<div class="box280 mt15">
<div class="m-tit03 nobor">
<h3 class="bor_b">招商<strong class="c2">推荐</strong></h3>
<!--推荐大于0有图-->
<a href="" class="m-more" target="_blank">更多</a>
</div>
<div class="info_scroll">
<ul class="hz_meeting">
<?php $tags11=tag("table=info_22&condition=level=1 and catid=31&pagesize=10&order=edittime desc&template=null");?>
<?php if(is_array($tags11)) { foreach($tags11 as $key11 => $val11) { ?>
<li>
<a href="/invest/<?php echo $val11['linkurl'];?>" class="u-img"><img
src="<?php echo $val11['thumb'];?>" alt="<?php echo $val11['title'];?>"></a>
<div class="tinfo">
<a href="/invest/<?php echo $val11['linkurl'];?>"><?php echo $val11['title'];?></a>
<p><?php echo $val11['n1'];?>：<?php echo $val11['v1'];?></p>
</div>
</li>
<?php } } ?>
</ul>
</div>
<script type="text/javascript">
jQuery(".info_scroll").slide({
mainCell: ".hz_meeting",
autoPage: true,
effect: "topLoop",
autoPlay: true,
scroll: 1,
vis: 2
});
</script>
</div>
<!--招商e-->
</div>
</div>

<!--广告位three-->
<?php $tags=tag("table=ad&condition=pid=26 and status=3 and title='three'&pagesize=1&order=edittime asc&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $key => $val) { ?>
<div class="wrap">
<div class="rel aag-90"><img src="<?php echo $val['image_src'];?>" width="1200" height="90" alt="" />
<!--i class="icon_tg"></i-->
<div class="adicon">广告</div>
</div>
</div>
<?php } } ?>

<!-- 行业展会 -->
<!--7p-s-->
<div class="wrap main exhibit">
<div class="m-head clearfix">
<div class="m-txt">
<!--div class="scroll_f fl">10F</div-->
<h2 class="fl"><a href="" target="_blank" title="行业展会">行业展会</a>
</h2>
</div>
<div class="m-tit02">
<a class="m-more" href="/<?php echo $MODULE['8']['module'];?>/exhlist.php" target="_blank">更多>></a>
</div>
</div>
<div class="main-body clearfix">
<div class="box890">
<div class="box400">
<div class="slideBox slideBox3">
<div class="m-bd">
<ul>
<?php $tags12=tag("table=exhibit_8&condition=level=2 and catid=32&pagesize=4&order=addtime desc&template=null");?>
<?php if(is_array($tags12)) { foreach($tags12 as $key12 => $val12) { ?>
<li style="display: list-item;">
<a href="/<?php echo $MODULE['8']['module'];?>/<?php echo $val12['linkurl'];?>" rel="nofollow" target="_blank">
<img src="<?php echo $val12['thumb'];?>">
<i class="icon_tg"></i>
</a>
<p><?php echo $val12['title'];?></p>
</li>
<?php } } ?>

</ul>
</div>
<!-- 下面是前/后按钮代码，如果不需要删除即可 -->
<a class="prev" href="javascript:void(0)" target="_self"><i
class="icon_s icon_prev"></i></a>
<a class="next" href="javascript:void(0)" target="_self"><i
class="icon_s icon_next"></i></a>
<script type="text/javascript">
jQuery(".slideBox3").slide({
mainCell: ".m-bd ul",
autoPlay: true
});
</script>
</div>
<div class="m-tit03">
<h3 class="bor_b">展会<strong class="c1">资讯</strong></h3>
</div>
<ul class="m-list m-list3 m-list4">
<?php $tags13=tag("table=exhibit_8&condition=level=1 and catid=33&pagesize=4&order=addtime desc&template=null");?>
<?php if(is_array($tags13)) { foreach($tags13 as $key13 => $val13) { ?>
<li><a href="/<?php echo $MODULE['8']['module'];?>/<?php echo $val13['linkurl'];?>" title="<?php echo $val13['title'];?>" rel="nofollow"><?php echo $val13['title'];?></a></li>
<?php } } ?>
</ul>
</div>
<div class="box470">
<div class="m-tit03">
<h3 class="bor_b">最新<strong class="c1">展会</strong></h3>
</div>
<ul class="meetingList">
<?php $tags14=tag("table=exhibit_8&condition=catid!=33&status=3&pagesize=12&order=addtime desc&template=null");?>
<?php if(is_array($tags14)) { foreach($tags14 as $key14 => $val14) { ?>
<li>
<p class="tit_ex"><a href="/<?php echo $MODULE['8']['module'];?>/<?php echo $val14['linkurl'];?>" title="<?php echo $val14['title'];?>"><?php echo $val14['title'];?></a></p>
<p class="time"><?php echo date('Y-m-d',$val14['fromtime']);?></p>
<p class="area"></p>
</li>
<?php } } ?>

</ul>
</div>
</div>
<div class="box280 mt15">
<div class="m-tit03 nobor">
<h3 class="bor_b">展会<strong class="c2">推荐</strong></h3>
<!--推荐大于0有图-->
<a href="/<?php echo $MODULE['8']['module'];?>/exhlist.php" class="m-more" target="_blank">更多</a>
</div>
<div class="meeting_scroll">
<ul class="hz_meeting">
<?php $tags15=tag("table=exhibit_8&condition=level=1 and catid<>33&status=3&pagesize=12&order=addtime desc&template=null");?>
<?php if(is_array($tags15)) { foreach($tags15 as $key15 => $val14) { ?>
<li class="clone" style="height: 90px;">
<a href="/<?php echo $MODULE['8']['module'];?>/<?php echo $val14['linkurl'];?>" class="u-img"
rel="nofollow"><img src="<?php echo $val14['thumb'];?>"></a>
<div class="info_ex">
<a href=""
title="<?php echo $val14['title'];?>"><?php echo $val14['title'];?></a>
<p>时间：<span><?php echo date('Y-m-d',$val14['fromtime']);?></span></p>
<p>地点：<span><?php echo $val14['address'];?>-<?php echo $val14['hallname'];?></span></p>
</div>
</li>
<?php } } ?>
</ul>
</div>
<script type="text/javascript">
jQuery(".meeting_scroll").slide({
mainCell: ".hz_meeting",
autoPage: true,
effect: "topLoop",
autoPlay: true,
scroll: 1,
vis: 3
});
</script>
</div>
</div>
</div>

<!-- 人才招聘 -->
<div class="wrap main brand job">
<div class="m-head clearfix">
<div class="m-txt">
<h2 class="fl"><a href="" target="_blank" title="人才招聘">人才招聘</a>
</h2>
</div>
<div class="m-tit02">
<a class="m-more" href="/<?php echo $MODULE['9']['module'];?>/" target="_blank"
title="更多人才招聘">更多&gt;&gt;</a>
</div>
</div>
<div class="main-body clearfix">
<div class="box890">
<div class="box400 fl">
<div class="m-tit03">
<h3 class="bor_b">名企<strong class="c1">招聘</strong></h3>
<a href="" class="m-more" target="_blank">更多</a>
</div>
<ul class="ul-fq02 clearfix">
<?php $tags15=tag("table=job_9&condition=catid=34 and level=1 and status=3&pagesize=3&order=addtime desc&template=null");?>
<?php if(is_array($tags15)) { foreach($tags15 as $key15 => $val15) { ?>
<li>
<div class="inner">
<div class="tet">
<div class="pic">
<a href="/<?php echo $MODULE['9']['module'];?>/<?php echo $val15['linkurl'];?>">
<img src="<?php echo DT_SKIN;?>/static/images/comimg-no.png" alt="">
</a>
</div>
<div class="con">
<h3><a target="_blank"
href="/<?php echo $MODULE['9']['module'];?>/<?php echo $val15['linkurl'];?>"><?php echo $val15['title'];?></a><em
class="g-tip01 tip02 display1">已认证</em></h3>
<div class="g-desc01">
<p><span class="pos display_no"><?php echo $val15['address'];?></span>
<em class="display_no"></em>
<span class="display_no"> ·</span>
<span class="display_no"> <?php echo $val15['ali'];?></span>
</p>
</div>
</div>
</div>
<div class="bottom">
<div class="g-bottom01">
<div class="con1">
<h4 class="job_num"><span></span>近期招聘：</h4>
<div class="g-tip02">
<?php $department_Array = explode("、",$val15['department']);?>
<?php if(is_array($department_Array)) { foreach($department_Array as $key16 => $val16) { ?>
<div class="item">
<a href="/<?php echo $MODULE['9']['module'];?>/<?php echo $val16['linkurl'];?>" target="_blank" title="<?php echo $val16;?>"><?php echo $val16;?></a></div>
<?php } } ?>
</div>
</div>
</div>
</div>
</div>
</li>
<?php } } ?>

</ul>
</div>
<div class="box470 fl">
<div class="m-tit03">
<h3 class="bor_b">最新<strong class="c1">工作</strong></h3>
<a href="" class="m-more" target="_blank">更多</a>
</div>
<ul class="ul-fq01 clearfix">
<?php $tags16=tag("table=job_9&condition=catid=35 and level=1 and status=3&pagesize=8&order=addtime desc&template=null");?>
<?php if(is_array($tags16)) { foreach($tags16 as $key16 => $val16) { ?>
<li class="rel">
<em>赏</em>
<div class="index_newjobname"> 
<a href="/<?php echo $MODULE['9']['module'];?>/<?php echo $val16['linkurl'];?>" target="_blank" title="客服"><?php echo $val16['department'];?></a> 
<span class="index_newjobtime"><?php echo date('Y-m-d',$val16['addtime']);?></span> 
</div>
<div class="index_newjob_com nowrap"> 
<a href="/<?php echo $MODULE['9']['module'];?>/<?php echo $val16['linkurl'];?>" target="_blank"><?php echo $val16['title'];?></a> 
</div>
<div class="index_newjob_info nowrap"> 
<span class="index_newjob_info_xz"><?php echo $val16['minsalary']/1000;?>-<?php echo $val16['maxsalary']/1000;?>k/月</span> 
<i class="index_newjob_info_line">|</i><?php echo $val16[total]>0?$val16[total].'人':'若干';?>
<i class="index_newjob_info_line">|</i><?php echo $val16[experience]>0?$val16[experience].'年以上经验':'不限';?>
</div>
</li>
<?php } } ?>
</ul>
</div>
</div>
<!--人才简历s-->
<div class="box280 mt15 fr">
<div class="m-tit03">
<h3 class="bor_b">最新<strong class="c2">贤良</strong></h3>
<!--有图简历-->
<a href="" class="m-more"
target="_blank">更多</a>
</div>
<div class="index_recommend_resume_box">
<ul class="ran-list">
<?php $tags17=tag("table=job_9&condition=catid=36 and level=1 and status=3&pagesize=4&order=addtime desc&template=null");?>
<?php if(is_array($tags17)) { foreach($tags17 as $key17 => $val17) { ?>
<li class="index_recommend_resume_cur">
<a href="/<?php echo $MODULE['9']['module'];?>/<?php echo $val17['linkurl'];?>" target="_blank">
<div class="index_recommend_resume_all lr-show">
<span class="index_recommend_resume_hot index_recommend_resume_hot1">新</span>
<div class="index_recommend_resume_pic"> 
<img src="<?php echo DT_SKIN;?>static/images/<?php echo $val17[sex] == 1?'':'wo';?>man.png" width="55" height="55"></div>
<div class="index_recommend_resume_username"> <?php echo $val17['title'];?></div>
<div class="index_recommend_resume_useryx"> 
意向：<span class="index_recommend_resume_useryx_n"><?php echo $val17['department'];?></span> 
</div>
<div class="index_recommend_resume_userinfo"><?php echo $val17['minsalary'];?>元/月以上
<i class="index_recommend_resume_userinfo_line">|</i><?php echo $val17[experience]>0?$val17[experience].'年以上经验':'无经验';?>
</div>
<em class="index_recommend_resume_cs">
<font color="#f00"><?php echo date('Y-m-d',$val17['addtime']);?></font>
</em>
</div>
</a>
</li>
<?php } } ?>

</ul>
</div>
</div>
<!--人才简历e-->
</div>
</div>

<!-- 资讯头条 -->
<div class="wrap main news">
<div class="m-head clearfix">
<div class="m-txt">
<!--div class="scroll_f fl">8F</div-->
<h2 class="fl"><a href="" target="_blank" title="资讯头条">资讯头条</a></h2>
</div>
<div class="m-tit02">
<ul class="news_subNav" style="float: right;">
<?php $tags18=tag("table=category&condition=moduleid=21 and level=1&pagesize=6&order=catid desc&template=null");?>
<?php if(is_array($tags18)) { foreach($tags18 as $key18 => $val18) { ?>
<a href="/<?php echo $MODULE['21']['module'];?>/newlist.php?catid=<?php echo $val18['catid'];?>"><?php echo $val18['catname'];?></a> <?php if($key18+1 != count($tags18)){
echo '&nbsp;|&nbsp; ';
}?>
<?php } } ?>
</ul>
<!-- <a class="m-more" href="" target="_blank">更多>></a> -->
</div>
</div>
<div class="main-body clearfix">
<div class="box890">
<div class="box465">
<div class="slideBox slideBox2">
<div class="m-bd">
<ul>
<?php $tags19=tag("table=article_21&condition=catid=47 and level=1 and status=3&pagesize=4&order=addtime desc&template=null");?>
<?php if(is_array($tags19)) { foreach($tags19 as $key19 => $val19) { ?>
<li style="display: list-item;">
<a href="/<?php echo $MODULE['21']['module'];?>/<?php echo $val19['linkurl'];?>" rel="nofollow" target="_blank">
<img src="<?php echo $val19['thumb'];?>"><i class="icon_tg"></i></a>
<p><?php echo $val19['title'];?></p>
</li>
<?php } } ?>
</ul>
</div>
<!-- 下面是前/后按钮代码，如果不需要删除即可 -->
<a class="prev" href="javascript:void(0)" target="_self"><i
class="icon_s icon_prev"></i></a>
<a class="next" href="javascript:void(0)" target="_self"><i
class="icon_s icon_next"></i></a>
<script type="text/javascript">
jQuery(".slideBox2").slide({
mainCell: ".m-bd ul",
autoPlay: true
});
</script>
</div>
<ul class="assess">
<?php $tags20=tag("table=article_21&condition=catid=46 and level=1 and status=3&pagesize=4&order=addtime desc&template=null");?>
<?php if(is_array($tags20)) { foreach($tags20 as $key20 => $val20) { ?>
<li>
<h3>
<?php $tags21=tag("table=category&condition=moduleid=21 and catid=46 and level=2&template=null");?>
<?php if(is_array($tags21)) { foreach($tags21 as $key21 => $val21) { ?>
<em><a href="/<?php echo $MODULE['21']['module'];?>/newlist.php?catid=<?php echo $val21['catid'];?>"><?php echo $val21['catname'];?></a></em>
<?php } } ?>
<a href="/<?php echo $MODULE['21']['module'];?>/<?php echo $val20['linkurl'];?>" title="<?php echo $val20['title'];?>" class="hot-texe"><?php echo $val20['title'];?></a>
</h3>
<p><?php echo $val20['introduce'];?><a
href="/<?php echo $MODULE['21']['module'];?>/<?php echo $val20['linkurl'];?>">[详细]</a></p>
</li>
<?php } } ?>
</ul>
</div>
<div class="box405">
<div class="m-tit03">
<h3 class="bor_b">公司<strong class="c1">新闻</strong></h3>
<a href="/<?php echo $MODULE['21']['module'];?>/newlist_idx.php?catid=37" class="m-more" target="_blank">更多</a>
</div>
<ul class="m-list m-list3">
<!-- 寻找资讯、二级分类 -->
<?php $tags22=tag("table=category&condition=moduleid=21 and catid!=48 and level=2&template=null");?>
<!-- 寻找资讯、一级分类 -->
<?php $tags23=tag("table=category&condition=moduleid=21 and level=1&template=null");?>
<!-- 1、两种分类合并
 2、把idArray解析成字符串$str 
 3、利用in(3,6,5)来查询-->
<?php 
$idArray=[];
foreach($tags22 as $i => $v){
array_push($tags23,$v);
}
foreach($tags23 as $i1 => $v1){
array_push($idArray,$v1['catid']);
}
$idStr = implode(',',$idArray);
?>

<?php
$result = $db->query("select * from ".$DT_PRE."article_21 where catid in(".$idStr.") and status=3 order by addtime desc limit 6");
while($r = $db->fetch_array($result)) {
$tags24[] = $r;
}
?>

<?php if(is_array($tags24)) { foreach($tags24 as $key24 => $val24) { ?>
<li>
<a href="/<?php echo $MODULE['21']['module'];?>/<?php echo $val24['linkurl'];?>" title="<?php echo $val24['title'];?>"><?php echo dsubstr($val24['title'], 45, '...', 'utf-8');?></a><span class="fr time"><?php echo date('Y-m-d',$val24['addtime']);?></span>
</li>
<?php } } ?>
</ul>
<div class="m-tit03">
<h3 class="bor_b">推荐<strong class="c1">专题</strong></h3>
<a href="/<?php echo $MODULE['21']['module'];?>/newlist_idx.php?catid=45" class="m-more" target="_blank">更多</a>
</div>
<ul class="event_zt">
<?php $tags25=tag("table=article_21&condition=catid=45 and level=1 and status=3&pagesize=2&order=addtime desc&template=null");?>
<?php if(is_array($tags25)) { foreach($tags25 as $key25 => $val25) { ?>
<li>
<a href="/<?php echo $MODULE['21']['module'];?>/<?php echo $val25['linkurl'];?>" target="_blank" title="<?php echo dsubstr($val25['title'], 45, '...', 'utf-8');?>">
<img src="<?php echo $val25['thumb'];?>" class="lazy" alt="<?php echo dsubstr($val25['title'], 45, '...', 'utf-8');?>">
<p><?php echo dsubstr($val25['title'], 45, '...', 'utf-8');?></p>
</a>
</li>
<?php } } ?>
</ul>
</div>
</div>
<div class="box280 mt15">
<div class="m-tit03">
<h3 class="bor_b">微<strong class="c2">视频</strong></h3>
<a href="/<?php echo $MODULE['21']['module'];?>/newlist_idx.php?catid=48" class="m-more" target="_blank">更多</a>
</div>
<ul class="video bof">
<?php $tags26=tag("table=article_21&condition=catid=48 and level=1 and status=3&pagesize=4&order=addtime desc&template=null");?>
<?php if(is_array($tags26)) { foreach($tags26 as $key26 => $val26) { ?>
<li>
<a href="/<?php echo $MODULE['21']['module'];?>/<?php echo $val26['linkurl'];?>" class="u-img rel" target="_blank"
title="<?php echo dsubstr($val26['title'], 45, '...', 'utf-8');?>"><img src="<?php echo $val26['thumb'];?>" class="lazy"
class="ico_bf"></i></a>
<a href="/<?php echo $MODULE['21']['module'];?>/<?php echo $val26['linkurl'];?>" class="renwu" title="<?php echo dsubstr($val26['title'], 45, '...', 'utf-8');?>">
<h3><?php echo dsubstr($val26['title'], 45, '...', 'utf-8');?></h3>
</a>
<a href="/<?php echo $MODULE['21']['module'];?>/<?php echo $val26['linkurl'];?>" class="vcat"><span><?php echo $val26['tag'];?></span></a>
</li>
<?php } } ?>

</ul>
</div>
</div>
</div>

<!-- 优质货源    最新企业-->
<div class="wrap main cp-hot">
<div class="m-head clearfix">
<div class="m-txt">
<!--推荐产品、企业S-->
<div class="ou clearfix"> <a
href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_my'];?>?mid=5" target="_blank"
class="zw" rel="nofollow">我也要出现在这里</a>
<div class="za"> <a href="javascript:;" onmouseover="setTab('ou',1,2)" id="ou1"
class="hover">优质货源</a> <a href="javascript:;" onmouseover="setTab('ou',2,2)"
id="ou2" class="">最新入驻企业</a></div>
</div>
<!--推荐产品、企业E-->
</div>
</div>
<!--推荐产品-->
<div class="clearfix" id="con_ou_1" style="display: block;">
<div class="m-body">

<!-- 寻找家装建材、二级分类 -->
<?php $tags28=tag("table=category&condition=moduleid=5 and parentid=16 and level=2&template=null");?>
<!-- 1、两种分类合并
 2、把idArray1解析成字符串$idstr1
 3、利用in(3,6,5)来查询-->
<?php 
$idArray1=[];
foreach($tags28 as $i2 => $v2){
array_push($idArray1,$v2['catid']);
}
$idStr1 = implode(',',$idArray1);
?>
<?php
$result1 = $db->query("select * from ".$DT_PRE."sell_5 where catid in(".$idStr1.") and status=3 and elite=1 order by addtime desc limit 18");
while($r1 = $db->fetch_array($result1)) {
$tags27[] = $r1;
}
?>

<?php if(is_array($tags27)) { foreach($tags27 as $key27 => $val27) { ?>
<div class="mrb-box">
<?php $tags29=tag("table=category&condition=moduleid=5 and catid='".$val27['catid']."' and level=2&template=null");?>
<?php if(is_array($tags29)) { foreach($tags29 as $key29 => $val29) { ?>
<div class="catname_sl"><?php echo $val29['catname'];?></div>
<?php } } ?>
<div class="mrb-img">
<a href="/<?php echo $MODULE['5']['module'];?>/<?php echo $val27['linkurl'];?>" title="<?php echo $val27['title'];?>" target="_blank">
<img alt="<?php echo $val27['title'];?>" src="<?php echo $val27['thumb'];?>" class="lazy">
</a>
</div>
<div class="mrb-b">
<p class="mrb-price">电议</p>
<p class="mrb-tit"><a href=""
title="<?php echo $val27['title'];?>" target="_blank"><?php echo $val27['title'];?></a></p>
</div>
<div class="catname_sl_h">
<a href="" target="_blank">
<div class="firstLine">相似货源</div>
<div class="secondLine">发现更多相似的货源&gt;</div>
</a>
</div>
</div>
<?php } } ?>
<?php if(count($tags27) == 0) { ?><p style="width: 100%;padding: 30px 22px;">暂无优质货源推荐</p><?php } ?>

</div>
</div>
<!--最新企业-->
<div class="tjqy clearfix" id="con_ou_2" style="display: none;">
<?php $tags30=tag("table=mall_16&condition=level=4&pagesize=32&group=brand&order=catid asc&template=null");?>
<?php if(is_array($tags30)) { foreach($tags30 as $key30 => $val30) { ?>
<li class="companylevelli">
<div class="fl li_d"><a href="/<?php echo $MODULE['16']['module'];?>/prolist.php?comname=<?php echo $val30['brand'];?>" target="_blank"
title="<?php echo $val30['brand'];?>"><?php echo $val30['brand'];?></a></div>
<?php $user=tag("table=company&condition=company='".$val30['brand']."'&template=null");?>
<?php if($user['0']['vip']) { ?>
<div class="mrtb-tag"><span title=""><i
class="icon icon-vip"></i><em class="fl v-year"><?php echo $user['0']['vip'];?></em></span>
</div>
<?php } ?>
</li>
<?php } } ?>

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
<!-- 左侧导航 -->
<?php include template('siderbar-left', 'common');?>
<!-- 左侧导航 -->
<!-- 右侧导航 -->
<?php include template('siderbar-right', 'common');?>
<!-- 右侧导航 -->
<!-- 公共底部 -->
<?php include template('footer', 'common');?>
<!-- 公共底部 -->