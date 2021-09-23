<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="/struts-tags" prefix="s" %>
<meta charset="ISO-8859-1">
<title>Update</title>
<style type="text/css">

h3{
 background-color: DarkSeaGreen;
margin-left:500px;
margin-right:500px;
 border: 6px  solid black;
  outline-style: solid;
  outline-color: red;
}

 input[type=text  ], select {
  width: 50%;
  padding: 10px 5px 5px 5px;
  margin: 5px 5px 5px 90px;
  display: inline-block;
  border: 2px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}



.button1 {
  width: 30%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 8px 8px 90px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
.button1:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}

header,footer{
  background-color: DodgerBlue;
  

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
    
 <img src="icon1.png"height="120" width="150">
  </header>
<h3><center>
<div style="margin-left:-80px;">
<form action="update" method="post">
<s:iterator value="beanList">
<input type="text" name="fname" placeholder="First Name" value ="<s:property value='fname'/>"/>
<input type="text" name="lname" placeholder="Last Name" value ="<s:property value='lname'/>"/>
<input type="text" name="phoneno" placeholder="Phone no." value ="<s:property value='phoneno'/>"/><br>
<input type="text" name="country" placeholder="Country" value ="<s:property value='country'/>"/><br>
<input type="text" name="gender" placeholder="Gender" value ="<s:property value='gender'/>"/><br>
<input type="text" name="dob" placeholder="DOB" value ="<s:property value='dob'/>"/><br>
<input type="text" name="company" placeholder="Company" value ="<s:property value='company'/>"/><br>
<input type="text" name="address" placeholder="Address" value ="<s:property value='address'/>"/><br>
<input type="text" name="city" placeholder="City" value ="<s:property value='city'/>"/><br>
<input type="text" name="password" placeholder="Password" value ="<s:property value='password'/>"/><br>
<input type="text" name="email" placeholder="Email" value ="<s:property value='email'/>"/><br>
<button class="button1" type="submit" value="update">Submit</button>
</form>
</s:iterator>

</div>
</center></h3>

<br><br><br><br> 			
<button class="button2"><h2 > <a href="login.jsp">Logout</a></h2></button><br><br><br><br><br>
<footer>
<center><a href="https://mail.google.com/mail/u/0/#inbox"><img src="gmailicon3.png" width="45" height="40"></a>
	<a href="https://www.instagram.com/"><img src="instalogo2.png" width="37" height="37"></a>
	
	
	<a href="https://en-gb.facebook.com/login/"><img src="fblogo4.png" width="37" height="37"></a>
	
		<a href="http://twowheelcool.com/twitter.com/index9ed2.html?lang=en"><img src="tweetlogo2.png" width="37" height="37"></a></center>
		</footer>

  
</body>
</html>