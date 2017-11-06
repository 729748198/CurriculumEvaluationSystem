package publicConnectSql;

import java.sql.*;

public class connectSql {
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	
	//�����������ݿⷽ��
	public void StartCon(){
		String uri = "jdbc:sqlserver://localhost:1433;DatabaseName=curriculumEvaluationSystem";
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
	
	//1.ִ�е�¼�ж��������ݿ�������
	public boolean loginQuery(String sql){
		try {
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			if (rs.next()) {
				return true;//֤�������н��������true
		} else {
			return false;//֤������û���������false
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
		return false;//Ĭ�Ϸ���false��֤�����ݿ��ѯʧ�ܣ�û�н��
	}
	
	//2.�������ݿ⣬ִ����䣬����ָ����ѯ�����ݣ�������������Ϊ��,
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
}
