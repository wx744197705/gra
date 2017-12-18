<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>请假审核</title>
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
		td{
			/*background-color: #2A579A;*/
			/*margin: 0 15px;*/
			text-align: left;
		}
	</style>

</head>
<body>
<script>
    var hs = "";
    hs = ${hs}
    if(hs == "1"){//没有用户名
        alert("请先登录");
        window.location.href = 'login.jsp';
    }
//    if(hs == "2"){
//        alert("你没有此权限");
//        history.go(-1);
//    }
    <%--alert(${hs});--%>
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
						<li><a class="hvr-overline-from-center button2 active" href="${pageContext.request.contextPath}/checkreq"><strong>请假批准</strong></a></li>
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
<!-- services -->
<div class="ser-first">
	<div class="container">
		<div class="services-info">
			<h2 class="tittle">审核</h2>

		</div>
	</div>

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
		<div class="container" style="text-align: center;background-color: #EEEEEE;width: 80%">

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
							<th>批准状态</th>
						</tr>
						</thead>
						<tbody>

						<c:forEach items="${leaves}" var="leave">
							<c:choose>
								<c:when test="${leave.ischeck == '已批准'}">
									<tr>
										<td>${leave.reqtypes}</td>
										<td>${leave.simplemsg}</td>
										<td>${leave.leavedate}</td>
										<td>${leave.begindate}</td>
										<td>${leave.enddate}</td>
										<td>${leave.teacher}</td>
										<td>${leave.student}</td>
										<td>${leave.ischeck}</td>
									</tr>
								</c:when>
								<c:otherwise>
									<tr>
										<td>${leave.reqtypes}</td>
										<td>${leave.simplemsg}</td>
										<td>${leave.leavedate}</td>
										<td>${leave.begindate}</td>
										<td>${leave.enddate}</td>
										<td>${leave.teacher}</td>
										<td>${leave.student}</td>
										<td><span id="state0" style="float: left">${leave.ischeck}
													<strong id="state" onclick="ischeck(${leave.id})" style="cursor: pointer;color: #2A579A">&nbsp;&nbsp;&nbsp;批准</strong></span>
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
		<%--<div class="switch switch-large">--%>
			<%--<input type="checkbox" checked />--%>
		<%--</div>--%>
	</div>
	<script>
        function ischeck(id) {
            //alert(states);
            document.getElementById("state0").innerHTML = '已批准';
            param = "/statechange?id=" + id;
            $.ajax({
                url:param,
                type:"POST",
                dataType:"json",
                contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
                success:function(data){
                }
            });

        }
	</script>
</div>
</body>
</html>