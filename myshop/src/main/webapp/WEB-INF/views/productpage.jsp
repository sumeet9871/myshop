<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ include file="header1.jsp" %>
 <script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.5.2/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"></script>
  <script src="https://use.fontawesome.com/034feea29c.js"></script>
  
<script>

var prod=${productList};
angular.module("productApp",[])


.controller("productController",function($scope){
	
	$scope.prodData=prod;
	
	$scope.sort=function(keyname){
		$scope.sortKey=keyname;
		$scope.reverse=!$scope.reverse;
	}
	
});

</script>
<div  class="container" ng-app="productApp" ng-controller="productController"> 
<input type="text" ng-model="search" align="right" placeholder="Search"/>
  <table class="table table-bordered" align="justify">
    <thead>
      <tr>
        <th ng-click="sort('productId')">Product Id</th>
        <th>Product</th>
         <th ng-click="sort('brand')">Product Brand</th>
        <th ng-click="sort('productName')">Product Name</th>
        <th ng-click="sort('price')">Price</th>
        <th ng-click="sort('category')">Category</th>
       <th ng-click="sort('description')">Description</th>
       <th>More Info</th>

      </tr>
    </thead>
    <tbody>
      
	  <tr ng-repeat="product in prodData|filter:search|orderBy:sortKey:reverse">
        <td>{{product.productId}}</td>
         <td> <img src="<c:url value='/resources/img/{{product.productId}}.jpg' />"style="width:250px; height:200px" class="img-thumbnail" alt="Picture" /></td>
         <td>{{product.brand}}</td>
        <td>{{product.productName}}</td>
        <td>{{product.price}}</td>
        <td>{{product.category}}</td>
   <td>{{product.description}}</td>
   <td><a href="<c:url value='/productsdetail/{{product.productId}}'/>"><i class="fa fa-info-circle" aria-hidden="true"></i></a></td>
      </tr>
	  
	
	  
    </tbody>
  </table>
  </div>
</div>
<br>
<br>
<%@ include file="footer.jsp" %>
