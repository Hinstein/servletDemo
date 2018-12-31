<%@ page import="model.UserTable" %><%--
  Created by IntelliJ IDEA.
  User: Hinstein
  Date: 2018/10/4
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    UserTable user = (UserTable) session.getAttribute("user");
    if (user == null) {
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
    }
%>