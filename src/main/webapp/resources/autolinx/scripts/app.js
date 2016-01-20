var app = angular.module('gliderApp', ['infinite-scroll','jlareau.pnotify','vcRecaptcha'])
.directive('compile', function($compile) {
	  return {
	    restrict:'A',
	    link: function(scope, element, attr) {
	      element.append($compile(attr.compile)(scope));
	    }
	  }  
	}).factory('MyHttpInterceptor', function ($q) {
	    return {
	        request: function (config) {
	                    $('#loading').show();
	                    return config || $q.when(config);           
	        },
	   
	        requestError: function (rejection) {
	                    $('#loading').hide();
	            return $q.reject(rejection);
	        },
	        
	        // On response success
	        response: function (response) {
	                    $('#loading').hide();
	            return response || $q.when(response);
	        },
	        
	        // On response failture
	        responseError: function (rejection) {
	                    $('#loading').hide();
	            return $q.reject(rejection);
	        }
	      };
	})
	.config(function ($httpProvider) {
	     $httpProvider.interceptors.push('MyHttpInterceptor');  
	});

