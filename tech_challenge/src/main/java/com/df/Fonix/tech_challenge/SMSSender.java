package com.df.Fonix.tech_challenge;

import java.io.IOException;

import io.zensend.*;

public class SMSSender {

	private static final String ORIGINATOR = "FONIX";
	private static final String KEY = "pnNbXUp8GTBpeNmCywvtUg";
	
	public void sendSMSMessage(String number, String messageBody) {
		Message message = new Message();
		
		message.numbers = new String[]{number};
		message.body = messageBody;
		message.originator = ORIGINATOR;
		
		Client client = new Client(KEY);
		
		try {
			client.sendSms(message);
		} catch (ZenSendException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				client.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
}
