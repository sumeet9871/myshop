<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"></script>
  <script src="https://use.fontawesome.com/034feea29c.js"></script>
    <style>
body{
background-image:url("resources/img/gb1.jpg");
background-size:100%;
}
#div{
background-image:url("resources/img/gb2.jpg");
background-color:#FAF7F7;
height:550px;
width:440px;

}
</style>
</head>
<body>
<nav class="navbar navbar-inverse">
<div class="container-fluid">
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-targer="#mynavbar">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="navbar-brand" href="#">My Shop</a>
</div>
<div class="collapse navbar-collapse" id="mynavbar">
<ul class="nav navbar-nav">
<li class="active"><a href="index"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;home</a><li>
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-product-hunt" aria-hidden="true"></i>&nbsp;products<span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="#">sony</a></li>
<li><a href="#">lg</a><li>
<li><a href="#">htc</a></li>
<li><a href="#">samsung</a></li>
</ul>
</li>
<li><a href="#">AboutUs</a></li>
<li><a href="#"><i class="fa fa-phone" aria-hidden="true"></i>&nbsp;ContactUs</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
<li><a href="signup"><span class="glyphicon glyphicon-user"></span>SignUp</a><li>
<li><a href="login"><span class="glyphicon glyphicon-log-in"></span>Login</a><li>
</ul>
</div>
</div>
</nav>
<div class="container" align="center" id="div">
<div class="form-horizontal">
<form action="signup.jsp">
<div class="form-group">
<label for="name">Name:</label>
<input type="text" class="form-control" id="name" required>
</div>
<div class="form-group">
<label for="last-name">Last Name:</label>
<input type="text" class="form-control" id="last-name" required>
</div>
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email" required>
  </div>
  <div class="form-group">
<label for="mobile number">Mobile Number:</label>
<input type="number" class="form-control" id="last-name" required>
</div>
<div class="form-group">
<label for="Address">Address:</label>
<input type="text" class="form-control" id="Address" required>
</div>
<div class="form-group">
<label for="last-name">Date of Birth:</label>
<input type="date" id="date-of-birth" required>
</div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password"id="password" required>
  </div>
  
  <div class="form-group">
    <label for="pwd1">Confirm Password</label>
     <input type="password"  id="password1" required>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
</div>
</div>
<nav class="navbar navbar-inverse navbar-fixed-bottom">
<div class="container-fluid" style="color:white;">
    Copyright:MyShop Inc.<br/>
	NY,USA
	<ul class="nav navbar-nav navbar-right">
	<li><i class="fa fa-facebook-square fa-2x"></i>facebook<li>
	<li><i class="fa fa-twitter fa-2x" aria-hidden="true">twitter</i></li>
	<li><i class="fa fa-youtube-play fa-2x" aria-hidden="true">youtube</i></li>
	
	</ul>
	</div>
	</nav>
</body>
</html>