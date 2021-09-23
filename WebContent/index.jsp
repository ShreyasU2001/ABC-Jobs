<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <meta charset="UTF-8">
    <title>Index</title>
    <style type="text/css">
  
  

header,footer{
  background-color: white;
  

}
input[type=text]{
  width: 90%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=password]{
  width: 90%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=radio]{
  width: 10%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 40px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: CornflowerBlue;
  padding: 5px 350px 5px 110px;
  margin: 5px 170px 5px 250px;
  color:black;
}

.button {
  display: inline-block;
  border-radius: 25px;
  background-color: LightCyan;
  border: groove;
  color: black;
  text-align: center;
  font-size: 28px;
  padding: 10px;
  width: 150px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}
.button:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}


.button{
float:right;

}

a:visited{
color:black;
}

    </style>
    
  </head>
   <body>
 
  	 
    
     <header> 
    
 <img src="logo.jpg"height="140" width="150">
 <button class="button" style="vertical-align:middle"><span><a style="text-decoration:none;"href="login.jsp">Login </a> </span></button>
 <button class="button" style="vertical-align:middle"><span><a style="text-decoration:none;"href="Dashboard.jsp">Home </a> </span></button> </header>
 <hr>
 <div style="background-color:CornflowerBlue;">

<h1 style="margin-left:340px;">Register here!</h1>
<s:form action="register"  method="post">  
<div class="container">
<s:textfield name="fname" placeholder="Firstname"></s:textfield>
<s:textfield name="lname" placeholder="Lastname"></s:textfield>
<s:textfield name="email" placeholder="Email"></s:textfield>
<s:textfield name="phoneno" placeholder="Phone no."></s:textfield>

<s:radio list="{'Male','Female'}" placeholder="Gender" name="gender"></s:radio> 
<s:password name="password" placeholder="Password"></s:password>  
<s:textfield name="country" placeholder="Country"></s:textfield> 

<s:textfield name="address" placeholder="Address"></s:textfield>  
<s:submit value="Register"></s:submit> 

 </div>
 

</s:form>  
</div>
<br>


 <hr>

<footer>
		<center><a href="https://mail.google.com/mail/u/0/#inbox"><img src="gmailicon3.png" width="45" height="40"></a>
	<a href="https://www.instagram.com/"><img src="instalogo2.png" width="37" height="37"></a>
	
	
	<a href="https://en-gb.facebook.com/login/"><img src="fblogo4.png" width="37" height="37"></a>
	
		<a href="http://twowheelcool.com/twitter.com/index9ed2.html?lang=en"><img src="tweetlogo2.png" width="37" height="37"></a>
	<h5>© Abc Jobs pvt ltd</h5>
		</center>
</footer>
  </body>
</html>