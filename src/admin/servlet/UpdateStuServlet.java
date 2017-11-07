package admin.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.bean.StuInfo;

public class UpdateStuServlet extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("gb2312");
		Connection con = null;
		PreparedStatement pre = null;
		
		String uri = "jdbc:sqlserver://localhost:55780;DatabaseName=curriculumEvaluationSystem";
		String user="sa";
		String password = "123456";
		
		String num = request.getParameter("stuNum");
		
		String stuName = request.getParameter("stuName");
		String stuSex = request.getParameter("stuSex");
		String grade = request.getParameter("stuGrade");
		String stuForm = request.getParameter("stuForm");
		String phone = request.getParameter("stuPhone");
		String stuRemarks = request.getParameter("stuRemarks");
		
		int stuNum = Integer.parseInt(num);
		int stuGrade = Integer.parseInt(grade);
		int stuPhone = Integer.parseInt(phone);

		String sql = "update userLogin set userName=? where accountNum="+stuNum;
		String condition = "update stuInfo set stuName=?,stuSex=?,stuGrade=?,stuForm=?,stuPhone=?,stuRemarks=? where stuNum="+stuNum;
		try {
			con = DriverManager.getConnection(uri, user, password);
			pre = con.prepareStatement(condition);
			pre.setString(1, stuName);
			pre.setString(2, stuSex);
			pre.setInt(3, stuGrade);
			pre.setString(4, stuForm);
			pre.setInt(5, stuPhone);
			pre.setString(6, stuRemarks);
			pre.executeUpdate();
			pre = con.prepareStatement(sql);
			pre.setString(1, stuName);
			pre.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				pre.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("admin/showStuInfo.jsp");
		dispatcher.forward(request, response);
	}

}
