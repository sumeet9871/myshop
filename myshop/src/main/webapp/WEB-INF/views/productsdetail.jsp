<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page session="false"%>
<%@ page isELIgnored="false"%>
<%@ include file="header1.jsp" %>
 <script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.5.2/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"></script>
  <script src="https://use.fontawesome.com/034feea29c.js"></script>

<title>myshop</title>

<br>
<br>
<br>
<br>
<br>

<div class="container-fluid">
	<div class="col-sm-6">
		
			<img src="<c:url value='/resources/img/${product.productId}.jpg'/>"width="350" height="300">
	</div>
	<div class="col-sm-6">
		<h2>Name:${product.productName }</h2>
		<br> <label>Brand:${product.brand }</label> <label>Category:${product.category }</label>
		<br> <label>Description:${product.description }</label> <br> <label>Price:${product.price }</label>
		<br> <a  class="btn btn-primary" href=" <c:url value='/AddToCart/${product.productId}'/> "> Add to Cart</a>
		

	</div>
</div>
<%@ include file="footer.jsp" %>