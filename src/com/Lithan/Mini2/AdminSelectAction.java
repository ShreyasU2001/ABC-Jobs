package com.Lithan.Mini2;

import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

public class AdminSelectAction {

	private static final long serialVersionUID = -4606827302097183257L;

	ResultSet rs = null;
	AppPojo bean = null;
	private boolean noData = false;
	ArrayList<AppPojo> beanList = null;
	AppDao admin = new AppDao();
	
	public ArrayList<AppPojo> getBeanList() {
		return beanList;
	}

	public void setBeanList(ArrayList<AppPojo> beanList) {
		this.beanList = beanList;
	}

	public String execute() throws Exception {
		
		rs = admin.viewUsers();
		int i = 0;
		beanList = new ArrayList<AppPojo>();
		if (rs != null) {
			while (rs.next()) {
				i++;
				bean = new AppPojo();
				bean.setFname(rs.getString("fname"));
				bean.setLname(rs.getString("lname"));
				bean.setEmail(rs.getString("email"));
				bean.setPhoneno(rs.getString("phoneno"));
				bean.setDob(rs.getString("dob"));
				bean.setGender(rs.getString("gender"));
				bean.setPassword(rs.getString("password"));
				bean.setCountry(rs.getString("country"));
				bean.setCity(rs.getString("city"));
				bean.setAddress(rs.getString("address"));
				beanList.add(bean);
			}

			if (i == 0) {
				setNoData(false);
			} else {
				setNoData(true);
			}
		}
		return "success";
	}

	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}

}
