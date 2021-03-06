package admin.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddAdminServlet extends HttpServlet{

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

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		Connection con = null;
		PreparedStatement pre = null;

		PrintWriter out = response.getWriter();
		String uri = "jdbc:sqlserver://localhost:55780;DatabaseName=curriculumEvaluationSystem";
		String user="sa";
		String password = "123456";
		
		String num = request.getParameter("adminNum");
		String adminName = request.getParameter("adminName");
		String limit = request.getParameter("adminLimit");
		String phone = request.getParameter("adminPhone");
		String adminRemarks = request.getParameter("adminRemarks");
		if(num.length()==0 || num==null){
			out.println("<SCRIPT language=javascript > alert('添加失败,请输入管理员编号!');window.location='admin/adminInfo/addAdminInfo.jsp';</script>");			
			//response.sendRedirect("admin/adminInfo/addAdminInfo.jsp");
		}
		
		int adminNum = Integer.parseInt(num);
		int adminPhone = Integer.parseInt(phone);
		int adminLimit = Integer.parseInt(limit);
		int pwd = 123456 ;
		String userType = "管理员";
		int perLimit = 0;
		String sql = "insert into userLogin values(?,?,?,?,?)";
		String condition = "insert into adminInfo values(?,?,?,?,?)";
		try {
			con = DriverManager.getConnection(uri, user, password);
			pre = con.prepareStatement(condition);
			pre.setInt(1, adminNum);
			pre.setString(2, adminName);
			pre.setInt(3, adminPhone);
			pre.setInt(4, adminLimit);
			pre.setString(5, adminRemarks);
			pre.executeUpdate();
			pre = con.prepareStatement(sql);
			pre.setInt(1, adminNum);
			pre.setString(2, adminName);
			pre.setInt(3, pwd);
			pre.setString(4, userType);
			pre.setInt(5, perLimit);
			pre.executeUpdate();
			out.println("<SCRIPT language=javascript > alert('添加成功!');window.location='admin/adminInfo/showAdminInfo.jsp';</script>");			
		} catch (SQLException e) {
			out.println("<SCRIPT language=javascript > alert('添加失败!');window.location='admin/adminInfo/addAdminInfo.jsp';</script>");			
			e.printStackTrace();
		}finally{
			try {
				pre.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		//RequestDispatcher dispatcher = request.getRequestDispatcher("admin/adminInfo/showAdminInfo.jsp");
		//dispatcher.forward(request, response);
	}

}
