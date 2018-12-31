package servlet;

import model.UserTable;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 登录时servlet
 * @author Hinstein
 */
@WebServlet(value = "/user/loginServlet")
public class LoginServlet extends HttpServlet {
    /**
     * 登录时存储用户session
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserTable user = new UserTable();
        user.setUsername(username);
        user.setPassword(password);
        try {
            if (new UserService().valiUser(user)) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                response.sendRedirect("../main.jsp");
            } else {
                response.sendRedirect("../index.jsp");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
