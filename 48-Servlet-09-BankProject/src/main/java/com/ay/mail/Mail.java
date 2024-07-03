package com.ay.mail;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.ay.bean.CustomerBean;

public class Mail {

	int k;

	public int sendMail(CustomerBean cb) {

		String rmail = cb.getMid();
		String smail = "aakashyadavducat@gmail.com";
		String subject = "Registration Successfull";
		String message = "Hello " + cb.getCustName()+" "
				+ "Congrats !! \n\n Greetings from HDFC Bank of India "
				+ "You Have Succesfully Registered with us. \n\n Now You can visit to your account and manage your profile.\n\n\n"
				+ "Here is your Credentials \n\nUserName : " + cb.getMid() + "\n" + "Password : " + cb.getPass()
				+ "\n\n\n" + "Thanks & Regards\n" + "Aakash Yadav \n" + "Java Consultant , Ducat ";

		String status = sendMail(rmail, smail, subject, message);

		if (status != null)
			k = 1;

		return k;
	}

	public String sendMail(String to, final String from, String subject, String message) {
		String status = null;
		final String password = "okli jsge ygba gwpm";

		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.auth", true);
		props.put("mail.smtp.starttls.enable", "true");

		Session session = Session.getDefaultInstance(props, new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, password);
			}
		});

		// create mime message for composing mail

		try {
			MimeMessage mm = new MimeMessage(session);

			mm.setFrom(new InternetAddress(from));
			mm.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			mm.setSubject(subject);
			mm.setText(message);

			Transport.send(mm);

			status = "Mail Sent Successfully!!";
			System.out.println("Mail Sent!");

		} catch (MessagingException e) {
			e.printStackTrace();
		}
		return status;
	}
}
