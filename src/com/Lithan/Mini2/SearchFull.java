package com.Lithan.Mini2;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

public class SearchFull extends ActionSupport {
	
	
	private static final long serialVersionUID = 2815030337808610365L;
	private String email;
	ArrayList<AppPojo> beanL = null;
	AppDao mao = null;
	AppPojo bean = null;
	ResultSet rs = null;
	
	public void setEmail(String email)
	{
		this.email = email;
	}
	
	public String getEmail()
	{
		return email;
	}

	public String execute() throws SQLException, Exception
	{
		if(email != null) {
			
		mao = new AppDao();
		beanL = new ArrayList<AppPojo>();
		rs = mao.report(email);
		
		System.out.println(email);
		
		int i = 0;
		
		while(rs.next())
		{
			i++;
        	bean = new AppPojo();
        	bean.setFname(rs.getString("fname"));
        	bean.setLname(rs.getString("lname"));
        	bean.setPhoneno(rs.getString("phoneno"));
        	bean.setEmail(rs.getString("email"));
        	bean.setGender(rs.getString("gender"));
        	bean.setDob(rs.getString("dob"));
        	bean.setAddress(rs.getString("address"));
        	beanL.add(bean);
        	
			
		}
		
		if(i == 0)
		{
			System.out.println("we Did not get any email back from db");
			return "error";
		}
		else
		{
			System.out.println("Success !");
		}
		
		
		}
		return "SearchFullSuccess";
	}

	public AppDao getMao() {
		return mao;
	}

	public void setMao(AppDao mao) {
		this.mao = mao;
	}

	public ArrayList<AppPojo> getBeanL() {
		return beanL;
	}

	public void setBeanL(ArrayList<AppPojo> beanL) {
		this.beanL = beanL;
	}

	
}
