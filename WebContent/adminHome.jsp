<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<style type="text/css">
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
</style>
</head>
<body>
 <header> 
    
 <img src="icon1.png"height="120" width="150"> 
 <button class="button1"><h3 ><a href="viewUsers">Userprofile</a></h3></button>
 </header><br><br><br>
<br>

<br><br><br><br><br><br>
<center><h1>Welcome, you have logged in successfully </h1>
</center><br><br><br><br><br><br><br><br><br><br>
<button class="button2"><h2 > <a href="adminlogin.jsp">Logout</a></h2></button><br><br><br><br><br>

<footer>	
<center><a href="https://mail.google.com/mail/u/0/#inbox"><img src="gmailicon3.png" width="45" height="40"></a>
	<a href="https://www.instagram.com/"><img src="instalogo2.png" width="37" height="37"></a>
	
	
	<a href="https://en-gb.facebook.com/login/"><img src="fblogo4.png" width="37" height="37"></a>
	
		<a href="http://twowheelcool.com/twitter.com/index9ed2.html?lang=en"><img src="tweetlogo2.png" width="37" height="37"></a></center>
	</footer>
</body>
</html>