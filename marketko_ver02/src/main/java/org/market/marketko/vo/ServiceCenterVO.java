package org.market.marketko.vo;

public class ServiceCenterVO extends BoardVO{
	private String qnaTitle;

	public ServiceCenterVO() {
		super();
	}
	public ServiceCenterVO(int boardNumber, MemberVO memberVO,
			String boardDate, String content) {
		super(boardNumber, memberVO, boardDate, content);
	}
	public ServiceCenterVO(String qnaTitle) {
		super();
		this.qnaTitle = qnaTitle;
	}
	public ServiceCenterVO(int boardNumber, MemberVO memberVO,
			String boardDate, String content, String qnaTitle){
		super(boardNumber, memberVO, boardDate, content);
		this.qnaTitle = qnaTitle;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	@Override
	public String toString() {
		return "ServiceCenterVO [qnaTitle=" + qnaTitle + ", getBoardNumber()="
				+ getBoardNumber() + ", getMemberVO()=" + getMemberVO()
				+ ", getBoardDate()=" + getBoardDate() + ", getContent()="
				+ getContent() + "]";
	}
}
