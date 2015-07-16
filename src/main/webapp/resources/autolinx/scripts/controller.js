
app.controller("InventoryController", function($scope,$http) {
	$scope.listView = true;
	$scope.gridView = false;
	$scope.showListView = function() {
		$scope.listView = true;
		$scope.gridView = false;
	}
	
	$scope.showGridView = function() {
		$scope.listView = false;
		$scope.gridView = true;
	}
	
	$scope.vehicleList = [];
	 $scope.noMore = false;
	 var start = 0 ;
	$scope.loadMore = function() {
		if ($scope.noMore) return;
		$http({method:'GET',url:'getVehicleInfo',params:{start:start}})
		.success(function(data) {
			if(data.length == 0) {
				$scope.noMore = true;
			}
			for (var i = 0; i < data.length; i++) {
				$scope.vehicleList.push(data[i]);
			}
		});
		
		start = start + 16;
	}
});

app.controller("VehicleDetailsController", function($scope,$http) {
	console.log("vehicle details");
});