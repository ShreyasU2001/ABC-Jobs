package com.Lithan.Mini2;

import com.opensymphony.xwork2.ActionSupport;
import com.Lithan.Mini2.AppPojo;
public class RegistrationAction extends ActionSupport {
	
	
	private String fname;
	private String lname;
	private String phoneno;
	private String country;
	private String gender;
	private String address;
	private String password;
	private String email;


	
	
	@Override
	public String execute() throws Exception {
		AppDao test = new AppDao(); 
		int sky = test.register(fname, lname, email, phoneno, gender, password, country, address);
		
		if(sky > 0) {
			return "success";
		}
		else {
			String msg = "sorry try again";
		}
		return null;
	}




	public String getFname() {
		return fname;
	}




	public void setFname(String fname) {
		this.fname = fname;
	}




	public String getLname() {
		return lname;
	}




	public void setLname(String lname) {
		this.lname = lname;
	}




	public String getPhoneno() {
		return phoneno;
	}




	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}




	public String getCountry() {
		return country;
	}




	public void setCountry(String country) {
		this.country = country;
	}




	public String getGender() {
		return gender;
	}




	public void setGender(String gender) {
		this.gender = gender;
	}




	public String getAddress() {
		return address;
	}




	public void setAddress(String address) {
		this.address = address;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}
}

