 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false"%>
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
background-image:url("resources/img/gb1.jpg");
background-size:100%;
}

   .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
      height:25%
  } 
</style>
</head>
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
<li class="active"><a href="<c:url value='/home'/>"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;home</a></li>
 <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-product-hunt" aria-hidden="true"></i>&nbsp;Product <span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="<c:url value='productpage/lg android'/>">lg</a></li>
<li><a href="<c:url value='productpage/android'/>">sony</a></li>
<li><a href="<c:url value='productpage/htc android'/>">htc</a></li>
<li><a href="<c:url value='productpage/smartphones'/>">samsung</a></li>
</ul>
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
<div class="container">
<div class="carousel slide" id="mycarousel" data-ride="carousel">
 <ol class="carousel-indicators">
    <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
    <li data-target="#mycarousel" data-slide-to="1"></li>
    <li data-target="#mycarousel" data-slide-to="2"></li>
    <li data-target="#mycarousel" data-slide-to="3"></li>
  </ol>
<div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="resources/img/sony.jpg"alt="hi">
    </div>

    <div class="item">
      <img src="resources/img/lg.jpg" alt="hi">
    </div>

    <div class="item">
      <img src="resources/img/htc.jpg" alt="hi">
    </div>

    <div class="item">
      <img src="resources/img/samsung.jpg" alt="hi">
    </div>
  </div>
 <a class="left carousel-control" href="#mycarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#mycarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
<div class="container-fluid" align="right">
<iframe width="420" height="300" src="https://www.youtube.com/embed/z4uCgicyCK8"></iframe>
</div>

 <div class="container-fluid">
  <table width="100%">
  <tr>
  <td><a href="<c:url value='productpage/android'/>"><img src="resources/img/a.jpg" class="img-circle" alt="hi" width="150" height="100"></a></td>
  <td><a href="<c:url value='productpage/htc android'/>"><img src="resources/img/b.jpg" class="img-circle" alt="hi" width="150" height="100"></a>></td>
  <td><a href="<c:url value='productpage/lg android'/>"><img src="resources/img/c.jpg" class="img-circle" alt="hi" width="150" height="100"></a></td>
  <td><a href="<c:url value='productpage/smartphones'/>"><img src="resources/img/d.jpg" class="img-circle" alt="hi" width="150" height="100"></a></td>
  </tr>
  </table>
  </div>
<nav class="navbar navbar-inverse navbar-fixed-bottom">
<div class="container-fluid" style="color:white;">
    Copyright:MyShop Inc.<br/>
	NY,USA
	<ul class="nav navbar-nav navbar-right">
	<li><i class="fa fa-facebook-square fa-2x"></i>&nbsp;facebook<li>
	<li><i class="fa fa-twitter fa-2x" aria-hidden="true">&nbsp;twitter</i></li>
	<li><i class="fa fa-youtube-play fa-2x" aria-hidden="true">&nbsp;youtube</i></li>
	
	</ul>
	</div>
	</nav>
	
</body>
</html>
