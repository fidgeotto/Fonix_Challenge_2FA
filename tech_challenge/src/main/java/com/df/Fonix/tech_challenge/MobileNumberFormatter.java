package com.df.Fonix.tech_challenge;

public class MobileNumberFormatter {

	public String transformUKNumber (String originalNumber) {
		StringBuilder sb = new StringBuilder(originalNumber);
		
		sb.replace(0, 1, "44");
		
		return sb.toString();
	}
	
}
