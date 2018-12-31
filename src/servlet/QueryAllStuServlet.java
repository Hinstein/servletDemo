package servlet;

import service.StuInfoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/student/QueryAllStuServlet")
public class QueryAllStuServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        List stus = new StuInfoService().queryAllStu();
        HttpSession session = request.getSession();
        session.setAttribute("stus", stus);
        if (method.equals("query")) {
            response.sendRedirect("../displayStuInfo.jsp");
        }
        else if (method.equals("modify")){
            response.sendRedirect("../modifyStuInfo.jsp");
        }
        else if(method.equals("delete")){
            response.sendRedirect("../deleteStuInfo.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
