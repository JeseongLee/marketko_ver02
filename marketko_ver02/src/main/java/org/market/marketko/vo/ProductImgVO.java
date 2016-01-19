package org.market.marketko.vo;

public class ProductImgVO {
	private String productImgName;
	private BoardVO boardVO;
	private String productImgPath;
	public ProductImgVO() {
		super();
	}
	public ProductImgVO(String productImgName, BoardVO boardVO,
			String productImgPath) {
		super();
		this.productImgName = productImgName;
		this.boardVO = boardVO;
		this.productImgPath = productImgPath;
	}
	public String getProductImgName() {
		return productImgName;
	}
	public void setProductImgName(String productImgName) {
		this.productImgName = productImgName;
	}
	public BoardVO getBoardVO() {
		return boardVO;
	}
	public void setBoardVO(BoardVO boardVO) {
		this.boardVO = boardVO;
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
				+ ", productVO=" + boardVO + ", productImgPath="
				+ productImgPath + "]";
	}
}
