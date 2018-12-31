package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.StuInfo;
import model.UserTable;
import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

/**
 *
 */
public class StuInfoService {

    private Connection conn;
    private PreparedStatement pstmt;

    public StuInfoService() {
        conn = new conn.Conn().getCon();
    }

    public boolean addStu(StuInfo stu) {// 添加

        UserTable user = new UserTable();

        try {
            pstmt = conn.prepareStatement("insert into people"
                    + "(name,sex,data,mobile,pol_name,money,bname1,brel1,bname2,brel2,baodan_no,inforce_time,clerk_id)"
                    + "values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
            System.out.println(stu.getBaodan_no());
            pstmt.setString(1, stu.getName());
            pstmt.setByte(2, stu.getSex());
            pstmt.setString(3, stu.getData());
            pstmt.setString(4, stu.getMoblie());
            pstmt.setString(5, stu.getPol_name());
            pstmt.setInt(6, stu.getMoney());
            pstmt.setString(7, stu.getBname1());
            pstmt.setString(8, stu.getBrel1());
            pstmt.setString(9, stu.getBname2());
            pstmt.setString(10, stu.getBrel2());
            pstmt.setString(11, stu.getBaodan_no());
            pstmt.setString(12, stu.getInforce_time());
            pstmt.setString(13, stu.getClerk_id());
            pstmt.executeUpdate();
            return true;

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return false;
        }
    }

    public List queryAllStu()// 查询所有保单用户的信息
    {
        List stus = new ArrayList();
        try {
            pstmt = conn.prepareStatement("select * from people");
            java.sql.ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                StuInfo stu = new StuInfo();
                stu.setId(rs.getInt(1));
                stu.setName(rs.getString(2));
                stu.setSex(rs.getByte(3));
                stu.setData(rs.getDate(4).toString());
                stu.setMoblie(rs.getString(5));
                stu.setPol_name(rs.getString(6));
                stu.setMoney(rs.getInt(7));
                stu.setBname1(rs.getString(8));
                stu.setBrel1(rs.getString(9));
                stu.setBname2(rs.getString(10));
                stu.setBrel2(rs.getString(11));
                stu.setBaodan_no(rs.getString(12));
                stu.setInforce_time(rs.getString(13));
                stu.setClerk_id(rs.getString(14));
                stus.add(stu);
            }
            //JSONArray json = JSONArray.fromObject(stus);
            return stus;

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

    }


	/*public String queryAllStu()// 查询所有保单用户的信息
	{
		List stus = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from people");
			java.sql.ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				stuInfo stu = new stuInfo();
				stu.setId(rs.getInt(1));
				stu.setName(rs.getString(2));
				stu.setSex(rs.getByte(3));
				stu.setData(rs.getDate(4).toString());
				stu.setMoblie(rs.getInt(5));
				stu.setPol_name(rs.getString(6));
				stu.setMoney(rs.getInt(7));
				stu.setBname1(rs.getString(8));
				stu.setBrel1(rs.getString(9));
				stu.setBname2(rs.getString(10));
				stu.setBrel2(rs.getString(11));
				stu.setBaodan_no(rs.getString(12));
				stu.setInforce_time(rs.getString(13));
				stu.setClerk_id(rs.getString(14));
				stus.add(stu);

			}


			return JSONArray.fromObject(stus).toString();

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

	}*/

    public StuInfo queryStuById(int id)// 查询
    {

        try {
            pstmt = conn.prepareStatement("select * from people where id=?");
            pstmt.setInt(1, id);
            java.sql.ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                StuInfo stu = new StuInfo();
                stu.setId(rs.getInt(1));
                stu.setName(rs.getString(2));
                stu.setSex(rs.getByte(3));
                stu.setData(rs.getDate(4).toString());
                stu.setMoblie(rs.getString(5));
                stu.setPol_name(rs.getString(6));
                stu.setMoney(rs.getInt(7));
                stu.setBname1(rs.getString(8));
                stu.setBrel1(rs.getString(9));
                stu.setBname2(rs.getString(10));
                stu.setBrel2(rs.getString(11));
                stu.setBaodan_no(rs.getString(12));
                stu.setInforce_time(rs.getString(13));
                stu.setClerk_id(rs.getString(14));
                return stu;
            }
            return null;

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean updateStu(StuInfo stu) {// 更新
        try {
            pstmt = conn.prepareStatement("update people set name=?,sex=?,data=?,mobile=?,pol_name=?,"
                    + "money=?,bname1=?,brel1=?,bname2=?,brel2=? where id=?");

            pstmt.setString(1, stu.getName());
            pstmt.setByte(2, stu.getSex());
            pstmt.setString(3, stu.getData());
            pstmt.setString(4, stu.getMoblie());
            pstmt.setString(5, stu.getPol_name());
            pstmt.setInt(6, stu.getMoney());
            pstmt.setString(7, stu.getBname1());
            pstmt.setString(8, stu.getBrel1());
            pstmt.setString(9, stu.getBname2());
            pstmt.setString(10, stu.getBrel2());
            pstmt.setInt(11, stu.getId());
            pstmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // 删除
    public boolean deleteStu(int id) {

        try {
            pstmt = conn.prepareStatement("delete from people where id=?");
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
            return true;
        } catch (Exception e) {
            e.getStackTrace();
            return false;
        }
    }
}
