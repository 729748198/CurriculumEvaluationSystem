package publicConnectSql;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import student.bean.NoticeBarList;
import student.bean.ViewEvaluationInfo;

import admin.bean.AdminInfo;

public class connectSql {
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	
	//启动连接数据库方法
	public void StartCon(){
		String uri = "jdbc:sqlserver://localhost:55780;DatabaseName=curriculumEvaluationSystem";
		String user="sa";
		String password = "123456";
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con = DriverManager.getConnection(uri,user,password);
			//System.out.println("Connection Successful!"); 
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//1.执行登录判断连接数据库操作语句
	public boolean loginQuery(String sql){
		try {
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			if (rs.next()) {
				return true;//证明操作有结果，返回true
		} else {
			return false;//证明操作没结果，返回false
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				pst.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		return false;//默认返回false，证明数据库查询失败，没有结果
	}
	
	//2.操作数据库，执行语句，返回指定查询的数据，单行数组数据为主,
	public String  execQuery(String sql){
		String  result=null;
		try {
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			if (rs.next()) {
				result=rs.getString(1);
			}else {
				result=null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				pst.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		return result;
	}
	
	
	//3.执行数据库语句，返回表内所有数据，以二维数组存储数据
	public String  [][]list(String sqlString){
		String [][] tableRecord=null;
		try {
			pst = con.prepareStatement(sqlString);
			rs = pst.executeQuery();
			if (rs.next()) {
				//tableRecord=rs.getString(1);
			}else {
				tableRecord=null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				pst.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		return tableRecord;
	}
	
	
	//4.用于展示学生主页面或教师主页面，通告栏的通知列表信息
	public List showStuAndTeaNoticeBar(String sql){
		List list = new ArrayList();
		
		try {
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			while(rs.next()){
				NoticeBarList bean = new NoticeBarList();
				bean.setNoticeBarInfoNum(rs.getInt(1));
				bean.setTitle(rs.getString(2));
				bean.setReleaseTime(rs.getDate(3));
				bean.setAuthor(rs.getString(4));
				bean.setContent(rs.getString(5));
				list.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			try {
				pst.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		return list;
	}
	
	
	//5.获取学生查看课程评教信息
	public List showStuViewEvaluationInfo(String sql){
		List list = new ArrayList();
		
		try {
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			while(rs.next()){
				ViewEvaluationInfo bean = new ViewEvaluationInfo();
				bean.setCouName(rs.getString(1));
				bean.setTeaName(rs.getString(2));
				bean.setCouTime(rs.getString(3));
				bean.setCouPlace(rs.getString(4));
				bean.setCouCredit(rs.getString(5));
				bean.setIsTeach(rs.getInt(6));
				list.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			try {
				pst.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		return list;
	}
	
	
}
