package org.market.marketko.vo;

public class EvaluationVO extends BoardVO{
	private ProductVO productVO;
	private int evaluationScore;
	public EvaluationVO() {
		super();
	}
	public EvaluationVO(int boardNumber, MemberVO memberVO, String boardDate,
			String content) {
		super(boardNumber, memberVO, boardDate, content);
	}
	public EvaluationVO(ProductVO productVO, int evaluationScore) {
		super();
		this.productVO = productVO;
		this.evaluationScore = evaluationScore;
	}
	public EvaluationVO(int boardNumber, MemberVO memberVO, String boardDate,
			String content, ProductVO productVO, int evaluationScore){
		super(boardNumber, memberVO, boardDate, content);
		this.productVO = productVO;
		this.evaluationScore = evaluationScore;
	}
	public ProductVO getProductVO() {
		return productVO;
	}
	public void setProductVO(ProductVO productVO) {
		this.productVO = productVO;
	}
	public int getEvaluationScore() {
		return evaluationScore;
	}
	public void setEvaluationScore(int evaluationScore) {
		this.evaluationScore = evaluationScore;
	}
	@Override
	public String toString() {
		return "EvaluationVO [productVO=" + productVO + ", evaluationScore="
				+ evaluationScore + ", getBoardNumber()=" + getBoardNumber()
				+ ", getMemberVO()=" + getMemberVO() + ", getBoardDate()="
				+ getBoardDate() + ", getContent()=" + getContent() + "]";
	}
}
