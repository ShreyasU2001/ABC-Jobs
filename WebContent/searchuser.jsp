<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@taglib prefix="s" uri="/struts-tags" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<title>Search user</title>
<style type="text/css">

* {box-sizing: border-box;}
* {box-sizing: border-box;}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: white;
}

.topnav a {
  float: right;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #2196F3;
  color: white;
}

.topnav .search-container {
  float: left;
}

.topnav input[type=text] {
  padding: 6px 480px 6px 6px;
  margin-top: 1px;
  margin-left: 420px;
  font-size: 17px;
  border: solid;
}

.topnav .search-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 1px;
   margin-left: 2px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: groove;
  cursor: pointer;
}

.topnav .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: right;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
}
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}




}
header,footer{
  background-color: white;
  
}

 .button {
  display: inline-block;
  border-radius: 25px;
  background-color: Azure;
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
     <button class="button" style="vertical-align:middle"><span><a style="text-decoration:none;"href="login.jsp">Logout</a> </span></button>
 <a style="text-decoration:none;"href="Dashboard.jsp"><img src="logo.jpg"height="150" width="170"> </a>

  </header><hr>
<div class="topnav">
  
 
  <div class="search-container">
    <form action="search">
      <input type="text" placeholder="Search.." name="request">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
 
</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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