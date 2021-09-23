<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<style>
div{

  font-size: 30px;

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



.button2 {
  display: inline-block;
  border-radius: 25px;
  background-color: CornflowerBlue;
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
.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
.button2 span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button2 span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button2:hover span {
  padding-right: 25px;
}

.button2:hover span:after {
  opacity: 1;
  right: 0;
}

.button3 {
  display: inline-block;
  border-radius: 25px;
  background-color: Azure
  border: groove;
  color: black;
  text-align: center;
  font-size: 28px;
  padding: 10px;
  width: 250px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}
.button3:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
a:visited{
color:black;
}
</style>
</head>
<body>

     <header><button class="button" style="vertical-align:middle"><span><a style="text-decoration:none;"href="adminlogin.jsp">Admin </a> </span></button>
    <button class="button" style="vertical-align:middle"><span><a style="text-decoration:none;"href="index.jsp">Register </a> </span></button>
   <button class="button" style="vertical-align:middle"><span><a style="text-decoration:none;"href="login.jsp">Login </a> </span></button>
 <a style="text-decoration:none;"href="Dashboard.jsp"><img src="logo.jpg"height="150" width="170"> </a></header>
 <hr>
 <p style="float:right;"><img src="p2.png"height="380" width="750"></p><br><br><br>
<div style="margin-left:100px;"> <h1>Welcome to ABC Jobs!</h1>
 <h3>Choose a job you love, and you will  <br> never have to work a day in your life</h3></div><br><br><br><br><br>
 <hr>
 
 
  <p style="float:right;"><img src="p3.png"height="500" width="700"></p><br><br><br><br><br><br><br>
 <div style="margin-left:200px;"> <h2>Join the community</h2></div>
<div style="margin-left:300px;"> <button class="button2" style="vertical-align:middle"><span><a style="text-decoration:none;"href="index.jsp">Join us </a> </span>
</button></div><br><br><br><br><br><br><br><br><br><br><br><br>
 <hr>
 
 <div style="margin-left:630px;"> <h2>Popular Jobs</h2></div>
 <div style="margin-left:360px;"> <button class="button3" style="vertical-align:middle"><span><a style="text-decoration:none;"href="index.jsp">Engineering </a> </span>
</button> <button class="button3" style="vertical-align:middle"><span><a style="text-decoration:none;"href="index.jsp">Finance </a> </span>
</button> <button class="button3" style="vertical-align:middle"><span><a style="text-decoration:none;"href="index.jsp">Bussiness Development</a> </span>
</button> <br><button class="button3" style="vertical-align:middle"><span><a style="text-decoration:none;"href="index.jsp">Information Technology </a> </span>
</button> <button class="button3" style="vertical-align:middle"><span><a style="text-decoration:none;"href="index.jsp">Education </a> </span>
</button> <button class="button3" style="vertical-align:middle"><span><a style="text-decoration:none;"href="index.jsp">Product Management </a> </span>
</button><br><button class="button3" style="vertical-align:middle"><span><a style="text-decoration:none;"href="index.jsp">Media & Communications </a> </span>

</button><button class="button3" style="vertical-align:middle"><span><a style="text-decoration:none;"href="index.jsp">Marketing </a> </span>
</button><button class="button3" style="vertical-align:middle"><span><a style="text-decoration:none;"href="index.jsp">Human Resources </a> </span>
</button>
 </div><br><br><br><hr>
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