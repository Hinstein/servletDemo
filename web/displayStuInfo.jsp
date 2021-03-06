<%@ page language="java" import="java.util.*"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<%@ page import="model.UserTable" %>
<%@ page import="model.StuInfo" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'displayStuInfo.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

</head>

<jsp:include page="isLogin.jsp"></jsp:include>
<body>
<%
    List stus = (List) session.getAttribute("stus");
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
            <th scope="col">保单号</th>
            <th scope="col">录入时间</th>
            <th scope="col">业务员工号</th>
                <%
				int i = 0;
					while (iter.hasNext()) {
                        StuInfo people = (StuInfo) iter.next();
						if ((people.getClerk_id().equals(user.getUsername()))) {
			%>
        <tr>
            <td><%=people.getId()%>
            </td>
            <td><%=people.getName()%>
            </td>
            <td>
                <%
                    if (people.getSex() == 1)
                        out.print("男");
                    else
                        out.print("女");
                %>
            </td>
            <td><%=people.getData()%>
            </td>
            <td><%=people.getMoblie()%>
            </td>
            <td><%=people.getPol_name()%>
            </td>
            <td><%=people.getMoney()%>
            </td>
            <td><%=people.getBname1()%>
            </td>
            <td><%=people.getBrel1()%>
            </td>
            <td><%=people.getBname2()%>
            </td>
            <td><%=people.getBrel2()%>
            </td>
            <td><%=people.getBaodan_no()%>
            </td>
            <td><%=people.getInforce_time()%>
            </td>
            <td><%=people.getClerk_id()%>
            </td>
            <%
                        i++;
                    }
                }
            %>
        </tr>
    </table>
</body>
</html>
