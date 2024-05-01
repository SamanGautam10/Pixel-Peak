package model;

import java.io.Serializable;
import java.time.LocalDate;

import javax.servlet.http.Part;

public class ProductAdd implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//variable declaration
	
	private String productName;
	private String productPrice;
	private String productStock;
	private String productCategory;
	private String productDescription;
	
	//constructor making
	public ProductAdd(String productName, String productPrice, String productStock, String productCategory,
			String productDescription) {
		super();
		this.productName = productName;
		this.productPrice = productPrice;
		this.productStock = productStock;
		this.productCategory = productCategory;
		this.productDescription = productDescription;
	}

	//getter and setter methods for all the variables
	public String getProductName() {
		return productName;
	}
	
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public String getProductPrice() {
		return productPrice;
	}
	
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	
	public String getProductStock() {
		return productStock;
	}
	
	public void setProductStock(String productStock) {
		this.productStock = productStock;
	}
	
	public String getProductCategory() {
		return productCategory;
	}
	
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	
	public String getProductDescription() {
		return productDescription;
	}
	
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
}
