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

    <title>My JSP 'input.jsp.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<body>
<center>
    <form method="post" action="stu/inputStuServlet">
        <table cellspacing="0">
            <tr>
                <td align="center" colspan="2">新建保单</td>
            <tr>
            <tr>
                <td>投保人名字</td>
                <td><input type="text" name="name"/></td>
            </tr>
            <tr>
                <td>性别</td>
                <td><input type="radio" name="sex" checked value="1"/>男
                    <input type="radio" name="sex" value="0"/>女
                </td>

            </tr>
            <tr>
                <td>出生日期</td>
                <td><input type="date" name="data"/></td>
            </tr>
            <tr>
                <td>电话号码</td>
                <td><input type="text" name="moblie"/></td>
            </tr>
            <tr>
                <td>险种名称</td>
                <td><select name="pol_name">
                    <option>意外险</option>
                    <option>健康险</option>
                    <option>补充医疗险</option>
                    <option>分红险</option>
                </select></td>
            </tr>
            <tr>
                <td>投保金额</td>
                <td><input type="text" name="money"/></td>
            </tr>
            <tr>
                <td>被保人1的姓名</td>
                <td><input type="text" name="bname1"/></td>
            </tr>
            <tr>
                <td>与被保人1的关系</td>
                <td><input type="text" name="brel1"/></td>
            </tr>
            <tr>
                <td>被保人2的姓名</td>
                <td><input type="text" name="bname2"/></td>
            </tr>
            <tr>
                <td>与被保人2的关系</td>
                <td><input type="text" name="brel2"/></td>
            </tr>
            <tr>
                <td align="center" colspan="2"><input type="submit" value="确定">
                    <input type="reset" value="重置"></td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
