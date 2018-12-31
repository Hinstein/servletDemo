<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page import="model.StuInfo"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'modifyOneStu.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


</head>

<body>

	<%
		StuInfo stu =(StuInfo) session.getAttribute("stu");
	%>
	<center>
		<form method="post" action="stu/ModifyOneStuInfoServlet">

			<table cellspacing="0">
				<tr>
					<td align="center" colspan="2">修改保单</td>
				<tr>
					<td>投保人名字</td>
					<td><input type="text" name="name" value="<%=stu.getName()%>" /></td>
				</tr>
				<tr>
					<td>性别</td>
					<td><input type="radio" name="sex"
						<%if (stu.getSex() == 1) {%> checked <%}%> value="1" />男
						<input type="radio" name="sex" <%if (stu.getSex() == 0) {%> checked <%}%> value="0" />女</td>
				</tr>
				<tr>
					<td>出生日期</td>
					<td><input type="date" name="data" value="<%=stu.getData()%>" /></td>
				</tr>
				<tr>
					<td>电话号码</td>
					<td><input type="text" name="moblie" value="<%=stu.getMoblie()%>" /></td>
				</tr>
				<tr>
					<td>险种名称</td>
					<td><select name="pol_name">
							<option <%if (stu.getPol_name().equals("意外险")) {%> selected <%}%>>意外险</option>
							<option <%if (stu.getPol_name().equals("健康险")) {%> selected <%}%>>健康险</option>
							<option <%if (stu.getPol_name().equals("补充医疗险")) {%> selected<%}%>>补充医疗险</option>
							<option <%if (stu.getPol_name().equals("分红险")) {%> selected <%}%>>分红险</option>
					</select></td>
				</tr>
				<tr>
					<td>投保金额</td>
					<td><input type="text" name="money" value="<%=stu.getMoney()%>" /></td>
				</tr>
				<tr>
					<td>被保人1的姓名</td>
					<td><input type="text" name="bname1" value="<%=stu.getBname1()%>" /></td>
				</tr>
				<tr>
					<td>与被保人1的关系</td>
					<td><input type="text" name="brel1" value="<%=stu.getBrel1()%>" /></td>
				</tr>
				<tr>
					<td>被保人2的姓名</td>
					<td><input type="text" name="bname2" value="<%=stu.getBname2()%>" /></td>
				</tr>
				<tr>
					<td>与被保人2的关系</td>
					<td><input type="text" name="brel2" value="<%=stu.getBrel2()%>" /></td>
				</tr>
				<tr>
					<td align="center" colspan="2">
						<input type="hidden" name="id" value="<%=stu.getId()%>" />
						<input type="submit" value="确定">
						<input type="reset" value="重置"></td>
				</tr>
			</table>
		</form>
</body>
</html>
