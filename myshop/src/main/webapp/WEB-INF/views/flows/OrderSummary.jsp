
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

<div class="row">
  <div class="col-md-6">
  <h1>Shipping Address:</h1>
  <ul class="lead list-group">
      <li class="list-group-item">Name: ${order.cart.person.name}</li>
      <li class="list-group-item">Number: ${order.cart.person.shippingaddress.phonenumber}</li>
      <li class="list-group-item">Address: ${order.cart.person.shippingaddress.city}</li>
      <li class="list-group-item">City: ${order.cart.person.shippingaddress.district}</li>
      <li class="list-group-item">Pin: ${order.cart.person.shippingaddress.state}</li>
      
  </ul>
  </div>
     <table class="table">
      <tr>
      <th>Product Name</th>
      <th>Brand</th>
      <th>Price</th>
        <th>Quantity</th>
         <th>ItemTotal</th>
                
         
          <th></th>
                         <c:set var="Total" value="${0}" />
          <c:forEach var="items" items="${order.cart.items}">
               <tr>
            <td>${items.product.productName}</td>
             <td>${items.product.brand}</td>
            <td>${items.product.price}</td>
            <td>${items.quantity}</td>
                 <c:set var="Total" value="${Total + items.itemTotal}"/>                   
         <td>${items.itemTotal}</td>
          </tr>
          </c:forEach>
          </table>
          <h1> Grand total: ${Total}</h1>
          <form:form>
          <input type="hidden" name="_flowExecutionKey">
          
      <input type="submit" value="Submit Order" class="btn btn-default" name="_eventId_orderConfirmed" />
      </form:form>
  </div>
<%@ include file="footer.jsp" %>