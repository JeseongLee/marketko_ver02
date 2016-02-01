package org.market.marketko.vo;

public class DealBoardContentImgVO {
	private String dealBoardContentImgName;
	private BoardVO boardVO;
	private String dealBoardContentImgPath;
	public DealBoardContentImgVO() {
		super();
	}
	public DealBoardContentImgVO(String dealBoardContentImgName,
			BoardVO boardVO, String dealBoardContentImgPath) {
		super();
		this.dealBoardContentImgName = dealBoardContentImgName;
		this.boardVO = boardVO;
		this.dealBoardContentImgPath = dealBoardContentImgPath;
	}
	public String getDealBoardContentImgName() {
		return dealBoardContentImgName;
	}
	public void setDealBoardContentImgName(String dealBoardContentImgName) {
		this.dealBoardContentImgName = dealBoardContentImgName;
	}
	public BoardVO getBoardVO() {
		return boardVO;
	}
	public void setBoardVO(BoardVO boardVO) {
		this.boardVO = boardVO;
	}
	public String getDealBoardContentImgPath() {
		return dealBoardContentImgPath;
	}
	public void setDealBoardContentImgPath(String dealBoardContentImgPath) {
		this.dealBoardContentImgPath = dealBoardContentImgPath;
	}
	@Override
	public String toString() {
		return "DealBoardContentImgVO [dealBoardContentImgName="
				+ dealBoardContentImgName + ", boardVO=" + boardVO
				+ ", dealBoardContentImgPath=" + dealBoardContentImgPath + "]";
	}
	
}
