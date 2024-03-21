package util;

public class StringUtils {
	public static final String GET_LOGIN_STUDENT_INFO = "SELECT user_name, password from student_info";
	
	public static final String GET_ALL_STUDENT_INFO = "SELECT * FROM student_info WHERE user_name = ? AND password = ?";
	
}
