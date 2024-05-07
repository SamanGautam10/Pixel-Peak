package model;

import java.io.File;
import java.io.Serializable;
import java.time.LocalDate;

import javax.servlet.http.Part;

import util.StringUtils;

public class ProductAdd implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//variable declaration
	private String productName;
	private int productPrice;
	private int productStock;
	private String productCategory;
	private String productDescription;
	private String imageUrlFromPart;
	
	//constructor making
	public ProductAdd() {
	}
	
	public ProductAdd(String productName, int productPrice, int productStock, String productCategory,
			String productDescription, Part imagePart) {
		super();
		this.productName = productName;
		this.productPrice = productPrice;
		this.productStock = productStock;
		this.productCategory = productCategory;
		this.productDescription = productDescription;
		this.imageUrlFromPart = getImageUrl(imagePart);
	}

	//getter and setter methods for all the variables
	public String getProductName() {
		return this.productName;
	}
	
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public int getProductPrice() {
		return this.productPrice;
	}
	
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	
	public int getProductStock() {
		return this.productStock;
	}
	
	public void setProductStock(int productStock) {
		this.productStock = productStock;
	}
	
	public String getProductCategory() {
		return this.productCategory;
	}
	
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	
	public String getProductDescription() {
		return this.productDescription;
	}
	
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	
	public String getImageUrlFromPart() {
		return imageUrlFromPart;
	}
	
	public void setImageUrlFromPart(Part part) {
		this.imageUrlFromPart = getImageUrl(part);
	}
	
	public void setImageUrlFromDB(String imageUrl) {
		this.imageUrlFromPart = imageUrl;
	}
	
	//methods to get images
	private String getImageUrl(Part part) {
		String savePath = StringUtils.IMAGE_DIR_SAVE_PATH;
		File fileSaveDir = new File(savePath);
		String imageUrlFromPart = null;
		
		if(!fileSaveDir.exists()) {
			fileSaveDir.mkdir();
		}
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		
		for(String s: items) {
			if(s.trim().startsWith("filename")) {
				imageUrlFromPart = s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		if(imageUrlFromPart == null || imageUrlFromPart.isEmpty()) {
			imageUrlFromPart = "download.png";
		}
		return imageUrlFromPart;
	}
}
