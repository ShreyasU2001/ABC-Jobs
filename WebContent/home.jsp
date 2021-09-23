<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<style type="text/css">

h2{
float:right;
}

button{

background-color: green;
padding:0px 20px 0px 20px;
}

header,footer{
  background-color: white;
}

.button {
  display: inline-block;
  border-radius: 25px;
  background-color: white;
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

     <header><button class="button" style="vertical-align:middle"><span><a style="text-decoration:none;"href="searchuser.jsp">Search </a> </span></button>
    <button class="button" style="vertical-align:middle"><span><a style="text-decoration:none;"href="update">Profile  </a> </span></button>
   
 <a style="text-decoration:none;"href="Dashboard.jsp"><img src="logo.jpg"height="150" width="170"> </a></header>
 <hr>

<div style="margin-left:390px;"> <h1>Welcome to the place, where you can explore your talent!</h1></div>
<p style= "margin-left:372px;"><img src="p4.png"height="450" width="800"></p>


 <hr>

<footer>
<center><a href="https://mail.google.com/mail/u/0/#inbox"><img src="gmailicon3.png" width="45" height="40"></a>
	<a href="https://www.instagram.com/"><img src="instalogo2.png" width="37" height="37"></a>
	
	
	<a href="https://en-gb.facebook.com/login/"><img src="fblogo4.png" width="37" height="37"></a>
	
		<a href="http://twowheelcool.com/twitter.com/index9ed2.html?lang=en"><img src="tweetlogo2.png" width="37" height="37"></a></center>
	</footer>

</body>
</html>