package conn;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * jdbc连接数据库
 * @author Hinstein
 *
 */
public class Conn {

    public Connection getCon()
    {
        try {
            // 调用Class.forName()方法加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            //连接的字符串
            String url = "jdbc:mysql://localhost/chinalife?useUnicode=true&chararcterEncoding=utf-8";
            //连接的用户名
            String user="root";
            //密码
            String password="";
            Connection conn=DriverManager.getConnection(url,user,password);
            return conn;
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return null;
        }
    }
}