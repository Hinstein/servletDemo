package servlet;

import model.StuInfo;
import model.UserTable;
import service.StuInfoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

@WebServlet(value = "/stu/ModifyOneStuInfoServlet")
public class ModifyOneStuInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //使用utf8编码，不然存入数据库乱码！！！
        request.setCharacterEncoding("utf-8");
        int id =Integer.parseInt(request.getParameter("id"));
        //获得session中用户名
        HttpSession session = request.getSession();
        UserTable user = (UserTable) session.getAttribute("user");
        //自动生成保单号
        String baodanNo = "baodan:" + UUID.randomUUID().toString().replace("-", "");
        //获取当前系统时间
        SimpleDateFormat tf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //从request中获得用户的信息
        String name = request.getParameter("name");
        //request.getParameter默认返回字符串
        byte sex = Byte.parseByte(request.getParameter("sex"));
        String data = request.getParameter("data");
        String moblie = request.getParameter("moblie");
        String pol_namee = request.getParameter("pol_name");
        int money = Integer.parseInt(request.getParameter("money"));
        String bname1 = request.getParameter("bname1");
        String brel1 = request.getParameter("brel1");
        String bname2 = request.getParameter("bname2");
        String brel2 = request.getParameter("brel2");
        String baodan_no = baodanNo;
        String inforce_time = tf.format(new Date());
        String clerk_id = user.getUsername();
        //将字符网页中获取的信息存入javabean中！
        StuInfo stu = new StuInfo();
        stu.setId(id);
        stu.setName(name);
        stu.setSex(sex);
        stu.setData(data);
        stu.setMoblie(moblie);
        stu.setPol_name(pol_namee);
        stu.setMoney(money);
        stu.setBname1(bname1);
        stu.setBrel1(brel1);
        stu.setBname2(bname2);
        stu.setBrel2(brel2);
        stu.setBaodan_no(baodan_no);
        stu.setInforce_time(inforce_time);
        stu.setClerk_id(clerk_id);
        //判断是否存进了javabean中
        if (new StuInfoService().updateStu(stu)) {
            //存入成功跳转成功页面
            response.sendRedirect("../modifyStuInfo_success.jsp");
        } else {
            //存入失败跳转失败页面
            response.sendRedirect("../inputStuInfo.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
