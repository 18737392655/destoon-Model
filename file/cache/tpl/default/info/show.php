<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header', 'common');?>
<script type="text/javascript">var module_id= <?php echo $moduleid;?>,item_id=<?php echo $itemid;?>,content_id='content',img_max_width=<?php echo $MOD['max_width'];?>;</script>
<div class="m">
<div class="nav"><div><img src="<?php echo DT_SKIN;?>image/ico-like.png" class="share" title="加入收藏" onclick="SendFav(<?php echo $moduleid;?>, <?php echo $itemid;?>);"/><img src="<?php echo DT_SKIN;?>image/ico-share.png" class="share" title="分享好友" onclick="Dshare(<?php echo $moduleid;?>, <?php echo $itemid;?>);"/></div><a href="<?php echo $MODULE['1']['linkurl'];?>">首页</a> <i>&gt;</i> <a href="<?php echo $MOD['linkurl'];?>"><?php echo $MOD['name'];?></a> <i>&gt;</i> <?php echo cat_pos($CAT, ' <i>&gt;</i> ');?></div>
<div class="b20 bd-t"></div>
</div>
<div class="m m3">
<div class="m3l">
<h1 class="title" id="title"><?php echo $title;?></h1>
<div class="info_main">
<table width="100%">
<tr>
<td width="330" valign="top">
<div id="mid_pos"></div>
<div id="mid_div" onmouseover="SAlbum();" onmouseout="HAlbum();" onclick="PAlbum(Dd('mid_pic'));">
<img src="<?php echo $albums['0'];?>" width="320" height="240" id="mid_pic"/><span id="zoomer"></span>
</div>
<div class="b10"></div>
<div>
<?php if(is_array($thumbs)) { foreach($thumbs as $k => $v) { ?><img src="<?php echo $v;?>" width="60" height="60" onmouseover="if(this.src.indexOf('nopic60.gif')==-1)Album(<?php echo $k;?>, '<?php echo $albums[$k];?>');" class="<?php if($k) { ?>ab_im<?php } else { ?>ab_on<?php } ?>" id="t_<?php echo $k;?>"/><?php } } ?>
</div>
<div class="b10"></div>
<div onclick="PAlbum(Dd('mid_pic'));" class="c_b t_c c_p"><img src="<?php echo DT_SKIN;?>image/ico_zoom.gif" width="16" height="16" align="absmiddle"/> 点击图片查看原图</div>
</td>
<td width="16"> </td>
<td valign="top">
<div id="big_div" style="display:none;"><img src="" id="big_pic"/></div>
<ul>
<?php if($n1 && $v1) { ?><li><strong><?php echo $n1;?></strong>：<?php echo $v1;?></li><?php } ?>
<?php if($n2 && $v2) { ?><li><strong><?php echo $n2;?></strong>：<?php echo $v2;?></li><?php } ?>
<?php if($n3 && $v3) { ?><li><strong><?php echo $n3;?></strong>：<?php echo $v3;?></li><?php } ?>
<li><strong>发布日期</strong>：<?php echo $editdate;?></li>
<li><strong>有效期至</strong>：<?php if($todate) { ?><?php echo $todate;?><?php } else { ?>长期有效<?php } ?><?php if($expired) { ?> <span class="f_red">[已过期]</span><?php } ?></li>
<li><strong><?php echo $MOD['name'];?>区域</strong>：<?php echo area_pos($areaid, '');?></li>
<?php if($MOD['hits']) { ?><li><strong>浏览次数</strong>：<span id="hits"><?php echo $hits;?></span></li><?php } ?>
<?php if($MOD['show_message'] && $username && !$expired) { ?>
<li><img src="<?php echo DT_SKIN;?>image/btn_message.gif" alt="留言咨询" class="c_p" onclick="Go('<?php echo $MOD['linkurl'];?><?php echo rewrite('message.php?itemid='.$itemid);?>');"/></li>
<?php } ?>
</ul>
</td>
</tr>
</table>
</div>
<?php if($content) { ?>
<div class="head-txt"><strong>详细说明</strong></div>
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
<?php if($MOD['page_srelate']) { ?>
<?php if($username) { ?>
<div class="head-sub"><strong>该企业最新<?php echo $MOD['name'];?></strong></div>
<div class="list-txt"><?php echo tag("moduleid=$moduleid&condition=status=3 and username='$username'&pagesize=".$MOD['page_srelate']."&order=addtime desc", -2);?></div>
<?php } else { ?>
<div class="head-sub"><strong>同类<?php echo $MOD['name'];?></strong></div>
<div class="list-txt"><?php echo tag("moduleid=$moduleid&condition=status=3&catid=$catid&areaid=$cityid&pagesize=".$MOD['page_srelate']."&order=addtime desc");?></div>
<?php } ?>
<?php } ?>
</div>
<div class="c_b"></div>
</div>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/album.js"></script>
<?php if($content) { ?><script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/content.js"></script><?php } ?>
<?php include template('footer', 'common');?>