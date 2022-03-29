<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header', 'common');?>
<script type="text/javascript">var module_id= <?php echo $moduleid;?>,item_id=<?php echo $itemid;?>,content_id='content',img_max_width=<?php echo $MOD['max_width'];?>;</script>
<div class="m">
<div class="nav"><div><img src="<?php echo DT_SKIN;?>image/ico-like.png" class="share" title="加入收藏" onclick="SendFav(<?php echo $moduleid;?>, <?php echo $itemid;?>);"/><img src="<?php echo DT_SKIN;?>image/ico-share.png" class="share" title="分享好友" onclick="Dshare(<?php echo $moduleid;?>, <?php echo $itemid;?>);"/></div><a href="<?php echo $MODULE['1']['linkurl'];?>">首页</a> <i>&gt;</i> <a href="<?php echo $MOD['linkurl'];?>"><?php echo $MOD['name'];?></a> <i>&gt;</i> <?php echo cat_pos($CAT, ' <i>&gt;</i> ');?></div>
<div class="b20 bd-t"></div>
</div>
<div class="m m3">
<div class="m3l">
<h1 class="title" id="title"><?php echo $title;?></h1>
<div class="brand_info">
<div class="f_r"><img src="<?php echo $thumb;?>" width="<?php echo $MOD['thumb_width'];?>" height="<?php echo $MOD['thumb_height'];?>" alt="<?php echo $title;?>" class="brand_logo"/>
<center><img src="<?php echo DT_SKIN;?>image/btn_brand.gif" alt="我要加盟" class="c_p" onclick="Go('<?php echo $MOD['linkurl'];?><?php echo rewrite('message.php?itemid='.$itemid);?>');"/></center>
<?php if(isset($MODULE['5'])) { ?>
<center><a href="<?php echo $MODULE['5']['linkurl'];?><?php echo rewrite('search.php?fields=5&kw='.urlencode($title));?>" class="b" target="_blank">查看品牌产品&raquo;</a></center>
<?php } ?>
<?php if(isset($MODULE['16'])) { ?>
<center><a href="<?php echo $MODULE['16']['linkurl'];?><?php echo rewrite('search.php?fields=4&kw='.urlencode($title));?>" class="b" target="_blank">购买品牌商品&raquo;</a></center>
<?php } ?>
</div>
<div>
<ul>
<li><strong>品牌名称</strong>：<?php echo $title;?></li>
<li><strong>公司名称</strong>：<?php echo $company;?></li>
<li><strong>官方主页</strong>：<?php if($homepage) { ?><a href="<?php echo $homepage;?>" class="b" target="_blank"><?php echo $homepage;?></a><?php } else { ?>暂无<?php } ?></li>
<li><strong>所在地区</strong>：<?php echo area_pos($areaid, '');?></li>
<?php if($MOD['hits']) { ?><li><strong>浏览次数</strong>：<span id="hits"><?php echo $hits;?></span></li><?php } ?>
<li><strong>更新日期</strong>：<?php echo $editdate;?></li>
</ul>
</div>
</div>
<div class="c_b"></div>
<?php if($content) { ?>
<div class="head-txt"><strong><?php echo $MOD['name'];?>介绍</strong></div>
<div class="content" id="content"><?php echo $content;?></div>
<?php } ?>
<?php if($CP) { ?><?php include template('property_show', 'chip');?><?php } ?>
<?php if($MOD['fee_award']) { ?>
<div class="award"><div onclick="Go('<?php echo $MODULE['2']['linkurl'];?>award.php?mid=<?php echo $moduleid;?>&itemid=<?php echo $itemid;?>');">打赏</div></div>
<?php } ?>
<?php include template('comment', 'chip');?>
</div>
<div class="m3r">
<div class="contact_head">联系方式</div>
<div class="contact_body" id="contact"><?php include template('contact', 'chip');?></div>
<?php if($username) { ?>
<div class="head-sub"><strong>该企业其他<?php echo $MOD['name'];?></strong></div>
<div class="list-thumb"><?php echo tag("moduleid=$moduleid&condition=status=3 and username='$username'&pagesize=10&order=addtime desc&width=120&height=40&cols=2&template=thumb-brand", -2);?></div>
<?php } else { ?>
<div class="head-sub"><strong>同类<?php echo $MOD['name'];?></strong></div>
<div class="list-thumb"><?php echo tag("moduleid=$moduleid&condition=status=3&catid=$catid&areaid=$cityid&pagesize=10&order=addtime desc&width=120&height=40&cols=2&template=thumb-brand", -2);?></div>
<?php } ?>
</div>
<div class="c_b"></div>
</div>
<?php if($content) { ?><script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/content.js"></script><?php } ?>
<?php include template('footer', 'common');?>