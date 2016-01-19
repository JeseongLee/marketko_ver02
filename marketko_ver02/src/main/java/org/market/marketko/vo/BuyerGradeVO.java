package org.market.marketko.vo;

public class BuyerGradeVO {
	private String gradeName;
	private int minGrade;
	private int maxGrade;
	public BuyerGradeVO() {
		super();
	}
	public BuyerGradeVO(String gradeName, int minGrade, int maxGrade) {
		super();
		this.gradeName = gradeName;
		this.minGrade = minGrade;
		this.maxGrade = maxGrade;
	}
	public String getGradeName() {
		return gradeName;
	}
	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}
	public int getMinGrade() {
		return minGrade;
	}
	public void setMinGrade(int minGrade) {
		this.minGrade = minGrade;
	}
	public int getMaxGrade() {
		return maxGrade;
	}
	public void setMaxGrade(int maxGrade) {
		this.maxGrade = maxGrade;
	}
	@Override
	public String toString() {
		return "BuyerGradeVO [gradeName=" + gradeName + ", minGrade="
				+ minGrade + ", maxGrade=" + maxGrade + "]";
	}
}
