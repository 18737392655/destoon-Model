<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header');?>
<div class="m">
<div class="title bd-b"><?php echo $head_title;?></div>
<div class="content t_c"><br/>
<span id="second" class="f_red f_b"></span> 秒后将自动跳转到<?php if($_userid) { ?><a href="<?php echo $MODULE['2']['linkurl'];?>grade.php" class="b">会员升级页面</a><?php } else { ?><a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_login'];?>" class="b">会员登录页面</a><?php } ?>
<br/><br/>
<?php if($_userid) { ?>
&nbsp;&nbsp;1、请升级您的会员组。 <br/>
<?php } else { ?>
&nbsp;&nbsp;1、请 <a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_login'];?>" class="b">登录</a> 或 <a href="<?php echo $MODULE['2']['linkurl'];?><?php echo $DT['file_register'];?>" class="b">免费注册</a>。<br/>
<?php } ?>
&nbsp;&nbsp;2、请检查输入的网址是否正确。 <br/>
&nbsp;&nbsp;3、如果不能确认输入的网址，请浏览<a href="<?php echo $MODULE['1']['linkurl'];?>" class="b">网站首页</a>来查看所要访问的网址。 <br/>
</div>
</div>
<script type="text/javascript">
var i = 30;
Dd('second').innerHTML = i;
var interval = window.setInterval(
function() {
if(i == 0) {
Go('<?php if($DT_PC) { ?><?php echo $MODULE['2']['linkurl'];?><?php } else { ?><?php echo $MODULE['2']['mobile'];?><?php } ?><?php if($_userid) { ?>grade.php<?php } else { ?><?php echo $DT['file_login'];?><?php } ?>');
clearInterval(interval);
} else {
Dd('second').innerHTML = i;
i--;
}
}, 
1000);
</script>
<?php include template('footer');?>