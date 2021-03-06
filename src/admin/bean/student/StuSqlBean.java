package admin.bean.student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StuSqlBean {

	Connection con;
	PreparedStatement pre;
	ResultSet rs;
	
	public void startCon(){
		String uri = "jdbc:sqlserver://localhost:55780;DatabaseName=curriculumEvaluationSystem";
		String user="sa";
		String password = "123456";
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con = DriverManager.getConnection(uri,user,password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public List showAllStu(String sql){
		List list = new ArrayList();
		
		try {
			pre = con.prepareStatement(sql);
			rs = pre.executeQuery();
			while(rs.next()){
				StuInfo bean = new StuInfo();
				bean.setStuNum(rs.getInt(1));
				bean.setLimitMess(limitMess(rs.getInt(1)));
				bean.setStuName(rs.getString(2));
				bean.setStuSex(rs.getString(3));
				bean.setStuGrade(rs.getInt(4));
				bean.setStuForm(rs.getString(5));
				bean.setStuPhone(rs.getInt(6));
				bean.setStuRemarks(rs.getString(7));
				list.add(bean);
			}
		} catch (Exception e) {
			//e.printStackTrace();
		}
		finally{
			try {
				pre.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		return list;
	}
	
	public String limitMess(int accountNum) throws SQLException{
		String sql = "select perLimit from userLogin where accountNum=?";
		PreparedStatement pre1 = con.prepareStatement(sql);
		pre1.setInt(1, accountNum);
		ResultSet rs = pre1.executeQuery();
		String limitMess = null;
		while(rs.next()){
			int perLimit = rs.getInt(1);
			if(perLimit == 0){
				limitMess = "否";
			}else if(perLimit == 1){
				limitMess = "是";
			}
		}
		rs.close();
		pre1.close();
		return limitMess;
	}
}
