<%@ page language="java" import="java.util.*"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ page import="model.StuInfo" %>
<%@ page import="model.UserTable" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'main_right.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        -->

</head>

<jsp:include page="isLogin.jsp"></jsp:include>


<body>

<center>
    <div class="top">
        <center>
            <font size="7" color="green"> 欢迎工号：<br/> <%
                UserTable user = (UserTable) session.getAttribute("user");
                out.print(user.getUsername());
            %>
            </font>
        </center>
    </div>
    <div class="two">
        <font size="7" color="green"> 当前保单总金额：<br/> <%
 	List stus = (List)session.getAttribute("stus");
 	Iterator iter = stus.iterator();
 	int i = 0, sum = 0;
 	while (iter.hasNext()) {
 		StuInfo people = (StuInfo) iter.next();
 		String ids = session.getAttribute("user").toString();
 		if (people.getClerk_id().equals(user.getUsername())) {
 			sum = people.getMoney() + sum;
 			i++;
 		}
 	}
 	out.print(sum);
 %>
    </div>
    <div class="one">
        <font size="7" color="green"> 当前保单数：<br/> <%
            out.print(i);
        %>
        </font>
    </div>
</body>
</html>
