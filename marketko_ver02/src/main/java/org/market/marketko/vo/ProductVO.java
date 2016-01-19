package org.market.marketko.vo;

public class ProductVO {
	private int productNumber;
	private String productName;
	private int productPrice;
	private String productMaker;
	public ProductVO() {
		super();
	}
	public ProductVO(int productNumber, String productName, int productPrice,
			String productMaker) {
		super();
		this.productNumber = productNumber;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productMaker = productMaker;
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
	@Override
	public String toString() {
		return "ProductVO [productNumber=" + productNumber + ", productName="
				+ productName + ", productPrice=" + productPrice
				+ ", productMaker=" + productMaker + "]";
	}
}
