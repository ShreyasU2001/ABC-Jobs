<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="">
<%@ taglib uri="/struts-tags" prefix="s" %>  

<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">

h3{
 background-color: Lavender;
margin-left:550px;
margin-right:550px;
border: solid;
}

input[type=text]{
 width: 150%;
  padding: 15px 5px;
  margin: -5px 18px 18px -31px;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=password]{
 width: 150%;
  padding: 15px 5px;
  margin: 13px 13px 13px -31px;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit]:hover {
  background-color: green;
}
input[type=submit]{
 width: 90%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 2px;
  margin: 15px 15px 15px 15px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

header,footer{
  background-color: white;
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
 <button class="button" style="vertical-align:middle"><span><a style="text-decoration:none;"href="index.jsp">Register</a> </span></button>
 <button class="button" style="vertical-align:middle"><span><a style="text-decoration:none;"href="Dashboard.jsp">Home </a> </span></button>
 </header><hr><br><br><br><br><br>
<h3>

 <center>
 <h2>User Login</h2>
<s:form action="login" method="post">  
<s:textfield name="email" placeholder="Email ID"></s:textfield>  

<s:password name="password" placeholder="Password"></s:password>  
<s:submit value="Login"></s:submit>
</s:form>  
</center>
</h3>
<center><h2> <a style="text-decoration:none;" href="forgotpassword.jsp">Forgot password?</a></h2></center><br><br><br><br><br><hr>
	<footer>	
<center><a href="https://mail.google.com/mail/u/0/#inbox"><img src="gmailicon3.png" width="45" height="40"></a>
	<a href="https://www.instagram.com/"><img src="instalogo2.png" width="37" height="37"></a>
	
	
	<a href="https://en-gb.facebook.com/login/"><img src="fblogo4.png" width="37" height="37"></a>
	
		<a href="http://twowheelcool.com/twitter.com/index9ed2.html?lang=en"><img src="tweetlogo2.png" width="37" height="37"></a>
		<h5>© Abc Jobs pvt ltd</h5></center>
	</footer>
</div>

</body>
</html>