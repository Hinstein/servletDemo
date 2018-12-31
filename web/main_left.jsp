<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>My JSP 'main_left.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<body>

<div class="header">保单信息</div>
<div class="manage">
    <a href="input.jsp" target="main_right">录入保单信息</a> <br/> <a
        href="student/QueryAllStuServlet?method=query" target="main_right">查看保单信息</a> <br/> <a
        href="student/QueryAllStuServlet?method=modify" target="main_right">修改保单信息</a> <br/> <a
        href="student/QueryAllStuServlet?method=delete" target="main_right">删除保单信息</a> <br/> <a
        href="user/exitServlet" target="_top">退出</a> <br/>
</div>

</body>
</html>
