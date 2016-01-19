package org.market.marketko.vo;

public class DealContentsReportVO extends BoardVO{
	private ProductVO productVO;

	public DealContentsReportVO() {
		super();
	}
	public DealContentsReportVO(int boardNumber, MemberVO memberVO,
			String boardDate, String content) {
		super(boardNumber, memberVO, boardDate, content);
	}
	public DealContentsReportVO(ProductVO productVO) {
		super();
		this.productVO = productVO;
	}
	public DealContentsReportVO(int boardNumber, MemberVO memberVO, String boardDate,
			String content, ProductVO productVO){
		super(boardNumber, memberVO, boardDate, content);
		this.productVO = productVO;
	}
	public ProductVO getProductVO() {
		return productVO;
	}
	public void setProductVO(ProductVO productVO) {
		this.productVO = productVO;
	}
	@Override
	public String toString() {
		return "DealContentsReportVO [productVO=" + productVO
				+ ", getBoardNumber()=" + getBoardNumber() + ", getMemberVO()="
				+ getMemberVO() + ", getBoardDate()=" + getBoardDate()
				+ ", getContent()=" + getContent() + "]";
	}
}
