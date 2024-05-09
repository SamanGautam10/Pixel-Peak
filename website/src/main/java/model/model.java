package model;
public class model {
	private String UserName;
	private String  Email;
	private String  Gender;
	private String Phone;
	private String Password;
	
	//making constructor
	public model(String UserName, String Email, String Gender, String Phone, String Password) {
		this.UserName = UserName;
		this.Email = Email;
		this.Gender = Gender;
		this.Phone = Phone;
		this.Password = Password;
	}
	
	public model(String UserName, String Email, String Gender, String Phone) {
		this.UserName = UserName;
		this.Email = Email;
		this.Gender = Gender;
		this.Phone = Phone;
	}
	
	public model() {

	}
	
	//getter setter methods
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public  String getPhone() {
		return Phone;
	}
	public void setPhone( String phone) {
		Phone = phone;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
}
