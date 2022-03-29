<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header', 'member');?>
<?php if($action=='add' && $itemid==1) { ?><div class="warn">尊敬的用户，为了保证信息的真实有效，请先<strong>缴纳保证金</strong>，缴纳之后即可发布信息</div><?php } ?>
<div class="menu">
<table cellpadding="0" cellspacing="0">
<tr>
<td class="tab" id="action_add"><a href="?action=add"><span>增加资金</span></a></td>
<td class="tab" id="action"><a href="?action=index"><span>保证金记录</span></a></td>
</tr>
</table>
</div>
<?php if($action == 'add') { ?>
<form method="post" action="?" onsubmit="return check();">
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<input type="hidden" name="num" id="num" value="1"/>
<table cellpadding="10" cellspacing="1" class="tb">
<tr>
<td class="tl"><span class="f_red">*</span> 增资金额</td>
<td class="tr"><img src="<?php echo DT_SKIN;?>image/arrow_l.gif" width="16" height="8" alt="" title="减少" class="c_p" onclick="alter('-')"/><input type="text" value="<?php echo $amount;?>" id="amount" size="10"  style="text-align:center;font-size:14px;" class="f_price" readonly/> <img src="<?php echo DT_SKIN;?>image/arrow_r.gif" width="16" height="8" alt="" title="增加" class="c_p" onclick="alter('+')"/></td>
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
<input type="submit" name="submit" value=" 确 定 " class="btn_g"/>
</td>
</tr>
</table>
</form>
<script type="text/javascript">s('deposit');m('action_add');</script>
<?php } else { ?>
<form action="?">
<div class="tt">
日期 <?php echo dcalendar('fromdate', $fromdate);?> 至 <?php echo dcalendar('todate', $todate);?>
&nbsp;
<input type="submit" value=" 搜 索 " class="btn"/>&nbsp;
<input type="button" value=" 重 置 " class="btn" onclick="Go('?action=index');"/>
</div>
</form>
<div class="bd">
<table cellpadding="10" cellspacing="0" class="tb">
<tr>
<th>流水号</th>
<th>金额</th>
<th width="150">日期</th>
<th>操作原因</th>
</tr>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<tr align="center">
<td height="35"><?php echo $v['itemid'];?></td>
<td><?php echo $v['amount'];?></td>
<td><?php echo $v['addtime'];?></td>
<td><?php echo $v['reason'];?></td>
</tr>
<?php } } ?>
<tr align="center">
<td height="35"><strong>小计</strong></td>
<td class="f_red"><?php echo $amount;?></td>
<td colspan="3"></td>
</tr>
</table>
</div>
<div class="pages"><?php echo $pages;?></div>
<script type="text/javascript">s('deposit');m('action');</script>
<?php } ?>
<?php if($action == 'add') { ?>
<script type="text/javascript">
function alter(t) {
var num = parseInt(Dd('num').value);
if(t == '+') {
num++;
} else {
if(num == 1) return;
num--;
}
Dd('amount').value =  parseFloat(num*<?php echo $MOD['deposit'];?>);
Dd('num').value = num;
}
function check() {
var money = $('#amount').val();
if(money > <?php echo $_money;?>) {
Go('charge.php?action=pay&reason=deposit|'+Dd('num').value+'&amount='+money+'&bank='+$('#bank').val());
return false;
}
if(money > <?php echo $DT['quick_pay'];?>){
if(Dd('password').value.length < 6) {
Dmsg('请填写支付密码', 'password');
return false;
}
}
return true;
}
window.setInterval(
function() {
var money = $('#amount').val();
if(money > <?php echo $_money;?> || <?php echo $_money;?> < 0.01) {
$('#mymoney').hide();$('#paytype').show();$('#payword').hide();
} else {
$('#mymoney').show();$('#paytype').hide();if(money > <?php echo $DT['quick_pay'];?>){$('#payword').show();}
}
}, 
500);
</script>
<?php } ?>
<?php include template('footer', 'member');?>