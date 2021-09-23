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

.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 40%;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
  padding: 2px 16px;
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
 
</div>

<h4>
<center>
 

<s:iterator value="beanList">
<a href = "FullProfile.action?email= <s:property value="email"/>">
<div class="card">
  <img src="data:image/jpeg;base64,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" alt="Avatar" style="width:25%">
  <div class="container">
<Table>


<tr >
<td >

</td>
<td> </td>
<td><s:property value="fname"/></td>
<td><s:property value="lname"/></td>
<td>,</td>
<td> </td>

<td>Lives in</td>
<td><s:property value="country"/></td>

</tr>

</Table>
</div></div>
</a>
<br>
</s:iterator> 


</center>
</h4>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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