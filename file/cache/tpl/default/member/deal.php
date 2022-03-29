<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header', 'member');?>
<script type="text/javascript">var errimg = '<?php echo DT_SKIN;?>image/nopic60.gif';</script>
<div class="menu">
<table cellpadding="0" cellspacing="0">
<tr>
<td class="tab" id="action"><a href="?mid=<?php echo $mid;?>&action=index"><span>我的订单</span></a></td>
<td class="tab" id="action_express"><a href="?mid=<?php echo $mid;?>&action=express"><span>我的快递</span></a></td>
</tr>
</table>
</div>
<?php if($action == 'update') { ?>
<?php if($step == 'detail') { ?>
<table cellpadding="0" cellspacing="0" align="center">
<tr align="center" class="f_gray">
<td>买家下单</td>
<td>买家付款</td>
<td><?php if($td['logistic']) { ?>卖家发货<?php } else { ?>买家消费<?php } ?></td>
<?php if($td['status'] == 4 || $td['status'] == 5) { ?>
<td>申请退款</td>
<td>退款成功</td>
<?php } else { ?>
<td>交易成功</td>
<?php } ?>
</tr>
<tr height="60">
<td><img src="image/state_2.gif" id="state_1"/></td>
<td id="pay_s"><img src="image/state_1.gif" id="state_2"/></td>
<td><img src="image/state_1.gif" id="state_3"/></td>
<td><img src="image/state_1.gif" id="state_4"/></td>
<?php if($td['status'] == 4 || $td['status'] == 5) { ?>
<td><img src="image/state_1.gif" id="state_5"/></td>
<?php } ?>
</tr>
</table>
</div>
<script type="text/javascript">
var s1 = Dd('state_2').src;
var s2 = Dd('state_1').src;
function Dstate(n) {
for(var i = 2; i <= n; i++) {
Dd('state_'+i).src = s2;
}
}
<?php if($td['status'] == 0) { ?>
Dstate(2);
<?php } else if($td['status'] == 1 || $td['status'] == 2) { ?>
Dstate(3);
<?php } else if($td['status'] == 3) { ?>
Dstate(4);
<?php } else if($td['status'] == 4) { ?>
Dstate(4);
<?php } else if($td['status'] == 5) { ?>
Dstate(5);
<?php } ?>
<?php if($td['status'] == 4 || $td['status'] == 5) { ?>
<?php if(!$td['send_time']) { ?>Dd('state_3').src = s1;<?php } ?>
<?php } ?>
</script>
<?php include template('goods', 'chip');?>
<?php if($td['logistic']) { ?>
<div class="t2">快递信息</div>
<table cellspacing="1" cellpadding="10" class="tb">
<tr>
<td class="tl">邮编</td>
<td class="tr"><?php echo $td['buyer_postcode'];?></td>
</tr>
<tr>
<td class="tl">地址</td>
<td class="tr"><?php echo $td['buyer_address'];?></td>
</tr>
<tr>
<td class="tl">姓名</td>
<td class="tr"><?php echo $td['buyer_name'];?></td>
</tr>
<tr>
<td class="tl">手机</td>
<td class="tr"><?php echo $td['buyer_mobile'];?></td>
</tr>
<?php if($td['send_time']) { ?>
<tr>
<td class="tl">发货日期</td>
<td class="tr"><?php echo $td['send_time'];?></td>
</tr>
<tr>
<td class="tl">快递类型</td>
<td class="tr"><?php echo $td['send_type'];?></td>
</tr>
<tr>
<td class="tl">快递单号</td>
<td class="tr"><?php echo $td['send_no'];?><?php if($td['send_type'] && $td['send_no']) { ?> &nbsp;<a href="###" class="t" onclick="Ds('express_t');$('#express').load(AJPath+'?mid=<?php echo $mid;?>&action=express&moduleid=2&auth=<?php echo $auth;?>');">[快递追踪]</a><?php } ?></td>
</tr>
<tr id="express_t" style="display:none;">
<td class="tl">追踪结果</td>
<td class="tr" style="line-height:200%;"><div id="express" style="font-size:12px;">正在查询...</div></td>
</tr>
<tr>
<td class="tl">快递状态</td>
<td class="tr"><?php echo $_send_status[$td['send_status']];?></td>
</tr>
<?php } ?>
</table>
<?php } else { ?>
<div class="t2">验证信息</div>
<table cellspacing="1" cellpadding="10" class="tb">
<tr>
<td class="tl">密码</td>
<td class="tr"><?php echo $td['password'];?></td>
</tr>
<tr>
<td class="tl">手机</td>
<td class="tr"><?php echo $td['buyer_mobile'];?></td>
</tr>
</table>
<?php } ?>
<div class="t2">订单详情</div>
<table cellspacing="1" cellpadding="10" class="tb">
<tr>
<td class="tl">联系卖家</td>
<td class="tr"><?php if($DT['im_web']) { ?><?php echo im_web($td['seller']);?>&nbsp;<?php } ?><a href="message.php?action=send&touser=<?php echo $td['seller'];?>"><img src="image/ico_message.gif" title="发送站内信" align="absmiddle"/></a> <a href="<?php echo userurl($td['seller'], 'file=contact');?>" target="_blank" class="t"><?php echo $td['seller'];?></a></td>
</tr>
<tr>
<td class="tl">下单时间</td>
<td class="tr"><?php echo $td['adddate'];?></td>
</tr>
<tr>
<td class="tl">最后更新</td>
<td class="tr"><?php echo $td['updatedate'];?></td>
</tr>
<?php if($td['send_time']) { ?>
<tr>
<td class="tl">发货时间</td>
<td class="tr"><?php echo $td['send_time'];?></td>
</tr>
<?php } ?>
<tr>
<td class="tl">订单状态</td>
<td class="tr"><?php echo $_status[$td['status']];?></td>
</tr>
<?php if($td['buyer_reason']) { ?>
<tr>
<td class="tl">退款理由</td>
<td class="tr"><?php echo $td['buyer_reason'];?></td>
</tr>
<?php } ?>
<?php if($td['refund_reason']) { ?>
<tr>
<td class="tl">操作原因</td>
<td class="tr"><?php echo $td['refund_reason'];?></td>
</tr>
<?php } ?>
<tr>
<td class="tl"> </td>
<td class="tr">
<?php if($td['status'] == 6) { ?>
<input type="button" value=" 付 款 " class="btn_g" onclick="Go('?mid=<?php echo $mid;?>&itemid=<?php echo $td['itemid'];?>&action=update&step=pay');"/> &nbsp; 
<?php } ?>
<input type="button" value=" 返 回 " class="btn" onclick="history.back(-1);"/>
</td>
</tr>
</table>
<script type="text/javascript">s('deal-<?php echo $mid;?>');m('action');</script>
<?php } else if($step == 'express') { ?>
<?php include template('goods', 'chip');?>
<div class="t2">快递信息</div>
<table cellspacing="1" cellpadding="10" class="tb">
<tr>
<td class="tl">发货日期</td>
<td class="tr"><?php echo $td['send_time'];?></td>
</tr>
<tr>
<td class="tl">快递类型</td>
<td class="tr"><?php echo $td['send_type'];?></td>
</tr>
<tr>
<td class="tl">快递单号</td>
<td class="tr"><?php echo $td['send_no'];?></td>
</tr>
<tr>
<td class="tl">追踪结果</td>
<td class="tr" style="line-height:200%;"><div id="express" style="font-size:12px;">正在查询...</div></td>
</tr>
<tr>
<td class="tl">快递状态</td>
<td class="tr"><?php echo $_send_status[$td['send_status']];?></td>
</tr>
<tr>
<td class="tl"> </td>
<td class="tr"><input type="button" value=" 返 回 " class="btn" onclick="history.back(-1);"/>
</td>
</tr>
</table>
<script type="text/javascript">
$(function(){
$('#express').load(AJPath+'?mid=<?php echo $mid;?>&action=express&moduleid=2&auth=<?php echo $auth;?>');
});
</script>
<script type="text/javascript">s('deal-<?php echo $mid;?>');m('action_express');</script>
<?php } else if($step == 'pay') { ?>
<form method="post" action="?" onsubmit="return check();" id="dform">
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<input type="hidden" name="step" value="<?php echo $step;?>"/>
<input type="hidden" name="itemid" value="<?php echo $itemid;?>"/>
<?php include template('goods', 'chip');?>
<div class="t2">订单支付</div>
<table cellspacing="1" cellpadding="10" class="tb">
<tr>
<td class="tl">联系卖家</td>
<td class="tr"><?php if($DT['im_web']) { ?><?php echo im_web($td['seller']);?>&nbsp;<?php } ?><a href="<?php echo userurl($td['seller'], 'file=contact');?>" target="_blank" class="t"><?php echo $td['seller'];?></a></td>
</tr>
<tr>
<td class="tl">下单时间</td>
<td class="tr"><?php echo $td['adddate'];?></td>
</tr>
<tr id="mymoney" style="display:none;">
<td class="tl">账户余额</td>
<td class="tr"><span class="f_blue"><?php echo $_money;?></span> <?php echo $DT['money_unit'];?></td>
</tr>
<tr id="payword" style="display:none;">
<td class="tl"><span class="f_red">*</span> 支付密码</td>
<td class="tr"><?php include template('password', 'chip');?>&nbsp;<span id="dpassword" class="f_red"></span></td>
</tr>
<tr id="paytype" style="display:none;">
<td class="tl"><span class="f_red">*</span> 支付方式</td>
<td class="tr">
<table cellspacing="5" cellpadding="5">
<?php $PAYLIST = get_paylist();?>
<input type="hidden" name="bank" id="bank" value="<?php echo $PAYLIST['0']['bank'];?>"/>
<?php if(is_array($PAYLIST)) { foreach($PAYLIST as $k => $v) { ?>
<tr onclick="$('#bank').val($('#paytype :checked').val());">
<td><input type="radio" name="bank" value="<?php echo $v['bank'];?>" id="bank-<?php echo $v['bank'];?>"<?php if($k==0) { ?> checked<?php } ?>/></td>
<td><label for="bank-<?php echo $v['bank'];?>" class="c_p"><img src="<?php echo DT_PATH;?>api/pay/<?php echo $v['bank'];?>/logo.gif" alt=""/></label></td>
<td><?php if($v['percent']>0) { ?>手续费 <?php echo $v['percent'];?>%<?php } ?></td>
</tr>
<?php } } ?>
</table>
</td>
</tr>
<tr>
<td class="tl"> </td>
<td class="tr">
<input type="submit" name="submit" value="立即支付" class="btn_g"/>&nbsp;&nbsp;<input type="button" value=" 返 回 " class="btn" onclick="history.back(-1);"/>
</td>
</tr>
</table>
</form>
<script type="text/javascript">
var money = <?php echo $money;?>;
function check() {
if(money > <?php echo $_money;?>) {
Go('charge.php?action=pay&reason=group|<?php echo $itemid;?>|<?php echo $mid;?>&amount='+money+'&bank='+$('#bank').val());
return false;
}
if(money > <?php echo $DT['quick_pay'];?>){
if(Dd('password').value.length < 6) {
Dmsg('请填写支付密码', 'password');
return false;
}
}
return confirm('您确认此订单，并立即支付吗？');
}
window.setInterval(
function() {
if(money > <?php echo $_money;?> || <?php echo $_money;?> < 0.01) {
$('#mymoney').hide();$('#paytype').show();$('#payword').hide();
} else {
$('#mymoney').show();$('#paytype').hide();if(money > <?php echo $DT['quick_pay'];?>){$('#payword').show();}
}
}, 
500);
</script>
<script type="text/javascript">s('deal-<?php echo $mid;?>');m('action');</script>
<?php } else if($step == 'remind') { ?>
<form action="message.php" method="post" id="remind">
<input type="hidden" name="action" value="send"/>
<input type="hidden" name="forward" value="<?php echo $MOD['linkurl'];?>deal.php?mid=<?php echo $mid;?>&action=update&step=detail&itemid=<?php echo $itemid;?>"/>
<input type="hidden" name="touser" value="<?php echo $td['seller'];?>" />
<input type="hidden" name="title" value="[发货提醒]<?php echo $MODULE[$mid]['name'];?>订单(ID:<?php echo $itemid;?>)已经付款，请尽快发货"/>
<textarea name="content" style="display:none;">
<?php echo $td['seller'];?>，您好：<br/>
订单 <a href="<?php echo $MOD['linkurl'];?>group.php?mid=<?php echo $mid;?>&action=update&step=detail&itemid=<?php echo $itemid;?>" target="_blank"><?php echo $td['title'];?> (ID:<?php echo $itemid;?>)</a> 已经付款。请尽快发货！
</textarea>
</form>
<script type="text/javascript">s('deal-<?php echo $mid;?>');m('action');Dd('remind').submit();</script>
<?php } else if($step == 'refund') { ?>
<form method="post" action="?" onsubmit="return check();" id="dform">
<input type="hidden" name="forward" value="<?php echo $forward;?>"/>
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<input type="hidden" name="step" value="<?php echo $step;?>"/>
<input type="hidden" name="itemid" value="<?php echo $itemid;?>"/>
<?php include template('goods', 'chip');?>
<div class="t2">申请退款</div>
<table cellspacing="1" cellpadding="10" class="tb">
<tr>
<td class="tl">联系卖家</td>
<td class="tr"><?php if($DT['im_web']) { ?><?php echo im_web($td['seller']);?>&nbsp;<?php } ?><a href="<?php echo userurl($td['seller'], 'file=contact');?>" target="_blank" class="t"><?php echo $td['seller'];?></a></td>
</tr>
<tr>
<td class="tl">下单时间</td>
<td class="tr"><?php echo $td['adddate'];?></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 退款原因</td>
<td class="tr"><textarea name="content" id="content" class="dsn"></textarea>
<?php echo deditor($moduleid, 'content', 'Simple', '100%', 200);?><br/><span class="f_gray">请客观、如实填写，此申请一经提交，将不可再撤销</span><span id="dcontent" class="f_red"></span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 支付密码</td>
<td class="tr"><?php include template('password', 'chip');?>&nbsp;<span id="dpassword" class="f_red"></span></td>
</tr>
<tr>
<td class="tl"> </td>
<td class="tr">
<input type="submit" name="submit" value=" 确 定 " class="btn_g"/>&nbsp;&nbsp;<input type="button" value=" 返 回 " class="btn" onclick="history.back(-1);"/>
</td>
</tr>
</table>
</form>
<script type="text/javascript">
function check() {
var len = FCKLen();
if(len < 10) {
Dmsg('退款原因不能少于10个字，当前已输入'+len+'个字', 'content');
return false;
}
if(Dd('password').value.length < 6) {
Dmsg('请填写支付密码', 'password');
return false;
}
return confirm('您确认您提供的退款原因无误，并申请退款吗？');
}
</script>
<script type="text/javascript">s('deal-<?php echo $mid;?>');m('action');</script>
<?php } ?>
<?php } else if($action == 'express') { ?>
<div class="tt">
<form action="?">
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<?php echo $fields_select;?>&nbsp;
<input type="text" size="30" name="kw" value="<?php echo $kw;?>" title="关键词"/>&nbsp;
<?php echo $status_select;?>&nbsp;
<input type="submit" value=" 搜 索 " class="btn"/>&nbsp;
<input type="button" value=" 重 置 " class="btn" onclick="Go('?mid=<?php echo $mid;?>&action=<?php echo $action;?>');"/><br/>
</div>
</form>
<div class="bd">
<table cellpadding="10" cellspacing="0" class="tb">
<tr>
<th>快递公司</th>
<th>快递单号</th>
<th width="100">快递状态</th>
<th width="150">下单时间</th>
<th width="150">更新时间</th>
<th width="40">订单</th>
</tr>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<tr align="center">
<td><?php echo $v['send_type'];?></td>
<td title="快递追踪"><a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=express" class="t"><?php echo $v['send_no'];?></a></td>
<td><?php echo $v['dstatus'];?></td>
<td><?php echo $v['addtime'];?></td>
<td><?php echo $v['updatetime'];?></td>
<td><a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=detail" class="t">查看</a></td>
</tr>
<?php } } ?>
</table>
</div>
<div class="pages"><?php echo $pages;?></div>
<script type="text/javascript">s('deal-<?php echo $mid;?>');m('action_express');</script>
<?php } else { ?>
<div class="tt">
<form action="?">
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<?php echo $fields_select;?>&nbsp;
<input type="text" size="15" name="kw" value="<?php echo $kw;?>" title="关键词"/>&nbsp;
<?php echo $status_select;?>&nbsp;
<?php echo dcalendar('fromdate', $fromdate);?> 至 <?php echo dcalendar('todate', $todate);?>&nbsp;
<input type="submit" value=" 搜 索 " class="btn"/>&nbsp;
<input type="button" value=" 重 置 " class="btn" onclick="Go('?mid=<?php echo $mid;?>&action=index');"/><br/>
<div class="b10"></div>
单号：<input type="text" size="10" name="itemid" value="<?php echo $itemid;?>"/>&nbsp;
商品ID：<input type="text" size="10" name="gid" value="<?php echo $gid;?>"/>&nbsp;
商家：<input type="text" size="10" name="seller" value="<?php echo $seller;?>"/>&nbsp;
密码：<input type="text" size="10" name="pass" value="<?php echo $pass;?>"/>&nbsp;
</div>
</form>
<div class="nav">
<table cellpadding="0" cellspacing="0">
<tr>
<td class="<?php if(!in_array($nav, array(0,1,2,4,5,6))) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?mid=<?php echo $mid;?>&action=index">全部订单</a></td>
<td class="<?php if($nav==6) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?mid=<?php echo $mid;?>&nav=6">待付款 <span>(<?php echo $db->count($table, "buyer='$_username' AND status=6");?>)</span></a></td>
<td class="<?php if($nav==0) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?mid=<?php echo $mid;?>&nav=0">已付款 <span>(<?php echo $db->count($table, "buyer='$_username' AND status=0");?>)</span></a></td>
<td class="<?php if($nav==1) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?mid=<?php echo $mid;?>&nav=1">已发货 <span>(<?php echo $db->count($table, "buyer='$_username' AND status=1");?>)</span></a></td>
<td class="<?php if($nav==2) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?mid=<?php echo $mid;?>&nav=2">已消费 <span>(<?php echo $db->count($table, "buyer='$_username' AND status=2");?>)</span></a></td>
<td class="<?php if($nav==4) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?mid=<?php echo $mid;?>&nav=4">待退款 <span>(<?php echo $db->count($table, "buyer='$_username' AND status=4");?>)</span></a></td>
<td class="<?php if($nav==5) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?mid=<?php echo $mid;?>&nav=5">已退款 <span>(<?php echo $db->count($table, "buyer='$_username' AND status=5");?>)</span></a></td>
</tr>
</table>
</div>
<div class="bd">
<table cellpadding="10" cellspacing="0" class="tb">
<tr>
<th>商品信息</th>
<th width="60">数量</th>
<th width="120">订单金额</th>
<th width="100">下单时间</th>
<th width="100">商家</th>
<th width="90">订单状态</th>
</tr>
</table>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<table cellpadding="10" cellspacing="0" class="tb">
<tr bgcolor="#F5F5F5">
<td colspan="7" class="f_gray">
<span class="f_r">
<?php if($v['status'] == 0) { ?>
<?php if($v['logistic']) { ?>
<a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=remind">提醒发货</a> | 
<?php } ?>
<a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=refund">申请退款</a> | 
<?php } else if($v['status'] == 1) { ?>
<?php if($v['lefttime']) { ?>
<span class="f_blue" title="如果逾期未处理，系统将自动付款给卖家"><img src="<?php echo DT_STATIC;?>file/image/clock.gif" width="12" height="12"/> 距处理此订单还剩<?php echo $v['lefttime'];?></span>&nbsp;
<a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=receive&page=<?php echo $page;?>" onclick="return confirm('您确定已经收到商家货物且质量与数量无误吗？此操作将不可撤销');">确认收货</a> | 
<?php if($v['send_type'] && $v['send_no']) { ?>
<a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=express&page=<?php echo $page;?>">快递追踪</a> | 
<?php } ?>
<a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=refund">申请退款</a> | 
<?php } else { ?>
<span class="f_red">订单处理已超时，等待卖家收款</span>&nbsp;
<?php } ?>
<?php } else if($v['status'] == 2) { ?>
<?php if($v['lefttime']) { ?>
<span class="f_blue" title="如果逾期未处理，系统将自动付款给卖家"><img src="<?php echo DT_STATIC;?>file/image/clock.gif" width="12" height="12"/> 距处理此订单还剩<?php echo $v['lefttime'];?></span>&nbsp;
<a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=used&page=<?php echo $page;?>" onclick="return confirm('您确定已在商家消费且质量与数量无误吗？此操作将不可撤销');">确认消费</a> | 
<a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=refund">申请退款</a> | 
<?php } else { ?>
<span class="f_red">订单处理已超时，等待卖家收款</span>&nbsp;
<?php } ?>
<?php } else if($v['status'] == 6) { ?>
<a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=pay">立即付款</a> | 
<?php } ?>
<a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=detail">订单详情</a>&nbsp;
</span>
&nbsp;订单号：<?php echo $v['itemid'];?>
</td>
</tr>
<tr align="center">
<td width="70"><a href="<?php echo $v['linkurl'];?>" target="_blank" title="<?php echo $v['title'];?>"><img src="<?php if($v['thumb']) { ?><?php echo $v['thumb'];?><?php } else { ?><?php echo DT_SKIN;?>image/nopic60.gif<?php } ?>" width="60" height="60" onerror="this.src=errimg;"/></a></td>
<td align="left" valign="top" class="f_gray lh18">
<a href="<?php echo $v['linkurl'];?>" target="_blank" class="t"><?php echo $v['title'];?></a>
<?php if(!$v['logistic']) { ?>
<br/>手机：<?php echo $v['buyer_mobile'];?>
&nbsp;&nbsp;&nbsp;&nbsp;密码：<?php echo $v['password'];?>
<?php } ?>
</td>
<td width="60"><?php echo $v['number'];?></td>
<td width="120"><?php echo $DT['money_sign'];?><?php echo $v['amount'];?></td>
<td width="100"><?php echo $v['addtime'];?></td>
<td width="100"><div style="margin-bottom:15px;"><a href="<?php echo userurl($v['seller'], 'file=contact');?>" target="_blank"><?php echo $v['seller'];?></a></div><?php if($DT['im_web']) { ?><?php echo im_web($v['seller'].'&mid=16&itemid='.$v['gid']);?> <?php } ?><a href="message.php?action=send&touser=<?php echo $v['seller'];?>"><img src="image/ico_message.gif" title="发送站内信" align="absmiddle"/></a></td>
<td width="90"><?php echo $v['dstatus'];?></td>
</tr>
</table>
<?php } } ?>
</div>
<div class="pages"><?php echo $pages;?></div>
<script type="text/javascript">s('deal-<?php echo $mid;?>');m('action');</script>
<?php } ?>
<?php include template('footer', 'member');?>