<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false"%>
<%@ page isELIgnored="false" %>
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
height:500px;
width:440px;

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
<li><a href="#">AboutUs</a></li>
<li><a href="#"><i class="fa fa-phone" aria-hidden="true"></i>&nbsp;ContactUs</a></li>
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
<div class="container"  id="div">
<h2 align="center">myshop</h2>
<form:form action="signup" modelAttribute="person" class="form-horizontal">
<div class="form-group">
<form:label  class="control-label col-sm-2" path="name" for="name">Name:</form:label>
<div class="col-xs-10">
<form:input class="form-control" id="name" path="name" placeholder="Enter your name"/>
</div>
</div>
<div class="form-group">
<form:label class="control-label col-sm-2" path="lastname" for="last-name">Last Name:</form:label>
<div class="col-xs-10">
<form:input class="form-control" id="last-name" path="lastname" placeholder="Enter your last name"/>
</div>
</div>
  <div class="form-group">
    <form:label class="control-label col-sm-2" path="email" for="email">Email address:</form:label>
    <div class="col-xs-10">
    <form:input class="form-control" id="email" path="email" placeholder="Enter your email"/>
  </div>
  </div>
  <div class="form-group">
<form:label class="control-label col-sm-2" path="number" for="mobile number">Mobile Number:</form:label>
<div class="col-xs-10">
<form:input class="form-control" path="number" id="mobile number" placeholder="Enter mobile no"/>
</div>
</div>
<div class="form-group">
<form:label  class="control-label col-sm-2" path="address" for="Address">Address:</form:label>
<div class="col-xs-10">
<form:input class="form-control" path="address" id="Address" />
</div>
</div>

  <div class="form-group">
    <form:label class="control-label col-sm-2" path="password" for="pwd">Password:</form:label>
    <div class="col-xs-10">
    <form:input class="form-control" path="password" id="pwd"/>
  </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd1">Confirm Password</label>
    <div class="col-xs-10">
     <input type="password" class="form-control" id="pwd1" required>
  </div>
  </div>
  <input type="submit"  class="btn btn-block btn-primary" value="<spring:message text="Add Person"/>"/>
</form:form>
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