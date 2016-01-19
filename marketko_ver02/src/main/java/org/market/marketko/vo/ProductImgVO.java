package org.market.marketko.vo;

public class ProductImgVO {
	private String productImgName;
	private ProductVO productVO;
	private String productImgPath;
	public ProductImgVO() {
		super();
	}
	public ProductImgVO(String productImgName, ProductVO productVO,
			String productImgPath) {
		super();
		this.productImgName = productImgName;
		this.productVO = productVO;
		this.productImgPath = productImgPath;
	}
	public String getProductImgName() {
		return productImgName;
	}
	public void setProductImgName(String productImgName) {
		this.productImgName = productImgName;
	}
	public ProductVO getProductVO() {
		return productVO;
	}
	public void setProductVO(ProductVO productVO) {
		this.productVO = productVO;
	}
	public String getProductImgPath() {
		return productImgPath;
	}
	public void setProductImgPath(String productImgPath) {
		this.productImgPath = productImgPath;
	}
	@Override
	public String toString() {
		return "ProductImgVO [productImgName=" + productImgName
				+ ", productVO=" + productVO + ", productImgPath="
				+ productImgPath + "]";
	}
}
