<%@ page language="java" import="java.util.*,model.UserTable"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'top.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <link rel="stylesheet" type="text/css"
          href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/normalize.css">
    <style>
        div {
            float: left;
        }
    </style>

</head>
<style>
    .one, .two {
        width: 50%;
        height: 100px;
        float: left;
        box-sizing: border-box;
    }

    .two {
        text-align: right;
    }
</style>
<body>
<div class="one">
    <img width="500px" src="photo/logo.jpg" class="logo"/> <font
        size="7" color="black"> | 官方网站 </font>
</div>
<div class="two" style="position:absolute;right:0px;bottom:0px;">
    <font size="4" color="black">工号： <a href="main_right.jsp"
                                        target="main_right"><%
        UserTable user = (UserTable) session.getAttribute("user");
        out.print(user.getUsername());
    %></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
            href="user/exitServlet" target="_top">退出</a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </font>
</div>
</body>
</html>
