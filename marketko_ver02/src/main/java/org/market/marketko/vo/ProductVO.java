package org.market.marketko.vo;

public class ProductVO {
	private int productNumber;
	private String productName;
	private int productPrice;
	private String productMaker;
	private String productSize;
	private String productColor;
	private int productStock;
	private String productImgPath;
	public ProductVO() {
		super();
	}
	public ProductVO(int productNumber, String productName, int productPrice,
			String productMaker, String productSize, String productColor,
			int productStock, String productImgPath) {
		super();
		this.productNumber = productNumber;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productMaker = productMaker;
		this.productSize = productSize;
		this.productColor = productColor;
		this.productStock = productStock;
		this.productImgPath = productImgPath;
	}
	public int getProductNumber() {
		return productNumber;
	}
	public void setProductNumber(int productNumber) {
		this.productNumber = productNumber;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductMaker() {
		return productMaker;
	}
	public void setProductMaker(String productMaker) {
		this.productMaker = productMaker;
	}
	public String getProductSize() {
		return productSize;
	}
	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}
	public String getProductColor() {
		return productColor;
	}
	public void setProductColor(String productColor) {
		this.productColor = productColor;
	}
	public int getProductStock() {
		return productStock;
	}
	public void setProductStock(int productStock) {
		this.productStock = productStock;
	}
	public String getProductImgPath() {
		return productImgPath;
	}
	public void setProductImgPath(String productImgPath) {
		this.productImgPath = productImgPath;
	}
	@Override
	public String toString() {
		return "ProductVO [productNumber=" + productNumber + ", productName="
				+ productName + ", productPrice=" + productPrice
				+ ", productMaker=" + productMaker + ", productSize="
				+ productSize + ", productColor=" + productColor
				+ ", productStock=" + productStock + ", productImgPath="
				+ productImgPath + "]";
	}
	
	
}
