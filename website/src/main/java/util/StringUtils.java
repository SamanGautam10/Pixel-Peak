package util;

public class StringUtils {
	//query to insert product
	
	//start parameters
	public static final String INSERT_PRODUCT = "INSERT INTO product (productName,productPrice,productStock,productCategory,productDescription) VALUES(?,?,?,?,?)";
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
	
}
