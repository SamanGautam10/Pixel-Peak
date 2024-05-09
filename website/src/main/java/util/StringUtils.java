package util;

import java.io.File;

public class StringUtils {
	
	// Start: DB Connection
		public static final String DRIVER = "com.mysql.cj.jdbc.Driver";
		public static final String LOCALHOST_URL = "jdbc:mysql://localhost:3306/pixelpeak";
		public static final String LOCALHOST_USER = "root";
		public static final String LOCALHOST_PASSWORD = "";
	
	//query to insert product
	
		//start parameters
		public static final String INSERT_PRODUCT = "INSERT INTO product" + "(productName, productPrice, productStock, productCategory, productDescription, imagePart) VALUES (?,?,?,?,?,?)";
		public static final String GET_PRODUCT_INFO = "SELECT * FROM product";
		//end parameters
	
	// Start: Validation Messages
		// Register Page Messages
		public static final String MESSAGE_SUCCESS_ADDITION = "Successfully Added Product";
		public static final String MESSAGE_ERROR_ADDITION = "Please correct the form data.";
		public static final String MESSAGE_ERROR_PRODUCTNAME = "Please correct product name.";
		public static final String MESSAGE_ERROR_PRODUCTPRICE = "Please correct product price.";
		public static final String MESSAGE_ERROR_PRODUCTSTOCK = "Please correct product stock.";
		public static final String MESSAGE_ERROR_PRODUCTCATEGORY = "Please correct product category.";
		public static final String MESSAGE_ERROR_PRODUCTDESCRIPTION = "Please correct product description.";
		
	
		//queries to be used in productmanagement pages
		public static final String GET_PRODUCT_DETAILS = "SELECT productID,productName,productPrice,productStock,productCategory,productDescription,imagePart FROM product";
		public static final String UPDATE_PRODUCT = "UPDATE product SET productName=?, productPrice=?, productStock=?, productCategory=?, productDescription=? WHERE productID=?";
		public static final String SELECT_PRODUCT_BY_ID = "SELECT productID,productName,productPrice,productStock,productCategory,productDescription FROM product WHERE productID = ?";
		public static final String DELETE_PRODUCT_SQL = "DELETE FROM product WHERE productID = ?;";
		
		
		//queries to be used in usermanagement pages
		public static final String GET_USER = "SELECT id, UserName, Email, Gender, Phone FROM register";
		public static final String GET_USER_DETAILS_BY_ID = "SELECT id, UserName, Email, Gender, Phone FROM register WHERE id = ?";
		
		//jsp route
		public static final String URL_INDEX = "/productmanaement.jsp";
		
		
		// Other Messages
		public static final String MESSAGE_ERROR_SERVER = "An unexpected server error occurred.";
		public static final String MESSAGE_SUCCESS_DELETE = "Successfully Deleted!";
		public static final String MESSAGE_ERROR_DELETE = "Cannot delete the user!";
		public static final String DELETE_ID= "deleteId";
		public static final String UPDATE_ID= "updateId";
		public static final String MESSAGE_SUCCESS = "successMessage";
		public static final String MESSAGE_ERROR = "errorMessage";
		
		//image directory
		public static final String IMAGE_DIR = "Eclipse\\website\\src\\main\\webapp\\resources\\";
		public static final String IMAGE_DIR_SAVE_PATH = "E:/" + File.separator + IMAGE_DIR;


		public static final String PAGE_URL_LOGIN = "/pages/login.jsp";
		public static final String Insert_User="Insert into register(UserName,Email,Gender,Phone,Password) value(?,?,?,?,?)";
		public static final String Login_check = "SELECT * FROM register WHERE UserName = ? and Password = ?";
		public static final String Get_User_Data="select UserName,Password From register";
		public static final String Gett_user_allData="select*from register";
		public static final String username="UserName";
		public static final String email="Email";
		public static final String gender="Gender";
		public static final String phone="Phone";
		public static final String password="Password";
		public static final String loginPage="/pages/login.jsp";
		public static final String landingPage="/pages/main.jsp";
		public static final String registerurl="/register";
		public static final String loginurl="/LoginServlet";
		public static final String sucess_login = " You have Successfully Logged In!";
		public static final String error_LOGIN = "Username or password is not correct";
		public static final String account_error = "Account for this username is not registered! Please create a new account.";
}
