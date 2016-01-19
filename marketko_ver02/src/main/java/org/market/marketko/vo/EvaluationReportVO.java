package org.market.marketko.vo;

public class EvaluationReportVO extends BoardVO{
	private BoardVO boardVO;

	public EvaluationReportVO() {
		super();
	}
	public EvaluationReportVO(int boardNumber, MemberVO memberVO,
			String boardDate, String content) {
		super(boardNumber, memberVO, boardDate, content);
	}
	public EvaluationReportVO(BoardVO boardVO) {
		super();
		this.boardVO = boardVO;
	}
	public EvaluationReportVO(int boardNumber, MemberVO memberVO,
			String boardDate, String content, BoardVO boardVO){
		super(boardNumber, memberVO, boardDate, content);
		this.boardVO = boardVO;
	}
	public BoardVO getBoardVO() {
		return boardVO;
	}
	public void setBoardVO(BoardVO boardVO) {
		this.boardVO = boardVO;
	}
	@Override
	public String toString() {
		return "EvaluationReportVO [boardVO=" + boardVO + ", getBoardNumber()="
				+ getBoardNumber() + ", getMemberVO()=" + getMemberVO()
				+ ", getBoardDate()=" + getBoardDate() + ", getContent()="
				+ getContent() + "]";
	}
}
