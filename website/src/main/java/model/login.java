package model;
public class login {
	private String UserName;
	private String Password;
	public login(String userName, String password) {
		super();
		this.UserName = userName;
		this.Password = password;
	}
	public String getUserName() {
		return UserName;
		
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	
	
}