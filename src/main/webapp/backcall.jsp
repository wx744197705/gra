<%--
  Created by IntelliJ IDEA.
  User: wxx
  Date: 2017/11/3
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>后台</title>

    <!-- Import google fonts - Heading first/ text second -->
    <%--<link rel='stylesheet' type='text/css' href='http://fonts.useso.com/css?family=Open+Sans:400,700|Droid+Sans:400,700' />--%>
    <!--[if lt IE 9]>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:700" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Droid+Sans:400" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com?family=Droid+Sans:700" rel="stylesheet" type="text/css" />
    <![endif]-->

    <!-- Fav and touch icons -->
    <%--<link rel="shortcut icon" href="assets/ico/favicon.ico" type="image/x-icon" />--%>

    <!-- Css files -->
    <link rel="stylesheet" type="text/css" href="css/mdialog.css">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/climacons-font.css" rel="stylesheet">
    <link href="assets/css/style.min.css" rel="stylesheet">
    <link href="assets/css/add-ons.min.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <style>
        /* Table Head */
        #table-6 thead th {
            background-color: rgb(77, 160, 107);
            color: #fff;
            border-bottom-width: 0;
        }

        /* Column Style */
        #table-6 td {
            color: #000;
        }
        /* Heading and Column Style */
        #table-6 tr, #table-6 th {
            border-width: 1px;
            border-style: solid;
            border-color: rgb(77, 160, 107);
        }

        /* Padding and font style */
        #table-6 td, #table-6 th {
            padding: 5px 10px;
            font-size: 12px;
            font-family: Verdana;
            font-weight: bold;
        }
        .selects{
            width: 150px;
            height: 30px;
            line-height: 30px;
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
        ::-webkit-scrollbar {
            width: 0;
            height: 0;
        }

    </style>
</head>

<body>
<script>
    var error = ${errortypes}
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
<script type="text/javascript" src="js/zepto.min.js"></script>
<script type="text/javascript" src="js/mdialog.js"></script>
<script>

//    alert($("#p1").val());
    <%--var user = "";--%>
    <%--user =${user.getStatus()}--%>
    <%--if(user === null || user != "2"){--%>
        <%--alert("请以管理员的身份登录");--%>
    <%--}--%>
</script>
<div class="navbar" role="navigation">
    <div class="container-fluid">

        <%--<ul class="nav navbar-nav navbar-actions navbar-left">--%>
        <%--<li class="visible-md visible-lg"><a href="backindex.jsp#" id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>--%>
        <%--<li class="visible-xs visible-sm"><a href="backindex.jsp#" id="sidebar-menu"><i class="fa fa-navicon"></i></a></li>--%>
        <%--</ul>--%>
            <form action="/filters">
                <span>教师:</span>
                <select class="selects" name = "teacher" id="teacher">
                    <%--<option value="${teacher}">${teacher}</option>--%>
                    <option value=""></option>
                    <c:forEach items="${allteacher}" var="teacher">
                        <option value="${teacher.username}">${teacher.name}</option>
                    </c:forEach>
                </select>
                <span>班级:</span>
                <select class="selects" name = "classes" id="classes">
                    <%--<option value="${classes}">${classes}</option>--%>
                    <option value=""></option>
                    <c:forEach items="${allclass}" var="allclass">
                        <option value="${allclass.stuclass}">${allclass.stuclass}</option>
                    </c:forEach>
                </select>
                <span>学院:</span>
                <select class="selects" name = "kind" id="kind">
                    <%--<option value="${kind}">${kind}</option>--%>
                        <option value=""></option>
                    <c:forEach items="${allkind}" var="allkind">
                        <option value="${allkind.stukind}">${allkind.stukind}</option>
                    </c:forEach>
                </select>
                开始时间:<input type="date" class="selects" name="begindate" id="begindate">
                结束时间:<input type="date" class="selects" name="enddate" id="enddate">
                <input type="submit" value="筛选" class="btn btn-success">
                <p id="p1" style="display: none">${teacher}</p>
                <p id="p2" style="display: none">${classes}</p>
                <p id="p3" style="display: none">${kind}</p>
                <p id="p4" style="display: none">${begindate}</p>
                <p id="p5" style="display: none">${enddate}</p>
                <!--js无法获取model中的字符串，用此方法做为js获取值的桥梁-->
                <script>
                    document.getElementById("teacher").value = document.getElementById("p1").innerHTML;
                    document.getElementById("classes").value = document.getElementById("p2").innerHTML;
                    document.getElementById("kind").value = document.getElementById("p3").innerHTML;
                    document.getElementById("begindate").value = document.getElementById("p4").innerHTML;
                    document.getElementById("enddate").value = document.getElementById("p5").innerHTML;
                </script>
            </form>
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

        <%--<% String[] color = {"","success","info","warning","danger"}; int i = 0; %>--%>
        <div style="width: 80%;height: 500px;float: right;overflow: scroll;margin: 100px 0">
            <div class="table-responsive">
                <table class="table" id="table-6">
                    <thead>
                    <tr>
                        <th>学号</th>
                        <th>姓名</th>
                        <th>班级</th>
                        <th>备注</th>
                        <th>点名时间</th>
                        <th>学院</th>
                        <th>教师编号</th>
                        <th>编辑</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${allcall}" var="allcall">
                        <tr id="${allcall.id}">

                            <td>${allcall.stuid}</td>
                            <td>${allcall.roster.stuname}</td>
                            <td>${allcall.roster.stuclass}</td>
                            <td>${allcall.callno}</td>
                            <td>${allcall.calldate}</td>
                            <td>${allcall.roster.stukind}</td>
                            <td>${allcall.tchid}</td>
                            <td><strong style="color: red;cursor: pointer" onclick="admindel('${allcall.id}')">删除</strong></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <script>
            function admindel(id) {
                if(confirm("确定删除？")){
                    document.getElementById(id).style.display = 'none';
                    delreq(id);
                }
            }
            function delreq(id) {
                param = "/admremovecall?id="+id;
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
        <!-- end: Main Menu -->

        <!-- start: Content -->
        <div class="main">
        </div>
        <!-- end: Content -->
        <br><br><br>




    </div><!--/container-->


    <%--<div class="modal fade" id="myModal">--%>
        <%--<div class="modal-dialog">--%>
            <%--<div class="modal-content">--%>
                <%--<div class="modal-header">--%>
                    <%--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>--%>
                    <%--<h4 class="modal-title">Warning Title</h4>--%>
                <%--</div>--%>
                <%--<div class="modal-body">--%>
                    <%--<p>Here settings can be configured...</p>--%>
                <%--</div>--%>
                <%--<div class="modal-footer">--%>
                    <%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
                    <%--<button type="button" class="btn btn-primary">Save changes</button>--%>
                <%--</div>--%>
            <%--</div><!-- /.modal-content -->--%>
        <%--</div><!-- /.modal-dialog -->--%>
    <%--</div><!-- /.modal -->--%>

    <div class="clearfix"></div>


    <!-- start: JavaScript-->
    <!--[if !IE]>-->

    <script src="assets/js/jquery-2.1.1.min.js"></script>

    <!--<![endif]-->
    <!--[if IE]>



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
    <%--<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>--%>
    <%--<script src="assets/plugins/touchpunch/jquery.ui.touch-punch.min.js"></script>--%>
    <%--<script src="assets/plugins/moment/moment.min.js"></script>--%>
    <%--<script src="assets/plugins/fullcalendar/js/fullcalendar.min.js"></script>--%>
    <%--<!--[if lte IE 8]>--%>
    <%--<script language="javascript" type="text/javascript" src="assets/plugins/excanvas/excanvas.min.js"></script>--%>
    <%--<![endif]-->--%>
    <%--<script src="assets/plugins/flot/jquery.flot.min.js"></script>--%>
    <%--<script src="assets/plugins/flot/jquery.flot.pie.min.js"></script>--%>
    <%--<script src="assets/plugins/flot/jquery.flot.stack.min.js"></script>--%>
    <%--<script src="assets/plugins/flot/jquery.flot.resize.min.js"></script>--%>
    <%--<script src="assets/plugins/flot/jquery.flot.time.min.js"></script>--%>
    <%--<script src="assets/plugins/flot/jquery.flot.spline.min.js"></script>--%>
    <%--<script src="assets/plugins/xcharts/js/xcharts.min.js"></script>--%>
    <%--<script src="assets/plugins/autosize/jquery.autosize.min.js"></script>--%>
    <%--<script src="assets/plugins/placeholder/jquery.placeholder.min.js"></script>--%>
    <%--<script src="assets/plugins/datatables/js/jquery.dataTables.min.js"></script>--%>
    <%--<script src="assets/plugins/datatables/js/dataTables.bootstrap.min.js"></script>--%>
    <%--<script src="assets/plugins/raphael/raphael.min.js"></script>--%>
    <%--<script src="assets/plugins/morris/js/morris.min.js"></script>--%>
    <%--<script src="assets/plugins/jvectormap/js/jquery-jvectormap-1.2.2.min.js"></script>--%>
    <%--<script src="assets/plugins/jvectormap/js/jquery-jvectormap-world-mill-en.js"></script>--%>
    <%--<script src="assets/plugins/jvectormap/js/gdp-data.js"></script>--%>
    <%--<script src="assets/plugins/gauge/gauge.min.js"></script>--%>


    <!-- theme scripts -->
    <script src="assets/js/SmoothScroll.js"></script>
    <script src="assets/js/jquery.mmenu.min.js"></script>
    <script src="assets/js/core.min.js"></script>
    <%--<script src="assets/plugins/d3/d3.min.js"></script>--%>

    <!-- inline scripts related to this page -->
    <script src="assets/js/pages/index.js"></script>

    <!-- end: JavaScript-->
</div>
</body>
</html>
