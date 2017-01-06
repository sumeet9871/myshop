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
background-image:url("<c:url value='/resources/img/bg.jpg'/>");
background-size:100%;
} 
#div{
background-image:url("resources/img/gb2.jpg");
background-color:#FAF7F7;
height:450px;
width:400px;

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
<li><a href="<c:url value='productpage/All'/>">All Products</a></li>
<li><a href="<c:url value='productpage/lg android'/>">lg</a></li>
<li><a href="<c:url value='productpage/android'/>">sony</a></li>
<li><a href="<c:url value='productpage/htc android'/>">htc</a></li>
<li><a href="<c:url value='productpage/smartphones'/>">samsung</a></li>
</ul>
</li>
<li><a href="<c:url value='/Aboutus'/>">AboutUs</a></li>
<li><a href="<c:url value='/Contactus'/>"><i class="fa fa-phone" aria-hidden="true"></i>&nbsp;ContactUs</a></li>
</ul>
<sec:authorize access="hasRole('ROLE_ADMIN')">
     <ul class="nav navbar-nav navbar-right">
     <li>
<a href="">Welcome <b><sec:authentication property="principal.username"/></b></a>
<li>
      <li><a href="<c:url value='/admin'/>"><i class="fa fa-buysellads fa-fw" aria-hidden="true"></i> Admin Page</a></li>
       <li><a href="<c:url value='/adminproduct'/>"><i class="fa fa-buysellads fa-fw" aria-hidden="true"></i> Admin Product Page</a></li>
      <li>
<a href="<c:url value='/Logout'/>">Sign Out</a>
</li>
 <li><a href="<c:url value='/Cart'/>"><i class="fa fa-shopping-cart fa-fw" aria-hidden="true"></i> Cart</a></li>
</ul>
  </sec:authorize>
  <sec:authorize access="hasRole('ROLE_USER')">
     <ul class="nav navbar-nav navbar-right">
     <li>
<a href="">Welcome <b><sec:authentication property="principal.username"/></b></a>
<li>
<a href="<c:url value='/Logout'/>">Sign Out</a>
</li>
 <li><a href="<c:url value='/Cart'/>"><i class="fa fa-shopping-cart fa-fw" aria-hidden="true"></i> Cart</a></li>
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
<h2 align="center">Myshop</h2>
<form:form modelAttribute="order.cart.person" class="form-horizontal">
<div class="form-group">
<form:label class="control-label col-sm-2" path="shippingaddress.deliveryaddress" for="deliveryaddress">Delivery Address:</form:label>
<div class="col-xs-10">
<form:input class="form-control" id="deliveryaddress" path="shippingaddress.deliveryaddress" placeholder="Enter your delivery address"/>
</div>
</div>
<div class="form-group">
<form:label  class="control-label col-sm-2" path="shippingaddress.phonenumber" for="phonenumber">Number:</form:label>
<div class="col-xs-10">
<form:input class="form-control" id="phonenumber" path="shippingaddress.phonenumber" placeholder="Enter your number"/>

</div>
</div>

<div class="form-group">
<form:label class="control-label col-sm-2" path="shippingaddress.city" for="city">City:</form:label>
<div class="col-xs-10">
<form:input class="form-control" id="city" path="shippingaddress.city" placeholder="Enter your City"/>
</div>
</div>
  <div class="form-group">
    <form:label class="control-label col-sm-2" path="shippingaddress.district" for="district">District:</form:label>
    <div class="col-xs-10">
    <form:input class="form-control" id="district" path="shippingaddress.district" placeholder="Enter your District"/>
  </div>
  </div>
  <div class="form-group">
<form:label class="control-label col-sm-2" path="shippingaddress.pin" for="pin">Pin:</form:label>
<div class="col-xs-10">
<form:input class="form-control" path="shippingaddress.pin" id="pin" placeholder="Enter pin"/>
<form:errors path="shippingaddress.pin"/>
</div>
</div>
<div class="form-group">
<form:label  class="control-label col-sm-2" path="shippingaddress.state" for="state">State:</form:label>
<div class="col-xs-10">
<form:input class="form-control" path="shippingaddress.state" id="state"/>
</div>
</div>
  <button class="btn btn-lg btn-default btn-block button" type="submit" name="_eventId_ShippingAddressChecked"> Next</button>
			 <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}">
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