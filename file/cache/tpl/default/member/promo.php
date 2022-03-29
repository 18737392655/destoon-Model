<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header', 'member');?>
<div class="menu">
<table cellpadding="0" cellspacing="0">
<tr>
<td class="tab" id="add"><a href="?action=add"><span>新增优惠</span></a></td>
<td class="tab" id="s3"><a href="?action=index"><span>优惠促销</span></a></td>
<td class="tab" id="coupon"><a href="?action=coupon"><span>领券记录</span></a></td>
</tr>
</table>
</div>
<?php if($action=='add' || $action=='edit') { ?>
<form method="post" action="?" id="dform" onsubmit="return check();">
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<input type="hidden" name="itemid" value="<?php echo $itemid;?>"/>
<input type="hidden" name="forward" value="<?php echo $forward;?>"/>
<table cellpadding="10" cellspacing="1" class="tb">
<tr>
<td class="tl"><span class="f_red">*</span> 优惠名称</td>
<td class="tr"><input name="post[title]" type="text" id="title" size="20" value="<?php echo $title;?>" /> <span class="f_gray">例如满减、店庆</span> <span id="dtitle" class="f_red"></span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 优惠金额</td>
<td class="tr"><input name="post[price]" type="text" id="price" size="20" value="<?php echo $price;?>" /> <span id="dprice" class="f_red"></span></td>
</tr>
<tr>
<td class="tl">最低消费</td>
<td class="tr"><input name="post[cost]" type="text" id="cost" size="20" value="<?php echo $cost;?>"/> <span class="f_gray">0.00代表不限制</span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 数量限制</td>
<td class="tr"><input name="post[amount]" type="text" id="amount" size="20" value="<?php echo $amount;?>"/> <span id="damount" class="f_red"></span></td>
</tr>
<tr>
<td class="tl"><span class="f_red">*</span> 有效时间</td>
<td class="tr"><?php echo dcalendar('post[fromtime]', $fromtime, '-', 1);?> 至 <?php echo dcalendar('post[totime]', $totime, '-', 1);?> <span id="dtime" class="f_red"></span></td>
</tr>
<tr>
<td class="tl">备注信息</td>
<td class="tr"><input name="post[note]" type="text" id="note" size="60" value="<?php echo $note;?>"/> <span id="dnote" class="f_red"></span></td>
</tr>
<tr>
<td class="tl">&nbsp;</td>
<td class="tr" height="50"><input type="submit" name="submit" value="<?php if($action=='add') { ?>添 加<?php } else { ?>修 改<?php } ?>" class="btn_g"/></td>
</tr>
</table>
</form>
<script type="text/javascript">s('promo');m(<?php if($action=='add') { ?>'add'<?php } else { ?>'s3'<?php } ?>);</script>
<?php } else if($action == 'coupon') { ?>
<div class="ls">
<table cellpadding="10" cellspacing="0" class="tb">
<tr>
<th>优惠名称</th>
<th>会员</th>
<th>金额</th>
<th>最低消费</th>
<th>生效时间</th>
<th>结束时间</th>
<th>领券时间</th>
<th width="60">订单</th>
<th width="60">状态</th>
</tr>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<tr align="center">
<td<?php if($v['note']) { ?> title="备注:<?php echo $v['note'];?>"<?php } ?>><?php echo $v['title'];?></td>
<td><a href="?action=<?php echo $action;?>&username=<?php echo $v['username'];?>" class="t"><?php echo $v['username'];?></a></td>
<td><?php echo $v['price'];?></td>
<td><?php echo $v['cost'];?></td>
<td class="f_gray"><?php echo timetodate($v['fromtime'], 5);?></td>
<td class="f_gray"><?php echo timetodate($v['totime'], 5);?></td>
<td class="f_gray"><?php echo timetodate($v['addtime'], 5);?></td>
<td><?php if($v['oid']) { ?><a href="trade.php?action=update&step=detail&itemid=<?php echo $v['oid'];?>" target="_blank" class="t"><?php echo $v['oid'];?></a><?php } ?></td>
<td>
<?php if($v['oid']) { ?>
<span class="f_green">已使用</span>
<?php } else if($v['fromtime'] > $DT_TIME) { ?>
<span class="f_gray">未开始</span>
<?php } else if($v['totime'] < $DT_TIME) { ?>
<span class="f_red">已过期</span>
<?php } else { ?>
<span class="f_blue">待使用</span>
<?php } ?>
</td>
</tr>
<?php } } ?>
</table>
</div>
<div class="pages"><?php echo $pages;?></div>
<script type="text/javascript">s('promo');m('coupon');</script>
<?php } else { ?>
<form method="post">
<div class="ls">
<table cellpadding="10" cellspacing="0" class="tb">
<tr>
<th width="20"><input type="checkbox" onclick="checkall(this.form);"/></th>
<th>优惠名称</th>
<th>金额</th>
<th>最低消费</th>
<th>数量限制</th>
<th>领券人数</th>
<th>生效时间</th>
<th>结束时间</th>
<th>添加时间</th>
<th width="120">领券链接</th>
<th width="40">修改</th>
<th width="40">删除</th>
</tr>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<tr align="center">
<td><input type="checkbox" name="itemid[]" value="<?php echo $v['itemid'];?>"/></td>
<td<?php if($v['note']) { ?> title="备注:<?php echo $v['note'];?>"<?php } ?>><a href="?action=coupon&itemid=<?php echo $v['itemid'];?>" class="t"><?php echo $v['title'];?></a></td>
<td><?php echo $v['price'];?></td>
<td><?php echo $v['cost'];?></td>
<td><?php echo $v['amount'];?></td>
<td><a href="?action=coupon&pid=<?php echo $v['itemid'];?>" class="t"><?php echo $v['number'];?></a></td>
<td class="f_gray"><?php echo timetodate($v['fromtime'], 5);?></td>
<td class="f_gray"><?php echo timetodate($v['totime'], 5);?></td>
<td class="f_gray"><?php echo timetodate($v['addtime'], 5);?></td>
<td><input style="width:100px;" value="<?php echo $MODULE['2']['linkurl'];?>coupon.php?itemid=<?php echo $v['itemid'];?>" onmouseover="this.select();this.title=this.value;"/></td>
<td><a href="?action=edit&itemid=<?php echo $v['itemid'];?>"><img width="16" height="16" src="image/edit.png" title="修改" alt=""/></a></td>
<td><a href="?action=delete&itemid=<?php echo $v['itemid'];?>" onclick="return confirm('确定要删除吗？此操作将不可撤销');"><img width="16" height="16" src="image/delete.png" title="删除" alt=""/></a></td>
</tr>
<?php } } ?>
</table>
</div>
<div class="btns">
<input type="submit" value=" 删除选中 " class="btn" onclick="if(confirm('确定要删除选中优惠吗？')){this.form.action='?action=delete'}else{return false;}"/>
</div>
</form>
<?php if($MG['promo_limit']) { ?>
<div class="limit">总共可加 <span class="f_b f_red"><?php echo $MG['promo_limit'];?></span> 条&nbsp;&nbsp;&nbsp;当前已加 <span class="f_b"><?php echo $limit_used;?></span> 条&nbsp;&nbsp;&nbsp;还可以加 <span class="f_b f_blue"><?php echo $limit_free;?></span> 条</div>
<?php } ?>
<div class="pages"><?php echo $pages;?></div>
<script type="text/javascript">s('promo');m('s3');</script>
<?php } ?>
<?php if($action=='add' || $action=='edit') { ?>
<script type="text/javascript">
function check() {
var f;
var l;
f = 'title';
l = Dd(f).value.length;
if(l < 2) {
Dmsg('请填写优惠名称', f);
return false;
}
f = 'price';
l = parseFloat(Dd(f).value);
if(!l || l < 0.1) {
Dmsg('请填写优惠金额', f);
return false;
}
f = 'amount';
l = parseInt(Dd(f).value);
if(!l || l < 1) {
Dmsg('请填写数量限制', f);
return false;
}
l = Dd('postfromtime').value.length;
if(l != 19) {
Dmsg('请选择开始时间', 'time');
return false;
}
l = Dd('posttotime').value.length;
if(l != 19) {
Dmsg('请选择结束时间', 'time');
return false;
}
return true;
}
</script>
<?php } ?>
<?php include template('footer', 'member');?>