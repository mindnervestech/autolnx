app.controller("aboutUsController", function($scope,$http, notificationService, vcRecaptchaService) {
	
	$scope.noMore = false;
	 var start = 0;
	 $scope.blogList = [];
	 $scope.blogsCount = "";
	$scope.init = function() {
		$scope.loadMore();
	}
	
	$scope.loadMore = function() {
		
		
		if ($scope.noMore) return;
		$http({method:'GET',url:'/glivr/getAllBlogs',params:{start:start}})
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
	console.log("In about");
});

app.controller("WarrantyController", function($scope,$http, notificationService, vcRecaptchaService) {
	
});

app.controller("comparisonController", function($scope,$http, notificationService, vcRecaptchaService) {
	
});

app.controller("InventoryController", function($scope,$http, notificationService, vcRecaptchaService,$location) {
	$scope.listView = true;
	$scope.gridView = false;
	//$scope.alphbet = "a_z";
	var contextPath = $('#contextpath').val();
	$scope.showListView = function() {
		$scope.listView = true;
		$scope.gridView = false;
		$('#listView').addClass('active');
		$('#gridView').removeClass('active');
	};
	$scope.showGridView = function() {
		$scope.listView = false;
		$scope.gridView = true;
		$('#gridView').addClass('active');
		$('#listView').removeClass('active');
	};
	
	
	$http({method:'GET',url:contextPath+'/getAllMake'})
	.success(function(data) {
		console.log(data);
		$scope.allMakes = data;
		
	});
	
	$scope.vehicleList = [];
	$scope.year = "";
	$scope.make = "";
	$scope.model = "";
	$scope.bodyStyle = "";
	$scope.locationId = "";
	$scope.fuel = "";
	$scope.mileage = "";
	$scope.VehiclesCount = "";
	$scope.price = "lowToHigh";
	$scope.vehicleType="";
	var start = 0;
	$scope.initFunction = function(year,make,model,bodyStyle,fuel,locationId,type,view,sortBy,sortType){
		if(view == "oneLine"){
			$scope.listView = true;
			$scope.gridView = false;
			$('#listView').addClass('active');
			$('#gridView').removeClass('active');
		}else{
			$scope.listView = false;
			$scope.gridView = true;
			$('#listView').removeClass('active');
			$('#gridView').addClass('active');
		}
		$.urlParam = function(name){
			var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
			if(results != null){
				return results[1] || "";
			}
			else{
				return "";
			}
		}
		console.log("????????");
		console.log(type);
		console.log(locationId);
		$scope.start = $.urlParam('start').replace("%20"," ");
		$scope.make = $.urlParam('make').replace("%20"," ");
		$scope.year = $.urlParam('year').replace("%20"," ");
		$scope.model = $.urlParam('model').replace("%20"," ");
		$scope.bodyStyle = $.urlParam('bodyStyle').replace("%20"," ");
		$scope.fuel = $.urlParam('fuel').replace("%20"," ");
		$scope.mileage = $.urlParam('mileage').replace("%20"," ");
		$scope.alphbet = $.urlParam('alphbet').replace("%20"," ");
		$scope.price = $.urlParam('price').replace("%20"," ");
		$scope.vehicleType = $.urlParam('vehicleType').replace("%20"," ");
		$scope.type = $.urlParam('vtype').replace("%20"," ");
		
		
		if($scope.price == ""){
			$scope.price = "lowToHigh";
		}
		
		
		
		if(sortBy == "Alphabetical"){
			if(sortType == "A To Z"){
			
				$scope.alphbet = "a_z";
				$scope.price = "";
				$scope.start = 0;
				start = 0;
			}else if(sortType == "Z TO A"){
			
				$scope.alphbet = "z_a";
				$scope.price = "";
				$scope.start = 0;
				start = 0;
			}
			
		}
		if(sortBy == "price"){
			if(sortType == "Low To High"){
				console.log("111111eeee1111");
				console.log(sortBy);
				$scope.alphbet = "";
				$scope.price = "lowToHigh";
				$scope.start = 0;
				start = 0;
			}else if(sortType == "High To Low"){
				console.log("222rrr2222222");
				$scope.alphbet = "";
				$scope.price = "highToLow";
				$scope.start = 0;
				start = 0;
			}
		}
	/*	if(sortBy == "Time"){
			if(sortType == "Newest To Oldest"){
				console.log("1111111111111111111");
				console.log(sortBy);
				$scope.alphbet = "a_z";
				$scope.price = "";
				$scope.start = 0;
				start = 0;
			}else if(sortType == "Oldest To Newest"){
				console.log("22222222222222222");
				$scope.alphbet = "z_a";
				$scope.price = "";
				$scope.start = 0;
				start = 0;
			}
		}*/
		
		
		if($scope.type == ""){
			$scope.type = type;
		}
		if($scope.alphbet == ""){
			$scope.alphbet = "a_z";
		}
		if($scope.start == ""){
			start = 0;
		}else{
			//start = parseInt($scope.start);
			$scope.start = parseInt($scope.start);
		}
			$scope.locationId = locationId;
			$scope.loadMore();
			$scope.loadDetails();
	};
	
	$scope.loadDetails = function(){
		$http({method:'GET',url:contextPath+'/getAllMakes',params:{vtype:$scope.type,make:$scope.make,year:$scope.year,fuel:$scope.fuel,bodyStyle:$scope.bodyStyle,category:$scope.vehicleType}})
		.success(function(data) {
			$scope.makeList = data.make;
			console.log(data.make);
		});
		$http({method:'GET',url:contextPath+'/getAllYearByModel',params:{vtype:$scope.type,make:$scope.make,year:$scope.year,fuel:$scope.fuel,bodyStyle:$scope.bodyStyle,category:$scope.vehicleType}})
		.success(function(data) {
			$scope.yearList = data;
			console.log(data);
		});
		$http({method:'GET',url:contextPath+'/getAllCategory',params:{vtype:$scope.type,make:$scope.make,year:$scope.year,fuel:$scope.fuel,bodyStyle:$scope.bodyStyle,category:$scope.vehicleType}})
		.success(function(data) {
			$scope.vehicleTypeList = data;
			console.log(data);
		});
		$http({method:'GET',url:contextPath+'/getAllFuelTypeYear',params:{vtype:$scope.type,make:$scope.make,year:$scope.year,fuel:$scope.fuel,bodyStyle:$scope.bodyStyle,category:$scope.vehicleType}})
		.success(function(data) {
			$scope.fuelList = data;
			console.log(data);
		});
		$http({method:'GET',url:contextPath+'/getAllBodyStyleByFuelType',params:{vtype:$scope.type,make:$scope.make,year:$scope.year,fuel:$scope.fuel,bodyStyle:$scope.bodyStyle,category:$scope.vehicleType}})
		.success(function(data) {
			$scope.bodyList = data;
			console.log(data);
		});
	}
	
	
	 $scope.noMore = false;
	 var start = 0;
	$scope.loadMore = function() {
		
		if($scope.vType == undefined){
			$scope.vType = "";
		}
		$scope.flagForNew = 0;
		if($scope.vType == 'New'){
			$scope.flagForNew = 1;
		}
		
		
	
		
		if ($scope.noMore) return;
		
		
		
		var url = window.location.href;
		var params = {start:start,year:$scope.year,make:$scope.make,model:$scope.model,bodyStyle:$scope.bodyStyle,fuel:$scope.fuel,mileage:$scope.mileage,price:$scope.price,alphbet:$scope.alphbet,vtype:$scope.type,vehicleType:$scope.vehicleType};
		var new_url = url + '?' + jQuery.param(params);
		$http({method:'GET',url:contextPath+'/getVehicleInfo',params:{start:start,year:$scope.year,make:$scope.make,model:$scope.model,bodyStyle:$scope.bodyStyle,fuel:$scope.fuel,mileage:$scope.mileage,price:$scope.price,alphbet:$scope.alphbet,vtype:$scope.type,vehicleType:$scope.vehicleType}})
		.success(function(data) {
			//window.location.replace(new_url);
			console.log(data)
			if(data.vehicleList.length == 0) {
				$scope.noMore = true;
			}
			$scope.VehiclesCount = data.count;
			for (var i = 0; i < data.vehicleList.length; i++) {
				$scope.vehicleList.push(data.vehicleList[i]);
			}
			window.location.hash = '?' + jQuery.param(params);
		});
		
		start = start + 16;
	}
		
		$scope.selectYear = function(){
			$scope.loadDetails();
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
		
		$scope.selectMake = function(){
			$scope.loadDetails();
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
		
		$scope.selectModel = function(){
			/*$http({method:'GET',url:contextPath+'/getAllYearByModel',params:{make:$scope.make,model:$scope.model}})
			.success(function(data) {
				$scope.yearList = data;
				console.log(data);
			});*/
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
		
		$scope.selectBodyStyle = function(){
			$scope.loadDetails();
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
		
		$scope.selectFuel = function(){
			$scope.loadDetails();
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
		$scope.selectVehicleType = function(){
			$scope.loadDetails();
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
		
		
		$scope.selectMileage = function(){
			$scope.loadDetails();
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
		$scope.selectvType = function(){
			$scope.loadDetails();
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}
		
		$scope.selectVehicleType = function(){
			$scope.loadDetails();
			console.log($scope.vehicleType);
			console.log("?????");
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		};
		
		$scope.resetFilters = function(){
			$scope.year = "";
			$scope.make = "";
			$scope.model = "";
			$scope.bodyStyle = "";
			$scope.fuel = "";
			$scope.mileage = "";
			$scope.vType = "";
			$scope.vehicleType = "";
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
		//var contextPath = $('#contextpath').val();
		$scope.selectedVehicle = [];
		$scope.url = contextPath+"/compare2/";
		$scope.selectVehicle = function(vehicle,select){
			$scope.url = contextPath+"/compare2/";
			console.log(vehicle);
			console.log(select);
			if(select == true){
				$scope.selectedVehicle.push(vehicle.vin);
			}else{
				$scope.deleteSelectedVehicle(vehicle.vin);
			}
			angular.forEach($scope.selectedVehicle, function(obj, index){
				if(index == 0){
					$scope.url = $scope.url+"?"+(index+1)+"="+obj;
				}else{
					$scope.url = $scope.url+"&"+(index+1)+"="+obj;
				}
				
			});
			console.log($scope.url);
		};
		
		$scope.deleteSelectedVehicle = function(item){
			angular.forEach($scope.selectedVehicle, function(obj, index){
				 if (item == obj) {
					 $scope.selectedVehicle.splice(index, 1);
			       	return;
			    }
			  });
		}
		
		$scope.Compare = function(){
			console.log("jjjj");
			$location.path('/compare2');
		}
		//$location.path('/myprofile');
		
});

app.controller("HomeController", function($scope,$http, notificationService, vcRecaptchaService,$location) {
	$scope.newType = "New";
	$scope.usedType = "Used";
	var contextPath = $('#contextpath').val();
	$scope.make = "";
	$scope.model = "";
	$scope.year = "";
	$scope.fuelType = "";
	$scope.bodyStyle = "";
	$scope.vehicleType = "";
	
	$('#modelType').prop("disabled", true);
	$('#year').prop("disabled", true);
	$('#fuelType').prop("disabled", true);
	$('#bodyStyle').prop("disabled", true); 
	
	/*$http({method:'GET',url:contextPath+'/getAllMakes'})
	.success(function(data) {
		$scope.allMakes = data;
		console.log("???????");
		$scope.makeList = data.make;
		console.log(data.make);
	});*/
	$http({method:'GET',url:contextPath+'/getAllMakes',params:{make:$scope.make,year:$scope.year,fuel:$scope.fuelType,bodyStyle:$scope.bodyStyle,category:$scope.vehicleType}})
	.success(function(data) {
		$scope.allMakes = data;
		$scope.makeList = data.make;
		console.log(data.make);
	});
	$http({method:'GET',url:contextPath+'/getRecentVehicles'})
	.success(function(data) {
		$scope.recentVehicles = data;
	});
	$scope.followBrand = {};
	$scope.getModel = function(make){
		console.log("????");
		$scope.make = make;
		console.log("getModel");
		$('#modelType').prop("disabled", false);
		$('#modelType').removeClass("customDis");
		$('#modelType').addClass("custom");
		$('#year').prop("disabled", false);
		$('#year').removeClass("customDis");
		$('#year').addClass("custom");
		$('#fuelType').prop("disabled", false);
		$('#fuelType').removeClass("customDis");
		$('#fuelType').addClass("custom");
		$('#bodyStyle').prop("disabled", false);
		$('#bodyStyle').removeClass("customDis");
		$('#bodyStyle').addClass("custom");
		
		$http({method:'GET',url:contextPath+'/getAllModelByMake',params:{make:make}})
		.success(function(data) {
			$scope.modelList = data;
			console.log(data);
		});
		/*$http({method:'GET',url:contextPath+'/getAllYearByModel',params:{make:$scope.make}})
		.success(function(data) {
			$scope.yearList = data;
			console.log(data);
		});
		$http({method:'GET',url:contextPath+'/getAllFuelTypeYear',params:{make:$scope.make}})
		.success(function(data) {
			$scope.fuelList = data;
			console.log(data);
		});
		$http({method:'GET',url:contextPath+'/getAllBodyStyleByFuelType',params:{make:$scope.make}})
		.success(function(data) {
			$scope.bodyList = data;
			console.log(data);
		});*/
		$http({method:'GET',url:contextPath+'/getAllYearByModel',params:{make:$scope.make,year:$scope.year,fuel:$scope.fuelType,bodyStyle:$scope.bodyStyle,category:$scope.vehicleType}})
		.success(function(data) {
			$scope.yearList = data;
			console.log(data);
		});
		$http({method:'GET',url:contextPath+'/getAllCategory',params:{make:$scope.make,year:$scope.year,fuel:$scope.fuel,bodyStyle:$scope.bodyStyle,category:$scope.vehicleType}})
		.success(function(data) {
			$scope.vehicleTypeList = data;
			console.log(data);
		});
		$http({method:'GET',url:contextPath+'/getAllFuelTypeYear',params:{make:$scope.make,year:$scope.year,fuel:$scope.fuelType,bodyStyle:$scope.bodyStyle,category:$scope.vehicleType}})
		.success(function(data) {
			$scope.fuelList = data;
			console.log(data);
		});
		$http({method:'GET',url:contextPath+'/getAllBodyStyleByFuelType',params:{make:$scope.make,year:$scope.year,fuel:$scope.fuelType,bodyStyle:$scope.bodyStyle,category:$scope.vehicleType}})
		.success(function(data) {
			$scope.bodyList = data;
			console.log(data);
		});
	};
	$scope.getYear = function(model){
		$scope.model = model;
		console.log("????");
		console.log("getYear");
		
	};
	$scope.getFeulType = function(year){
		$scope.year = year;
		console.log("getFuelType");
		console.log("????");
		
	};
	$scope.getBodyStyle = function(fuel){
		console.log("????");
		console.log("getBodyStyle");
		$scope.fuelType = fuel;
		
	};
	$scope.saveFollowBrand = function() {
		console.log($scope.followBrand);
		$http({
			method : 'POST',
			url : contextPath+'/saveFollowBrand',
			data : $scope.followBrand
		}).success(function(response) {
			console.log("Success...............");
			notificationService.success("Your request has been submitted");
			$('#carBrandModal').modal('hide');
		}).error(function(){
			console.log("Error.................");
		});
	};
	
});

app.controller("VehicleDetailsController", function($scope,$http,notificationService,$timeout, vcRecaptchaService,$window) {
	$scope.flag = null;
	$scope.initFun = function(vehical,virtualTour,video){
		$scope.typeofV = vehical;
		console.log(video);
		console.log(virtualTour);
		if(virtualTour !=''){
			$scope.flag = "virtualTour";
			$("#virtualTour").addClass('videoTxtActive');
			$("#video").removeClass('videoTxtActive');
			$("#video").addClass('videoTxt');
		}else if(video !=''){
			$scope.flag = "video";
			$("#video").addClass('videoTxtActive');
			$("#virtualTour").removeClass('videoTxtActive');
			$("#virtualTour").addClass('videoTxt');
		}
		console.log($scope.flag);
		console.log("{{{{{}}}}}}}}");
	};
	$scope.setFlag = function(fl){
		console.log(fl);
		if(fl == "video"){
			$scope.flag = "video";
			$("#video").addClass('videoTxtActive');
			$("#virtualTour").removeClass('videoTxtActive');
			$("#virtualTour").addClass('videoTxt');
		}
		if(fl == "virtualTour"){
			$scope.flag = "virtualTour";
			$("#virtualTour").addClass('videoTxtActive');
			$("#video").removeClass('videoTxtActive');
			$("#video").addClass('videoTxt');
		}
	}
	
	var contextPath = $('#contextpath').val();
	
	
	$scope.model = {
            key: '6LfR5BUTAAAAAJKfvNn4v_VOk-tR0zsfVvTno8QA'
        };
	
	$scope.showButton = 0;
	$scope.setResponse = function (response) {
        console.info('Response available');

        $scope.response = response;
        console.log(response);
        $scope.showButton = 1;
    };

    $scope.setWidgetId = function (widgetId) {
        console.info('Created widget ID: %s', widgetId);

        $scope.widgetId = widgetId;
    };

    $scope.cbExpiration = function() {
        console.info('Captcha expired. Resetting response object');

        $scope.response = null;
     };
     
     
     $scope.savePdfData = function(vin){
    	 $scope.pdfPathOpen = null;
    	 console.log("????????????");
    	 $scope.pdf.pdfPath = $('#pdfPath').val();
    	 
    	 console.log(vin);
 		$scope.pdf.vin = vin;
 		console.log($scope.pdf.vin);
    	 
    	 $scope.pdfPathOpen = "/glivrImg/images/"+$('#pdfPath').val();
 		console.log($scope.pdf);
 		$http({
 			method : 'POST',
 			url : contextPath+'/pdfDataSave',
 			data : $scope.pdf
 		}).success(function(response) {
 			console.log("Success...............");
 			$('#pdfModal').modal('hide');
 			notificationService.success("Your request has been submitted");
 			console.log($scope.pdfPathOpen);
			$('#pdfDownloalModal1').click();
			
 		}).error(function(){
 			console.log("Error.................");
 		});
 	};
     
    /* 
	$http({
		method : 'POST',
		url : contextPath+'/saveFollowBrand',
		data : $scope.followBrand
	}).success(function(response) {
		console.log("Success...............");
		notificationService.success("Your request has been submitted");
		$('#carBrandModal').modal('hide');
	}).error(function(){
		console.log("Error.................");
	});
 	*/

	
	$scope.requestMore = function(vin){
		
		$("#callRequest").click();
		console.log(vin);
		$scope.request.vin = vin;
		console.log($scope.request);
		$http({
			method : 'POST',
			url : contextPath+'/requestMore',
			data : $scope.request
		}).success(function(response) {
			console.log("Success...............");
			$scope.showButton = 0;
			$('#myModal').modal('hide');
			notificationService.success("Your request has been submitted");
		}).error(function(){
			console.log("Error.................");
		});
	};
	$scope.flag = 0;
	$('iframe').mouseenter(function(event){
		console.log("lllll");
		$scope.flag = 1;
		$timeout(callAtTimeout, 5000);
	});
	
	
	$('iframe').mouseleave(function(event){
		$scope.flag = 0;
	});
	
	function callAtTimeout() {
		if($scope.flag == 1){
			$('#virtualTour').click();
		}
	}
	
	$scope.scheduleTest = function(vin){
		$("#callSchedule").click();
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
			$scope.showButton = 0;
			$('#scheduleTest').modal('hide');
		}).error(function(){
			console.log("Error.................");
		});
	};
	
	
	$scope.otherInfo = function(vin){
				
		console.log(vin);
		$("#callemail").click();
		$scope.friend.vin = vin;
		console.log($scope.friend);
		$http({
			method : 'POST',
			url : contextPath+'/otherInfo',
			data : $scope.friend
		}).success(function(response) {
			console.log("Success...............");
			notificationService.success("Your request has been submitted");
			$scope.showButton = 0;
			$('#otherInfo').modal('hide');
		}).error(function(){
			console.log("Error.................");
		});
	};
	
	$scope.tradeInApp = function(vin){
		$("#callTrade").click();
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
			$scope.showButton = 0;
			$('#tradeInApp').modal('hide');
		}).error(function(){
			console.log("Error.................");
		});
	};
	$scope.priceAlert = {};
	$scope.savePriceAlert = function(vin){
		$scope.priceAlert.vin = vin;
		$('#priceAlertModal').modal('toggle');
		$("#confirpopUp").modal("show");
	
	};
	
	$scope.savePriceAlertConfir = function(){
		console.log($scope.priceAlert);
		$http({
			method : 'POST',
			url : contextPath+'/savePriceAlert',
			data : $scope.priceAlert
		}).success(function(response) {
			console.log("Success...............");
			$('#confirpopUp').modal('hide');
			notificationService.success("Your request has been submitted");
		}).error(function(){
			console.log("Error.................");
		});
	}
	
	$scope.callVirtualTourArea = function(){
		console.log("mmmmmmmmmmmmmmmmm");
	};
	
});

app.controller("MobileVehicleDetailsController", function($scope,$http,notificationService) {
	
	var contextPath = $('#contextpath').val();
	
	$scope.requestMore = function(vin){
		
		$("#callRequest").click();
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
	
	$scope.savePdfData = function(vin){
   	 $scope.pdfPathOpen = null;
   	 console.log("????????????");
   	 $scope.pdf.pdfPath = $('#pdfPath').val();
   	 
   	 console.log(vin);
		$scope.pdf.vin = vin;
		console.log($scope.pdf.vin);
   	 
   	 $scope.pdfPathOpen = "/glivrImg/images/"+$('#pdfPath').val();
		console.log($scope.pdf);
		$http({
			method : 'POST',
			url : contextPath+'/pdfDataSave',
			data : $scope.pdf
		}).success(function(response) {
			console.log("Success...............");
			$('#pdfModal').modal('hide');
			notificationService.success("Your request has been submitted");
			console.log($scope.pdfPathOpen);
			$('#pdfDownloalModal1').click();
			
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
	
	$scope.minLen = 0;
	$scope.maxLen = 2;
	
	$scope.maxClick = function(){
		var len = $scope.maxLen + 1;
		if(len < $scope.recentVehicles.length){
			$scope.maxLen = len;
			$scope.minLen = $scope.minLen + 1;
		}
	};
	
	$scope.minClick = function(){
		var len = $scope.minLen - 1;
		if(len >= 0 ){
			$scope.minLen = len;
			$scope.maxLen = $scope.maxLen - 1;
		}
	};
	
	var contextPath = $('#contextpath').val();
	$http({method:'GET',url:contextPath+'/getAllMake'})
	.success(function(data) {
		console.log(data);
		$scope.allMakes = data;
		
	});
	
	$http({method:'GET',url:contextPath+'/getRecentVehicles'})
	.success(function(data) {
		console.log(data);
		$scope.recentVehicles = data;
		
	});
	
	$scope.followBrand = {};
	
	$scope.saveFollowBrand = function() {
		console.log($scope.followBrand);
		$http({
			method : 'POST',
			url : contextPath+'/saveFollowBrand',
			data : $scope.followBrand
		}).success(function(response) {
			console.log("Success...............");
			notificationService.success("Your request has been submitted");
			$('#carBrandModal').modal('hide');
		}).error(function(){
			console.log("Error.................");
		});
	};
	
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
	$scope.alphbet = "a_z";
	$scope.price = "lowToHigh";
	$scope.imageClick = function(make){
		$scope.vehicleList = [];
		$scope.make = make;
		$scope.model = "";
		$scope.bodyStyle = "";
		$scope.fuel = "";
		$scope.mileage = "";
		$scope.year = "";
		$scope.VehiclesCount = "";
		$scope.alphbet = "a_z";
		$scope.price = "lowToHigh";
		start = 0;
		$scope.noMore = false;
		$scope.loadMore();
	};
	
	
	var contextPath = $('#contextpath').val();
	$scope.initFunction = function(){
		$scope.vehicleList = [];
		$scope.year = "";
		$scope.make = "";
		$scope.model = "";
		$scope.bodyStyle = "";
		$scope.fuel = "";
		$scope.mileage = "";
		$scope.VehiclesCount = "";
		$scope.alphbet = "a_z";
		$scope.price = "lowToHigh";
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
		 });
	
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
			$scope.make = "";
			$scope.model = "";
			$scope.bodyStyle = "";
			$scope.fuel = "";
			$scope.mileage = "";
			$scope.VehiclesCount = "";
			$scope.alphbet = "a_z";
			$scope.price = "lowToHigh";
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
		};	
		
		$scope.setAlphabet = function(alphabate,index,flag) {
			console.log(flag);
			$scope.imageClick($('.swiper-slide-active').attr('make'));
			if(flag){
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
		}
	
});

app.controller("MobileNewArrivalController", function($scope,$http,notificationService) {
	$scope.make="";
	$scope.imageClick = function(make){
		$scope.noMore = false;
		start = 0;
		console.log("Success...");
		$scope.vehicleList = [];
		$scope.year = "";
		$scope.VehiclesCount = "";
		$scope.alphbet = "";
		console.log(make);
		$scope.make = make;
		$scope.loadMore();
	}
	
	$scope.vehicleList = [];
	$scope.year = "";
	$scope.VehiclesCount = "";
	$scope.alphbet = "";
	var contextPath = $('#contextpath').val();
	$scope.initFunction = function(){
		$http.get(contextPath+'/getCarBrands')
		.success(function(data) {
			$scope.characters = data.alphabates;
		});
		$scope.loadMore();
	}
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
		 });
	 $scope.noMore = false;
	 var start = 0;
	 $scope.loadMore = function() {
			console.log($scope.make);
			if ($scope.noMore) return;
			$http({method:'GET',url:contextPath+'/mobile/getMobileRecentVehiclesByMake',params:{start:start,year:$scope.year,alphabet:$scope.alphbet,make:$scope.make}})
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
	 
	/*$scope.loadMore = function() {
		
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
	}*/
	
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
		
		$scope.setAlphabet = function(alphabate,index,flag) {
			console.log(flag);
			$scope.imageClick($('.swiper-slide-active').attr('make'));
			if(flag){
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
		}
		
		/*$scope.setAlphabet = function(alphabate) {
			console.log(alphabate);
			$scope.alphbet = alphabate;
			$scope.year = "";
			$scope.vehicleList = [];
			start = 0;
			$scope.noMore = false;
			$scope.loadMore();
		}*/
	
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
