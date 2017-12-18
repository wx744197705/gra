<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>教师点名</title>
<!-- for-mobile-apps -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tutelage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
	<%--<link rel="stylesheet" type="text/css" href="css/css/normalize.css" />--%>
	<%--<link rel="stylesheet" type="text/css" href="css/css/demo.css" />--%>
	<link rel="stylesheet" type="text/css" href="css/normalizes.css" />
	<link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
	<link rel="stylesheet" href="css/styles.css">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/flat-ui.css" rel="stylesheet">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- FONT AWESOME ICONS  -->
	<!-- js -->
	<script src="js/jquery-1.11.1.min.js"></script>
	<!-- //js -->
	<script src="js/modernizr.custom.js"></script>
<!-- fonts -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Alegreya:400,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
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
	td{
		text-align: left;
		font-weight: bold;
	}
	input {outline:none;}
	select {outline: none}
	#plas{
		width: 30%;
		position:relative;
		/*background-color: red;*/
		height: 70px;
		float: right;
		margin: 0 10%
	}
	::-webkit-scrollbar {
		width: 0;
		height: 0;
	}
	.containers{
		text-align: center;
		background: rgba(255,255,255,0);
		width: 80%;
		height: 500px;
		margin: 0 10%;
		overflow: scroll;
	}
	#selects{
		border-top: 0;
		border-left: 0;
		border-right: 0;
		border-bottom: 3px black solid;
		float: left;
		margin: 10px;
		height: 30px;
		background: rgba(255,255,255,0);
	}
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
	#show:hover{
		background-color: black;
		color: white;
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

     function getDateTime() {
         var date = new Date();
         var seperator1 = "-";
         var seperator2 = ":";
         var month = date.getMonth() + 1;
         var strDate = date.getDate();
         var hour = date.getHours();
         var minute = date.getMinutes();
         var seconds = date.getSeconds();
         if (month >= 1 && month <= 9) {
             month = "0" + month;
         }
         if (strDate >= 0 && strDate <= 9) {
             strDate = "0" + strDate;
         }
         if (hour >= 0 && hour <= 9) {
             hour = "0" + hour;
         }
         if (minute >= 0 && minute <= 9) {
             minute = "0" + minute;
         }
         if (seconds >= 0 && seconds <= 9) {
             seconds = "0" + seconds;
         }
         var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
             + " " + hour + seperator2 + minute
             + seperator2 + seconds;
         return currentdate;
     }

</script>
<!-- header -->
<div class="header">
		<div class="container">
			<div class="header-nav">
				<nav class="navbar navbar-default">
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a class="hvr-overline-from-center button2" href="${pageContext.request.contextPath}/indexinit"><strong>主页</strong></a></li>
							<li><a class="hvr-overline-from-center button2 active" href="${pageContext.request.contextPath}/queryros"><strong>教师点名</strong></a></li>
							<li><a class="hvr-overline-from-center button2" href="${pageContext.request.contextPath}/leavehis"><strong>学生请假</strong></a></li>
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
<div class="" style="text-align: left">

	<div class="container-fluid" style="width: 100%;text-align: left;padding: 0 0 0 10%">

		<div class="row-fluid" style="width: 30%;float: left;margin: 10px 0">
			<%--<div class="span12" id="sp2">--%>
				<%--<div class="alert alert-info">--%>
					<%--<button type="button" class="close" data-dismiss="alert">×</button>--%>
					<%--<h4>--%>
						<%--提示!--%>
					<%--</h4>--%>
					<%--<div>--%>
						<%--已自动为你导入课表，你也可以手动选择--%>
					<%--</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<div class="span12" id="sp1" style="display: none">
				<div class="alert alert-info">
					<button type="button" class="close" data-dismiss="alert">×</button>
					<h4>
						提示!
					</h4>
					<div>
						不存在此时间段的课表，你可以自行选择班级
					</div>
				</div>
			</div>
		</div>
		<script>
            if(errortypes == "3"){
                document.getElementById("sp2").style.display = 'none';
                document.getElementById("sp1").style.display = 'block';
            }
		</script>
		<div id="plas">
			<section>
				<select class="select" id="selects">
					<c:forEach items="${classa}" var="classa">
						<option>${classa.getScheclass()}</option>

					</c:forEach>
				</select>
			</section>
			<input type="button" onclick="reloads()" id="btn" value="查询" class="btn btn-success">
		</div>
	</div>

	<div class="containers">

		<div class="panel-body">
			<div class="table-responsive" style="height: 500px">
				<table class="table" id="table-7">
					<thead>
					<tr>
						<th>到课情况</th>
						<th>学号</th>
						<th>学生姓名</th>
						<th>请假情况</th>
						<th>班级</th>
						<th>学院</th>
					</tr>
					</thead>
					<tbody>

					<c:forEach items="${roster}" var="roster">
						<c:choose>
							<c:when test="${roster.leaves.username!=null}">
								<tr>
									<td class="pbm">
										<input type="checkbox" class="check" value="${roster.stuid}" data-toggle="switch" data-on-text="缺课" data-off-text="到课" id="custom-switch-01" />
									</td>
									<td>${roster.stuid}</td>
									<td>${roster.stuname}</td>
									<td style="color: red">已请假</td>
									<td>${roster.stuclass}</td>
									<td>${roster.stukind}</td>
								</tr>
							</c:when>
							<c:otherwise>
								<tr>
									<td class="pbm">
										<input type="checkbox" class="check" value="${roster.stuid}" data-toggle="switch" data-on-text="缺课" data-off-text="到课" id="custom-switch-01" />
									</td>
									<td>${roster.stuid}</td>
									<td>${roster.stuname}</td>
									<td style="color: green">未请假</td>
									<td>${roster.stuclass}</td>
									<td>${roster.stukind}</td>
								</tr>
							</c:otherwise>
						</c:choose>

					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div id="bot" style="margin-bottom: -30px;text-align: right;">
			<span id="dijici">备注:</span> &nbsp;
			<input type="text" id="ids" style="width: 150px;
			margin: 0 30px 0 0;border-top: 0;border-left: 0;border-right: 0;border-bottom: 3px black solid;
			background: rgba(0,0,0,0)" placeholder="如第几次点名(非必填)">
			<input type="button" value="保存" id="btns" onclick="submits()" class="btn btn-success" style="width: 80px;border-radius: 5px;margin: 0 10px; float: right">
			<span id="yibaocun" style="display: none;color: gray">已保存</span>
		</div>
	</div>
	<div style="width: 100%;text-align: center"><h2  style="cursor: pointer"><strong id="show">查询历史点名</strong></h2></div>
	<script>
        $("#show").click(function () {
            $("#history").fadeToggle(200);
        })
	</script>
	<div id="history" style="width: 80%;height: 500px;margin: 10%; text-align: center;display: none;overflow: scroll">
		<h3><strong>历史点名(缺课学生)</strong></h3>
		<div class="panel-body">
			<div class="table-responsive">
				<table class="table">
					<thead>
					<tr>
						<th>学生学号</th>
						<th>姓名</th>
						<th>班级</th>
						<th>备注</th>
						<th>点名时间</th>
						<th>学院</th>
						<th>编辑</th>
					</tr>
					</thead>
					<tbody>

					<c:forEach items="${history}" var="history">
						<tr id="${history.stuid}">
							<td>${history.stuid}</td>
							<td>${history.roster.stuname}</td>
							<td>${history.roster.stuclass}</td>
							<td>${history.callno}</td>
							<td>${history.calldate}</td>
							<td>${history.roster.stukind}</td>
							<td><b style="cursor: pointer;color: #2A579A" onclick="removeHistorys('${history.stuid}','${history.roster.stuname}','${history.calldate}')">删除</b></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<a href="${pageContext.request.contextPath}/export" style="float: right">导出点名信息...</a>
			</div>
		</div>
	</div>
	<script>
		function removeHistorys(id,name,date) {
		    if(confirm("确认删除？\n学号:"+id+"  姓名:"+name+"")){
		        document.getElementById(id).style.display = 'none';
                var param = "/removehis?stuid="+id+"&&calldate="+date;
                $.ajax({
                    url:param,
                    type:"post",
                    dataType:"json",
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
                    success:function(data){
                        //alert(data);
                    }
                });
			}
        }
		function reloads() {
            var status = ${user.getStatus()};
            if(status == '0'){
                alert("你没有此权限");
                return;
            }

			var reloads = document.getElementById("selects");
			window.location.href = '/reloads?name='+reloads.value;
        }
		function submits() {
		    var status = ${user.getStatus()};
            if(status == "0"){
                alert("你没有此权限");
                return;
            }
		    var id = document.getElementById("ids");
			document.getElementById("dijici").style.display = 'none';
            document.getElementById("yibaocun").style.display = 'block';
            document.getElementById("ids").style.display = 'none';
            document.getElementById("btns").style.display = 'none';
            var str = new Array();
            $(".check").each(function () {
                if ($(this).is(":checked")) {
                    str.push($(this).val());
                }
            });
            param = "/ajax?id="+id.value;
            $.ajax({
                type: "POST",
                url:   param,
                cache: false,
                traditional: true,
                async:false,
                data:{"str":str},
                dataType: "json",
                success: function (ret) {
                },
                error: function (ret) {
                }

            });

        }
	</script>
</div>
<!-- //banner -->
<!-- about -->

<!-- //footer -->
<!-- for bootstrap working -->
<script src="js/jquery.min.js"></script>
<script src="js/video.js"></script>
<script src="js/flat-ui.min.js"></script>
<script src="js/application.js"></script>
	<script src="js/bootstrap.js"></script>
<script src="js/js/classie.js"></script>
<script src="js/js/selectFx.js"></script>
<script>
    (function() {
        [].slice.call( document.querySelectorAll( 'select.cs-select' ) ).forEach( function(el) {
            new SelectFx(el);
        } );
    })();
</script>
	<script type="text/javascript">
		$(document).ready(function() {
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>


</body>
</html>