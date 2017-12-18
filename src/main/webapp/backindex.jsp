<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
	<head>
    	<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <title>后台</title>
		
		<!-- Import google fonts - Heading first/ text second -->
        <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:400,700|Droid+Sans:400,700' />
        <!--[if lt IE 9]>
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Open+Sans:700" rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Droid+Sans:400" rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com?family=Droid+Sans:700" rel="stylesheet" type="text/css" />
<![endif]-->

		<!-- Fav and touch icons -->
		<link rel="shortcut icon" href="assets/ico/favicon.ico" type="image/x-icon" />

	    <!-- Css files -->
	    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
		<link href="assets/css/font-awesome.min.css" rel="stylesheet">
		<link href="assets/css/climacons-font.css" rel="stylesheet">
		<!--<link href="assets/plugins/xcharts/css/xcharts.min.css" rel=" stylesheet">-->
		<!--<link href="assets/plugins/fullcalendar/css/fullcalendar.css" rel="stylesheet">-->
		<!--<link href="assets/plugins/morris/css/morris.css" rel="stylesheet">-->
		<!--<link href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet">-->
		<!--<link href="assets/plugins/jvectormap/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">-->
	    <link href="assets/css/style.min.css" rel="stylesheet">
		<link href="assets/css/add-ons.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/mdialog.css">
		<script type="text/javascript" src="js/zepto.min.js"></script>
		<script type="text/javascript" src="js/mdialog.js"></script>

	    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	    <!--[if lt IE 9]>
			<!--<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>-->
			<!--<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>-->
	    <![endif]-->
	</head>
	<style>
		option{
			height: 300px;
			background-color: #EEEEEE;
			font-weight: bold;
			font-size: 16px;
		}
		select{
			width: 150px;
			height: 30px;
			font-weight: bold;
			color: #2A579A
		}
		textarea{
			width: 200px;
			height: 50px;
			border: 0;
			border-bottom: 3px black solid;
			background: rgba(0,0,0,0)
		}
		#table-3 thead, #table-3 tr {
			border-top-width: 1px;
			border-top-style: solid;
			border-top-color: rgb(235, 242, 224);
			padding: 10px 0;
		}
		#table-3 {
			border-bottom-width: 1px;
			border-bottom-style: solid;
			border-bottom-color: rgb(235, 242, 224);
			margin: 10px;
		}

		/* Padding and font style */
		#table-3 td, #table-3 th {
			padding: 5px 10px;
			font-size: 16px;
			font-family: Verdana;
			color: rgb(149, 170, 109);
		}

		/* Alternating background colors */
		#table-3 tr:nth-child(even) {
			background: rgb(230, 238, 214)
		}
		#table-3 tr:nth-child(odd) {
			background: #FFF
		}
	</style>
</head>

<body>
<script>
	var error = ${errortype}
	if(error == "1"){
	    alert("请登录");
        window.location.href = 'login.jsp';
	}
</script>
<script>
	var state = ${user.getStatus()};
	if(state != '2'){
	    alert("无权限访问");
	    history.go(-1);
	}
</script>
	<!-- start: Header -->
	<div class="navbar" role="navigation">
		<div class="container-fluid">

			<!--<ul class="nav navbar-nav navbar-actions navbar-left">-->
				<!--<li class="visible-md visible-lg"><a href="backindex.html#" id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>-->
				<!--<li class="visible-xs visible-sm"><a href="backindex.jsp#" id="sidebar-menu"><i class="fa fa-navicon"></i></a></li>-->
			<!--</ul>-->
		</div>
		
	</div>
	<!-- end: Header -->
	
	<div class="container-fluid content">

		<div class="row">

			<!-- start: Main Menu -->
			<div class="sidebar ">

				<div class="sidebar-collapse">
					<div class="sidebar-header t-center">
						<h2>欢迎</h2>
                    </div>
					<div class="sidebar-menu">
						<ul class="nav nav-sidebar">
							<li><a href="${pageContext.request.contextPath}/backindexinit"><i class="fa fa-laptop"></i><span class="text"> 主页</span></a></li>
							<li><a href="${pageContext.request.contextPath}/queryleave"><i class="fa fa-laptop"></i><span class="text"> 请假记录</span></a></li>
							<li><a href="${pageContext.request.contextPath}/queryallcall"><i class="fa fa-laptop"></i><span class="text"> 点名记录</span></a></li>
							<li><a href="${pageContext.request.contextPath}/scheload"><i class="fa fa-laptop"></i><span class="text"> 教师排课</span></a></li>
							<li><a href="${pageContext.request.contextPath}/userinfoinit"><i class="fa fa-laptop"></i><span class="text"> 用户信息</span></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div style="width: 80%;height: 100px;float: right;position: relative">
				<h1 style="position: absolute;top: 40%">欢迎登陆教务管理系统 &nbsp;&nbsp;<a href="${pageContext.request.contextPath}/indexinit">前往主站</a></h1>
			</div>
			<div style="width: 80%;height: 250px;float: right;position: relative;margin: 50px 0">
				<%--<h1 style="position: absolute;top: 10%">欢迎登陆教务管理系统</h1>--%>
				<h3>主页修改</h3>
				<span>栏位1：</span>
				<select name="" id="select1" >
					<option>公告</option>
					<option>动态</option>
				</select>
				<span>内容：</span> <textarea id="text1"></textarea>
					<input type="button" class="btn btn-success" value="修改" onclick="modify('1')">
					<br>
				<span>栏位2：</span>
				<select name="" id="select2" >
					<option>公告</option>
					<option>动态</option>
				</select>
				<span>内容：</span> <textarea id="text2"></textarea>
					<input type="button" class="btn btn-success" value="修改" onclick="modify('2')">
					<br>
					<span>栏位3：</span>
				<select name="" id="select3" >
					<option>公告</option>
					<option>动态</option>
				</select>
				<span>内容：</span> <textarea id="text3"></textarea>
					<input type="button" class="btn btn-success" value="修改" onclick="modify('3')">

					<br><span>栏位4：</span>
				<select name="" id="select4">
					<option>公告</option>
					<option>动态</option>
				</select>
				<span>内容：</span> <textarea id="text4"></textarea>
					<input type="button" class="btn btn-success" value="修改" onclick="modify('4')">
			</div>
			<div style="width: 80%;height: 500px;float: right;position: relative;margin: 50px 0;">
				<h3>历史记录</h3>
				<table id="table-3">
					<thead style="color: #2A579A">
						<th style="color: #2A579A">类型</th>
						<th style="color: #2A579A">消息</th>
						<th style="color: #2A579A">修改时间</th>
						<th style="color: #2A579A">栏位</th>
					</thead>
					<tbody>
						<c:forEach items="${allpublicmsg}" var="allpublicmsg">
							<tr>
								<td>${allpublicmsg.types}</td>
								<td style="width: 500px">${allpublicmsg.msg}</td>
								<td>${allpublicmsg.modifydate}</td>
								<td>${allpublicmsg.no}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<!-- end: Main Menu -->
			<script>
				function modify(no) {
					var selects = document.getElementById("select"+no);
					var texts = document.getElementById("text"+no);
                    var param = "/updatepublicmsg?types="+selects.value+"&&msg="+texts.value+
					"&&no="+no;
                    $.ajax({
                        url:param,
                        type:"get",
                        dataType:"json",
                        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
                        success:function(data){

                            texts.value = '';
//                            var table = document.getElementById("table-3");
//                            table.innerHTML+="<tr><td>"+$("#selects option:selected").text()+"</td><td style='width: 500px'>"
//								+texts.value+"</td><td>栏位"+no.value+"</td></tr>";
                            new TipBox({type:'success',str:'修改成功!',hasBtn:true});
                        }
                    });
					//alert(selects.value);
                }
			</script>
		<!-- start: Content -->
		<div class="main">
		</div>
		<!-- end: Content -->
		<br><br><br>




	</div><!--/container-->
		
	
	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Warning Title</h4>
				</div>
				<div class="modal-body">
					<p>Here settings can be configured...</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
	<div class="clearfix"></div>
	
		
	<!-- start: JavaScript-->
	<!--[if !IE]>-->

			<script src="assets/js/jquery-2.1.1.min.js"></script>

	<!--<![endif]-->
	<!--[if IE]>
	
		<!--<script src="assets/js/jquery-1.11.1.min.js"></script>-->
	
	<![endif]-->

	<!--[if !IE]>-->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.1.1.min.js'>"+"<"+"/script>");
		</script>

	<!--<![endif]-->

	<!--[if IE]>

		<script type="text/javascript">
	 	window.jQuery || document.write("<script src='assets/js/jquery-1.11.1.min.js'>"+"<"+"/script>");
		</script>
	<![endif]-->
	<script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	
	
	<!-- page scripts -->
	<!--<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>-->
	<!--<script src="assets/plugins/touchpunch/jquery.ui.touch-punch.min.js"></script>-->
	<!--<script src="assets/plugins/moment/moment.min.js"></script>-->
	<!--<script src="assets/plugins/fullcalendar/js/fullcalendar.min.js"></script>-->
	<!--&lt;!&ndash;[if lte IE 8]>-->
		<!--<script language="javascript" type="text/javascript" src="assets/plugins/excanvas/excanvas.min.js"></script>-->
	<!--<![endif]&ndash;&gt;-->
	<!--<script src="assets/plugins/flot/jquery.flot.min.js"></script>-->
	<!--<script src="assets/plugins/flot/jquery.flot.pie.min.js"></script>-->
	<!--<script src="assets/plugins/flot/jquery.flot.stack.min.js"></script>-->
	<!--<script src="assets/plugins/flot/jquery.flot.resize.min.js"></script>-->
	<!--<script src="assets/plugins/flot/jquery.flot.time.min.js"></script>-->
	<!--<script src="assets/plugins/flot/jquery.flot.spline.min.js"></script>-->
	<!--<script src="assets/plugins/xcharts/js/xcharts.min.js"></script>-->
	<!--<script src="assets/plugins/autosize/jquery.autosize.min.js"></script>-->
	<!--<script src="assets/plugins/placeholder/jquery.placeholder.min.js"></script>-->
	<!--<script src="assets/plugins/datatables/js/jquery.dataTables.min.js"></script>-->
	<!--<script src="assets/plugins/datatables/js/dataTables.bootstrap.min.js"></script>-->
	<!--<script src="assets/plugins/raphael/raphael.min.js"></script>-->
	<!--<script src="assets/plugins/morris/js/morris.min.js"></script>-->
	<!--<script src="assets/plugins/jvectormap/js/jquery-jvectormap-1.2.2.min.js"></script>-->
	<!--<script src="assets/plugins/jvectormap/js/jquery-jvectormap-world-mill-en.js"></script>-->
	<!--<script src="assets/plugins/jvectormap/js/gdp-data.js"></script>-->
	<!--<script src="assets/plugins/gauge/gauge.min.js"></script>-->
	
	
	<!-- theme scripts -->
	<script src="assets/js/SmoothScroll.js"></script>
	<script src="assets/js/jquery.mmenu.min.js"></script>
	<script src="assets/js/core.min.js"></script>
	<!--<script src="assets/plugins/d3/d3.min.js"></script>-->
	
	<!-- inline scripts related to this page -->
	<script src="assets/js/pages/index.js"></script>
	
	<!-- end: JavaScript-->
	</div>
</body>
</html>