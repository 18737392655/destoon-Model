<?php defined('IN_DESTOON') or exit('Access Denied');?><!doctype html>
<html>
<head>
<meta charset="<?php echo DT_CHARSET;?>"/>
<title><?php if($seo_title) { ?><?php echo $seo_title;?><?php } else { ?><?php if($head_title) { ?><?php echo $head_title;?><?php echo $DT['seo_delimiter'];?><?php } ?><?php if($city_sitename) { ?><?php echo $city_sitename;?><?php } else { ?><?php echo $DT['sitename'];?><?php } ?><?php } ?></title>
<?php if($head_keywords) { ?>
<meta name="keywords" content="<?php echo $head_keywords;?>"/>
<?php } ?>
<?php if($head_description) { ?>
<meta name="description" content="<?php echo $head_description;?>"/>
<?php } ?>
<?php if($head_mobile) { ?>
<meta http-equiv="mobile-agent" content="format=html5;url=<?php echo $head_mobile;?>">
<?php } ?>
<meta name="generator" content="DESTOON B2B - www.destoon.com"/>
<link rel="shortcut icon" type="image/x-icon" href="<?php echo DT_STATIC;?>favicon.ico"/>
<link rel="bookmark" type="image/x-icon" href="<?php echo DT_STATIC;?>favicon.ico"/>
<?php if($head_canonical) { ?>
<link rel="canonical" href="<?php echo $head_canonical;?>"/>
<?php } ?>
<?php if($EXT['archiver_enable']) { ?>
<link rel="archives" title="<?php echo $DT['sitename'];?>" href="<?php echo $EXT['archiver_url'];?>"/>
<?php } ?>
<?php if($moduleid>1) { ?>
<link rel="stylesheet" type="text/css" href="<?php echo DT_SKIN;?><?php echo $module;?>.css"/>
<?php } ?>
<?php if($CSS) { ?>
<?php if(is_array($CSS)) { foreach($CSS as $css) { ?>
<link rel="stylesheet" type="text/css" href="<?php echo DT_SKIN;?><?php echo $css;?>.css"/>
<?php } } ?>
<?php } ?>
<!--[if lte IE 6]>
<link rel="stylesheet" type="text/css" href="<?php echo DT_SKIN;?>ie6.css"/>
<![endif]-->
<?php if(!DT_DEBUG) { ?><script type="text/javascript">window.onerror=function(){return true;}</script><?php } ?>
<script type="text/javascript" src="<?php echo DT_STATIC;?>lang/<?php echo DT_LANG;?>/lang.js"></script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/page.js"></script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/config.js"></script>
<!--[if lte IE 9]><!-->
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/jquery-1.5.2.min.js"></script>
<!--<![endif]-->
<!--[if (gte IE 10)|!(IE)]><!-->
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/jquery-2.1.1.min.js"></script>
<!--<![endif]-->
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/common.js"></script>
<?php if($lazy) { ?><script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/jquery.lazyload.js"></script><?php } ?>
<?php if($JS) { ?>
<?php if(is_array($JS)) { foreach($JS as $js) { ?>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/<?php echo $js;?>.js"></script>
<?php } } ?>
<?php } ?>
<?php $searchid = ($moduleid > 3 && $MODULE[$moduleid]['ismenu'] && !$MODULE[$moduleid]['islink']) ? $moduleid : 5;?>

<script type="text/javascript">
<?php if($head_mobile && $EXT['mobile_goto']) { ?>
GoMobile('<?php echo $head_mobile;?>');
<?php } ?>
var searchid = <?php echo $searchid;?>;
<?php if($itemid && $DT['anticopy']) { ?>
document.oncontextmenu=function(e){return false;};
document.onselectstart=function(e){return false;};
<?php } ?>
</script>
<!-- 当前style --><link rel="stylesheet" href="<?php echo DT_SKIN;?>/static/css/muban.css" type="text/css" /><link rel="stylesheet" href="<?php echo DT_SKIN;?>/static/css/muban-indexh.css" type="text/css" /><link rel="stylesheet" href="<?php echo DT_SKIN;?>/static/css/style.css" type="text/css" /><link rel="stylesheet" href="<?php echo DT_SKIN;?>/static/css/index.css" type="text/css" /><!-- 当前style --><!-- 当前script --><script type="text/javascript" src="<?php echo DT_SKIN;?>static/js/xhso.js"></script>
<script type="text/javascript" src="<?php echo DT_SKIN;?>static/js/page.js"></script><script type="text/javascript" src="<?php echo DT_SKIN;?>static/js/superslide.2.1.js"></script><script type="text/javascript">GoMobile('https://model.blueweb.com/mobile/');var searchid = 5;window.onerror = function() {return true;}</script><!-- 当前script -->
</head>
<body>
<div class="topSearch" style="display: none;" id="floatSearch">
<div class="searchMain">
<a href="/" class="so_logo"><img src="<?php if($DT['logo']) { ?><?php echo $DT['logo'];?><?php } else { ?><?php echo DT_SKIN;?>/static/picture/logo.png<?php } ?>"></a>
<div class="contenrsearch">
<div class="so_search">
<form id="destoon_search2" action="<?php echo $MODULE[$searchid]['linkurl'];?>search.php" target="_blank">
<input type="hidden" name="moduleid" value="5" id="destoon_moduleid2"/>
                    <input type="hidden" name="spread" value="0" id="destoon_spread2"/>
                    <div class="so_li">
                        <input type="text" id="destoon_select2" class="showfirst" value="供应" readonly onfocus="this.blur();" onclick="$('#search_module2').fadeIn('fast');"/>
                        <i class="searchfolloarrow"></i>
                        <div style="display:none" class="selectbox-wrapper" id="search_module2" onmouseout="Dh('search_module2');" onmouseover="Ds('search_module2');">
                            <ul>
<?php $tags11=tag("table=category&condition=catdir!=1&group=moduleid&order=moduleid asc&template=null");?>
<?php if(is_array($tags11)) { foreach($tags11 as $key11 => $val11) { ?>

<li><a href="javascript:void(0);" onclick="setModule2('<?php echo $val11['moduleid'];?>','<?php echo $MODULE[$val11['moduleid']]['name'];?>')"><?php echo $MODULE[$val11['moduleid']]['name'];?></a></li>
<?php } } ?>
</ul>
                        </div>
                    </div>
                    <input type="text" id="destoon_kw2" name="kw" class="selectbox" placeholder="请输入关键词" value="" />
                    <input type="submit" value="搜&nbsp;索" class="button_so" onclick="return checkformso();" />
</form>
</div>
</div>
<a href="" class="fabu">快速发布信息</a>
<div class="weixina">
<div class="weixinBoxa">
<div class="weixinMaina">
<div class="weixinTopa">官方公众号</div>
<div class="weixinBota rel">
<img src="<?php echo DT_SKIN;?>/static/picture/202059501.png" width="127" height="127" alt="微信公共号">
<span class="wxname">微信扫一扫关注</span>
<div class="delta"></div>
</div>
</div>
</div>
</div>
</div>
</div>
<script type="text/javascript">
function checkformso() {
var xh = document.getElementById('destoon_kw2').value; //请输入关键词
if (xh == "") {
alert('请输入您要查找的关键词');
return false;
} else {
return true;
}
}
</script>
<div class="top">
<div class="wrap">
<div class="top-l">
<div class="mobile pr drop-down"><i class="icon i-phone"></i><a href="javascript:void(0);">手机版</a>
<div class="code drop-down-con">
<div class="fl code_img"><img src="<?php echo DT_SKIN;?>/static/picture/125957491.png" /></div>
<div class="fl code_text">
<p class="code_text_one">扫一扫</p>
<p class="code_text_two">用手机做贸易</p>
</div>
</div>
</div>
<div class="xh-mobile"><a href="javascript:void(0);" class="mobile"><i
class="icon i-code"></i>二维码</a></div>
<div class="xh-cart"><a href=""><i class="icon i-cart"></i>采购单</a>(<span class="head_t"
id="destoon_cart">0</span>)</div>
<div class="top_login" id="xhs_member"></div>
</div>
<div class="top-r">
<ul>
<li class="top-r-li drop-down pr"><em>增值服务</em><i class="icon-down"></i>
<div class="drop-down-con userfw">
<a href="" target="_blank">
<h4>采购服务</h4>
</a>
<p class="bm_x">
<a class="red" href="" target="_blank">服务介绍</a>
<a href="" target="_blank">服务对比</a>
<a href="" target="_blank">建站服务</a>
<a href="" target="_blank">精美商铺</a>
</p>
<a href="" target="_blank">
<h4>推广服务</h4>
</a>
<p class="bm_x">
<a class="red" href="" target="_blank">排名推广</a>
<a href="" target="_blank">积分商城</a>
<a href="" target="_blank">意见反馈</a>
<a href="" target="_blank">联系我们</a>
</p>
</div>
</li>
<li class="top-r-li drop-down pr"><em>特色频道</em><i class="icon-down"></i>
<div class="drop-down-con sitenav">
<ul class="clf">
<li class="m-li"><a href="">现货商城</a><span> | </span>
</li>
<li class="m-li"><a href="">货源供应</a><span> | </span>
</li>
<li class="m-li"><a href="">大宗采购</a><span> | </span>
</li>
<li class="m-li"><a href="">实力工厂</a><span> |
</span></li>
<li class="m-li"><a href="">品牌</a><span> | </span>
</li>
<li class="m-li"><a href="">招商</a><span> | </span>
</li>
<li class="m-li"><a href="">展会</a><span> | </span>
</li>
<li class="m-li"><a href="">行情</a><span> | </span>
</li>
<li class="m-li"><a href="">团购</a><span> | </span>
</li>
</ul>
</div>
</li>
<li class="top-r-li"><a href="" target="_blank" class="smartkf">客服中心</a></li>
</ul>
</div>
</div>
</div>
<!--迷你顶部-->
<div id="destoon_qrcode" style="display:none;"></div>
<div class="m" id="destoon_space"></div>
<div class="logbar">
<div class="wrap clearfix">
<div class="logo_xh">
<a href="/" target="_blank"><img src="<?php if($DT['logo']) { ?><?php echo $DT['logo'];?><?php } else { ?><?php echo DT_SKIN;?>/static/picture/logo.png<?php } ?>" alt="中企电子商务" /></a>
<span class="slogan"></span>
</div>
<div class="reach">
<script type="text/javascript">
var searchid = 5;
</script>
<form id="destoon_search" action="">
<div class="reach-txt">
<ul class="option">
<li class="hover" onclick="setModule('5',this)" id="select_value">货源供应</li>
<li onclick="setModule('6',this)" id="select_value">大宗采购</li>
<li onclick="setModule('16',this)" id="select_value">现货商城</li>
<li onclick="setModule('21',this)" id="select_value">头条</li>
<li onclick="setModule('22',this)" id="select_value">招商</li>
</ul>
</div>
<div class="reach-box">
<div class="r_soo">
<input type="text" id="destoon_kw" name="kw" class="reach-text"
placeholder="请输入您感兴趣的产品关键词" value="" autocomplete="off"
onkeyup="STip(this.value);" />
<div class="r_so" style="display:none;">
<p class="history_title"><i></i>最近搜过的货源供应词</p>
<div class="history_word" id="destoon_word">
<ul>
<?php
$MOD_name = "$MOD[moduledir]";
if (!empty($_cookie["$MOD_name"]['history'])){
$history = explode(',', $_cookie["$MOD_name"]['history']);
array_unshift($history, $itemid);
$history = array_unique($history);
while (count($history) > 14){
array_pop($history);
}setcookie("$MOD_name".'[history]', implode(',', $history), time() + 86400 * 7,'/'."$MOD_name","$DT_PATH");
} else {
setcookie("$MOD_name".'[history]', $itemid, time() + 86400 * 7,'/'."$MOD_name","$DT_PATH");
} $history =isset ($_cookie["$MOD_name"]['history']) ? $_cookie["$MOD_name"]['history'] : 0;
if($del=="del"){
setcookie("$MOD_name".'[history]', "", time()-3600);
echo header("Location: $linkurl"); 
};
$query = mysql_query("SELECt * FROM `$table` WHERe `itemid` in ($history) ORDER BY FIELD(itemid,$history)");
while($t = mysql_fetch_array($query)){?>  
<a href="" class="b" rel="nofollow">机械</a>
<?php } ?>
</ul>
</div>
<p class="hotSearch_tt"><i></i>相关热搜榜</p>
<div class="hotSearch_word">
<div id="search_tips" style="display:none;"></div>
</div>
</div>
</div>
<input type="submit" onclick="return checkform();" class="reach-btn" name="" id=""
value="搜&nbsp;索" />
<!-- <button type="submit" value="搜&nbsp;索" "  />搜索</button> -->
</div>
<script type="text/javascript">
function checkform() {
var xh = document.getElementById('destoon_kw').value; //请输入关键词
if (xh == "") {
alert('请输入您要查找的关键词');
return false;
} else {
return true;
}
}
</script>
</form>
</div>
<div class="btn-order"><a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_my'];?>?mid=16&action=add" rel="nofollow" target="_blank">快速发布信息</a></div>
<div class="qr-code">
<p>扫一扫关注</p>
<img src="<?php echo DT_SKIN;?>/static/picture/202059501.png" width="72" height="72" class="qr-code-img" />
<div class="qr-code-h" style="display:none;">
<div class="qr-code-htext">扫一扫微信关注<br>天下好货一手掌握</div>
<div class="qr-code-himg"><img src="<?php echo DT_SKIN;?>/static/picture/202059501.png" width="120"
height="120" />
</div>
</div>
</div>
</div>
</div>