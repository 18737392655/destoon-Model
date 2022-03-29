<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header', 'common');?>
<div class="m">
<div class="nav">
<?php if($lists) { ?><div><a href="?action=clear" onclick="return confirm('确定要清空所有浏览历史吗？');" class="b">清空</a></div><?php } ?>
<a href="<?php echo $MODULE['1']['linkurl'];?>">首页</a> <i>&gt;</i> <a href="<?php echo $MOD['linkurl'];?>"><?php echo $MOD['name'];?></a> <i>&gt;</i> 浏览历史
</div>
<div class="b20 bd-t"></div>
<?php if($lists) { ?>
<?php if(is_array($lists)) { foreach($lists as $k => $tags) { ?>
<div class="head-txt"><span><a href="?action=clear&date=<?php echo $k;?>" onclick="return confirm('确定要删除<?php echo $k;?>浏览历史吗？');" class="b">删除</a></span><strong><?php echo view_txt($k);?></strong></div>
<div class="list-view">
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>
<div>
<a href="<?php echo $t['linkurl'];?>" title="<?php echo timetodate($t['lasttime'], 5);?>" target="_blank"><img src="<?php echo $t['thumb'];?>" width="180" height="180" alt=""/></a>
<ul>
<li><a href="<?php echo $t['linkurl'];?>" title="<?php echo $t['alt'];?>" target="_blank"><?php echo $t['title'];?></a></li>
<li><a href="?action=clear&date=<?php echo $k;?>&itemid=<?php echo $t['itemid'];?>" onclick="return confirm('确定要删除本条浏览历史吗？');" class="b"><i>x</i></a><span class="f_price"><?php echo $DT['money_sign'];?><?php echo $t['price'];?></span></li>
</ul>
</div>
<?php } } ?>
</div>
<?php } } ?>
<?php if($pages) { ?><div class="pages"><?php echo $pages;?></div><?php } ?>
<?php } else { ?>
<div class="list-view-msg">您的 <span class="f_orange">浏览历史</span> 还是空的，赶快行动吧！马上去 <a href="<?php echo $MOD['linkurl'];?>" class="b">挑选商品</a></div>
<?php } ?>
</div>
<?php include template('footer', 'common');?>