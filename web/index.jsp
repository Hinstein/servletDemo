<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <title>中国人寿保险管理系统</title>

</head>

<body>

<center>
    <form action="user/loginServlet" name="login" method="post">
        <table>
            <tr>

                <td align="center" colspan="2">欢迎来到中国人寿保险管理系统</td>
            </tr>
            <tr>
                <td align="center">业务员工号:</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td align="center">密码:</td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td align="center" colspan="2"><input type="submit" value="确定"></td>
            </tr>
        </table>

    </form>

</center>
</body>
</html>
