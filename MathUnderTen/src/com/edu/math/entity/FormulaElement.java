package com.edu.math.entity;

public class FormulaElement {
	private int one =0;
	private int two=0;
	private int result=0;
	private String operation=""; // symbol for display
	private String operate=""; //plus or sub
	
	public String getOperation() {
		return operation;
	}
	public void setOperation(String operation) {
		this.operation = operation;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public int getOne() {
		return one;
	}
	public void setOne(int one) {
		this.one = one;
	}
	public int getTwo() {
		return two;
	}
	public void setTwo(int two) {
		this.two = two;
	}
	public String getOperate() {
		return operate;
	}
	public void setOperate(String operate) {
		this.operate = operate;
	}
	
	
}
