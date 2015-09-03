
app.controller("InventoryController", function($scope,$http, notificationService) {
	$scope.listView = true;
	$scope.gridView = false;
	var contextPath = $('#contextpath').val();
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
	
	
	$http({method:'GET',url:contextPath+'/getAllMakes'})
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
	$scope.alphbet = "";
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
		
		console.log($scope.alphbet);
		if ($scope.noMore) return;
		$http({method:'GET',url:contextPath+'/getVehicleInfo',params:{start:start,year:$scope.year,make:$scope.make,model:$scope.model,bodyStyle:$scope.bodyStyle,fuel:$scope.fuel,mileage:$scope.mileage,price:$scope.price,alphbet:$scope.alphbet}})
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
			$scope.alphbet = ""; 
			$scope.loadMore();
		}
		
		$scope.selectAlphbet = function(){
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.price = "";
			$scope.loadMore();
		}
		
});

app.controller("HomeController", function($scope,$http, notificationService) {
	var contextPath = $('#contextpath').val();
	$http({method:'GET',url:contextPath+'/getAllMakes'})
	.success(function(data) {
		console.log(data);
		$scope.allMakes = data;
		
	});
	
	$http({method:'GET',url:contextPath+'/getRecentVehicles'})
	.success(function(data) {
		console.log(data);
		$scope.recentVehicles = data;
		
	});
	
});

app.controller("VehicleDetailsController", function($scope,$http,notificationService) {
	
	var contextPath = $('#contextpath').val();
	
	$scope.requestMore = function(vin){
		console.log(vin);
		$scope.request.vin = vin;
		console.log($scope.request);
		$http({
			method : 'POST',
			url : contextPath+'/requestMore',
			data : $scope.request
		}).success(function(response) {
			console.log("Success...............");
			$('#myModal').modal('hide');
			notificationService.success("Your request has been submitted");
		}).error(function(){
			console.log("Error.................");
		});
	};
	
	$scope.scheduleTest = function(vin){
		console.log(vin);
		$scope.schedule.vin = vin;
		console.log($scope.schedule);
		$http({
			method : 'POST',
			url : contextPath+'/scheduleTest',
			data : $scope.schedule
		}).success(function(response) {
			console.log("Success...............");
			notificationService.success("Your request has been submitted");
			$('#scheduleTest').modal('hide');
		}).error(function(){
			console.log("Error.................");
		});
	};
	
	
	$scope.otherInfo = function(vin){
		console.log(vin);
		$scope.friend.vin = vin;
		console.log($scope.friend);
		$http({
			method : 'POST',
			url : contextPath+'/otherInfo',
			data : $scope.friend
		}).success(function(response) {
			console.log("Success...............");
			notificationService.success("Your request has been submitted");
			$('#otherInfo').modal('hide');
		}).error(function(){
			console.log("Error.................");
		});
	};
	
	$scope.tradeInApp = function(vin){
		console.log(vin);
		$scope.tradeIn.vin = vin;
		console.log($scope.tradeIn);
		$http({
			method : 'POST',
			url : contextPath+'/tradeInApp',
			data : $scope.tradeIn
		}).success(function(response) {
			console.log("Success...............");
			notificationService.success("Your request has been submitted");
			$('#tradeInApp').modal('hide');
		}).error(function(){
			console.log("Error.................");
		});
	};
	$scope.priceAlert = {};
	$scope.savePriceAlert = function(vin){
		$scope.priceAlert.vin = vin;
		$http({
			method : 'POST',
			url : contextPath+'/savePriceAlert',
			data : $scope.priceAlert
		}).success(function(response) {
			console.log("Success...............");
			$('#priceAlertModal').modal('hide');
			notificationService.success("Your request has been submitted");
		}).error(function(){
			console.log("Error.................");
		});
	};
	
});

app.controller("MobileVehicleDetailsController", function($scope,$http,notificationService) {
	
	var contextPath = $('#contextpath').val();
	
	$scope.requestMore = function(vin){
		console.log(vin);
		$scope.request.vin = vin;
		console.log($scope.request);
		$http({
			method : 'POST',
			url : contextPath+'/requestMore',
			data : $scope.request
		}).success(function(response) {
			console.log("Success...............");
			$('#myModal').modal('hide');
			notificationService.success("Your request has been submitted");
		}).error(function(){
			console.log("Error.................");
		});
	};
	
	$scope.scheduleTest = function(vin){
		console.log(vin);
		$scope.schedule.vin = vin;
		console.log($scope.schedule);
		$http({
			method : 'POST',
			url : contextPath+'/scheduleTest',
			data : $scope.schedule
		}).success(function(response) {
			console.log("Success...............");
			notificationService.success("Your request has been submitted");
			$('#scheduleTest').modal('hide');
		}).error(function(){
			console.log("Error.................");
		});
	};
	
	
	$scope.otherInfo = function(vin){
		console.log(vin);
		$scope.friend.vin = vin;
		console.log($scope.friend);
		$http({
			method : 'POST',
			url : contextPath+'/otherInfo',
			data : $scope.friend
		}).success(function(response) {
			console.log("Success...............");
			notificationService.success("Your request has been submitted");
			$('#otherInfo').modal('hide');
		}).error(function(){
			console.log("Error.................");
		});
	};
	
	$scope.priceAlert = {};
	$scope.savePriceAlert = function(vin){
		$scope.priceAlert.vin = vin;
		$http({
			method : 'POST',
			url : contextPath+'/savePriceAlert',
			data : $scope.priceAlert
		}).success(function(response) {
			console.log("Success...............");
			$('#priceAlertModal').modal('hide');
			notificationService.success("Your request has been submitted");
		}).error(function(){
			console.log("Error.................");
		});
	};
	
});

app.controller("MobileHomeController", function($scope,$http, notificationService) {
	
	var contextPath = $('#contextpath').val();
	
	$http({method:'GET',url:contextPath+'/getAllMakes'})
	.success(function(data) {
		console.log(data);
		$scope.allMakes = data;
		
	});
	
	$http({method:'GET',url:contextPath+'/getRecentVehicles'})
	.success(function(data) {
		console.log(data);
		$scope.recentVehicles = data;
		
	});
});

app.controller("MobileInventoryController", function($scope,$http, notificationService) {
	
	$scope.vehicleList = [];
	$scope.year = "";
	$scope.make = "";
	$scope.model = "";
	$scope.bodyStyle = "";
	$scope.fuel = "";
	$scope.mileage = "";
	$scope.VehiclesCount = "";
	$scope.alphbet = "";
	$scope.price = "lowToHigh";
	var contextPath = $('#contextpath').val();
	$scope.initFunction = function(){
		
		$scope.loadMore();
	}
	
	$http.get(contextPath+'/getCarBrands')
	.success(function(data) {
		$scope.characters = data.alphabates;
		//$scope.chr = $scope.characters[0].name;
		//$('#'+$scope.chr).addClass('active');
	});
	
	 var mySwiper = new Swiper ('.swiper-container', {
		 effect: 'coverflow',
		       grabCursor: true,
		       centeredSlides: true,
		       slidesPerView: 'auto',
		       coverflow: {
		           rotate: 50,
		           stretch: 0,
		           depth: 100,
		           modifier: 1,
		           slideShadows : true
		       },
		       
		       onTouchEnd: function(swiper, event) {
		    	   $scope.searchChar = $('.swiper-slide-active').attr('name');
		    	   $('.alfaList ul li a.active').removeClass('active');
		    	   $('#'+$scope.searchChar).addClass('active');
		    	   $scope.setAlphabet($scope.searchChar,$('.swiper-slide-active').attr('index'));
		       }
		 }) 
	
	 $scope.noMore = false;
	 var start = 0;
	$scope.loadMore = function() {
		
		if ($scope.noMore) return;
		$http({method:'GET',url:contextPath+'/getMobileVehicleInfo',params:{start:start,year:$scope.year,make:$scope.make,model:$scope.model,bodyStyle:$scope.bodyStyle,fuel:$scope.fuel,mileage:$scope.mileage,price:$scope.price,alphbet:$scope.alphbet}})
		.success(function(data) {
			console.log(data);
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
			$scope.price = "";
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
		
		$scope.resetFilters = function(){
			$scope.year = "";
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}		
		
		
		$scope.setAlphabet = function(alphabate,index) {
			$('.alfaList ul li a.active').removeClass('active');
	    	$('#'+alphabate).addClass('active');
	    	mySwiper.slideTo(index, 1000, false);
			$scope.alphbet = $('.swiper-slide-active').attr('make');
			$scope.price = "";
			//$scope.year = "";
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
	
});

app.controller("MobileNewArrivalController", function($scope,$http,notificationService) {
	
	$scope.vehicleList = [];
	$scope.year = "";
	$scope.VehiclesCount = "";
	$scope.alphbet = "";
	var contextPath = $('#contextpath').val();
	$scope.initFunction = function(){
		
		$scope.loadMore();
	}
	
	 $scope.noMore = false;
	 var start = 0;
	$scope.loadMore = function() {
		
		if ($scope.noMore) return;
		$http({method:'GET',url:contextPath+'/mobile/getMobileRecentVehicles',params:{start:start,year:$scope.year,alphabet:$scope.alphbet}})
		.success(function(data) {
			console.log(data);
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
			$scope.alphbet = "";
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
		
		$scope.resetFilters = function(){
			$scope.year = "";
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}		
		
		
		$scope.setAlphabet = function(alphabate) {
			console.log(alphabate);
			$scope.alphbet = alphabate;
			$scope.year = "";
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
	
});

app.controller("BlogController", function($scope,$http,notificationService) {
	var contextPath = $('#contextpath').val();
	$scope.noMore = false;
	 var start = 0;
	 $scope.blogList = [];
	 $scope.blogsCount = "";
	$scope.init = function() {
		$scope.loadMore();
	}
	
	$scope.loadMore = function() {
		
		if ($scope.noMore) return;
		$http({method:'GET',url:contextPath+'/getAllBlogs',params:{start:start}})
		.success(function(data) {
			console.log(data);
			if(data.blogList.length == 0) {
				$scope.noMore = true;
			}
			$scope.blogsCount = data.count;
			for (var i = 0; i < data.blogList.length; i++) {
				$scope.blogList.push(data.blogList[i]);
			}
		});
		
		start = start + 3;
	}
	
});

app.controller("ContactUsController", function($scope,$http) {
	
	$scope.contact = {};
	var contextPath = $('#contextpath').val();
	$scope.saveContact = function() {
		
		$http.post(contextPath+'/saveContact',$scope.contact)
		.success(function(data) {
			console.log('success');
		});
	}
});

app.controller("MobileContactUsController", function($scope,$http,$timeout) {
	$scope.showMsg = false;
	$scope.contact = {};
	var contextPath = $('#contextpath').val();
	$scope.nameText = 0;
	$scope.emailText = 0;
	$scope.saveContact = function() {
	
	console.log($scope.contact);
	if($scope.contact.name == undefined || $scope.contact.name == ""){
		$scope.nameText = 1;
	}else{
		$scope.nameText = 0;
	}
	
	if($scope.contact.email == undefined || $scope.contact.email == ""){
		$scope.emailText = 1;
	}else{
		$scope.emailText = 0;
	}
	
	if($scope.contact.number == undefined){
		$scope.contact.number = "";
	}
	
	if($scope.contact.message == undefined){
		$scope.contact.message = "";
	}
	
	if($scope.emailText == 0 && $scope.nameText == 0){
		$http.post(contextPath+'/saveContact',$scope.contact)
		.success(function(data) {
			$scope.showMsg = true;
			$timeout(callAtTimeout, 4000);
			console.log('success');
		});
		
	}
	
	};
	
	function callAtTimeout() {
		$scope.showMsg = false;
	}
	
});
