package com.df.Fonix.tech_challenge;

public class CodeGenerator {

	public String getRandomCode() {
		Integer codeNumber =  new Integer((int) Math.floor(Math.random()*9999));
		
		StringBuilder codeString = new StringBuilder(codeNumber.toString());
		
		while (codeString.length() < 4) {
			codeString.insert(0, "0");
		}
		
		return codeString.toString();
	}
	
}
