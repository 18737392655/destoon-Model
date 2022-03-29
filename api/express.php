<?php
/*
	[DESTOON B2B System] Copyright (c) 2008-2018 www.destoon.com
	This is NOT a freeware, use is subject to license.txt
*/
$_COOKIE = array();
require '../common.inc.php';
function get_express_home($name) {
	$name = strtolower($name);
	if(strpos($name, '顺丰') !== false) return 'http://www.sf-express.com/cn/sc/';
	if(strpos($name, '京东') !== false) return 'http://www.jdwl.com/';
	if(strpos($name, '申通') !== false) return 'http://www.sto.cn/';
	if(strpos($name, '圆通') !== false) return 'http://www.yto.net.cn/gw/index/index.html';
	if(strpos($name, '中通') !== false) return 'http://www.zto.cn/';
	if(strpos($name, '国通') !== false) return 'http://www.gto365.com/';
	if(strpos($name, '宅急送') !== false) return 'http://www.zjs.com.cn/';
	if(strpos($name, '韵达') !== false) return 'http://www.yundaex.com/';
	if(strpos($name, '天天') !== false) return 'http://www.ttkdex.com/';
	if(strpos($name, '如风达') !== false) return 'http://www.rufengda.com/';
	if(strpos($name, '汇通') !== false) return 'http://www.htky365.com/';
	if(strpos($name, '全峰') !== false) return 'http://www.qfkd.com.cn/';
	if(strpos($name, '快捷') !== false) return 'http://www.kjkd.com/';
	if(strpos($name, 'ems') !== false) return 'http://www.ems.com.cn/';
	if(strpos($name, 'dhl') !== false) return 'http://www.cn.dhl.com/';
	if(strpos($name, 'ups') !== false) return 'http://www.ups.com/cn/';
	if(strpos($name, 'tnt') !== false) return 'http://www.tnt.com.cn/';
	if(strpos($name, 'fedex') !== false) return 'https://www.fedex.com/';
	return '';
}
function get_express_code($name) {
	$name = strtolower($name);
	if(strpos($name, '顺丰') !== false) return 'shunfeng';
	if(strpos($name, '京东') !== false) return 'jingdong';
	if(strpos($name, '申通') !== false) return 'shentong';
	if(strpos($name, '圆通') !== false) return 'yuantong';
	if(strpos($name, '中通') !== false) return 'zhongtong';
	if(strpos($name, '国通') !== false) return 'guotongkuaidi';
	if(strpos($name, '宅急送') !== false) return 'zhaijisong';
	if(strpos($name, '韵达') !== false) return 'yunda';
	if(strpos($name, '天天') !== false) return 'tiantian';
	if(strpos($name, '如风达') !== false) return 'rufengda';
	if(strpos($name, '汇通') !== false) return 'huitongkuaidi';
	if(strpos($name, '全峰') !== false) return 'quanfengkuaidi';
	if(strpos($name, '快捷') !== false) return 'kuaijiesudi';
	if(strpos($name, 'ems') !== false) return 'ems';
	if(strpos($name, 'dhl') !== false) return 'dhl';
	if(strpos($name, 'ups') !== false) return 'ups';
	if(strpos($name, 'tnt') !== false) return 'tnt';
	if(strpos($name, 'fedex') !== false) return 'fedex';
	return '';
}
$e = isset($e) ? trim($e) : '';
$n = isset($n) ? trim($n) : '';
if($action == 'home') {
	if($e) {
		$u = get_express_home($e);
		$c = get_express_code($e);
		if($u) {
			if($c == 'shunfeng') dheader($u.'dynamic_function/waybill/#search/bill-number/'.$n);
			if($c == 'jingdong') dheader($u.'order/search?waybillCodes='.$n);
			if($c == 'guotongkuaidi') dheader($u.'#/waybill?billno='.$n);
			dheader($u.'?no='.$n);
		}
	}
	dheader('http://www.baidu.com/s?wd='.urlencode($e).' '.$n);
} else {
	if($e && $n) {
		$c = get_express_code($e);
		if($c) dheader('https://www.kuaidi100.com/chaxun?com='.$c.'&nu='.$n);
	}
	dheader('https://www.kuaidi100.com/chaxun?nu='.$n);
}
?>