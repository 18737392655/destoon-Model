<?php defined('IN_DESTOON') or exit('Access Denied');?><!doctype html>
<html>
<head>
<meta charset="<?php echo DT_CHARSET;?>"/>
<meta name="robots" content="nofollow"/>
<meta name="generator" content="DESTOON B2B - www.destoon.com"/>
<title><?php if($head_title) { ?><?php echo $head_title;?><?php echo $DT['seo_delimiter'];?><?php } ?>商务中心<?php echo $DT['seo_delimiter'];?><?php if($city_sitename) { ?><?php echo $city_sitename;?><?php } else { ?><?php echo $DT['sitename'];?><?php } ?><?php echo $DT['seo_delimiter'];?>Powered By DESTOON B2B</title>
<link rel="shortcut icon" href="<?php echo DT_STATIC;?>favicon.ico"/>
<link rel="bookmark" href="<?php echo DT_STATIC;?>favicon.ico"/>
<link rel="stylesheet" type="text/css" href="image/chat.css"/>
<?php if(!DT_DEBUG) { ?><script type="text/javascript">window.onerror= function(){return true;}</script><?php } ?>
<script type="text/javascript" src="<?php echo DT_STATIC;?>lang/<?php echo DT_LANG;?>/lang.js"></script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/config.js"></script>
<!--[if lte IE 9]><!-->
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/jquery-1.5.2.min.js"></script>
<!--<![endif]-->
<!--[if (gte IE 10)|!(IE)]><!-->
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/jquery-2.1.1.min.js"></script>
<!--<![endif]-->
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/common.js"></script>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/webuploader.min.js"></script>
<?php if($head_mobile && $EXT['mobile_goto']) { ?><script type="text/javascript">GoMobile('<?php echo $head_mobile;?>');</script><?php } ?>
</head>
<body>
<div id="msgbox" style="display:none;"></div>
<script type="text/javascript">
var chat_id = '<?php echo $chat_id;?>';
var chat_poll = <?php echo $chat_poll;?>*1000;
var chat_maxlen = <?php echo $MOD['chat_maxlen'];?>;
var chat_mintime = <?php echo $MOD['chat_mintime'];?>;
var chat_type = <?php echo $type;?>;
var chat_last = <?php echo $DT_TIME;?>;
var chat_title = document.title;
var chat_lang = {
ec1:'按Enter键发送消息，按Ctrl+Enter键换行',
ec2:'按Ctrl+Enter键发送消息，按Enter键换行',
tip:'提示：系统不长久保存您的交谈记录，关闭对话窗口将可能导致记录丢失，如果需要保存，请在交谈完毕之后点保存按钮',
last:'ok'
};
var chat_head1 = '<?php echo useravatar($_username);?>';
var chat_head0 = '<?php echo useravatar($user['username']);?>';
var chat_home1 = '<?php echo userurl($_username);?>';
var chat_home0 = '<?php echo userurl($user['username']);?>';
</script>
<table cellspacing="1" cellpadding="0" width="980" bgcolor="#CCCCCC" align="center" id="chat_main">
<tr>
<td bgcolor="#FFFFFF">
<div class="head0">
<table cellspacing="0" cellpadding="0">
<tr>
<td><?php echo $user['company'];?> - <?php echo $user['username'];?></td>
<td class="online_<?php if($online==1) { ?>1<?php } else { ?>0<?php } ?>" title="<?php if($online==1) { ?>在线<?php } else { ?>离线<?php } ?>">&nbsp;&bull;</td>
</tr>
</table>
</div>
</td>
<td bgcolor="#F0F0F0">
<div class="head1">
<table cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>联系方式</td>
<td align="right">
<?php if($user['qq'] && $DT['im_qq']) { ?><?php echo im_qq($user['qq']);?>&nbsp;<?php } ?>
<?php if($user['wx'] && $DT['im_wx']) { ?><?php echo im_wx($user['wx'], $user['username']);?>&nbsp;<?php } ?>
<?php if($user['ali'] && $DT['im_ali']) { ?><?php echo im_ali($user['ali']);?>&nbsp;<?php } ?>
<?php if($user['skype'] && $DT['im_skype']) { ?><?php echo im_skype($user['skype']);?>&nbsp;<?php } ?>
</td>
</tr>
</table>
</div>
</td>
</tr>
<tr bgcolor="#FFFFFF">
<td valign="top">
<iframe src="" name="send" id="send" style="display:none;"></iframe>
<div id="chat"></div>
<div id="font" style="display:none;">
<table cellspacing="0" cellpadding="0" width="100%">
<tr>
<td width="8" height="32"></td>
<td width="120">
<select id="font_s" onchange="font_init();">
<option value="0">大小</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="16">16</option>
<option value="18">18</option>
<option value="20">20</option>
<option value="24">24</option>
</select>&nbsp;
<select id="font_c" onchange="font_init();">
<option value="0">颜色</option>
<option value="1" style="background:#000000;">黑</option>
<option value="2" style="background:#FF0000;">红</option>
<option value="3" style="background:#0000FF;">蓝</option>
<option value="4" style="background:#008040;">绿</option>
<option value="5" style="background:#FF6600;">橙</option>
<option value="6" style="background:#FF00FF;">粉</option>
</select>
</td>
<td class="tool_a" id="tool_font_b" onclick="this.className=this.className=='tool_a' ? 'tool_b' : 'tool_a';font_init();"><img src="image/chat_font_b.gif" width="16" height="16" title="加粗"/></td>
<td class="tool_a" id="tool_font_i" onclick="this.className=this.className=='tool_a' ? 'tool_b' : 'tool_a';font_init();"><img src="image/chat_font_i.gif" width="16" height="16" title="倾斜"/></td>
<td class="tool_a" id="tool_font_u" onclick="this.className=this.className=='tool_a' ? 'tool_b' : 'tool_a';font_init();"><img src="image/chat_font_u.gif" width="16" height="16" title="下划线"/></td>
<td>&nbsp;</td>
<td class="c_p sc" onclick="font_hide();" title="点击关闭">x</td>
<td width="16"></td>
</tr>
</table>
</div>
<div id="tool">
<table cellspacing="0" cellpadding="0" width="100%">
<tr>
<td width="4">
<div id="face" style="display:none;">
<div><span onclick="face_hide();" title="点击关闭" class="sc">x</span><strong>选择表情</strong></div>
<?php if($faces) { ?>
<table cellspacing="0" cellpadding="0" title="点击选择">
<?php if(is_array($faces)) { foreach($faces as $k => $v) { ?>
<?php if($k%10==0) { ?><tr><?php } ?>
<td><img src="<?php echo DT_STATIC;?>file/face/<?php echo $v;?>.gif" onclick="face_into('<?php echo $v;?>');"/></td>
<?php if($k%10==9) { ?></tr><?php } ?>
<?php } } ?>
</table>
<?php } ?>
</div>
</td>
<td class="tool_a" onmouseover="this.className='tool_b';" onmouseout="if(Dd('font').style.display=='none')this.className='tool_a';" id="tool_font" onclick="font_show();" title="设置文字颜色和格式"><div class="chat_font">&nbsp;</div></div></td>
<td class="tool_a" onmouseover="this.className='tool_b';" onmouseout="if(Dd('face').style.display=='none')this.className='tool_a';" id="tool_face" onclick="face_show();" title="表情"><div class="chat_face">&nbsp;</div></td>
<?php if($MOD['chat_file'] && $MG['upload']) { ?>
<td class="tool" id="tool_img" title="发送图片"><div class="chat_img"><div id="img-picker"></div></div></td>
<td class="tool" id="tool_file" title="发送文件"><div class="chat_file"><div id="file-picker"></div></div></td>
<?php } ?>
<td id="upmsg">&nbsp;</td>
<td class="tool" id="tool_clear" onclick="Dd('chat').innerHTML='';" title="清屏"><div class="chat_clear">&nbsp;</div></td>
<td class="tool" id="tool_log" onclick="chat_log();" title="重载交谈记录"><div class="chat_log">&nbsp;</div></td>
<td class="tool" id="tool_save" onclick="chat_save();" title="保存交谈记录"><div class="chat_save">&nbsp;</div></td>
</tr>
</table>
</div>
<div class="word"><textarea id="word" onkeydown="return chat_key(event);" onfocus="Dh('ec');font_hide();face_hide();new_tip_stop();" class="f_gray"></textarea>
</div>
<div id="btns">
<table cellspacing="0" cellpadding="0" width="100%">
<tr>
<td width="10"></td>
<td><div id="tip" style="display:none;"></div></td>
<td><div id="sd"></div></td>
<td width="62"><img src="image/chat_c1.gif" width="69" height="21" onmouseover="this.src='image/chat_c2.gif';" onmouseout="this.src='image/chat_c1.gif';" onclick="chat_off();"/></td>
<td width="8"> </td>
<td width="62"><img src="image/chat_s1.gif" width="62" height="21" onmouseover="this.src='image/chat_s2.gif';" onmouseout="this.src='image/chat_s1.gif';" onclick="chat_send();" id="chat_s"/></td>
<td width="21"><div id="ec" style="display:none;" onmouseover="Ds('ec');" onmouseout="Dh('ec');">
<span id="ec1"><a href="javascript:ec_set(1);">按Enter键发送消息</a></span>
<span id="ec2"><a href="javascript:ec_set(2);">按Ctrl+Enter键发送消息</a></span>
</div><img src="image/chat_e1.gif" width="21" height="21" onmouseover="this.src='image/chat_e2.gif';" onmouseout="this.src='image/chat_e1.gif';" onclick="Ds('ec');"/></td>
<td width="10"> </td>
</tr>
</table>
</div>

<form method="post" action="?" id="chat_send" target="send">
<input type="hidden" name="action" value="send"/>
<input type="hidden" name="chatid" value="<?php echo $chatid;?>"/>
<input type="hidden" name="font_s" value="" id="font_s_id"/>
<input type="hidden" name="font_c" value="" id="font_c_id"/>
<input type="hidden" name="font_b" value="" id="font_b_id"/>
<input type="hidden" name="font_i" value="" id="font_i_id"/>
<input type="hidden" name="font_u" value="" id="font_u_id"/>
<input type="hidden" name="word" value="" id="word_id"/>
</form>
<form method="post" action="?" id="chat_down" target="send">
<input type="hidden" name="action" value="down"/>
<input type="hidden" name="chatid" value="<?php echo $chatid;?>"/>
<input type="hidden" name="username" value="<?php echo $user['username'];?>"/>
<input type="hidden" name="data" value="" id="down_data"/>
</form>
<script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/chat.js"></script>
<?php if($MOD['chat_file'] && $MG['upload']) { ?><script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/clear.js"></script><?php } ?>
</td>
<td width="280" valign="top" bgcolor="#F0F0F0">
<div class="body1">
<ul>
<li>姓名：<?php echo $user['truename'];?>（<?php if($user['gender']==1) { ?>先生<?php } else { ?>女士<?php } ?>）</li>
<li>部门：<?php echo $user['department'];?><?php if($user['career']) { ?> （<?php echo $user['career'];?>）<?php } ?></li>
<li>地区：<?php echo area_pos($user['areaid'], '');?></li>
<li>电话：<?php echo $user['telephone'];?></li>
<li>手机：<?php echo $user['mobile'];?></li>
<?php if($user['mail']) { ?><li>邮件：<?php echo $user['mail'];?></li><?php } ?>
</ul>
</div>
<a href="<?php echo $user['linkurl'];?>" target="_blank" class="t">公司主页</a>
<?php if($item) { ?>
<div class="head2">正在咨询</div>
<div class="body2">
<?php if($item['thumb']) { ?><a href="<?php echo $item['linkurl'];?>" target="_blank" class="b"><img src="<?php echo $item['thumb'];?>"/></a><?php } ?>
<ul>
<li><a href="<?php echo $item['linkurl'];?>" target="_blank" class="b"><?php echo $item['title'];?></a></li>
<?php if(isset($item['price']) && $item['price']>0) { ?><li><strong><?php echo $DT['money_sign'];?><?php echo $item['price'];?></strong></li><?php } ?>
</ul>
</div>
<a href="javascript:;" class="t" onclick="chat_send('<?php echo $item['title'];?>\n<?php if($item['thumb']) { ?><?php echo $item['thumb'];?>\n<?php } ?><?php echo $item['linkurl'];?>');">发送链接</a>
<?php } ?>
</td>
</tr>
</table>
<?php if($MOD['chat_file'] && $MG['upload']) { ?>
<script type="text/javascript">
var filei = WebUploader.create({
auto: true,
    server: '<?php echo DT_MOB;?>upload.php?moduleid=<?php echo $moduleid;?>&action=webuploader&from=file',
    pick: '#img-picker',
    accept: {
        title: 'Images',
        extensions: 'jpg,jpeg,png,gif,bmp',
        mimeTypes: 'image/*'
    },
    resize: false
});
filei.on('fileQueued', function(file) {
    $('#upmsg').html('上传中..');
setTimeout(function() {
$('#upmsg').html('');
}, 30000);
});
filei.on('uploadProgress', function(file, percentage) {
var p = parseInt(percentage * 100);
$('#upmsg').html(p > 99 ? '处理中...' : '上传中...'+p+'%');
});
filei.on( 'uploadSuccess', function(file, data) {
if(data.error) {
alert(data.message);
} else {
chat_send(data.url);
}
});
filei.on( 'uploadError', function(file, data) {
alert(data.message);
});
filei.on('uploadComplete', function(file) {
    $('#upmsg').html('');
});
var fileu = WebUploader.create({
auto: true,
    server: '<?php echo DT_MOB;?>upload.php?moduleid=<?php echo $moduleid;?>&action=webuploader&from=file',
    pick: '#file-picker',
    resize: false
});
fileu.on('fileQueued', function(file) {
    $('#upmsg').html('上传中..');
setTimeout(function() {
$('#upmsg').html('');
}, 30000);
});
fileu.on('uploadProgress', function(file, percentage) {
var p = parseInt(percentage * 100);
$('#upmsg').html(p > 99 ? '处理中...' : '上传中...'+p+'%');
});
fileu.on( 'uploadSuccess', function(file, data) {
if(data.error) {
alert(data.message);
} else {
chat_send(data.url);
}
});
fileu.on( 'uploadError', function(file, data) {
alert(data.message);
});
fileu.on('uploadComplete', function(file) {
    $('#upmsg').html('');
});
</script>
<?php } ?>
</body>
</html>