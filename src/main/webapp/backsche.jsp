<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: SAB
  Date: 2017-11-02
  Time: 17:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


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
    <link rel="shortcut icon" href="assets/ico/favicon.ico" type="image/x-icon" />

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
    <link rel="stylesheet" type="text/css" href="css/mdialog.css">
    <script type="text/javascript" src="js/zepto.min.js"></script>
    <script type="text/javascript" src="js/mdialog.js"></script>
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
            border-top: 0;
            border-left: 0;
            border-right: 0;
            border-bottom: 3px black solid;
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
            height: 200px;
            opacity: 0.1;
        }
    </style>
</head>

<body>
<script>
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
<!-- start: Header -->
<div class="navbar" role="navigation">
    <div class="container-fluid">
        <%--<input type="color" onchange="demo()" id="demo">--%>
        <%--<script>--%>
            <%--function demo() {--%>
                <%--alert(document.getElementById("demo").value);--%>
            <%--}--%>
        <%--</script>--%>

        <%--<ul class="nav navbar-nav navbar-actions navbar-left">--%>
        <%--<li class="visible-md visible-lg"><a href="backindex.jsp#" id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>--%>
        <%--<li class="visible-xs visible-sm"><a href="backindex.jsp#" id="sidebar-menu"><i class="fa fa-navicon"></i></a></li>--%>
        <%--</ul>--%>
    </div>

</div>
<!-- end: Header -->
<script>
    var error =${errortype}
    if(error === "1"){
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
        <% String[] color = {"","success","info","warning","danger"}; int i = 0; %>
        <div style="width: 80%;height: 600px;float: right;overflow: scroll">
            <div class="table-responsive">
                <table class="table" id="table-6">
                    <thead>
                    <tr>
                        <th>代码</th>
                        <th>课程名字</th>
                        <th>任课教师</th>
                        <th>任课班级</th>
                        <th>星期</th>
                        <th>开始时间</th>
                        <th>结束时间</th>
                        <th>排课时间</th>
                        <th>编辑</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${allsche}" var="allsche">
                        <tr class="" id="${allsche.scheid}">
                            <td>${allsche.scheid}</td>
                            <td>${allsche.course.coursename}</td>
                            <td>${allsche.user.name}</td>
                            <td>${allsche.scheclass}</td>
                            <td>${allsche.scheweek}</td>
                            <td>${allsche.schebegin}</td>
                            <td>${allsche.scheend}</td>
                            <td>${allsche.schedate}</td>
                            <td><strong style="color: #2A579A;cursor: pointer" onclick="adminadd()">新增</strong>/
                                <strong style="color: red;cursor: pointer" onclick="admindel('${allsche.scheid}')">删除</strong></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

            </div>
            <p id="replay" style="text-align: right;color: #2A579A;font-weight: bold;padding: 20px"><b onclick="replays()" style="cursor: pointer">重新排课</b></p>
            <p style="text-align: right;font-weight: bold;padding: 20px"><b style="cursor: pointer">建议重新排课前，先<a href="${pageContext.request.contextPath}/export">导出排课信息</a></b></p>
            <div style="width: 100%;height: 300px;display: none;" id="sche">
                <div>
                    <span>教师:</span>
                    <select class="selects" name = "teacher" id="teacher">
                        <option value=""></option>
                        <c:forEach items="${allteacher}" var="teacher">
                            <option value="${teacher.username}">${teacher.name}</option>
                        </c:forEach>
                    </select>
                    <span>班级:</span>
                    <select class="selects" name = "classes" id="classes">
                        <option value=""></option>
                        <c:forEach items="${allclass}" var="allclass">
                            <option value="${allclass.stuclass}">${allclass.stuclass}</option>
                        </c:forEach>
                    </select>
                    <span>课程:</span>
                    <select class="selects" name = "course" id="course">
                        <option value=""></option>
                        <c:forEach items="${allcourse}" var="allcourse">
                            <option value="${allcourse.courseid}">${allcourse.coursename}</option>
                        </c:forEach>
                    </select>
                    <select class="selects" name = "week" id="week">
                        <option value="1">星期一</option>
                        <option value="2">星期二</option>
                        <option value="3">星期三</option>
                        <option value="4">星期四</option>
                        <option value="5">星期五</option>
                        <option value="6">星期六</option>
                        <option value="0">星期日</option>
                    </select>
                    <br><br>
                    开始时间:<input type="time" class="selects" name="begindate" id="begindate">
                    结束时间:<input type="time" class="selects" name="enddate" id="enddate">
                    <input type="button" value="排课" class="btn btn-success" onclick="saveSche()">
                </div>
            </div>

        </div>

        <script>
            function saveSche() {
                var teacher = document.getElementById("teacher");
                var classes = document.getElementById("classes");
                var course = document.getElementById("course");
                var week = document.getElementById("week");
                var begin = document.getElementById("begindate");
                var end = document.getElementById("enddate");

                if(teacher.value === ""){
                    new TipBox({type:'error',str:'请选择教师!',hasBtn:true});
                    return;
                }
                if(classes.value === ""){
                    new TipBox({type:'error',str:'请选择班级!',hasBtn:true});
                    return;
                }
                if(course.value === ""){
                    new TipBox({type:'error',str:'请选择课程!',hasBtn:true});
                    return
                }
                if(begin.value === ""){
                    new TipBox({type:'error',str:'请选择开始时间!',hasBtn:true});
                    return;
                }
                if(end.value === ""){
                    new TipBox({type:'error',str:'请选择结束时间!',hasBtn:true});
                    return;
                }
                param = "/savesche?teacher="+teacher.value+"&&classes="+classes.value+"&&course="+course.value+"&&week="+week.value
                    +"&&begindate="+begin.value+"&&enddate="+end.value+"&&schedate="+getDateTime();

                $.ajax({
                    url:param,
                    type:"get",
                    dataType:"json",
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
                    success:function(data){
                        var de = document.getElementById("table-6");
                        de.innerHTML += "<tr><td></td><td>"+$("#course option:selected").text()+"</td><td>"+
                            $("#teacher option:selected").text()+"</td><td>"+classes.value+"</td><td>"+$("#week option:selected").text()+"</td><td>"+
                            begin.value+"</td><td>"+end.value+"</td><td>"+getDateTime()+"</td></tr>";
                        //alert(de.innerHTML);
                        new TipBox({type:'success',str:'排课成功!',hasBtn:true});
                    },
                    error:function () {
                        alert("出错!");
                    }
                });
            }
        </script>
        <script>
            function replays() {
                if(confirm("排课表将清除\n确定吗？")){

                    param = "/replaysche";
                    $.ajax({
                        url:param,
                        type:"POST",
                        dataType:"json",
                        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
                        success:function(data){
                            $.each($("#table-6 tr"), function(i){
                                if(i > 0){
                                    this.style.display = 'none';
                                }
                            });
                            document.getElementById("replay").style.display = 'none';
                            document.getElementById("sche").style.display = 'block';
                        },
                        error:function () {

                        }

                    });


                }

            }
            function admindel(id) {
                if(confirm("确定删除？")){
                    document.getElementById(id).style.display = 'none';
                    delreq(id);
                }
            }
            function delreq(id) {
                param = "/admremovesche?id="+id;
                $.ajax({
                    url:param,
                    type:"POST",
                    dataType:"text",
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
                    success:function(data){
                        //alert(data);
                    }
                });
            }
            function adminadd(id) {
                //alert(document.getElementById(id).rowIndex);
                document.getElementById("sche").style.display = 'block';
            }
        </script>
        <!-- end: Main Menu -->

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

    <script src="assets/js/jquery-2.1.1.min.js"></script>


    <script type="text/javascript">
        window.jQuery || document.write("<script src='assets/js/jquery-2.1.1.min.js'>"+"<"+"/script>");
    </script>

    <script type="text/javascript">
        window.jQuery || document.write("<script src='assets/js/jquery-1.11.1.min.js'>"+"<"+"/script>");
    </script>
    <![endif]-->
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>


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
