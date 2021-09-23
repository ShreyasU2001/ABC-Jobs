<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  
<%@ taglib uri="/struts-tags" prefix="s" %>  
<meta charset="ISO-8859-1">
<title>Admin login</title>
<style type="text/css">

h3{
 background-color: DarkSeaGreen;
margin-left:550px;
margin-right:550px;

}

input[type=text]{
 width: 100%;
  padding: 8px 5px;
  margin: 15px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=password]{
 width: 100%;
  padding: 8px 10px;
  margin: 10px 0;
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
  background-color: DodgerBlue;
  }


</style>
</head>
<body>
 <header> 
    
 <img src="icon1.png"height="120" width="150"> </header><br><br><br><br><br><br><br>
<h3>
 <center>
<s:form action="adminLogin" method="post">  
<s:textfield name="email" label="Email ID"></s:textfield>  

<s:password name="password" label="Password"></s:password>  
<s:submit value="login"></s:submit>
</s:form>  
</center>
</h3>
<br><br><br><br><br><br><br><br><br>
		
<footer>	
<center><a href="https://mail.google.com/mail/u/0/#inbox"><img src="gmailicon3.png" width="45" height="40"></a>
	<a href="https://www.instagram.com/"><img src="instalogo2.png" width="37" height="37"></a>
	
	
	<a href="https://en-gb.facebook.com/login/"><img src="fblogo4.png" width="37" height="37"></a>
	
		<a href="http://twowheelcool.com/twitter.com/index9ed2.html?lang=en"><img src="tweetlogo2.png" width="37" height="37"></a></center>
	</footer>
</div>

</body>
</html>