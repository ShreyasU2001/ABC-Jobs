package com.Lithan.Mini2;

import javax.mail.*;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import javax.mail.internet.*;

import com.opensymphony.xwork2.ActionSupport;

public class MailAction extends ActionSupport {

	private static final long serialVersionUID = -2675732503808798947L;
	private String email;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	

	public String execute() throws Exception {
		
		AppDao lol = new AppDao();
		AppPojo shreyas = null;
		ResultSet rs = lol.report(email);
		while(rs.next()) {
		shreyas = new AppPojo();
		shreyas.setPassword(rs.getString("password"));
		String to = getEmail();
		Properties properties = new Properties();
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.socketFactory.port", "465");
		properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.port", "465");

		Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("uttekarshreyas007@gmail.com", "8691813660");
			}
		});
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress("uttekarshreyas007@gmail.com"));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject("ABC JOBS PORTAL!!");
			message.setText("Dear User, Your new password:" + shreyas.getPassword());
			Transport.send(message);
			System.out.println("message sent to " + getEmail());
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
		
		}
		return "success";
	}
}