package org.market.marketko.vo;

public class DealBoardVO extends BoardVO {
	private ProductVO productVO;
	private String dealBoardThumbnail;
	private String hit;
	private int dealBoardBlockState;

	public DealBoardVO() {
		super();
	}

	public DealBoardVO(int boardNumber, MemberVO memberVO, String boardDate,
			String content) {
		super(boardNumber, memberVO, boardDate, content);
	}

	public DealBoardVO(ProductVO productVO, String dealBoardThumbnail,
			String hit, int dealBoardBlockState) {
		super();
		this.productVO = productVO;
		this.dealBoardThumbnail = dealBoardThumbnail;
		this.hit = hit;
		this.dealBoardBlockState = dealBoardBlockState;
	}

	public DealBoardVO(int boardNumber, MemberVO memberVO, String boardDate,
			String content, ProductVO productVO, String dealBoardThumbnail,
			String hit, int dealBoardBlockState) {
		super(boardNumber, memberVO, boardDate, content);
		this.productVO = productVO;
		this.dealBoardThumbnail = dealBoardThumbnail;
		this.hit = hit;
		this.dealBoardBlockState = dealBoardBlockState;
	}

	public ProductVO getProductVO() {
		return productVO;
	}

	public void setProductVO(ProductVO productVO) {
		this.productVO = productVO;
	}

	public String getDealBoardThumbnail() {
		return dealBoardThumbnail;
	}

	public void setDealBoardThumbnail(String dealBoardThumbnail) {
		this.dealBoardThumbnail = dealBoardThumbnail;
	}

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

	public int getDealBoardBlockState() {
		return dealBoardBlockState;
	}

	public void setDealBoardBlockState(int dealBoardBlockState) {
		this.dealBoardBlockState = dealBoardBlockState;
	}

	@Override
	public String toString() {
		return "DealBoardVO [productVO=" + productVO + ", dealBoardThumbnail="
				+ dealBoardThumbnail + ", hit=" + hit
				+ ", dealBoardBlockState=" + dealBoardBlockState
				+ ", getBoardNumber()=" + getBoardNumber() + ", getMemberVO()="
				+ getMemberVO() + ", getBoardDate()=" + getBoardDate()
				+ ", getContent()=" + getContent() + "]";
	}
}
