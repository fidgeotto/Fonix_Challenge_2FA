package com.df.Fonix.tech_challenge;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuthenticationController {

	private static final String WELCOME_VIEW = "index";
	private static final String AUTHENTICATION_VIEW = "authenticate";
	private static final String MESSAGE_BASE = "Your unique PIN is: ";
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome(ModelMap model) {
		
		model.addAttribute("message", "Hello, please put in your mobile number");
		
		return WELCOME_VIEW;
		
	}
	
	@RequestMapping(value = "/authenticate", method = RequestMethod.POST)
	public ModelAndView authenticate(ModelMap model, @RequestBody MultiValueMap<String,String> formData) {
		
		MobileNumberFormatter numberFormatter = new MobileNumberFormatter();
		SMSSender smsSender = new SMSSender();
		CodeGenerator codeGenerator = new CodeGenerator();
		
		String mobileNumber = numberFormatter.transformUKNumber(formData.getFirst("mobile_number"));
		
		String code = codeGenerator.getRandomCode();
		
		StringBuilder message = new StringBuilder(MESSAGE_BASE);
		message.append(code);
		
		smsSender.sendSMSMessage(mobileNumber, message.toString());
		
		ModelAndView mav = new ModelAndView(AUTHENTICATION_VIEW);
		mav.addAllObjects(model);
		mav.addObject("auth_code", code);
		
		return mav;
	}
	
}
