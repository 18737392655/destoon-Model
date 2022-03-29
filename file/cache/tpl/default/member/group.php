<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header', 'member');?>
<script type="text/javascript">var errimg = '<?php echo DT_SKIN;?>image/nopic60.gif';</script>
<div class="menu">
<table cellpadding="0" cellspacing="0">
<tr>
<td class="tab" id="action"><a href="?mid=<?php echo $mid;?>&action=index"><span>订单管理</span></a></td>
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
<tr>
<td class="tl">买家备注</td>
<td class="tr"><?php if($td['note']) { ?><?php echo $td['note'];?><?php } else { ?>无<?php } ?></td>
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
<?php if($td['status'] == 0) { ?>
<tr>
<td class="tl"></td>
<td class="tr"><input type="button" value="确认消费" class="btn" onclick="if(confirm('您确定买家已经消费吗？此操作将不可撤销')) Go('?mid=<?php echo $mid;?>&itemid=<?php echo $td['itemid'];?>&action=update&step=used');"/></td>
</tr>
<?php } ?>
</table>
<?php } ?>
<div class="t2">订单详情</div>
<table cellspacing="1" cellpadding="10" class="tb">
<tr>
<td class="tl">联系买家</td>
<td class="tr"><?php if($DT['im_web']) { ?><?php echo im_web($td['buyer']);?>&nbsp;<?php } ?><a href="message.php?action=send&touser=<?php echo $td['buyer'];?>"><img src="image/ico_message.gif" title="发送站内信" align="absmiddle"/></a> <a href="<?php echo userurl($td['buyer'], 'file=contact');?>" target="_blank" class="t"><?php echo $td['buyer'];?></a></td>
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
<input type="button" value=" 返 回 " class="btn" onclick="history.back(-1);"/>
</td>
</tr>
</table>
<script type="text/javascript">s('group-<?php echo $mid;?>');m('<?php echo $nav;?>');</script>
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
<script type="text/javascript">s('group-<?php echo $mid;?>');m('action_express');</script>
<?php } else if($step == 'send') { ?>
<form method="post" action="?" onsubmit="return check();" id="dform">
<input type="hidden" name="forward" value="<?php echo $forward;?>"/>
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<input type="hidden" name="step" value="<?php echo $step;?>"/>
<input type="hidden" name="page" value="<?php echo $page;?>"/>
<input type="hidden" name="itemid" value="<?php echo $itemid;?>"/>
<?php include template('goods', 'chip');?>
<div class="t2">确认发货</div>
<table cellpadding="10" cellspacing="1" class="tb">
<tr>
<td class="tl">快递类型</td>
<td class="tr f_gray">
<select name="send_type" id="send_type">
<option value="">常用快递类型</option>
<?php if(is_array($send_types)) { foreach($send_types as $v) { ?>
<option value="<?php echo $v;?>"><?php echo $v;?></option>
<?php } } ?>
</select>
</td>
</tr>
<tr>
<td class="tl">快递单号</td>
<td class="tr f_gray"><input type="text" size="30" name="send_no" id="send_no"/></td>
</tr>
<tr>
<td class="tl">发货时间</td>
<td class="tr f_gray"><?php echo dcalendar('send_time', $send_time);?></td>
</tr>
<tr>
<td class="tl"> </td>
<td class="tr">
<input type="submit" name="submit" value=" 发 货 " class="btn_g"/>&nbsp;&nbsp;<input type="button" value=" 返 回 " class="btn" onclick="history.back(-1);"/>
</td>
</tr>
</table>
</form>
<script type="text/javascript">
function check() {
return confirm('您确认货物已经发出，并且以上信息填写无误吗？\n\n此操作将不可撤销');
}
</script>
<script type="text/javascript">s('group-<?php echo $mid;?>');m('action');</script>
<?php } else if($step == 'add_time') { ?>
<form method="post" action="?" onsubmit="return check();" id="dform">
<input type="hidden" name="forward" value="<?php echo $forward;?>"/>
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<input type="hidden" name="step" value="<?php echo $step;?>"/>
<input type="hidden" name="itemid" value="<?php echo $itemid;?>"/>
<?php include template('goods', 'chip');?>
<div class="t2">延长买家确认时间</div>
<table cellpadding="10" cellspacing="1" class="tb">
<tr>
<td class="tl"><span class="f_red">*</span>延长时间</td>
<td class="tr f_gray"><input type="text" size="10" name="add_time" id="add_time" value="72"/> 小时 （1天=24小时 只能为整数）&nbsp;<span id="dadd_time" class="f_red"></span></td>
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
return confirm('您确认延长'+Dd('add_time').value+'小时吗？');
}
</script>
<script type="text/javascript">s('group-<?php echo $mid;?>');m('action');</script>
<?php } else if($step == 'refund_agree') { ?>
<form method="post" action="?" onsubmit="return check();" id="dform">
<input type="hidden" name="forward" value="<?php echo $forward;?>"/>
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<input type="hidden" name="step" value="<?php echo $step;?>"/>
<input type="hidden" name="itemid" value="<?php echo $itemid;?>"/>
<table cellspacing="1" cellpadding="10" class="tb">
<?php include template('goods', 'chip');?>
<div class="t2">同意退款</div>
<table cellpadding="10" cellspacing="1" class="tb">
<tr>
<td class="tl">联系买家</td>
<td class="tr"><?php if($DT['im_web']) { ?><?php echo im_web($td['buyer']);?>&nbsp;<?php } ?><a href="<?php echo userurl($td['buyer'], 'file=contact');?>" target="_blank" class="t"><?php echo $td['buyer'];?></a></td>
</tr>
<tr>
<td class="tl">下单时间</td>
<td class="tr"><?php echo $td['adddate'];?></td>
</tr>
<tr>
<td class="tl">退款原因</td>
<td class="tr"><?php echo $td['buyer_reason'];?></td>
</tr>
<tr>
<td class="tl">同意原因</td>
<td class="tr"><textarea name="content" id="content" class="dsn"></textarea>
<?php echo deditor($moduleid, 'content', 'Simple', '100%', 200);?><br/></td>
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
if(Dd('password').value.length < 6) {
Dmsg('请填写支付密码', 'password');
return false;
}
return confirm('您确认同意退款此订单吗？此操作将不可撤销');
}
</script>
<script type="text/javascript">s('group-<?php echo $mid;?>');m('action');</script>
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
<script type="text/javascript">s('group-<?php echo $mid;?>');m('action_express');</script>
<?php } else { ?>
<div class="tt">
<form action="?">
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<?php echo $fields_select;?>&nbsp;
<input type="text" size="15" name="kw" value="<?php echo $kw;?>" title="关键词"/>&nbsp;
<?php echo $status_select;?>&nbsp;
<?php echo dcalendar('fromdate', $fromdate);?> 至 <?php echo dcalendar('todate', $todate);?>&nbsp;
<input type="submit" value=" 搜 索 " class="btn"/>&nbsp;
<input type="button" value=" 重 置 " class="btn" onclick="Go('?mid=<?php echo $mid;?>&action=index');"/><br/>
<div class="b10"></div>
单号：<input type="text" size="10" name="itemid" value="<?php echo $itemid;?>"/>&nbsp;
商品ID：<input type="text" size="10" name="gid" value="<?php echo $gid;?>"/>&nbsp;
买家：<input type="text" size="10" name="buyer" value="<?php echo $buyer;?>"/>&nbsp;
密码：<input type="text" size="10" name="pass" value="<?php echo $pass;?>"/>&nbsp;
</form>
</div>
<div class="nav">
<table cellpadding="0" cellspacing="0">
<tr>
<td class="<?php if(!in_array($nav, array(0,1,2,4,5,6))) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?mid=<?php echo $mid;?>&action=index">全部订单</a></td>
<td class="<?php if($nav==6) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?mid=<?php echo $mid;?>&nav=6">待付款 <span>(<?php echo $db->count($table, "seller='$_username' AND status=6");?>)</span></a></td>
<td class="<?php if($nav==0) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?mid=<?php echo $mid;?>&nav=0">已付款 <span>(<?php echo $db->count($table, "seller='$_username' AND status=0");?>)</span></a></td>
<td class="<?php if($nav==1) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?mid=<?php echo $mid;?>&nav=1">已发货 <span>(<?php echo $db->count($table, "seller='$_username' AND status=1");?>)</span></a></td>
<td class="<?php if($nav==2) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?mid=<?php echo $mid;?>&nav=2">已消费 <span>(<?php echo $db->count($table, "seller='$_username' AND status=2");?>)</span></a></td>
<td class="<?php if($nav==4) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?mid=<?php echo $mid;?>&nav=4">待退款 <span>(<?php echo $db->count($table, "seller='$_username' AND status=4");?>)</span></a></td>
<td class="<?php if($nav==5) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?mid=<?php echo $mid;?>&nav=5">已退款 <span>(<?php echo $db->count($table, "seller='$_username' AND status=5");?>)</span></a></td>
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
<th width="100">买家</th>
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
<a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=send&page=<?php echo $page;?>">确认发货</a> | 
<a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=print" target="_blank">打印订单</a> | 
<?php } else { ?>
<a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=used&page=<?php echo $page;?>" onclick="return confirm('您确定买家已经消费吗？此操作将不可撤销');">确认消费</a> | 
<?php } ?>
<?php } else if($v['status'] == 1) { ?>
<?php if($v['lefttime']) { ?>
<span class="f_blue"><img src="<?php echo DT_STATIC;?>file/image/clock.gif" width="12" height="12"/> 距买家处理订单还剩<?php echo $v['lefttime'];?></span>&nbsp;
<a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=add_time">延长时间</a> | 
<?php } else { ?>
<span class="f_blue">买家处理订单超时</span>
<a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=get_pay">直接收款</a> | 
<?php } ?>
<?php if($v['send_type'] && $v['send_no']) { ?>
<a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=express&page=<?php echo $page;?>">快递追踪</a> | 
<?php } ?>
<?php } else if($v['status'] == 2) { ?>
<?php if($v['lefttime']) { ?>
<span class="f_blue"><img src="<?php echo DT_STATIC;?>file/image/clock.gif" width="12" height="12"/> 距买家处理订单还剩<?php echo $v['lefttime'];?></span>&nbsp;
<a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=add_time">延长时间</a> | 
<?php } else { ?>
<span class="f_blue">买家处理订单超时</span>
<a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=get_pay">直接收款</a> | 
<?php } ?>
<?php } else if($v['status'] == 4) { ?>
<a href="?mid=<?php echo $mid;?>&itemid=<?php echo $v['itemid'];?>&action=update&step=refund_agree">同意退款</a> | 
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
<td width="100"><div style="margin-bottom:15px;"><a href="<?php echo userurl($v['buyer'], 'file=contact');?>" target="_blank"><?php echo $v['buyer'];?></a></div><?php if($DT['im_web']) { ?><?php echo im_web($v['buyer'].'&mid=16&itemid='.$v['gid']);?> <?php } ?><a href="message.php?action=send&touser=<?php echo $v['buyer'];?>"><img src="image/ico_message.gif" title="发送站内信" align="absmiddle"/></a></td>
<td width="90"><?php echo $v['dstatus'];?></td>
</tr>
</table>
<?php } } ?>
</div>
<div class="pages"><?php echo $pages;?></div>
<script type="text/javascript">s('group-<?php echo $mid;?>');m('action');</script>
<?php } ?>
<?php include template('footer', 'member');?>