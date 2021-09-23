package com.Lithan.Mini2;

import java.sql.*;

public class AppDao<SetResult> {

	public static Connection getConnection() throws Exception {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/minipr2?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root", "");
		} catch (Exception e) {
			e.printStackTrace();

		}
		return con;
	}

	public int register(String fname,String lname,String email,String phoneno,String gender,String password,String country,String address) {
		int status = 0;

		try {
			String sql = "insert into strutsusers(fname, lname, email, phoneno, gender, password, country, address) values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1,fname);
			ps.setString(2, lname);
			ps.setString(3, email);
			ps.setString(4,phoneno);
			
			ps.setString(5, gender);
			ps.setString(6, password);
			ps.setString(7, country);
			
			ps.setString(8, address);
		
			status = ps.executeUpdate();
			return status;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public boolean checkLogin(String email, String password) throws Exception {
		boolean check = false;

		try {
			String sqls = "Select * from strutsusers where email =? and password = ?";

			PreparedStatement ps = getConnection().prepareStatement(sqls);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			check = rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return check;
	}
	
	public boolean adminLogin(String email, String password) throws Exception {
		boolean check = false;

		try {
			String sqls = "Select * from admin where email =? and password = ?";

			PreparedStatement ps = getConnection().prepareStatement(sqls);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			check = rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return check;
	}

	public int updateProfile(String fname, String lname, String phoneno, String country, String gender, String company, String email , String dob, String address, String city, String password) throws SQLException, Exception {
		int i = 0;
		try {
			String sqls = "Update strutsusers set fname = ?, lname = ?, phoneno = ? , country = ? , gender = ? , company = ? , dob = ?, email = ?, city = ?, password = ? where email = ?";
			PreparedStatement ps = getConnection().prepareStatement(sqls);
			ps.setString(1,fname);
			ps.setString(2, lname);
			ps.setString(3, email);
			ps.setString(4,phoneno);
			
			ps.setString(5, gender);
			ps.setString(6, password);
			ps.setString(7, country);
			ps.setString(8, address);
			ps.setString(9, company);
			ps.setString(10, city);
			ps.setString(11, dob);
			i = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception f) {
			f.printStackTrace();
		}
		return i;
	}

	public ResultSet report(String email) throws SQLException, Exception {
		ResultSet rs = null;
		try {
			System.out.println(email);
			String sql = "SELECT * FROM strutsusers where email = ?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, email);
			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
			}
		}
		
	public ResultSet search(String request) throws SQLException,Exception{
		ResultSet rs = null;
		try {
			String query = "Select * from strutsusers where fname like ?  or lname like ?  or country like ? or city like ?";
			PreparedStatement ps = getConnection().prepareStatement(query);
			ps.setString(1, "%"+request+"%");
			ps.setString(2, "%"+request+"%");
			ps.setString(3, "%"+request+"%");
			ps.setString(4, "%"+request+"%");
			rs = ps.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if  (getConnection() != null) {
				getConnection().close();
			}
		}
		
		return rs;
		}
		public  ResultSet viewUsers()throws SQLException, Exception {
			ResultSet rs = null;
			try {
				String sql = "SELECT * FROM strutsusers ORDER BY fname";
				PreparedStatement ps = getConnection().prepareStatement(sql);
				rs = ps.executeQuery();
				
			} catch (Exception e) {
				e.printStackTrace();
			
			} finally {
				if (getConnection() != null) {
					getConnection().close();
				}
			}
			return rs;
	}
		
		
	
		public int deleteUserDetails(AppPojo bean) throws SQLException, Exception {
			int i = 0;
			try {
				String sql = "DELETE FROM strutsusers  where email = ?";
				PreparedStatement ps = getConnection().prepareStatement(sql);
				ps.setString(1, bean.getEmail());
				i = ps.executeUpdate();
				return i;
			} catch (Exception e) {
				e.printStackTrace();
				return 0;
			} finally {
				if (getConnection() != null) {
					getConnection().close();
				}
			}
	
		}

	
}