package com.Lithan.Mini2;

public class AppPojo {

	private String fname;
	private String lname;
	private String email;
	private String phoneno;
	private String dob;
	private String gender;
	private String password;
	private String country;
	private String city;
	private String address;
	private String company;
	
	
	
	public AppPojo(String fname, String lname, String email, String phoneno, String dob, String gender, String password,
			String country, String city, String address, String company) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.phoneno = phoneno;
		this.dob = dob;
		this.gender = gender;
		this.password = password;
		this.country = country;
		this.city = city;
		this.address = address;
		this.company = company;
	}
	public AppPojo() {
		// TODO Auto-generated constructor stub
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}

	}

