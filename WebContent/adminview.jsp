<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin view</title>
<style type="text/css">
header,footer{
  background-color: DodgerBlue;
  }

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #4CAF50;
  color: white;
}

table, td, th {  
  border: 1px solid #ddd;
  text-align: left;
}

th, td {
  padding: 15px;
}

.button2{
float:right;
 background-color: green; 
  color: white;
  border: 2px solid black;
  
  padding: 1px 10px 1px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  margin: 10px 10px;
  cursor: pointer;
}

.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>
</head>
<body>
 <header> 
    
 <img src="icon1.png"height="120" width="150"> </header><br><br>
 <center>
	<s:if test="noData==true">
		<table border="1px solid #000">

			<thead>
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>Gender</th>
					<th>Country</th>
					<th>City</th>

					<th>Delete</th>
				</tr>
			</thead>
			<s:iterator value="beanList">
				<tr>
					<td><s:property value="fname" /> <s:property value="lname" /></td>
					<td><s:property value="email" /></td>
					<td><s:property value="gender" /></td>
					<td><s:property value="country" /></td>
					<td><s:property value="city" /></td>

					<td><a href="deleteUser.action?bean.email=<s:property value="email"/>">Delete</a></td>
				</tr>
			</s:iterator>
		</table>
	</s:if>
	<s:else>
		<div style="color: red;">No Data Found.</div>
	</s:else>
	</center>
	<br><br><br><br><br><br><br><br><br><br><br>
	<button class="button2"><h2 > <a href="adminlogin.jsp">Logout</a></h2></button><br><br><br><br><br>
	
	<footer>	
<center><a href="https://mail.google.com/mail/u/0/#inbox"><img src="gmailicon3.png" width="45" height="40"></a>
	<a href="https://www.instagram.com/"><img src="instalogo2.png" width="37" height="37"></a>
	
	
	<a href="https://en-gb.facebook.com/login/"><img src="fblogo4.png" width="37" height="37"></a>
	
		<a href="http://twowheelcool.com/twitter.com/index9ed2.html?lang=en"><img src="tweetlogo2.png" width="37" height="37"></a></center>
	</footer>
</body>
</html>
