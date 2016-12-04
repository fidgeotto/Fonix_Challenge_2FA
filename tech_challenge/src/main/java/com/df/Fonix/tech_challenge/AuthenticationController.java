package com.df.Fonix.tech_challenge;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AuthenticationController {

	private static final String WELCOME_VIEW = "index";
	private static final String AUTHENTICATION_VIEW = "authenticate";
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome(ModelMap model) {
		
		model.addAttribute("message", "Hello, please put in your mobile number");
		
		return WELCOME_VIEW;
		
	}
	
	@RequestMapping(value = "/authenticate", method = RequestMethod.POST)
	public String authenticate(ModelMap model, @RequestBody MultiValueMap<String,String> formData) {
		
		String mobileNumber = formData.getFirst("mobile_number");
		
		System.out.println(mobileNumber);
		
		return AUTHENTICATION_VIEW;
	}
	
}
