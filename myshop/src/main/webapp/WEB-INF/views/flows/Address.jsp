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
  
   <div class="container">
		<c:url var="addAction" value="/shippingaddress/add"></c:url>
		<form:form action="${addAction}" commandName="shippingaddress"
			modelAttribute="shippingaddress" method="POST">
			<h2 style="color: white">ShippingAddress</h2>
			<form:input type="text" id="phonenumber" class="form-control"
				placeholder="phone number" path="phonenumber" />
			<br>
			<form:input type="text" id="city" class="form-control"
				placeholder="City" path="city" />
			<br>
			<form:input type="text" id="district" class="form-control"
				placeholder="District" path="district" />
			<br>
			<form:input type="text" id="pin" class="form-control"
				placeholder="PIN" path="pin" />
			<br>
			<form:input type="text" id="state" class="form-control"
				placeholder="State" path="state" />
			<br>
			<button class="btn btn-lg btn-default btn-block button" type="submit">Next</button>
		</form:form> 
	</div>

</body>
</html>
  <%@ include file="footer.jsp" %>