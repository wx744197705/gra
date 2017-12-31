<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wxx
  Date: 2017/12/31
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
                        <th>课程代码</th>
                        <th>课程名字</th>
                        <th>编辑</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${allcourse}" var="allcourse">
                        <tr id="${allcourse.courseid}">
                            <td>${allcourse.courseid}</td>
                            <td>${allcourse.coursename}</td>
                            <td style="color: red" onclick="removeCourse('${allcourse.courseid}')">删除</td>
                        </tr>
                    </c:forEach>
                    <%--<c:forEach items="${allsche}" var="allsche">--%>
                        <%--&lt;%&ndash;<tr class="" id="${allsche.scheid}">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td>${allsche.scheid}</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td>${allsche.course.coursename}</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td>${allsche.user.name}</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td>${allsche.scheclass}</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td>${allsche.scheweek}</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td>${allsche.schebegin}</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td>${allsche.scheend}</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td>${allsche.schedate}</td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td><strong style="color: #2A579A;cursor: pointer" onclick="adminadd()">新增</strong>/&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<strong style="color: red;cursor: pointer" onclick="admindel('${allsche.scheid}')">删除</strong></td>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
                    <%--</c:forEach>--%>
                    </tbody>
                </table>
            </div>
            <script>
                function removeCourse(id) {
                    if(confirm("确定删除？")){
                        delreq(id);
                    }
                }
                function delreq(id) {
                    url = '/remove?courseid='+id;
                    $.ajax({
                        url:url,
                        type:"post",
                        dataType:"json",
                        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
                        success:function(data){
                            document.getElementById(id).style.display = 'none';
                            new TipBox({type:'success',str:'删除成功!',hasBtn:true});
                        }
                    });
                    //location.href = '/remove?courseid='+id;
                }
            </script>


        </div>
</body>
</html>
