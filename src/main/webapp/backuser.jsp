<%--
  Created by IntelliJ IDEA.
  User: SAB
  Date: 2017-11-14
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户中心</title>

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
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/climacons-font.css" rel="stylesheet">
    <%--<link href="assets/plugins/xcharts/css/xcharts.min.css" rel=" stylesheet">--%>
    <%--<link href="assets/plugins/fullcalendar/css/fullcalendar.css" rel="stylesheet">--%>
    <%--<link href="assets/plugins/morris/css/morris.css" rel="stylesheet">--%>
    <%--<link href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet">--%>
    <%--<link href="assets/plugins/jvectormap/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">--%>
    <link href="assets/css/style.min.css" rel="stylesheet">
    <link href="assets/css/add-ons.min.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/messenger.css" rel="stylesheet">
    <link href="css/messenger-theme-future.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/mdialog.css">
    <script type="text/javascript" src="js/zepto.min.js"></script>
    <script type="text/javascript" src="js/mdialog.js"></script>

    <style>
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
        /* Table Head */
        #table-6{
            margin: 30px 0;
        }
        #table-6 thead th {
            margin: 30px 0;
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
        option{
            height: 400px;
            overflow: scroll;
            background-color: #eeeeee;
            font-size: 18px;
            font-weight: bold;
        }
        .text{
            width: 200px;
            margin: 10px;
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

        <%--<ul class="nav navbar-nav navbar-actions navbar-left">--%>
        <%--<li class="visible-md visible-lg"><a href="backindex.jsp#" id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>--%>
        <%--<li class="visible-xs visible-sm"><a href="backindex.jsp#" id="sidebar-menu"><i class="fa fa-navicon"></i></a></li>--%>
        <%--</ul>--%>
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
                        <li><a href="${pageContext.request.contextPath}/courseload"><i class="fa fa-laptop"></i><span class="text"> 课程编辑</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div style="width: 80%;height: 600px;float: right">
            <div class="table-responsive" style="margin: 30px 0;height: 600px;overflow: scroll;">
                <table class="table" id="table-6">
                    <thead>
                    <tr>
                        <th>用户编号</th>
                        <th>密码</th>
                        <th>姓名</th>
                        <th>职位</th>
                        <th>编辑</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${alluser}" var="alluser">
                        <tr class="" id="${alluser.username}">
                            <form action="${pageContext.request.contextPath}/updateuserbyadmin" method="post">
                                <td><input type="text" value="${alluser.username}" name="username" readonly style="background-color: #EEEEEE"></td>
                                <td><input type="password" placeholder="******" name="password" id="pwd"></td>
                                <td><input type="text" name="name" id="name" value="${alluser.name}"></td>
                                <td>
                                        <%--<input type="text" name="status" id="status" value="${alluser.status}">--%>
                                    <select id="status" name="status" style="width: 150px;height: 25px">
                                        <option value="${alluser.status}">${alluser.status}</option>
                                        <hr>
                                        <option value="管理员">管理员</option>
                                        <option value="教师">教师</option>
                                        <option value="学生">学生</option>
                                    </select>
                                </td>

                                <td><input type="submit" value="修改" style="border: 0">/
                                    <strong style="color: red;cursor: pointer" onclick="admindel('${alluser.username}')">删除</strong>
                                </td>
                            </form>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <%--${alluser}--%>

            </div>
            <div style="width: 100%;height: 70px;">
                <input class="text" type="text" id="username" placeholder="用户名">
                <input class="text" type="text" id="password" placeholder="可不填，默认密码为123456">
                <input class="text" type="text" id="names" placeholder="姓名">
                <select id="statu"  style="width: 150px;height: 25px" onchange="isstudent()">
                    <option value="0">学生</option>
                    <option value="2">管理员</option>
                    <option value="1">教师</option>
                </select>
                <br>
                <select id="classes" style="width: 200px;height: 25px">
                    <c:forEach items="${allclass}" var="allclass">
                        <option value="${allclass.stuclass}">${allclass.stuclass}</option>
                    </c:forEach>
                </select >
                <select id="kind" style="width: 200px;height: 25px">
                    <c:forEach items="${allkind}" var="allkind">
                        <option value="${allkind.stukind}">${allkind.stukind}</option>
                    </c:forEach>
                </select>
                <input type="button" value="新增" class="btn btn-success" onclick="saveUser()">
            </div>
        </div>
        <script>
            function isstudent() {
                var statu = document.getElementById("statu");
                if (statu.value != "0"){
                    document.getElementById("classes").value = "";
                    document.getElementById("classes").disabled = "dis";
                    document.getElementById("kind").value = "";
                    document.getElementById("kind").disabled = "dis";
                }
                else {
                    $("#classes").removeAttr('disabled');
                    $("#kind").removeAttr('disabled');
                }
            }
        </script>
        <script>
            function saveUser() {
                var username = $("#username").val();
                var password = $("#password").val();
                var names = $("#names").val();
                var status = $("#statu").val();
                var classes = $("#classes").val();
                var kind = $("#kind").val();
                if(username === ""){
                    new TipBox({type:'error',str:'请输入用户名!',hasBtn:true});
                    return;
                }
                if(names === ""){
                    new TipBox({type:'error',str:'请输入姓名!',hasBtn:true});
                    return;
                }
                var param = "/saveuser?username="+username+"&password="+password+
                    "&name="+names+"&status="+status+"&classes="+classes+"&kind="+kind;
                $.ajax({
                    url:param,
                    type:"get",
                    dataType:"json",
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
                    success:function(data){
                        new TipBox({type:'success',str:'添加成功!',hasBtn:true});
                        document.getElementById("username").value = '';
                        document.getElementById("password").value = '';
                        document.getElementById("names").value = '';
                   }
//                   ,error:function () {
//                        new TipBox({type:'error',str:'添加失败!请确保用户名不重复',hasBtn:true});
//                    }
                });
            }
        </script>
        <%--<script>--%>
            <%--function updateuser() {--%>
                <%--window.location.href--%>
            <%--}--%>
        <%--</script>--%>
        <script>
            function admindel(id) {
                if(confirm("确定删除？")){
                    delreq(id);
                }
            }
            function delreq(id) {
                param = "/removeuser?username="+id;
                $.ajax({
                    url:param,
                    type:"get",
                    dataType:"json",
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
                    success:function(data){
                        document.getElementById(id).style.display = 'none';
                        new TipBox({type:'success',str:'删除成功!',hasBtn:true});
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
    <script src="js/messenger.js"></script>


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
