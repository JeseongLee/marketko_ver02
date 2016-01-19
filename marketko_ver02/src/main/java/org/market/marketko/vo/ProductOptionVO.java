package org.market.marketko.vo;

public class ProductOptionVO {
	private ProductVO productVO;
	private String productSize;
	private String productColor;
	private int productStock;
	public ProductOptionVO() {
		super();
	}
	public ProductOptionVO(ProductVO productVO, String productSize,
			String productColor, int productStock) {
		super();
		this.productVO = productVO;
		this.productSize = productSize;
		this.productColor = productColor;
		this.productStock = productStock;
	}
	public ProductVO getProductVO() {
		return productVO;
	}
	public void setProductVO(ProductVO productVO) {
		this.productVO = productVO;
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
	@Override
	public String toString() {
		return "ProductOptionVO [productVO=" + productVO + ", productSize="
				+ productSize + ", productColor=" + productColor
				+ ", productStock=" + productStock + "]";
	}
}
