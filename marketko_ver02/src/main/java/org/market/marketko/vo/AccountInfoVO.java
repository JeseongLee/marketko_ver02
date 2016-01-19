package org.market.marketko.vo;

public class AccountInfoVO {
	private MemberVO memberVO;
	private String bankName;
	private int accountNumber;

	public AccountInfoVO() {
		super();
	}
	public AccountInfoVO(MemberVO memberVO, String bankName, int accountNumber) {
		super();
		this.memberVO = memberVO;
		this.bankName = bankName;
		this.accountNumber = accountNumber;
	}
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public int getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(int accountNumber) {
		this.accountNumber = accountNumber;
	}
	@Override
	public String toString() {
		return "AccountInfoVO [memberVO=" + memberVO + ", bankName=" + bankName
				+ ", accountNumber=" + accountNumber + "]";
	}
	
	
}
