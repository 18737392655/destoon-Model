<?php defined('IN_DESTOON') or exit('Access Denied');?><div class="links_tab">
<div class="tab-tit">
<a onclick="msg(0,'友链申请功能暂未开放!')" target="_blank" rel="nofollow"
class="zii">申请链接</a>
<div class="za">
<?php $tags=tag("table=type&condition=item='link'&order=typeid asc&template=null");?>
<?php if(is_array($tags)) { foreach($tags as $key => $val) { ?>
<li onmouseover="setTab('ous',<?php echo $key+1;?>,3)" id="ous<?php echo $key+1;?>" class="<?php if($key==0) { ?>hover<?php } ?>">
<?php if($key==0) { ?>
<a href="" rel="nofollow" target="_blank"><?php echo $val['typename'];?></a>
<?php } else { ?>
<?php echo $val['typename'];?>
<?php } ?>
</li>
<?php } } ?>
</div>
</div>
<div class="tab-show">
<?php $tags1=tag("table=type&condition=item='link'&order=typeid asc&template=null");?>
<?php if(is_array($tags1)) { foreach($tags1 as $key1 => $val1) { ?>
<div class="tab-cont-1 fl-clr" id="con_ous_<?php echo $key1+1;?>" style="display:<?php if($key1!=0) { ?>none<?php } else { ?>block<?php } ?>;">
<?php $tags2=tag("table=link&condition=typeid='".$val1['typeid']."'&order=typeid desc&template=null");?>
<?php if(is_array($tags2)) { foreach($tags2 as $key2 => $val2) { ?>
<a href="<?php echo $val2['linkurl'];?>" target="_blank" title="<?php echo $val2['title'];?>"><?php echo $val2['title'];?></a>
<?php if($key2==count($tags2)) { ?><span>|</span><?php } ?>
<?php } } ?>
</div>
<?php } } ?>
</div>
</div>