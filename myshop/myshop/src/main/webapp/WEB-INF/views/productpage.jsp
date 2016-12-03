<%@ page isELIgnored="false" %>

<html>

<head>
 <script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.5.2/angular.min.js"></script>

</head>
<body>
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

<div ng-app="productApp" ng-controller="productController"> 
  <table>
    <thead>
      <tr>
        <th ng-click="sort('productName')">Product ID</th>
        <th ng-click="sort('brand')">Product Name</th>
        <th ng-click="sort('price')">Price</th>
        <th ng-click="sort('category')">Category</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      
	  <tr ng-repeat="product in prodData">
        <td>{{product.productId}}</td>
        <td>{{product.productName}}</td>
        <td>{{product.price}}</td>
        <td>{{product.category}}</td>
  
      </tr>
	  
	
	  
    </tbody>
  </table>
  </div>
</div>
</body>
</html>
