<!DOCTYPE html>

<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@ page language="java" contentType="text/html; charset=UTF-8"
			 pageEncoding="UTF-8"%>
<title>login</title>
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<%--<link rel="stylesheet" type="text/css" href="css/demo.css" />--%>
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="css/component.css" />
<!--[if IE]>
	<script src="js/html5.js"></script>
	<![endif]-->
</head>
<body>
		<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
					<div class="logo_box">
						<h3>欢迎你</h3>
						<form action="/login" method="post" onsubmit="return login()">
							<div class="input_outer">
								<span class="u_user"></span>
								<input name="username" class="text" id="username" style="color: #FFFFFF !important" type="text" placeholder="请输入账户">
							</div>
							<div class="input_outer">
								<span class="us_uer"></span>
								<input name="password" class="text" id="password" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
							</div>


							<div class="mb2">
								<a class="act-but submit"  style="color: #FFFFFF">
									<input type="submit" value="登录" style="background-color: #0096e6;border: 0;width: 50px;color: white;">
								</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div><!-- /container -->
		<script src="js/TweenLite.min.js"></script>
		<script src="js/EasePack.min.js"></script>
		<script src="js/rAF.js"></script>
		<script src="js/demo-1.js"></script>
		<script type="text/javascript">

                function changeCode() {
                    var imgNode = document.getElementById("vimg");

                    imgNode.src = "/Code?t=" + Math.random();  // 防止浏览器缓存的问题
                }
                function login() {
                    var username = document.getElementById("username")
                    var password = document.getElementById("password");
                    var code = document.getElementById("code");
                    if(username.value == "" || password.value == ""){
                        alert("请输入完整信息");
                        return false;
                    }
                    return true;
                }
		</script>
		<div style="text-align:center;">
</div>
	</body>
</html>