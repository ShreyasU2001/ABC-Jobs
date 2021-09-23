package com.Lithan.Mini2;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class View extends ActionSupport{

	private static final long serialVersionUID = -4606827302097183257L;
	 
	ResultSet rs = null;
	AppPojo bean = null;
	ArrayList<AppPojo> beanList = null;
	AppDao admin = new AppDao();
	private boolean noData = false;
	@Override
	public String execute() throws Exception {
		 HttpSession session=ServletActionContext.getRequest().getSession(false); 
		 
	        if(session==null || session.getAttribute("login")==null){  
	        	return "Failure";
	             
	        }  
	        else{  
               String Email = (String) session.getAttribute("Email");
	        	
	        	beanList = new ArrayList<AppPojo>();
	        	rs = admin.report(Email);
	        	int i = 0;
	        	if (rs != null) {
	        	while (rs.next()) {
	        	i++;
	        	bean = new AppPojo();
	        	bean.setFname(rs.getString("fname"));
	        	bean.setLname(rs.getString("lname"));
	        	bean.setPhoneno(rs.getString("phoneno"));
	        	bean.setCountry(rs.getString("country"));
	        	bean.setGender(rs.getString("gender"));
	        	bean.setCompany(rs.getString("company"));
	        	bean.setCompany(rs.getString("city"));
	        	bean.setCompany(rs.getString("dob"));
               	bean.setEmail(rs.getString("email"));
               	bean.setEmail(rs.getString("address"));
               	bean.setEmail(rs.getString("password"));
	        	beanList.add(bean);
	        	

	        	}
	        	}
	        	if (i == 0) {
	        	noData = false;
	        	} else {
	        	noData = true;
	        	}
	            return "REPORT";  
	        }  
		
	
	
	}
	public boolean isNoData() {
	return noData;
	}
	public void setNoData(boolean noData) {
	this.noData = noData;
	}
	public ArrayList<AppPojo> getBeanList() {
	return beanList;
	}
	public void setBeanList(ArrayList<AppPojo> beanList) {
	this.beanList = beanList;
	}
	}


