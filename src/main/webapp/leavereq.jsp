
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>请假</title>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tutelage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<%--<link rel="stylesheet" type="text/css" href="css/css/normalize.css" />--%>
<%--<link rel="stylesheet" type="text/css" href="css/css/cssdemo.css" />--%>
	<!--select 样式-->
	<link rel="stylesheet" type="text/css" href="css/normalizes.css" />
	<link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
	<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" type="text/css" href="css/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/css/cs-select.css" />
<link rel="stylesheet" type="text/css" href="css/css/cs-skin-underline.css" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/flat-ui.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- FONT AWESOME ICONS  -->
	<%--<link href="assets/css/font-awesome.css" rel="stylesheet" />--%>
	<%--<!-- CUSTOM STYLE  -->--%>
	<%--<link href="assets/css/style.css" rel="stylesheet" />--%>
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<script src="js/modernizr.custom.js"></script>
<!-- fonts -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Alegreya:400,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
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

</head>
<style>

	#table-7 thead th {
		background-color: rgb(81, 130, 187);
		color: #fff;
		border-bottom-width: 0;
	}

	/* Column Style */
	#table-7 td {
		color: #000;
	}
	/* Heading and Column Style */
	#table-7 tr, #table-7 th {
		border-width: 1px;
		border-style: solid;
		border-color: rgb(81, 130, 187);
	}

	/* Padding and font style */
	#table-7 td, #table-7 th {
		padding: 5px 10px;
		font-size: 12px;
		font-family: Verdana;
		font-weight: bold;
	}
	.control-group{
		width: 100%;
		margin: 30px 0;
	}
	.input-xlarge{
		width: 400px;
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
	select {outline: none}
	td{
		text-align: left;
	}
	.selects{
		border-top: 0;
		border-left: 0;
		border-right: 0;
		border-bottom: 3px black solid;
		margin: 10px;
		width: 400px;
		height: 40px;
		background: rgba(255,255,255,0);
		font-size: 16px;
		font-weight: bold;
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

</style>
<body>
<script>
    var errortypes = "";
    errortypes = ${errortypes}
    if(errortypes == "1"){//没有用户名
        alert("请先登录");
        window.location.href = 'login.jsp';
    }
</script>


<!-- header -->
<div class="header">
		<div class="container">
			<div class="header-nav">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<%--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">--%>
							<%--<span class="sr-only">Toggle navigation</span>--%>
							<%--<span class="icon-bar"></span>--%>
							<%--<span class="icon-bar"></span>--%>
							<%--<span class="icon-bar"></span>--%>
						<%--</button>--%>
						<%--<h1><span  class="navbar-brand"><span style="font-size: 30px;position: absolute; top:15%"><i class="glyphicon glyphicon-education" aria-hidden="true"></i>教 & 学</span></span></h1>--%>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a class="hvr-overline-from-center button2" href="${pageContext.request.contextPath}/indexinit"><strong>主页</strong></a></li>
							<li><a class="hvr-overline-from-center button2" href="${pageContext.request.contextPath}/queryros"><strong>教师点名</strong></a></li>
							<li><a class="hvr-overline-from-center button2 active" href="/${pageContext.request.contextPath}leavehis"><strong>学生请假</strong></a></li>
							<li><a class="hvr-overline-from-center button2" href="${pageContext.request.contextPath}/checkreq"><strong>请假批准</strong></a></li>
							<li><a class="hvr-overline-from-center button2" href="${pageContext.request.contextPath}/centerinit"><strong>个人中心</strong></a></li>
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
<!-- //banner -->
<div >
	 <div class="container" style="text-align: center;width: 50%;">
		<%--<h2 class="tittle">TYPOGRAPHY</h2>--%>
	 <div class="grid_3 grid_4" style="background: rgba(0,0,0,0)" >
		     <h3 class="bars" style="padding: 30px 0;">请假条</h3>

			<div class="clearfix"></div>
		</div>

		 <form class="form-horizontal" method="post" action="/leavereq" onsubmit="return msgcheck()">
			 <fieldset>
				 <div class="control-group" >
					 <!-- Text input-->
					 <label class="control-label">请假原因</label>
						 <input type="text" placeholder="简要描述" class="input-xlarge" name="simplemsg"
							id="simplemsg"	style="height: 40px">
						 <p class="help-block"></p>
				 </div>
				 <div class="control-group">
					 <!-- Select Basic -->

					 <div class="controls">
						 <label class="control-label">请假类型</label>
						 <select class="selects" name="reqtypes" style="height: 30px">
							 <option>病假</option>
							 <option>事假</option>
						 </select>
					 </div>
				 </div>
				 <div class="control-group">
					 <!-- Select Basic -->

					 <div class="controls">
						 <label class="control-label">请假教师</label>
						 <select class="selects" name="teacher" id="teacher">
							 <option> </option>
							 <c:forEach items="${allteacher}" var="allteacher">
								 <option>${allteacher.name}</option>
							 </c:forEach>

						 </select>
					 </div>
				 </div>
				 <div class="control-group" >
					 <!-- Textarea -->
					 <label class="control-label">开始时间</label>

						 <input  type="date" class="input-xlarge" value="" name="begindate" id="begindate"/>
				 </div>
				 <div class="control-group" >
					 <!-- Textarea -->
					 <label class="control-label">结束时间</label>
						 <input type="date" class="input-xlarge" value="" name="enddate" id="enddate"/>
				 </div>

				 <div class="control-group" >
					 <!-- Textarea -->
					 <label class="control-label">&nbsp;&nbsp;&nbsp;&nbsp;请假人 </label>
					 <input  type="text" class="input-xlarge" readonly value="${user.getName()}" name="student" id="username"
					 style="color: gray"/>
				 </div>
				 <div class="control-group">
					 <label class="control-label"></label>
					 <input type="submit" value="提交" class="btn btn-success" style="width: 70px;margin: 0 50px;border-radius: 5px">
					 <input type="reset" value="重置" class="btn btn-success" style="width: 70px;margin: 0 50px;border-radius: 5px">
				 </div>
			 </fieldset>
		 </form>


	 </div>
</div>
<script>
	function msgcheck() {
		var simplemsg = document.getElementById("simplemsg");
		var begindate = document.getElementById("begindate");
		var enddate = document.getElementById("endate");
		var teacher = document.getElementById("teacher");
		if(simplemsg.value == ""){
		    alert("请填写请假原因");
		    return false;
		}
        if(teacher.value == ""){
            alert("请选择请假教师");
            return false;
        }
		if(begindate.value == "" || enddate.value == ""){
		    alert("请选择开始和结束日期");
			return false;
		}

		return true;
    }
</script>
<!-- //footer -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear'
			};
		*/
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
<div class="typrography">
	<div class="container" style="text-align: center;background-color: #eeeeee;width: 80%">

		<div class="panel-body">
			<div class="table-responsive">
				<table class="table" id="table-7">
					<thead>
					<tr>
						<th>请假类型</th>
						<th>请假原因</th>
						<th>请假时间</th>
						<th>开始时间</th>
						<th>结束时间</th>
						<th>请假教师</th>
						<th>请假人</th>
						<th>审核状态</th>
					</tr>
					</thead>
					<tbody>
					<% String[] color = {"success","info","warning","danger"}; int i = 0; %>
					<c:forEach items="${leave}" var="leave">
						<c:choose>
							<c:when test="${leave.getIscheck() == '已批准'}">
								<tr>
									<td>${leave.getReqtypes()}</td>
									<td>${leave.getSimplemsg()}</td>
									<td>${leave.getLeavedate()}</td>
									<td>${leave.getBegindate()}</td>
									<td>${leave.getEnddate()}</td>
									<td>${leave.getTeacher()}</td>
									<td>${leave.getStudent()}</td>
									<td>${leave.getIscheck()}</td>
								</tr>
							</c:when>
							<c:otherwise>
								<tr id="${leave.getId()}">
									<td>${leave.getReqtypes()}</td>
									<td>${leave.getSimplemsg()}</td>
									<td>${leave.getLeavedate()}</td>
									<td>${leave.getBegindate()}</td>
									<td>${leave.getEnddate()}</td>
									<td>${leave.getTeacher()}</td>
									<td>${leave.getStudent()}</td>
									<td><span id="state0" style="float: left">${leave.getIscheck()}
													<strong onclick="delrequest(${leave.getId()})" style="cursor: pointer;color: #2A579A">&nbsp;&nbsp;&nbsp;取消请假</strong></span>
									</td>
								</tr>
							</c:otherwise>

						</c:choose>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<%--<select class="cs-select cs-skin-slide">--%>
	<%--<option value="sightseeing" data-class="icon-camera">Sight Seeing</option>--%>
	<%--<option value="business" data-class="icon-money">Business</option>--%>
	<%--<option value="honeymoon" data-class="icon-heart">Honeymoon</option>--%>
	<%--<option value="food" data-class="icon-food">Gourmet</option>--%>
	<%--<option value="shopping" data-class="icon-shirt">Shopping</option>--%>
<%--</select>--%>

<script>
	function delrequest(id) {
	    id = id;

		if(confirm("取消后，此假条将作废，确定吗？")){
            document.getElementById(id).style.display = 'none';
            delreq(id);
		}
    }
    function delreq(id) {
        param = "/removereq?id="+id;
        $.ajax({
            url:param,
            type:"POST",
            dataType:"json",
            contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
            success:function(data){
                alert(data);
            }
        });
    }
</script>
<script src="js/jquery.min.js"></script>
<script src="js/video.js"></script>
<script src="js/flat-ui.min.js"></script>
<script src="js/application.js"></script>
<script src="js/js/classie.js"></script>
<script src="js/js/selectFx.js"></script>
<script>
    (function() {
        [].slice.call( document.querySelectorAll( 'select.cs-select' ) ).forEach( function(el) {
            new SelectFx(el);
        } );
    })();
</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->

</body>
</html>