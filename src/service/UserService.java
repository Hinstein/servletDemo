package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.UserTable;

public class UserService {
    private Connection conn;
    private PreparedStatement pstmt;

    public UserService() {
        conn = new conn.Conn().getCon();
    }

    public boolean valiUser(UserTable user) {
        try {
            pstmt = conn.prepareStatement("select * from usertable where username=? and password=?");
            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getPassword());
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return false;
        }
    }

	/*public userTable queryAllStu()// 查询所有保单用户的信息
	{

		userTable user = new userTable();
		try {
			pstmt = conn.prepareStatement("select * from usertable where username LIKE 'admin'");
			user.setClerkid( user.getUsername());
			pstmt.setString(1, user.getUsername());

			java.sql.ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {

				user.setClerkid(rs.getString(1));
				System.out.println(rs.getString(1));
			}
			else
				System.out.println("无参数！");

			return null;

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

	}*/
}