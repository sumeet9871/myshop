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
	
		 <table class="table">
      <tr>
      <th>Product Name</th>
      <th>Brand</th>
      <th>Price</th>
        <th>Quantity</th>
         <th>ItemTotal</th>
                
         
          <th></th>
 <c:set var="Total" value="${0}" />
	<c:forEach items="${items}" var="items">
						<tr>
                           <td>${items.product.productName }</td>
                           <td>${items.product.brand }</td>
                           <td>${items.product.price }</td>
							<td>${items.quantity }</td>
							 <c:set var="Total" value="${Total + items.itemTotal}" />
							<td>${items.itemTotal }</td>
				
							<td><a href="<c:url value='/Cart/remove/${items.itemId}'/>">Remove</a></td>

						</tr>
						
					</c:forEach>	
				</table>
				<h1> Grand total: ${Total}</h1>
					<br> <a class="btn btn-primary" href=" <c:url value='/order/addorder/${person.cart.cartId}'/> ">CheckOut</a>
	</div>
</div>
<%@ include file="footer.jsp" %>