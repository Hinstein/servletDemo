<%@ page language="java" import="java.util.*"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page import="model.StuInfo"%>
<%@ page import="model.UserTable"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'modifyStuInfo.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>

	<%
		//List stus = JSONArray.toList(stuSer.queryAllStu(), new stuInfo(), new JsonConfig());
		List stus = (List)session.getAttribute("stus");
		Iterator iter = stus.iterator();
		UserTable user = (UserTable) session.getAttribute("user");


	%>
	<center>
		<table id="mytable" cellspacing="0">
			<tr>
				<th scope="col">id</th>
				<th scope="col">投保人姓名</th>
				<th scope="col">性别</th>
				<th scope="col">出生日期</th>
				<th scope="col">手机号</th>
				<th scope="col">险种名称</th>
				<th scope="col">保费</th>
				<th scope="col">被险保人1</th>
				<th scope="col">关系</th>
				<th scope="col">被险保人2</th>
				<th scope="col">关系</th>
				<th scope="col">操作</th>

				<%
					int i = 0;
					while (iter.hasNext()) {
						StuInfo people = (StuInfo) iter.next();
						if (people.getClerk_id().equals(user.getUsername())) {
				%>
			
			<tr>
				<td><%=people.getId()%></td>
				<td><%=people.getName()%></td>
				<td>
					<%
						if (people.getSex() == 1)
						    out.print("男");
						else
						    out.print("女");
					%>
				</td>
				<td><%=people.getData()%></td>
				<td><%=people.getMoblie()%></td>
				<td><%=people.getPol_name()%></td>
				<td><%=people.getMoney()%></td>
				<td><%=people.getBname1()%></td>
				<td><%=people.getBrel1()%></td>
				<td><%=people.getBname2()%></td>
				<td><%=people.getBrel2()%></td>

				<td><a href="stu/ModifyOneStuServlet?id=<%=people.getId()%>">编辑</a></td>
				<%
					i++;
						}
					}
				%>
			</tr>
</body>
</html>
