package org.market.marketko.vo;

public class EvaluationImgVO {
	private String evaluationImgName;
	private BoardVO boardVO;
	private String evaluationImgPath;
	public EvaluationImgVO() {
		super();
	}
	public EvaluationImgVO(String evaluationImgName, BoardVO boardVO,
			String evaluationImgPath) {
		super();
		this.evaluationImgName = evaluationImgName;
		this.boardVO = boardVO;
		this.evaluationImgPath = evaluationImgPath;
	}
	public String getEvaluationImgName() {
		return evaluationImgName;
	}
	public void setEvaluationImgName(String evaluationImgName) {
		this.evaluationImgName = evaluationImgName;
	}
	public BoardVO getBoardVO() {
		return boardVO;
	}
	public void setBoardVO(BoardVO boardVO) {
		this.boardVO = boardVO;
	}
	public String getEvaluationImgPath() {
		return evaluationImgPath;
	}
	public void setEvaluationImgPath(String evaluationImgPath) {
		this.evaluationImgPath = evaluationImgPath;
	}
	@Override
	public String toString() {
		return "EvaluationImgVO [evaluationImgName=" + evaluationImgName
				+ ", boardVO=" + boardVO + ", evaluationImgPath="
				+ evaluationImgPath + "]";
	}
}
