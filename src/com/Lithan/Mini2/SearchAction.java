package com.Lithan.Mini2;

import java.sql.ResultSet;
import java.util.ArrayList;

public class SearchAction {
	
	ResultSet rs = null;
	AppPojo bean = null;
	ArrayList<AppPojo> beanList = null;
	AppDao search = null;
	private boolean noData = false;
	private String request;
	
	public String getRequest() {
		return request;
	}
	public void setRequest(String request) {
		this.request = request;
	}
	
	public String execute() throws Exception{
		try {
			search = new AppDao();
			beanList = new ArrayList<AppPojo>();
			rs = search.search(request);
			int i = 0;
			if (rs != null) {
				while (rs.next()) {
					i++;
					bean = new AppPojo();
					bean.setFname(rs.getString("fname"));
					bean.setLname(rs.getString("lname"));
					bean.setCountry(rs.getString("country"));
					bean.setCity(rs.getString("city"));
					bean.setEmail(rs.getString("email"));
					beanList.add(bean);
				}
			}
			if (i == 0) {
				noData = false;
				System.out.println("Error");
			} else {
				noData = true;
				System.out.println("Search is working");
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	public ArrayList<AppPojo> getBeanList() {
		return beanList;
	}
	public void setBeanList(ArrayList<AppPojo> beanList) {
		this.beanList = beanList;
	}
	public boolean isNoData() {
		return noData;
	}
	public void setNoData(boolean noData) {
		this.noData = noData;
	}
	
}
