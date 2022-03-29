<?php defined('IN_DESTOON') or exit('Access Denied');?><div class="m-head catname borderno clearfix wrap">
<div class="m-txt">
<h2 class="fl">按类目查找</h2>
<div class="hotcity fl">
<ul>
<?php
$tags = [];
$result = $db->query("select * from ".$DT_PRE."category where level in(2,3) and moduleid=16 order by catid asc limit 30");
while($r = $db->fetch_array($result)) {
$tags[] = $r;
}
?>
<?php if(is_array($tags)) { foreach($tags as $key => $val) { ?>
<li><a href="/<?php echo $MODULE['16']['module'];?>/<?php if($val['level'] == 2) { ?>comlist<?php } else { ?>goodlist<?php } ?>.php?catid=<?php echo $val['catid'];?>" title="<?php echo $val['catname'];?>" target="_blank"><?php echo $val['catname'];?></a></li>
<?php } } ?>
</ul>
</div>
</div>
</div>
<script>
jQuery(".catname").slide({
mainCell: ".hotcity ul",
effect: "leftLoop",
autoPlay: true,
vis: 9,
scroll: 1
});
</script>