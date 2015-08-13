var app = angular.module('gliderApp', ['infinite-scroll','jlareau.pnotify'])
.directive('compile', function($compile) {
	  return {
	    restrict:'A',
	    link: function(scope, element, attr) {
	      element.append($compile(attr.compile)(scope));
	    }
	  }  
	});