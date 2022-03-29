<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header', 'member');?>
<script type="text/javascript">var errimg = '<?php echo DT_SKIN;?>image/nopic60.gif';</script>
<div class="menu">
<table cellpadding="0" cellspacing="0">
<tr>
<td class="tab" id="action"><a href="?action=index"><span>订单管理</span></a></td>
<td class="tab" id="action_muti"><a href="?action=muti"><span>批量发货</span></a></td>
<td class="tab" id="action_express"><a href="?action=express"><span>我的快递</span></a></td>
</tr>
</table>
</div>
<?php if($action == 'update') { ?>
<?php if($step == 'detail') { ?>
<?php if(!in_array($td['status'], array(8, 9))) { ?>
<table cellpadding="0" cellspacing="0" align="center">
<tr align="center" class="f_gray">
<td>买家下单</td>
<td id="pay_n">买家付款</td>
<td>卖家发货</td>
<?php if($td['status'] == 5 || $td['status'] == 6) { ?>
<td>申请退款</td>
<td>退款成功</td>
<?php } else { ?>
<td>交易成功</td>
<td>双方互评</td>
<?php } ?>
</tr>
<tr height="60">
<td><img src="image/state_2.gif" id="state_1"/></td>
<td id="pay_s"><img src="image/state_1.gif" id="state_2"/></td>
<td><img src="image/state_1.gif" id="state_3"/></td>
<td><img src="image/state_1.gif" id="state_4"/></td>
<td><img src="image/state_1.gif" id="state_5"/></td>
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
<?php if($td['status'] == 2) { ?>
Dstate(2);
<?php } else if($td['status'] == 3) { ?>
Dstate(3);
<?php } else if($td['status'] == 4) { ?>
<?php if($td['buyer_star'] && $td['seller_star']) { ?>
Dstate(5);
<?php } else { ?>
Dstate(4);
<?php } ?>
<?php } else if($td['status'] == 5) { ?>
Dstate(4);
<?php } else if($td['status'] == 6) { ?>
Dstate(5);
<?php } else if($td['status'] == 7) { ?>
<?php if($td['send_time']) { ?>Dstate(3);<?php } ?>
<?php } ?>
<?php if($td['status'] == 5 || $td['status'] == 6) { ?>
<?php if(!$td['send_time']) { ?>Dd('state_3').src = s1;<?php } ?>
<?php } ?>
<?php if($td['cod']) { ?>Dh('pay_n');Dh('pay_s');<?php } ?>
</script>
<?php } ?>
<?php include template('goods', 'chip');?>
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
<td class="tr"><?php echo $td['send_no'];?><?php if($td['send_type'] && $td['send_no']) { ?> &nbsp;<a href="###" class="t" onclick="Ds('express_t');$('#express').load(AJPath+'?action=express&moduleid=2&auth=<?php echo $auth;?>');">[快递追踪]</a><?php } ?></td>
</tr>
<tr id="express_t" style="display:none;">
<td class="tl">追踪结果</td>
<td class="tr" style="line-height:200%;"><div id="express"><img src="image/loading.gif" align="absmiddle"/> 正在查询...</div></td>
</tr>
<tr>
<td class="tl">快递状态</td>
<td class="tr"><?php echo $_send_status[$td['send_status']];?></td>
</tr>
<?php } ?>
</table>
<div class="t2">订单详情</div>
<table cellspacing="1" cellpadding="10" class="tb">
<tr>
<td class="tl">联系买家 </td>
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
<?php if($td['status'] == 0) { ?>
<input type="button" value=" 确 认 " class="btn_g" onclick="Go('?itemid=<?php echo $td['itemid'];?>&action=update&step=edit_price&confirm=1');"/> &nbsp; 
<?php } else if($td['status'] == 2) { ?>
<input type="button" value=" 发 货 " class="btn_g" onclick="Go('?itemid=<?php echo $td['itemid'];?>&action=update&step=send_goods');"/> &nbsp; 
<?php } ?>
<input type="button" value=" 返 回 " class="btn" onclick="history.back(-1);"/>
</td>
</tr>
</table>
<script type="text/javascript">s('trade');m('action');</script>
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
<td class="tr" style="line-height:200%;"><div id="express"><img src="image/loading.gif" align="absmiddle"/> 正在查询...</div></td>
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
$('#express').load(AJPath+'?action=express&moduleid=2&auth=<?php echo $auth;?>');
});
</script>
<script type="text/javascript">s('trade');m('action_express');</script>
<?php } else if($step == 'edit_price') { ?>
<?php include template('goods', 'chip');?>
<div class="t2">修改订单</div>
<form method="post" action="?" onsubmit="return check();" id="dform">
<input type="hidden" name="forward" value="<?php echo $forward;?>"/>
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<input type="hidden" name="step" value="<?php echo $step;?>"/>
<input type="hidden" name="itemid" value="<?php echo $itemid;?>"/>
<table cellspacing="1" cellpadding="10" class="tb">
<tr>
<td class="tl">联系买家</td>
<td class="tr"><?php if($DT['im_web']) { ?><?php echo im_web($td['buyer']);?>&nbsp;<?php } ?><a href="<?php echo userurl($td['buyer'], 'file=contact');?>" target="_blank" class="t"><?php echo $td['buyer'];?></a></td>
</tr>
<tr>
<td class="tl">下单时间</td>
<td class="tr"><?php echo $td['adddate'];?></td>
</tr>
<tr>
<td class="tl">订单总额</td>
<td class="tr f_red"><?php echo $DT['money_sign'];?><?php echo $td['amount'];?></td>
</tr>
<tr>
<td class="tl">附加名称</td>
<td class="tr f_gray"><input type="text" size="10" name="fee_name" id="fee_name" value="<?php echo $td['fee_name'];?>"/> 例如运费、退款、优惠等&nbsp;<span id="dfee_name" class="f_red"></span></td>
</tr>
<tr>
<td class="tl">附加金额</td>
<td class="tr f_gray"><input type="text" size="5" name="fee" id="fee" value="<?php echo $td['fee'];?>"/>  <?php echo $DT['money_unit'];?> 可以为负值&nbsp;<span id="dfee" class="f_red"></span></td>
</tr>
<?php if($td['status'] < 1) { ?>
<tr>
<td class="tl"></td>
<td class="tr"><input type="checkbox" name="confirm_order" value="1"<?php if($confirm) { ?> checked<?php } ?>/> 同时确认订单</td>
</tr>
<?php } ?>
<?php if($td['cod'] < 1) { ?>
<tr>
<td class="tl"></td>
<td class="tr"><input type="checkbox" name="edit_cod" value="1"/> 改为货到付款</td>
</tr>
<?php } ?>
<?php if($DT['sms']) { ?>
<tr>
<td class="tl"></td>
<td class="tr"><input type="checkbox" name="sendsms" value="1"/> 短信通知买家 (<a href="sms.php" target="_blank" class="t">我的可用短信 <strong class="f_blue"><?php echo $_sms;?></strong> 条</a>)</td>
</tr>
<?php } ?>
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
if(Dd('fee').value < 0 && Dd('fee').value < -<?php echo $td['amount'];?>) {
Dmsg('附加金额不能小于-<?php echo $td['amount'];?>', 'fee');
return false;
}
return true;
}
</script>
<script type="text/javascript">s('trade');m('action');</script>
<?php } else if($step == 'send_goods') { ?>
<form method="post" action="?" onsubmit="return check();" id="dform">
<input type="hidden" name="forward" value="<?php echo $forward;?>"/>
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<input type="hidden" name="step" value="<?php echo $step;?>"/>
<input type="hidden" name="itemid" value="<?php echo $itemid;?>"/>
<?php include template('goods', 'chip');?>
<div class="t2">确认发货</div>
<table cellpadding="10" cellspacing="1" class="tb">
<tr>
<td class="tl">快递类型</td>
<td class="tr f_gray">
<select name="send_type" id="send_type">
<option value="">请选择</option>
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
<?php if($DT['sms']) { ?>
<tr>
<td class="tl"></td>
<td class="tr"><input type="checkbox" name="sendsms" value="1"/> 短信通知买家已发货 (<a href="sms.php" target="_blank" class="t">我的可用短信 <strong class="f_blue"><?php echo $_sms;?></strong> 条</a>)</td>
</tr>
<?php } ?>
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
return confirm('您确认货物已经发出，并且以上信息填写无误吗？\n\n此操作将不可撤销');
}
</script>
<script type="text/javascript">s('trade');m('action');</script>
<?php } else if($step == 'add_time') { ?>
<form method="post" action="?" onsubmit="return check();" id="dform">
<input type="hidden" name="forward" value="<?php echo $forward;?>"/>
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
<script type="text/javascript">s('trade');m('action');</script>
<?php } else if($step == 'refund_agree') { ?>
<form method="post" action="?" onsubmit="return check();" id="dform">
<input type="hidden" name="forward" value="<?php echo $forward;?>"/>
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<input type="hidden" name="step" value="<?php echo $step;?>"/>
<input type="hidden" name="itemid" value="<?php echo $itemid;?>"/>
<?php include template('goods', 'chip');?>
<div class="t2">同意退款</div>
<table cellspacing="1" cellpadding="10" class="tb">
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
<script type="text/javascript">s('trade');m('action');</script>
<?php } else if($step == 'comment') { ?>
<form method="post" action="?" onsubmit="return check();" id="dform">
<input type="hidden" name="forward" value="<?php echo $forward;?>"/>
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<input type="hidden" name="step" value="<?php echo $step;?>"/>
<input type="hidden" name="itemid" value="<?php echo $itemid;?>"/>
<?php include template('goods', 'chip');?>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<div class="t2">交易评价 - <?php echo $v['title'];?></div>
<table cellpadding="10" cellspacing="1" class="tb">
<tr>
<td class="tl">交易打分</td>
<td class="tr">
<input type="radio" name="stars[<?php echo $v['itemid'];?>]" value="3" id="star_<?php echo $v['itemid'];?>_3" checked/><label for="star_<?php echo $v['itemid'];?>_3"> 好评 <img src="<?php echo DT_STATIC;?>file/image/star3.gif" width="36" height="12" alt="" align="absmiddle"/></label>
<input type="radio" name="stars[<?php echo $v['itemid'];?>]" value="2" id="star_<?php echo $v['itemid'];?>_2"/><label for="star_<?php echo $v['itemid'];?>_2"> 中评 <img src="<?php echo DT_STATIC;?>file/image/star2.gif" width="36" height="12" alt="" align="absmiddle"/></label>
<input type="radio" name="stars[<?php echo $v['itemid'];?>]" value="1" id="star_<?php echo $v['itemid'];?>_1"/><label for="star_<?php echo $v['itemid'];?>_1"> 差评 <img src="<?php echo DT_STATIC;?>file/image/star1.gif" width="36" height="12" alt="" align="absmiddle"/></label>
</td>
</tr>
<tr>
<td class="tl">详细评论</td>
<td class="tr f_gray">
<textarea onkeyup="S(<?php echo $v['itemid'];?>);" name="contents[<?php echo $v['itemid'];?>]" id="content_<?php echo $v['itemid'];?>" style="width:300px;height:60px;margin:0 0 6px 0;"></textarea><br/>
请您对此次交易做出客观、公正的评论<br/>
(内容限0至500字) 当前已经输入 <span style="color:red;" id="chars_<?php echo $v['itemid'];?>">0</span> 字
</td>
</tr>
</table>
<?php } } ?>
<table cellpadding="10" cellspacing="1" class="tb">
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
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
if(Dd('content_<?php echo $v['itemid'];?>').value.length > 500) {
alert('评论内容不能超过500字');
return false;
}
<?php } } ?>
return confirm('您确认提交此评论吗？提交后评论分数和内容将不可更改');
}
function S(id) {
Inner('chars_'+id, Dd('content_'+id).value.length);
}
</script>
<script type="text/javascript">s('trade');m('action');</script>
<?php } else if($step == 'comment_detail') { ?>
<?php include template('goods', 'chip');?>
<div style="display:none;" id="explain">
<div class="t2">我的解释</div>
<form method="post" action="?" onsubmit="return check();" id="dform">
<input type="hidden" name="forward" value="<?php echo $forward;?>"/>
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<input type="hidden" name="step" value="<?php echo $step;?>"/>
<input type="hidden" name="itemid" value="<?php echo $itemid;?>"/>
<input type="hidden" name="oid" value="0" id="oid"/>
<table cellspacing="1" cellpadding="10" class="tb">
<tr>
<td class="tl" id="E0"></td>
<td class="tr" id="E1"></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span>我的解释</td>
<td class="tr f_gray">
<textarea onkeyup="S();" name="content" id="content" style="width:300px;height:60px;margin:0 0 6px 0;"></textarea><br/>
请您对此次评价做出客观、合理的解释<br/>
(内容限2至500字) 当前已经输入 <span style="color:red;" id="chars">0</span> 字
</td>
</tr>
<tr>
<td class="tl"> </td>
<td class="tr">
<input type="submit" name="submit" value=" 确 定 " class="btn_g"/>&nbsp;&nbsp;<input type="button" value=" 取 消 " class="btn" onclick="$('#explain').slideUp(300);"/>
</td>
</tr>
</table>
</form>
</div>
<div class="t2">买家评价</div>
<table cellspacing="1" cellpadding="10" class="tb">
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<tr>
<td class="tl">商品名称</td>
<td class="tr"><a href="<?php echo $v['linkurl'];?>" target="_blank" class="t"><?php echo $v['title'];?></a></td>
</tr>
<?php if($comments[$k]['seller_star']) { ?>
<tr>
<td class="tl">买家评分</td>
<td class="tr"><img src="<?php echo DT_STATIC;?>file/image/star<?php echo $comments[$k]['seller_star'];?>.gif" width="36" height="12" alt="" align="absmiddle"/> <?php echo $STARS[$comments[$k]['seller_star']];?>
<?php if($_username == $td['seller'] && !$comments[$k]['buyer_reply']) { ?>
&nbsp;&nbsp;<a href="javascript:;" onclick="E(<?php echo $v['itemid'];?>);" class="t">[解释]</a>
<?php } ?>
</td>
</tr>
<tr>
<td class="tl" id="E0_<?php echo $v['itemid'];?>">买家评论</td>
<td class="tr" id="E1_<?php echo $v['itemid'];?>"><?php echo nl2br($comments[$k]['seller_comment']);?></td>
</tr>
<tr>
<td class="tl">评论时间</td>
<td class="tr"><?php echo timetodate($comments[$k]['seller_ctime'], 6);?></td>
</tr>
<?php if($comments[$k]['buyer_reply']) { ?>
<tr>
<td class="tl">卖家解释</td>
<td class="tr" style="color:#D9251D;"><?php echo nl2br($comments[$k]['buyer_reply']);?></td>
</tr>
<tr>
<td class="tl">解释时间</td>
<td class="tr"><?php echo timetodate($comments[$k]['buyer_rtime'], 6);?></td>
</tr>
<?php } ?>
<?php } else { ?>
<tr>
<td class="tl">买家评论</td>
<td class="tr">暂未评论</td>
</tr>
<?php } ?>
<?php } } ?>
</table>
<div class="t2">我的评价</div>
<table cellspacing="1" cellpadding="10" class="tb">
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<tr>
<td class="tl">商品名称</td>
<td class="tr"><a href="<?php echo $v['linkurl'];?>" target="_blank" class="t"><?php echo $v['title'];?></a></td>
</tr>
<?php if($comments[$k]['buyer_star']) { ?>
<tr>
<td class="tl">卖家评分</td>
<td class="tr"><img src="<?php echo DT_STATIC;?>file/image/star<?php echo $comments[$k]['buyer_star'];?>.gif" width="36" height="12" alt="" align="absmiddle"/> <?php echo $STARS[$comments[$k]['buyer_star']];?></td>
</tr>
<tr>
<td class="tl">卖家评论</td>
<td class="tr"><?php echo nl2br($comments[$k]['buyer_comment']);?></td>
</tr>
<tr>
<td class="tl">评论时间</td>
<td class="tr"><?php echo timetodate($comments[$k]['buyer_ctime'], 6);?></td>
</tr>
<?php if($comments[$k]['seller_reply']) { ?>
<tr>
<td class="tl">买家解释</td>
<td class="tr" style="color:#D9251D;"><?php echo nl2br($comments[$k]['seller_reply']);?></td>
</tr>
<tr>
<td class="tl">解释时间</td>
<td class="tr"><?php echo timetodate($comments[$k]['seller_rtime'], 6);?></td>
</tr>
<?php } ?>
<?php } else { ?>
<tr>
<td class="tl">卖家评论</td>
<td class="tr">暂未评论</td>
</tr>
<?php } ?>
<?php } } ?>
</table>
<script type="text/javascript">
function check() {
if(Dd('content').value.length < 2) {
alert('解释内容不能少于2字');
return false;
}
if(Dd('content').value.length > 500) {
alert('解释内容不能超过500字');
return false;
}
return confirm('您确认提交此解释吗？提交后解释内容将不可更改');
}
function S() {
Inner('chars', Dd('content').value.length);
}
function E(oid) {
$('#explain').hide();
$("html, body").animate({scrollTop:$('#explain').offset().top}, 200);
$('#E0').html($('#E0_'+oid).html());
$('#E1').html($('#E1_'+oid).html());
$('#oid').val(oid);
$('#explain').slideDown(300);
}
</script>
<script type="text/javascript">s('trade');m('action');</script>
<?php } ?>
<?php } else if($action == 'express') { ?>
<div class="tt">
<form action="?">
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<?php echo $fields_select;?>&nbsp;
<input type="text" size="30" name="kw" value="<?php echo $kw;?>" title="关键词"/>&nbsp;
<?php echo $status_select;?>&nbsp;
<input type="submit" value=" 搜 索 " class="btn"/>&nbsp;
<input type="button" value=" 重 置 " class="btn" onclick="Go('?action=<?php echo $action;?>');"/><br/>
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
<td title="快递追踪"><a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=express" class="t"><?php echo $v['send_no'];?></a></td>
<td><?php echo $v['dstatus'];?></td>
<td><?php echo $v['addtime'];?></td>
<td><?php echo $v['updatetime'];?></td>
<td><a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=detail" class="t">查看</a></td>
</tr>
<?php } } ?>
</table>
</div>
<div class="pages"><?php echo $pages;?></div>
<script type="text/javascript">s('trade');m('action_express');</script>
<?php } else if($action == 'muti') { ?>
<div class="tt">
<form action="?">
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<?php echo $fields_select;?>&nbsp;
<input type="text" size="20" name="kw" value="<?php echo $kw;?>" title="关键词"/>&nbsp;
<?php echo dcalendar('fromdate', $fromdate);?> 至 <?php echo dcalendar('todate', $todate);?>&nbsp;
买家：<input type="text" size="20" name="buyer" value="<?php echo $buyer;?>"/>&nbsp;
<input type="submit" value=" 筛 选 " class="btn"/>&nbsp;
<input type="button" value=" 重 置 " class="btn" onclick="Go('?action=<?php echo $action;?>');"/>
</form>
</div>
<form method="post" action="?" onsubmit="return check();" id="dform">
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<table cellpadding="10" cellspacing="1" class="tb" style="border-top:#E8E8E8 1px solid;">
<tr>
<td class="tl">快递类型</td>
<td class="tr f_gray">
<select name="send_type" id="send_type">
<option value="">请选择</option>
<?php if(is_array($send_types)) { foreach($send_types as $v) { ?>
<option value="<?php echo $v;?>"><?php echo $v;?></option>
<?php } } ?>
</select>
<?php if($send_type) { ?>
&nbsp;&nbsp;
上次使用 <a href="javascript:" onclick="javascript:$('#send_type').val('<?php echo $send_type;?>');" class="t"><?php echo $send_type;?></a>
<?php } ?>
</td>
</tr>
</table>
<div class="ls">
<table cellpadding="10" cellspacing="0" class="tb">
<tr>
<th width="20"><input type="checkbox" onclick="checkall(this.form);"/></th>
<th width="100">图片</th>
<th>商品</th>
<th width="100">单价</th>
<th width="100">数量</th>
<th width="150">订单金额</th>
<th width="150">下单时间</th>
<th width="30">订单</th>
<th width="30">打印</th>
<th width="30">移除</th>
</tr>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<tr align="center">
<td><input type="checkbox" name="itemid[]" value="<?php echo $v['itemid'];?>" checked id="check_<?php echo $v['itemid'];?>"/></td>
<td><a href="javascript:_preview('<?php echo $v['thumb'];?>');"><img src="<?php if($v['thumb']) { ?><?php echo $v['thumb'];?><?php } else { ?><?php echo DT_SKIN;?>image/nopic60.gif<?php } ?>" width="60" height="60" onerror="this.src=errimg;" style="margin:10px;"/></a></td>
<td align="left" valign="top" class="f_gray lh18"><a href="<?php echo $v['linkurl'];?>" target="_blank" class="t"><?php echo $v['title'];?></a><br/><?php echo $v['par'];?><?php if($v['note']) { ?>备注：<?php echo $v['note'];?><?php } ?>
</td>
<td><?php echo $v['price'];?></td>
<td><?php echo $v['number'];?></td>
<td class="f_red"><?php echo $DT['money_sign'];?><?php echo $v['money'];?></td>
<td><?php echo $v['addtime'];?></td>
<td><a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=detail" target="_blank" class="t">详情</a>
<td><a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=print" target="_blank" class="t">打印</a>
<td><a href="javascript:;" onclick="$('[data-<?php echo $v['itemid'];?>]').hide(300, function(){$(this).remove();});" class="t">移除</a>
</tr>
<?php if(isset($tags[$v['itemid']])) { ?>
<?php if(is_array($tags[$v['itemid']])) { foreach($tags[$v['itemid']] as $i => $t) { ?>
<tr align="center">
<td></td>
<td><a href="javascript:_preview('<?php echo $t['thumb'];?>');"><img src="<?php if($t['thumb']) { ?><?php echo $t['thumb'];?><?php } else { ?><?php echo DT_SKIN;?>image/nopic60.gif<?php } ?>" width="60" height="60" onerror="this.src=errimg;"/></a></td>
<td align="left" valign="top" class="f_gray lh18"><a href="<?php echo $t['linkurl'];?>" target="_blank" class="t"><?php echo $t['title'];?></a><br/><?php echo $t['par'];?><?php if($t['note']) { ?>备注：<?php echo $t['note'];?><?php } ?></td>
<td><?php echo $t['price'];?></td>
<td><?php echo $t['number'];?></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<?php } } ?>
<?php } ?>
<tr align="center" bgcolor="#F1F1F1">
<td></td>
<td title="订单号码"><?php echo $v['itemid'];?></td>
<td title="收货地址" align="left"><?php echo $v['buyer_address'];?></td>
<td title="邮编"><?php echo $v['buyer_postcode'];?></td>
<td title="姓名"><?php echo $v['buyer_name'];?></td>
<td title="手机号"><?php echo $v['buyer_mobile'];?></td>
<td align="left" colspan="4"><input type="text" size="20" name="send_nos[<?php echo $v['itemid'];?>]" placeholder="快递单号："/></td>
</tr>
<?php } } ?>
</table>
</div>
<table cellpadding="10" cellspacing="1" class="tb">
<tr>
<td class="tl">发货时间</td>
<td class="tr f_gray"><?php echo dcalendar('send_time', $send_time);?></td>
</tr>
<?php if($_userid && $DT['sms']) { ?>
<tr>
<td class="tl"></td>
<td class="tr"><input type="checkbox" name="sendsms" value="1"/> 短信通知买家已发货 (<a href="sms.php" target="_blank" class="t">我的可用短信 <strong class="f_blue"><?php echo $_sms;?></strong> 条</a>)</td>
</tr>
<?php } ?>
<tr>
<td class="tl"> </td>
<td class="tr">
<input type="submit" name="submit" value=" 批量发货 " class="btn_g"/>
</td>
</tr>
</table>
</form>
<script type="text/javascript">
function check() {
return confirm('您确认货物已经发出，并且以上信息填写无误吗？\n\n此操作将不可撤销');
}
</script>
<script type="text/javascript">s('trade');m('action_muti');</script>
<?php } else { ?>
<div class="tt">
<form action="?">
<?php echo $fields_select;?>&nbsp;
<input type="text" size="10" name="kw" value="<?php echo $kw;?>" title="关键词"/>&nbsp;
<?php echo $status_select;?>&nbsp;
<?php echo dcalendar('fromdate', $fromdate);?> 至 <?php echo dcalendar('todate', $todate);?>&nbsp;
<input type="submit" value=" 搜 索 " class="btn"/>&nbsp;
<input type="button" value=" 重 置 " class="btn" onclick="Go('?action=index');"/><br/>
<div class="b10"></div>
<div>
单号：<input type="text" size="10" name="itemid" value="<?php echo $itemid;?>"/>&nbsp;
商品ID：<input type="text" size="10" name="mallid" value="<?php echo $mallid;?>"/>&nbsp;
买家：<input type="text" size="20" name="buyer" value="<?php echo $buyer;?>"/>&nbsp;
<input type="checkbox" name="cod" value="1"<?php if($cod) { ?> checked<?php } ?>/>货到付款&nbsp;
</div>
</form>
</div>
<div class="nav">
<table cellpadding="0" cellspacing="0">
<tr>
<td class="<?php if(!in_array($nav, array(0,1,2,3,4,5,6))) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?action=index">全部订单</a></td>
<td class="<?php if($nav==0) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?nav=0">待确认 <span>(<?php echo $db->count($table, "seller='$_username' AND status=0");?>)</span></a></td>
<td class="<?php if($nav==1) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?nav=1">待付款 <span>(<?php echo $db->count($table, "seller='$_username' AND status=1");?>)</span></a></td>
<td class="<?php if($nav==2) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?nav=2">待发货 <span>(<?php echo $db->count($table, "seller='$_username' AND status=2");?>)</span></a></td>
<td class="<?php if($nav==3) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?nav=3">待收货 <span>(<?php echo $db->count($table, "seller='$_username' AND status=3");?>)</span></a></td>
<td class="<?php if($nav==5) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?nav=5">待退款 <span>(<?php echo $db->count($table, "seller='$_username' AND status=5");?>)</span></a></td>
<td class="<?php if($nav==6) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?nav=6">已退款 <span>(<?php echo $db->count($table, "seller='$_username' AND status=6");?>)</span></a></td>
<td class="<?php if($nav==4) { ?>nav_2<?php } else { ?>nav_1<?php } ?>"><a href="?nav=4">待评价 <span>(<?php echo $db->count($table, "seller='$_username' AND status=4 AND buyer_star=0");?>)</span></a></td>
</tr>
</table>
</div>
<div class="bd">
<table cellpadding="10" cellspacing="0" class="tb">
<tr>
<th>商品信息</th>
<th width="120">单价</th>
<th width="60">数量</th>
<th width="120">订单金额</th>
<th width="100">买家</th>
<th width="120">订单状态</th>
</tr>
</table>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<table cellpadding="10" cellspacing="0" class="tb">
<tr bgcolor="#F5F5F5">
<td colspan="7" class="f_gray">
<span class="f_r">
<?php if($v['status'] == 0) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=edit_price&confirm=1">确认订单</a> | 
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=edit_price">修改订单</a> | 
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=close" onclick="return confirm('确实要关闭此交易吗？此操作将不可撤销');">关闭交易</a> | 
<?php } else if($v['status'] == 1) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=edit_price">修改订单</a> | 
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=close" onclick="return confirm('确实要关闭此交易吗？此操作将不可撤销');">关闭交易</a> | 
<?php } else if($v['status'] == 2) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=send_goods">确认发货</a> | 
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=print" target="_blank">打印订单</a> | 
<?php } else if($v['status'] == 3) { ?>
<?php if($v['lefttime']) { ?>
<span class="f_blue"><img src="<?php echo DT_STATIC;?>file/image/clock.gif" width="12" height="12"/> 距买家处理订单还剩<?php echo $v['lefttime'];?></span>&nbsp;
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=add_time">延长时间</a> | 
<?php } else { ?>
<span class="f_blue">买家处理订单超时</span>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=get_pay">直接收款</a> | 
<?php } ?>
<?php if($v['send_type'] && $v['send_no']) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=express">快递追踪</a> | 
<?php } ?>
<?php } else if($v['status'] == 4) { ?>
<?php if($MODULE[$v['mid']]['module'] == 'mall') { ?>
<?php if($v['buyer_star']) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=comment_detail">评价详情</a> | 
<?php } else { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=comment">评价</a> | 
<?php } ?>
<?php } ?>
<?php } else if($v['status'] == 5) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=refund_agree">同意退款</a> | 
<?php } else if($v['status'] == 7) { ?>
<?php if($v['send_time']) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=cod_success" onclick="return confirm('您确定已经收到货款，交易完成吗？此操作将不可撤销');">确认完成</a> | 
<?php } else { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=send_goods">确认发货</a> | 
<?php } ?>
<?php } else if($v['status'] == 8) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=close" onclick="return confirm('确实要删除此订单吗？此操作将不可撤销');">删除订单</a> | 
<?php } ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=detail">订单详情</a>&nbsp;
</span>
<span class="c_p" onclick="Go('?itemid=<?php echo $v['itemid'];?>&action=update&step=detail');">&nbsp; <?php echo $v['addtime'];?> &nbsp; 订单号：<?php echo $v['itemid'];?><span>
</td>
</tr>
<tr align="center">
<td width="70"><a href="javascript:_preview('<?php echo $v['thumb'];?>');"><img src="<?php if($v['thumb']) { ?><?php echo $v['thumb'];?><?php } else { ?><?php echo DT_SKIN;?>image/nopic60.gif<?php } ?>" width="60" height="60" onerror="this.src=errimg;"/></a></td>
<td align="left" valign="top" class="f_gray lh18"><a href="<?php echo $v['linkurl'];?>" target="_blank" class="t"><?php echo $v['title'];?></a><br/><?php echo $v['par'];?></td>
<td width="120"><?php echo $v['price'];?></td>
<td width="60"><?php echo $v['number'];?></td>
<td width="120"><?php echo $DT['money_sign'];?><?php echo $v['money'];?></td>
<td width="100"><div style="margin-bottom:15px;"><a href="<?php echo userurl($v['buyer'], 'file=contact');?>" target="_blank"><?php echo $v['buyer'];?></a></div><?php if($DT['im_web']) { ?><?php echo im_web($v['buyer'].'&mid=16&itemid='.$v['mallid']);?> <?php } ?><a href="message.php?action=send&touser=<?php echo $v['buyer'];?>"><img src="image/ico_message.gif" title="发送站内信" align="absmiddle"/></a></td>
<td width="120">
<?php echo $v['dstatus'];?>
<?php if($v['status'] == 0) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=edit_price&confirm=1"><span class="trade_step">确认</span></a>
<?php } else if($v['status'] == 2) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=send_goods"><span class="trade_step">发货</span></a>
<?php } else if($v['status'] == 4) { ?>
<?php if($MODULE[$v['mid']]['module'] == 'mall' && !$v['buyer_star']) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=comment"><span class="trade_step">评价</span></a>
<?php } ?>
<?php } else if($v['status'] == 5) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=refund_agree"><span class="trade_step">退款</span></a>
<?php } else if($v['status'] == 10) { ?>
<?php if($v['send_time']) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=cod_success" onclick="return confirm('您确定已经收到货款，交易完成吗？此操作将不可撤销');"><span class="trade_step">完成</span></a>
<?php } else { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=send_goods"><span class="trade_step">发货</span></a>
<?php } ?>
<?php } ?>
</td>
</tr>
<?php if(isset($tags[$v['itemid']])) { ?>
<?php if(is_array($tags[$v['itemid']])) { foreach($tags[$v['itemid']] as $i => $t) { ?>
<tr align="center">
<td><a href="javascript:_preview('<?php echo $t['thumb'];?>');"><img src="<?php if($t['thumb']) { ?><?php echo $t['thumb'];?><?php } else { ?><?php echo DT_SKIN;?>image/nopic60.gif<?php } ?>" width="60" height="60" onerror="this.src=errimg;"/></a></td>
<td align="left" valign="top" class="f_gray lh18"><a href="<?php echo $t['linkurl'];?>" target="_blank" class="t"><?php echo $t['title'];?></a><br/><?php echo $t['par'];?><?php if($t['note']) { ?>备注：<?php echo $t['note'];?><?php } ?></td>
<td><?php echo $t['price'];?></td>
<td><?php echo $t['number'];?></td>
<td></td>
<td></td>
<td></td>
</tr>
<?php } } ?>
<?php } ?>
</table>
<?php } } ?>
</div>
<div class="pages"><?php echo $pages;?></div>
<script type="text/javascript">s('trade');m('action');</script>
<?php } ?>
<?php include template('footer', 'member');?>