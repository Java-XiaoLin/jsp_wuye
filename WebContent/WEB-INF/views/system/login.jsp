<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- saved from url=(0051)http://demo1.mycodes.net/denglu/HTML5_yonghudenglu/ -->
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>高校后勤管理系统后台管理员登录</title>
  <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
  <meta name="author" content="Vincent Garreau">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <link rel="stylesheet" media="screen" href="../resources/admin/login/css/style.css">
   <link rel="stylesheet" type="text/css" href="../resources/admin/login/css/reset.css"> 
<body>

<div id="particles-js">
		<div class="login" style="display: block;">
			<div class="login-top" style="margin-left:100px">
				登录
			</div>
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="../resources/admin/login/images/name.png"></div>
				<div class="login-center-input">
					<input type="text" name="username" id="username" value="" placeholder="请输入您的用户名" onfocus="this.placeholder=&#39;&#39;" onblur="this.placeholder=&#39;请输入您的用户名&#39;">
					<div class="login-center-input-text">用户名</div>
				</div>
			</div>
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="../resources/admin/login/images/password.png"></div>
				<div class="login-center-input">
					<input type="password" name="password" id="password" value="" placeholder="请输入您的密码" onfocus="this.placeholder=&#39;&#39;" onblur="this.placeholder=&#39;请输入您的密码&#39;">
					<div class="login-center-input-text">密码</div>
				</div>
			</div>
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="../resources/admin/login/images/juese.png"></div>
				<div class="login-center-select">
				<select id="roleId" name="roleId" class="easyui-combobox" panelHeight="auto" style="width:120px ;margin-left:20px">
	            	<c:forEach items="${roleList }" var="role">
	            	<option value="${role.id }">${role.name }</option>
	            	</c:forEach>
            </select>
					<div class="login-center-input-text">角色</div>
				</div>
			</div>
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="../resources/admin/login/images/cpacha.png"></div>
				<div class="login-center-input">
					<input style="width:50%;" type="text" name="cpacha" id="cpacha" value="" placeholder="请输入验证码" onfocus="this.placeholder=&#39;&#39;" onblur="this.placeholder=&#39;请输入验证码&#39;">
					<div class="login-center-input-text">验证码</div>
					<img id="cpacha-img" title="点击切换验证码" style="cursor:pointer;" src="get_cpacha?vl=4&w=150&h=40&type=loginCpacha" width="110px" height="30px" onclick="changeCpacha()">
				</div>
			</div>
			<div class="login-button">
				登录
			</div>
		</div>
		<div class="sk-rotating-plane"></div>
<canvas class="particles-js-canvas-el" width="1147" height="952" style="width: 100%; height: 100%;"></canvas></div>
<!--底部-->
  <footer class="clear" align="center">
    <p>
		      <a href="../home/index">首页</a>|
		      <a href="">关于我们</a>|
			  <a href="../system/login">登录后台</a>
		   </p>
  </footer>
<!-- scripts -->
<script src="../resources/admin/login/js/particles.min.js"></script>
<script src="../resources/admin/login/js/app.js"></script>
<script src="../resources/admin/login/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript">
	function hasClass(elem, cls) {
	  cls = cls || '';
	  if (cls.replace(/\s/g, '').length == 0) return false; //当cls没有参数时，返回false
	  return new RegExp(' ' + cls + ' ').test(' ' + elem.className + ' ');
	}
	 
	function addClass(ele, cls) {
	  if (!hasClass(ele, cls)) {
	    ele.className = ele.className == '' ? cls : ele.className + ' ' + cls;
	  }
	}
	 
	function removeClass(ele, cls) {
	  if (hasClass(ele, cls)) {
	    var newClass = ' ' + ele.className.replace(/[\t\r\n]/g, '') + ' ';
	    while (newClass.indexOf(' ' + cls + ' ') >= 0) {
	      newClass = newClass.replace(' ' + cls + ' ', ' ');
	    }
	    ele.className = newClass.replace(/^\s+|\s+$/g, '');
	  }
	}
	
	function changeCpacha(){
		$("#cpacha-img").attr("src",'get_cpacha?vl=4&w=150&h=40&type=loginCpacha&t=' + new Date().getTime());
	}
		document.querySelector(".login-button").onclick = function(){
				var username = $("#username").val();
				var password = $("#password").val();
				var cpacha = $("#cpacha").val();
				var roleId = $("#roleId").val();
				if(username == '' || username == 'undefined'){
					alert("请填写用户名！");
					return;
				}
				if(password == '' || password == 'undefined'){
					alert("请填写密码！");
					return;
				}
				if(cpacha == '' || cpacha == 'undefined'){
					alert("请填写验证码！");
					return;
				}
				if(roleId == '' || roleId == 'undefined'){
					alert("请选择登录类型！");
					return;
				}
				addClass(document.querySelector(".login"), "active")
				addClass(document.querySelector(".sk-rotating-plane"), "active")
				document.querySelector(".login").style.display = "none"
				$.ajax({
					url:'login',
					data:{username:username,password:password,roleId:roleId,cpacha:cpacha},
					type:'post',
					dataType:'json',
					success:function(data){
						if(data.type == 'success'){
							window.parent.location = 'index';
						}else{
							removeClass(document.querySelector(".login"), "active");
							removeClass(document.querySelector(".sk-rotating-plane"), "active");
							document.querySelector(".login").style.display = "block";
							alert(data.msg);
							changeCpacha();
						}
					}
				});
				
		}
</script>
</body></html>