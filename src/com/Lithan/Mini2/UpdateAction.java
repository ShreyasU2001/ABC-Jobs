package com.Lithan.Mini2;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class UpdateAction extends ActionSupport{

	private static final long serialVersionUID = -1561443970643900046L;
	
	private String fname;
	private String lname;
	private String phoneno;
	private String country;
	private String gender;
	private String company;
	private String dob;
	private String password;
	private String address;
	private String city;
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public void setFname(String Fname)
	{
		this.fname = Fname;
	}
	
	public String getFname()
	{
		return fname;
	}
	
	public void setLname(String Lname)
	{
		this.lname = Lname;
	}
	
	public String getLname()
	{
		return lname;
	}
	
	public void setPhoneno(String phoneno)
	{
		this.phoneno = phoneno;
	}

	public String getPhoneno()
	{
		return phoneno;
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

	

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	
	
	public String execute() throws SQLException, Exception 
	{
		HttpSession session=ServletActionContext.getRequest().getSession(false); 
		 
        if(session==null || session.getAttribute("login")==null){  
        	return "Failure";
             
        }  
        
        else 
        {
        	String email = (String) session.getAttribute("Email");
        	
        	AppDao bao = new AppDao();
        	int insert = bao.updateProfile(fname, lname, phoneno, country, gender, company, dob,email, password, city, address);
        	String msgs;
        	if (insert > 0) 
        	{
        		msgs = "Update Successfull";
        		return "update";
        	} 
        	else
        	{
        		msgs = "Some error";
        	}
         } 
        		return "update";
        	
        }
	
	public String updateJsp()
	{
		return "redirect";
	}
	}

