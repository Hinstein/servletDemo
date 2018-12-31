<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>中国人寿保险管理系统</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">


</head>
<jsp:include page="isLogin.jsp"></jsp:include>

<frameset rows="20%,*" frameborder="no">
    <frame noresize="noresize" src="top.jsp">
    <frameset cols="15%,*">
        <frame noresize="noresize" src="main_left.jsp">
        <frame noresize="noresize" src="main_right.jsp" name="main_right">
    </frameset>
</frameset>

</html>
