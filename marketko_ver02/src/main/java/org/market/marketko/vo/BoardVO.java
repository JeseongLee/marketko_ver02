package org.market.marketko.vo;

public abstract class BoardVO {
	private int boardNumber;
	private MemberVO memberVO;
	private String boardDate;
	private String content;
	public BoardVO() {
		super();
	}
	public BoardVO(int boardNumber, MemberVO memberVO, String boardDate,
			String content) {
		super();
		this.boardNumber = boardNumber;
		this.memberVO = memberVO;
		this.boardDate = boardDate;
		this.content = content;
	}
	public int getBoardNumber() {
		return boardNumber;
	}
	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
	}
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	public String getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "BoardVO [boardNumber=" + boardNumber + ", memberVO=" + memberVO
				+ ", boardDate=" + boardDate + ", content=" + content + "]";
	}
}
