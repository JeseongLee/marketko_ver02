package org.market.marketko.vo;

public class EvaluationRCMDVO {
	private BoardVO boardVO;
	private ProductVO productVO;
	private MemberVO memberVO;
	private String recommend;
	private String nonrecommend;
	public EvaluationRCMDVO() {
		super();
	}
	public EvaluationRCMDVO(BoardVO boardVO, ProductVO productVO,
			MemberVO memberVO, String recommend, String nonrecommend) {
		super();
		this.boardVO = boardVO;
		this.productVO = productVO;
		this.memberVO = memberVO;
		this.recommend = recommend;
		this.nonrecommend = nonrecommend;
	}
	public BoardVO getBoardVO() {
		return boardVO;
	}
	public void setBoardVO(BoardVO boardVO) {
		this.boardVO = boardVO;
	}
	public ProductVO getProductVO() {
		return productVO;
	}
	public void setProductVO(ProductVO productVO) {
		this.productVO = productVO;
	}
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	public String getRecommend() {
		return recommend;
	}
	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}
	public String getNonrecommend() {
		return nonrecommend;
	}
	public void setNonrecommend(String nonrecommend) {
		this.nonrecommend = nonrecommend;
	}
	@Override
	public String toString() {
		return "EvaluationRCMDVO [boardVO=" + boardVO + ", productVO="
				+ productVO + ", memberVO=" + memberVO + ", recommend="
				+ recommend + ", nonrecommend=" + nonrecommend + "]";
	}
}
