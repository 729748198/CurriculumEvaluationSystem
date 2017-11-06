package loginCheck;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import publicConnectSql.connectSql;
import loginCheck.*;

public class loginCheck extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public loginCheck() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doDelete method of the servlet. <br>
	 *
	 * This method is called when a HTTP delete request is received.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doDelete(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		  request.setCharacterEncoding("utf-8");//���ñ��룬��������Ϣ
		  //���õ�¼ʧ�ܵķ�����Ϣ��
		  response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		  userInfo userinfo=null;//
		  HttpSession session=request.getSession(true);//�����û����Ե�session����
		  try {//��ֹ�ն���������ã�����javabean���󣬲��洢Ϊsession������
			userinfo=(userInfo)session.getAttribute("userinfo");//
			if (userinfo==null) {
				userinfo=new userInfo();
				session.setAttribute("userinfo", userinfo);
			}
		} catch (Exception e) {
			// TODO: handle exception
			userinfo=new userInfo();
			session.setAttribute("userinfo", userinfo);
		}
		
		int accountNum=Integer.parseInt(request.getParameter("accountNum"));
		String userPassword=request.getParameter("userPassword");
		String loginIdentity=request.getParameter("select");
		session.setAttribute("loginIdentity", loginIdentity);//�󶨴洢session�����û��ĵ�¼���
		//���ݿ��ѯ��֤�˺�����
		String sqlString= "Select*from userLogin where accountNum='" + accountNum
		+ "'and password='" + userPassword + "'and userType='"+loginIdentity+"'";
		connectSql conSql=new connectSql();
		conSql.StartCon();//�����������ݿ�
		boolean result=conSql.loginQuery(sqlString);
		if (result) {
			//�˺š����롢�������ͨ�����ݿ���Ϣ��֤
			//��ȡ��ѯ���ݿ�ĸ��û����û���
			String sqlString2="Select userName from userLogin where accountNum='" + accountNum + "'";
			conSql.StartCon();//�����������ݿ�
			String userName=conSql.execQuery(sqlString2);
			session.setAttribute("accountNum", accountNum);//�󶨴洢session������û��˺�
			session.setAttribute("userName", userName);//�󶨴洢session������û����û���
			//�����û�ѡ��ĵ�¼��ݣ���ת��Ӧ�Ľ���
			if (loginIdentity.equals("ѧ��")) {
				response.sendRedirect("student/index.jsp");
			}else if (loginIdentity.equals("��ʦ")) {
				response.sendRedirect("teacher/index.jsp");
			}else {
				response.sendRedirect("admin/index.jsp");
			}
	
		}else {
			//�˺š����롢��¼���δͨ�����ݿ���Ϣ��֤
			out.println("<SCRIPT language=javascript > alert('�û�����������ߵ�¼��ݲ���ȷ�����������룡');window.location='index.jsp';</script>"); 
			return;
		}
		
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
