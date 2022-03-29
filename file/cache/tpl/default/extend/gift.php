<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header', 'common');?>
<div class="m m1">
<div class="m1l">
<?php if($action == 'my') { ?>
<table cellpadding="16" cellspacing="0" class="tb">
<tr>
<th>订单编号</th>
<th>礼品</th>
<th><?php echo $DT['credit_name'];?></th>
<th>下单时间</th>
<th>状态</th>
</tr>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<tr align="center">
<td><?php echo $v['oid'];?></td>
<td><a href="<?php echo $v['linkurl'];?>" target="_blank"><?php echo $v['title'];?></a></td>
<td><?php echo $v['credit'];?></td>
<td><?php echo $v['adddate'];?></td>
<td><?php echo $v['status'];?></td>
</tr>
<?php } } ?>
</table>
<?php if($pages) { ?><div class="pages"><?php echo $pages;?></div><?php } ?>
<script type="text/javascript">$(function(){$('#type_my').attr('class', 'side_on');});</script>
<?php } else { ?>
<?php if($itemid) { ?>
<?php if(isset($success)) { ?>
<div class="submit_success">
恭喜您，礼品兑换成功！请检查您的联系方式是否正确，以便工作人员与您取得联系&nbsp;&nbsp;
<a href="<?php echo $MODULE['2']['linkurl'];?>edit.php" target="_blank" class="b">更新资料</a>&nbsp;&nbsp;
<a href="<?php echo $url;?>index.php?action=my" class="b">查看订单</a>
</div>
<?php } ?>
<h1 class="title bd-b"><?php echo $title;?></h1>
<div class="g_info">
<table cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="180" valign="top">
<img src="<?php echo $middle;?>" width="160" alt="<?php echo $title;?>" class="g_img c_p" alt="<?php echo $title;?>" title="点击查看大图" onclick="View('<?php echo $thumb;?>');"/>
</td>
<td valign="top" width="360">
<ul>
<li>会员权限：<?php if($gname) { ?><?php echo $gname;?><?php } else { ?>全部<?php } ?></li>
<li>浏览次数：<?php echo $hits;?></li>
<li>当前状态：<?php if($left) { ?><img src="<?php echo DT_STATIC;?>file/image/process_<?php echo get_process($fromtime, $totime);?>.gif" align="absmiddle" alt="有效期：<?php echo $fromdate;?> 至 <?php echo $todate;?>"/><?php } else { ?><span class="f_red">已结束</span><?php } ?></li>
</ul>
</td>
<td valign="top">
<ul>
<li>所需<?php echo $DT['credit_name'];?>：<strong class="f_red"><?php echo $credit;?></strong></li>
<li>剩余名额：<strong><?php echo $left;?></strong></li>
<li><a href="javascript:;" onclick="Order();" class="b px14">立即兑换</a></li>
</ul>
</td>
</tr>
</table>
</div>
<?php if($content) { ?><div class="content"><?php echo $content;?></div><?php } else { ?>&nbsp;<?php } ?>
<script type="text/javascript">
function Order() {
<?php if($process == 1) { ?>return confirm('抱歉，此兑换还没有开始');<?php } ?>
<?php if($process == 2) { ?>if(confirm('确定要兑换吗？系统将扣除您<?php echo $credit;?><?php echo $DT['credit_name'];?>')) Go('<?php echo $url;?>index.php?action=order&itemid=<?php echo $itemid;?>')<?php } ?>
<?php if($process == 3) { ?>return confirm('抱歉，此兑换已经过期');<?php } ?>
<?php if($process == 4) { ?>return confirm('抱歉，此兑换名额用尽，已经结束');<?php } ?>
}
</script>
<?php } else { ?>
<table cellpadding="16" cellspacing="0" class="tb">
<tr>
<th width="120">图片</th>
<th>礼品名称</th>
<th width="80"><?php echo $DT['credit_name'];?></th>
<th width="80">库存</th>
<th width="80">立即兑换</th>
</tr>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<tr align="center">
<td><a href="<?php echo $v['linkurl'];?>"><img src="<?php echo $v['thumb'];?>" width="100" alt="<?php echo $v['alt'];?>"/></a></td>
<td align="left" class="px14"><a href="<?php echo $v['linkurl'];?>"><?php echo $v['title'];?></a></td>
<td class="f_price"><?php echo $v['credit'];?></td>
<td><?php echo $v['left'];?></td>
<td><a href="<?php echo $v['linkurl'];?>" class="b">立即兑换</a></td>
</tr>
<?php } } ?>
</table>
<?php if($pages) { ?><div class="pages"><?php echo $pages;?></div><?php } ?>
<?php } ?>
<script type="text/javascript">$(function(){$('#type_<?php echo $typeid;?>').attr('class', 'side_on');});</script>
<?php } ?>
</div>
<div class="m1r side">
<ul>
<li class="side_li" id="type_0"><a href="<?php echo $url;?>">积分换礼</a></li>
<li class="side_li" id="type_my"><a href="<?php echo $url;?>index.php?action=my">我的订单</a></li>
<?php if(is_array($_TP['0'])) { foreach($_TP['0'] as $v0) { ?>
<li class="side_li" id="type_<?php echo $v0['typeid'];?>"><a href="<?php echo $url;?><?php echo list_url($v0['typeid']);?>"><?php echo $v0['typename'];?></a></li>
<?php if(isset($_TP['1'][$v0['typeid']])) { ?>
<?php if(is_array($_TP['1'][$v0['typeid']])) { foreach($_TP['1'][$v0['typeid']] as $v1) { ?>
<li class="side_li" id="type_<?php echo $v1['typeid'];?>"><a href="<?php echo $url;?><?php echo list_url($v1['typeid']);?>">&nbsp;|-- <?php echo $v1['typename'];?></a></li>
<?php } } ?>
<?php } ?>
<?php } } ?>
</ul>
<form action="index.php"><input type="search" name="kw" value="<?php echo $kw;?>" ondblclick="if(this.value){Go('./');}" placeholder="搜索" title="输入关键词，按回车搜索"/></form>
</div>
<div class="c_b"></div>
</div>
<?php include template('footer', 'common');?>