<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="ISO-8859-1">
<title>View profile</title>
<style type="text/css">

h3{
float:right;
}
h4{
margin-left:250px;
margin-right:250px

}

header,footer{
  background-color: DodgerBlue;
  

}

.button1{
float:right;
 background-color: black; 
  color: white;
  border: 2px solid #4CAF50;
  
  padding: 1px 10px 1px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 15px 2px;
  cursor: pointer;
}

.button1:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
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

div{
margin-left:300px;
margin-right:300px;
outline-style: groove;

 border: 6px  solid black;
  outline-style: solid;
  outline-color: red;
  
}
</style>
</head>
<body>
 <header> <button class="button1"><a href="updatedetails">Update profile</a></button>
    
 <img src="icon1.png"height="120" width="150">
  </header>
 <center><h4><br><br>
 <div class="w3-container w3-red"> 
 <s:iterator value="beanList">
<tr>
<th>First Name</th>: <td><s:property value="fname"/></td><br>
<th>Last Name</th>: <td><s:property value="lname"/></td> <br>
<th>Phone no</th>: <td><s:property value="phoneno"/></td><br>
<th>Country</th>: <td><s:property value="country"/></td><br>
<th>Gender</th>: <td><s:property value="gender"/></td><br>
<th>DOB</th>: <td><s:property value="dob"/></td><br>
<th>City</th>: <td><s:property value="city"/></td><br>
<th>Company</th>: <td><s:property value="company"/></td><br>
<th>Password</th>: <td><s:property value="password"/></td><br>
<th>Address</th>: <td><s:property value="address"/></td><br>
<th>Email : <td><s:property value="email"/></td></th>

</tr>

</s:iterator>
</div>
</h4></center><br><br><br><br><br><br>
<button class="button2"><h2 > <a href="login.jsp">Logout</a></h2></button><br><br><br><br><br>
<footer>
<center><a href="https://mail.google.com/mail/u/0/#inbox"><img src="gmailicon3.png" width="45" height="40"></a>
	<a href="https://www.instagram.com/"><img src="instalogo2.png" width="37" height="37"></a>
	
	
	<a href="https://en-gb.facebook.com/login/"><img src="fblogo4.png" width="37" height="37"></a>
	
		<a href="http://twowheelcool.com/twitter.com/index9ed2.html?lang=en"><img src="tweetlogo2.png" width="37" height="37"></a></center>
		</footer>

</body>
</html>