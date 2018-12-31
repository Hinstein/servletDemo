<%@ page language="java"
	import="java.util.*, java.text.SimpleDateFormat, java.util.Date"
	pageEncoding="UTF-8"%>
<%@ page import="model.UserTable" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'input_result.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<jsp:useBean id="stuInfo" class="model.StuInfo"></jsp:useBean>
	<jsp:setProperty property="*" name="stuInfo" /><!--录入的学生信息封装成实体-->
	<jsp:useBean id="stuServer" class="service.StuInfoService"></jsp:useBean>
	<jsp:useBean id="userTable" class="model.UserTable"></jsp:useBean>

	<%
		UserTable user = (UserTable) session.getAttribute("user");
		/* out.print(user.getUsername()); */

		stuInfo.setClerk_id(user.getUsername());

		String baodanNo = "baodan:" + UUID.randomUUID().toString().replace("-", "");
		stuInfo.setBaodan_no(baodanNo);

		SimpleDateFormat tf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = tf.format(new Date());
		stuInfo.setInforce_time(date);
		
	%>
	<%
		if (stuServer.addStu(stuInfo)) {
	%>
	<script>
		alert("加入保单成功！");
	</script>
	<%
		} else {
	%>
	<script>
		alert("加入保单失败！");
	</script>
	<%
		}
	%>
</body>
</html>
