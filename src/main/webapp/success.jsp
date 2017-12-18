<%--
  Created by IntelliJ IDEA.
  User: SAB
  Date: 2017-10-18
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script>
    var suc = "";
    suc = ${index}
    if(suc == "1"){
        window.location.href = 'indexinit';
    }
    else{
        window.location.href = 'backindexinit';
    }
</script>
<script>
    var suc = "";
    suc = ${successtype}
    if(suc == "1"){
        alert("提交成功，请耐心等待审核");
    }
    window.location.href = 'leavehis';
</script>
<script>
    var success = ${success};
    if(success == "1"){
        alert("发送成功");
        window.location.href = 'centerinit';
    }
</script>
<script>
    var success = ${backuser};
    if(success == "1"){
        alert("修改成功");
    }
    else{
        alert("修改失败")
    }
    window.location.href = 'userinfoinit';
</script>
</body>
</html>
