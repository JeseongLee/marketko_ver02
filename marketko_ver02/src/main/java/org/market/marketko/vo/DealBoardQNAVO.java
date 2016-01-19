package org.market.marketko.vo;

public class DealBoardQNAVO extends BoardVO{
	private ProductVO productVO;
	public DealBoardQNAVO() {
		super();
	}
	public DealBoardQNAVO(int boardNumber, MemberVO memberVO, String boardDate,
			String content) {
		super(boardNumber, memberVO, boardDate, content);
	}
	public DealBoardQNAVO(int boardNumber, MemberVO memberVO, String boardDate,
			String content, ProductVO productVO){
		super(boardNumber, memberVO, boardDate, content);
		this.productVO = productVO;
	}
	public DealBoardQNAVO(ProductVO productVO) {
		super();
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
		return "DealBoardQNAVO [productVO=" + productVO + ", getBoardNumber()="
				+ getBoardNumber() + ", getMemberVO()=" + getMemberVO()
				+ ", getBoardDate()=" + getBoardDate() + ", getContent()="
				+ getContent() + "]";
	}
}
