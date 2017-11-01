package com.edu.math.utility;

import java.util.Random;

import com.edu.math.entity.FormulaElement;

public class GenerateFormula {
	
	private int range=10;

	public FormulaElement addFormula(){
		FormulaElement fe=new FormulaElement();
		int result=0;
		int add=0;
		int aug=0;
		Random r = new Random();
		while(result==0){
			result=r.nextInt(range+1);
		}
		add=r.nextInt(result+1);
		aug=result-add;
		
		fe.setOne(add);
		fe.setTwo(aug);
		fe.setResult(result);
		fe.setOperate("plus");
		fe.setOperation("+");
	
		return fe;
	}
	
	public FormulaElement subFormula(){
		FormulaElement fe=new FormulaElement();
		int result=0;
		int meiosis=0;
		int minuend=0;
		Random r=new Random();
		while(meiosis==0){
			meiosis=r.nextInt(range+1);
		}
		minuend = r.nextInt(meiosis+1);
		result=meiosis-minuend;
		
		fe.setOne(meiosis);
		fe.setTwo(minuend);
		fe.setResult(result);
		fe.setOperate("sub");
		fe.setOperation("-");
		
		return fe;
	}
}
