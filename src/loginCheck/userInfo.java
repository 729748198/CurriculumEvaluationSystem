package loginCheck;

//�������ڴ洢��¼�����û����벢��ͨ��js��֤����Ϣ
public class userInfo {
	int accountNum = 0;// �û�������˺�
	String userPassword = null;// �û����������
	boolean isCheck = false;// �����ж��û��Ƿ����Ƶ�¼����¼�˺Ż������Ƿ�������ȷ��
	// ����Ƿ��¼�ɹ�
	String userName = null;// ���ڻ�ȡ�û���¼�ɹ����û���
	String loginIdentity=null;//���ڴ洢��¼��ݣ���ҳ��ʾ
	
	public String getLoginIdentity() {
		return loginIdentity;
	}
	public void setLoginIdentity(String loginIdentity) {
		this.loginIdentity = loginIdentity;
	}
	public int getAccountNum() {
		return accountNum;
	}
	public void setAccountNum(int accountNum) {
		this.accountNum = accountNum;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public boolean isCheck() {
		return isCheck;
	}
	public void setCheck(boolean isCheck) {
		this.isCheck = isCheck;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

	
}
