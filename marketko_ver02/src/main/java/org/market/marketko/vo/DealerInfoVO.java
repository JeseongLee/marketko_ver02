package org.market.marketko.vo;

public class DealerInfoVO {
	 private MemberVO memberVO;
	 private String permitNumber;
	 private String dealerGrade;
	 
	public DealerInfoVO() {
		super();
	}
	
	public DealerInfoVO(MemberVO memberVO, String permitNumber, String dealerGrade) {
		super();
		this.memberVO = memberVO;
		this.permitNumber = permitNumber;
		this.dealerGrade = dealerGrade;
	}
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	public String getPermitNumber() {
		return permitNumber;
	}
	public void setPermitNumber(String permitNumber) {
		this.permitNumber = permitNumber;
	}
	public String getDealerGrade() {
		return dealerGrade;
	}
	public void setDealerGrade(String dealerGrade) {
		this.dealerGrade = dealerGrade;
	}
	@Override
	public String toString() {
		return "DealerInfoVO [memberVO=" + memberVO + ", permitNumber="
				+ permitNumber + ", dealerGrade=" + dealerGrade + "]";
	}
	 
}
