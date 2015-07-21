
app.controller("InventoryController", function($scope,$http) {
	$scope.listView = true;
	$scope.gridView = false;
	$scope.showListView = function() {
		$scope.listView = true;
		$scope.gridView = false;
		$('#listView').addClass('active');
		$('#gridView').removeClass('active');
	}
	
	$scope.showGridView = function() {
		$scope.listView = false;
		$scope.gridView = true;
		$('#gridView').addClass('active');
		$('#listView').removeClass('active');
	}
	
	
	$http({method:'GET',url:'getAllMakes'})
	.success(function(data) {
		console.log(data);
		$scope.allMakes = data;
		
	});
	
	$scope.vehicleList = [];
	$scope.year = "";
	$scope.make = "";
	$scope.model = "";
	$scope.bodyStyle = "";
	$scope.fuel = "";
	$scope.mileage = "";
	$scope.VehiclesCount = "";
	$scope.price = "lowToHigh";
	
	$scope.initFunction = function(year,make,model,bodyStyle,fuel){
		console.log(model);
		console.log(make);
		console.log(year);
		console.log(bodyStyle);
		console.log(fuel);
		$scope.year = year;
		$scope.make = make;
		$scope.model = model;
		$scope.bodyStyle = bodyStyle;
		$scope.fuel = fuel;
		
		$scope.loadMore();
	}
	
	 $scope.noMore = false;
	 var start = 0;
	$scope.loadMore = function() {
		
		console.log($scope.bodyStyle);
		if ($scope.noMore) return;
		$http({method:'GET',url:'getVehicleInfo',params:{start:start,year:$scope.year,make:$scope.make,model:$scope.model,bodyStyle:$scope.bodyStyle,fuel:$scope.fuel,mileage:$scope.mileage,price:$scope.price}})
		.success(function(data) {
			if(data.vehicleList.length == 0) {
				$scope.noMore = true;
			}
			$scope.VehiclesCount = data.count;
			for (var i = 0; i < data.vehicleList.length; i++) {
				$scope.vehicleList.push(data.vehicleList[i]);
			}
		});
		
		start = start + 16;
	}
	
		$scope.selectYear = function(){
		
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
		
		$scope.selectMake = function(){
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
		
		$scope.selectModel = function(){
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
		
		$scope.selectBodyStyle = function(){
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
		
		$scope.selectFuel = function(){
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
		$scope.selectMileage = function(){
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
		
		$scope.resetFilters = function(){
			$scope.year = "";
			$scope.make = "";
			$scope.model = "";
			$scope.bodyStyle = "";
			$scope.fuel = "";
			$scope.mileage = "";
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}		
		
		$scope.selectPrice = function(){
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
		
});

app.controller("HomeController", function($scope,$http) {
	
	$http({method:'GET',url:'getAllMakes'})
	.success(function(data) {
		console.log(data);
		$scope.allMakes = data;
		
	});
	
	$http({method:'GET',url:'getRecentVehicles'})
	.success(function(data) {
		console.log(data);
		$scope.recentVehicles = data;
		
	});
	
});

app.controller("VehicleDetailsController", function($scope,$http) {
	console.log("vehicle details");
});