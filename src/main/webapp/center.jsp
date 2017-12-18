<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>个人中心</title>
<!-- for-mobile-apps -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tutelage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<script src="js/modernizr.custom.js"></script>
<!-- fonts -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Alegreya:400,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/mdialog.css">
<script type="text/javascript" src="js/zepto.min.js"></script>
<script type="text/javascript" src="js/mdialog.js"></script>
	<!-- //fonts -->
	<!-- start-smoth-scrolling -->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
	<!-- start-smoth-scrolling -->
<style>
	::-webkit-scrollbar {
		width: 0;
		height: 0;
	}
	#receiver{
		border-top: 0;
		border-left: 0;
		border-right: 0;
		border-bottom: 3px black solid;
		/*float: left;*/
		width: 200px;
		margin: 10px;
		height: 30px;
		background: rgba(255,255,255,0);
		outline: none;
	}
	textarea{
		/*border-top: 0;*/
		/*border-left: 0;*/
		/*border-right: 0;*/
		border-bottom: 3px black solid;
		/*float: left;*/
		width: 300px;
		margin: 10px;
		height: 50px;
		background: rgba(255,255,255,0);
		outline: none;
		position: absolute;
		top: 75px;
	}
	.input-xlarge{
		width: 150px;
		padding: 0 10px;
		height: 40px;
		margin: 0 10px;
		border-top: 0;
		border-left: 0;
		border-right: 0;
		border-bottom: 3px black solid;
		background: rgba(0,0,0,0);
	}
	input {outline:none;}
	#btn{
		float: left;
		margin: 10px;
	}
	option{
		background-color: #EEEEEE;
		color: #2A579A;
		font-weight: bold;
		padding: 10px;
		font-size: 16px;
		overflow: scroll;
		height: 300px;
		opacity: 0.1;
	}
	hr{
		background-color: #2A579A;
		height: 1px;
	}
</style>
</head>
<body>
<script>
	var errortype = ${errortype};
	if(errortype == "1"){
        alert("请登录");
	    window.location.href = "login.jsp"
	}
</script>
<!-- header -->
<div class="header">
		<div class="container">
			<div class="header-nav">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<%--<div class="navbar-header">--%>
						<%--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">--%>
							<%--<span class="sr-only">Toggle navigation</span>--%>
							<%--<span class="icon-bar"></span>--%>
							<%--<span class="icon-bar"></span>--%>
							<%--<span class="icon-bar"></span>--%>
						<%--</button>--%>
					    <%--<h1><a class="navbar-brand" href="index.jsp"><i class="glyphicon glyphicon-education" aria-hidden="true"></i><span>Tute</span>Lage</a></h1>--%>
					<%--</div>--%>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a class="hvr-overline-from-center button2" href="${pageContext.request.contextPath}/indexinit"><strong>主页</strong></a></li>
							<li><a class="hvr-overline-from-center button2" href="${pageContext.request.contextPath}/queryros"><strong>教师点名</strong></a></li>
							<li><a class="hvr-overline-from-center button2" href="${pageContext.request.contextPath}/leavehis"><strong>学生请假</strong></a></li>
							<li><a class="hvr-overline-from-center button2" href="${pageContext.request.contextPath}/checkreq"><strong>请假批准</strong></a></li>
							<li><a class="hvr-overline-from-center button2 active" href="${pageContext.request.contextPath}/centerinit"><strong>个人中心</strong></a></li>
						</ul>
						<%--<div class="search-box">--%>
							<%--<div id="sb-search" class="sb-search">--%>
								<%--<form>--%>
									<%--<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">--%>
									<%--<input class="sb-search-submit" type="submit" value="">--%>
									<%--<span class="sb-icon-search"> </span>--%>
								<%--</form>--%>
							<%--</div>--%>
						<%--</div>--%>
					</div><!-- /navbar-collapse -->
					
					<!-- search-scripts -->
					<script src="js/classie.js"></script>
					<script src="js/uisearch.js"></script>
						<script>
							new UISearch( document.getElementById( 'sb-search' ) );
						</script>
					<!-- //search-scripts -->
				</nav>
			</div>
		</div>
</div>
<!-- header -->
<!-- banner -->
<div class="banner page-head">
</div>
<div id="head" style="width: 100%;height: 50px;">
	<span style="float: right;margin: 15px 7%">欢迎 <strong>${user.getName()}</strong>/<a href="${pageContext.request.contextPath}/destroy">注销</a></span>
</div>
<div id="content" style="width: 100%;height: 310px;">
	<div style="width: 40%;height: 200px;margin-left: 10%;overflow: scroll;float: left;">
		<h3 style="margin: 20px 0;font-weight: bold;color: #2a6496">最新消息</h3>
		<%--<hr>--%>
		<ul style="border-top: 2px green solid;border-left: 2px green solid">
			<c:forEach items="${allreceive}" var="allreceive">
				<li style="font-size: 16px;margin: 10px" id="${allreceive.id}"><span><b style="border: 1px black solid">${allreceive.senddate}</b>
				</span>&nbsp;&nbsp;&nbsp;<span style="text-decoration: underline">${allreceive.contents}</span>
					&nbsp;&nbsp;&nbsp;<span style="font-weight: bold">from:${allreceive.user.name}</span>
					&nbsp;&nbsp;<span style="color: red;cursor: pointer" onclick="removeMessage('receive','${allreceive.id}')">×</span>
				</li>
			</c:forEach>
		</ul>
	</div>
	<div style="width: 40%;height: 200px;margin-right: 5%;overflow: scroll;float: right;">
		<h3 style="margin: 20px 0;font-weight: bold;color: #2a6496">最近发送</h3>
		<%--<hr>--%>
		<ul style="border-top: 2px green solid;border-right: 2px green solid">
			<c:forEach items="${allsend}" var="allsend">
				<li style="font-size: 16px;margin: 10px" id="${allsend.id}"><span><b style="border: 1px black solid">${allsend.senddate}</b>
				</span>&nbsp;&nbsp;&nbsp;<span style="text-decoration: underline">${allsend.contents}</span>
					&nbsp;&nbsp;&nbsp;<span style="font-weight: bold">to:${allsend.user.name}</span>
					&nbsp;&nbsp;<span style="color: red;cursor: pointer" onclick="removeMessage('send','${allsend.id}')">×</span>
				</li>
			</c:forEach>
		</ul>
	</div>
	<script>
		function removeMessage(flag,id) {
		    if (confirm("确定删除？")){
                var url = "/removemessage?flag="+flag+"&&id="+id;
                $.ajax({
                    url:url,
                    type:"get",
                    //dataType:"json",
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
                    success:function(data){
                        document.getElementById(id).style.display = 'none';
                        new TipBox({type:'success',str:'删除成功!',hasBtn:true});
                    }
                });
			}
		    
        }
	</script>
	<div style="width: 80%;height: 200px;margin-left: 10%;overflow: scroll;position: relative">
		<h3 style="margin: 20px 0;font-weight: bold;color: #2a6496">发送消息</h3>
		<hr>
		<form action="${pageContext.request.contextPath}/sendmessage" method="post" onsubmit="return check()">
			<strong>发送给:</strong>
			<select name="receiver" id="receiver">
				<option value=""></option>
				<c:forEach items="${alluser}" var="alluser">
					<option value="${alluser.username}">${alluser.name}</option>
				</c:forEach>
			</select>
			<strong>内容:</strong>
			<textarea id="contents" name="contents"></textarea>
			<input type="submit" value="发送" class="btn btn-success" style="margin-left: 350px">
		</form>
	</div>
</div>
<div style="width: 100%;height: 300px;">
	<form action="${pageContext.request.contextPath}/updateuser" style="width: 80%;margin-left: 10%;margin-top: 50px" onsubmit="return updateUser()">
		<br><br>
		<h3 style="margin: 20px 0;font-weight: bold;color: #2a6496">用户信息</h3>
		<hr>
		用户编号:<input type="text" class="input-xlarge" id="username" value="${singleuser.username}" readonly
					style="background-color: #dadada" >
		密码:<input type="password" class="input-xlarge" name="pwd" id="pwd" placeholder="******">
		姓名:<input type="text" class="input-xlarge" id="name" value="${singleuser.name}" readonly
				  	style="background-color: #dadada">
		职位:<input type="text" class="input-xlarge" id="status" value="${singleuser.status}" readonly
				  	style="background-color: #dadada">
		<input type="submit" class="btn btn-success" value="修改密码" >
	</form>
</div>
<script>
	function updateUser() {
		var pwd = document.getElementById("pwd");
		if(pwd.value == ""){
		    alert("请输入密码");
		    return false;
		}
		return true;
    }
</script>
<script>
	function check() {
		var rec = document.getElementById("receiver");
		if (rec.value == ""){
		    alert("请选择接收人");
		    return false;
		}
		if(rec.value == ${user.getUsername()}){

		    alert("不允许给自己发送消息");
            return false;
        }
		return true;
    }
</script>
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {

		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->

</body>
</html>
</html>