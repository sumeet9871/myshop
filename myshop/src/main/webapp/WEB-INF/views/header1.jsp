 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial scale=1">
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

   .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
      height:50%
  } 
</style>
</head>
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
<li class="active"><a href="<c:url value='/home'/>"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;home</a></li>
 <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-product-hunt" aria-hidden="true"></i>&nbsp;Product <span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="<c:url value='productpage/All'/>">All Products</a></li>
<li><a href="<c:url value='/productpage/lg android'/>">lg</a></li>
<li><a href="<c:url value='/productpage/android'/>">sony</a></li>
<li><a href="<c:url value='/productpage/htc android'/>">htc</a></li>
<li><a href="<c:url value='/productpage/smartphones'/>">samsung</a></li>
</ul>
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
</nav>