<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
/* body{
background-image:url("resources/img/gb1.jpg");
background-size:100%;
} */
#div { 
    background-color:#fafaf2;
	width:300px;
	height:300px;
  }
</style>
</head>
<body>
<nav class="navbar navbar-inverse">
<div class="container-fluid">
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mynavbar">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="navbar-brand" href="#">My Shop</a>
</div>
<div class="collapse navbar-collapse" id="mynavbar">
<ul class="nav navbar-nav">
<li class="active"><a href="home"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;home</a><li>
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-product-hunt" aria-hidden="true"></i>&nbsp;products<span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="<c:url value='productpage/lg android'/>">lg</a></li>
<li><a href="<c:url value='productpage/android'/>">sony</a></li>
<li><a href="<c:url value='productpage/htc android'/>">htc</a></li>
<li><a href="<c:url value='productpage/smartphones'/>">samsung</a></li>
</ul>
</li>
<li><a href="<c:url value='/Aboutus'/>">AboutUs</a></li>
<li><a href="<c:url value='/Aboutus'/>"><i class="fa fa-phone" aria-hidden="true"></i>&nbsp;ContactUs</a></li>
</ul>
<sec:authorize access="isAuthenticated()">
<ul class="nav navbar-nav navbar-right">
<li>
<li>
<a href="<c:url value='/Logout'/>">Sign Out</a>
</li>
</ul>
</sec:authorize>
<sec:authorize access="isAnonymous()">
<ul class="nav navbar-nav navbar-right">
<li><a href="<c:url value='/signup'/>"><span class="glyphicon glyphicon-user"></span>Signup</a></li>
<li><a href="<c:url value='/login'/>"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
</ul>
</sec:authorize>
</div>
</div>
</nav>

 <div class="container-fluid" align="center" id="div">
<div class="form-group">
<form action="login" method="POST">
<h2 align="center">Myshop</h2>
  <div class="form-group">
    <label for="username">User Name:</label>
    <input type="text" class="form-control" id="username" name="username">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="password" name="password">
  </div>
  <div class="checkbox">
    <label><input type="checkbox"> Remember me</label>
  </div>
  <input type="submit" value="Login" class="btn  btn-block btn-primary"></button>
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
</nav>
</div>
</body>
</html>