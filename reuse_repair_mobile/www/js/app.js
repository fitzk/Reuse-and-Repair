
// Ionic Starter App

// angular.module is a global place for creating, registering and retrieving Angular modules
// 'starter' is the name of this angular module example (also set in a <body> attribute in index.html)
// the 2nd parameter is an array of 'requires'
var app = angular.module('rrapp', ['ionic']);

app.run(function($ionicPlatform) {
  $ionicPlatform.ready(function() {
    if(window.cordova && window.cordova.plugins.Keyboard) {
      // Hide the accessory bar by default (remove this to show the accessory bar above the keyboard
      // for form inputs)
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);

      // Don't remove this line unless you know what you are doing. It stops the viewport
      // from snapping when text inputs are focused. Ionic handles this internally for
      // a much nicer keyboard experience.
      cordova.plugins.Keyboard.disableScroll(true);
    }
    if(window.StatusBar) {
      StatusBar.styleDefault();
    }
  });
});

//
app.config(function($stateProvider, $urlRouterProvider){

    $stateProvider.state('categories', {
        url: '/categories',
        templateUrl: 'templates/categories.html',
        controller: 'categoryController',
        factory: 'cat'
      })
      .state('subcategories',{
        url:'/categories/:id',
        templateUrl: 'templates/subcategories.html',
        controller: 'subcategoryController'
      })
      .state('businesses',{
        url:'/businesses/category/:category_id/subcategory/:subcategory_id',
        templateUrl: 'templates/businesses.html',
        controller: 'businessController'
      })
      .state('business_detail',{
      url:'/businesses/:business_id',
      templateUrl: 'templates/business_detail.html',
      controller: 'businessDetailController'
    });
    $urlRouterProvider.otherwise('/categories');

  });

// factory service calls out to api on server
// run this mobile project *locally*


// controllers, first copy the json object from the response in the browser, ( just make a simple api call
// in the url bar ) then create a mock object similar to those below. After the app behavior is correct,
// create a service and use the json retreived from that
app.controller('categoryController',function($scope,$http){

    $http.get("http://ec2-54-200-134-246.us-west-2.compute.amazonaws.com/Reuse-and-Repair/web/index.php/categories")
      .then(function(response){
        $scope.categories = response.data;
      }, function(err){
        console.error('Error ',err);
      });

}).controller('subcategoryController',function($scope,$http,$stateParams){
  // console.log($stateParams); <-- $stateParams is how you access the id for the selected list item
  $http.get("http://ec2-54-200-134-246.us-west-2.compute.amazonaws.com/Reuse-and-Repair/web/index.php/subcategories/category/"+$stateParams.id)
    .then(function(response){
      $scope.category_id = $stateParams.id;
      $scope.subcategories = response.data;
    }, function(err){
      console.error('Error ',err);
    });

}).controller('businessController',function($scope,$http,$stateParams){
  // console.log($stateParams); <-- $stateParams is how you access the id for the selected list item
  $http.get("http://ec2-54-200-134-246.us-west-2.compute.amazonaws.com/Reuse-and-Repair/web/index.php/businesses/category/"+$stateParams.category_id+"/subcategory/"+$stateParams.subcategory_id)
    .then(function(response){
      $scope.businesses = response.data;
    }, function(err){
      console.error('Error ',err);
    });
}).controller('businessDetailController',function($scope,$http,$stateParams){
  // console.log($stateParams); <-- $stateParams is how you access the id for the selected list item
  $http.get("http://ec2-54-200-134-246.us-west-2.compute.amazonaws.com/Reuse-and-Repair/web/index.php/businesses/"+$stateParams.business_id)
    .then(function(response){
      $scope.business = response.data[0];
    }, function(err){
      console.error('Error ',err);
    });
});


 /********DO NOT ERASE **********************MOCK CONTROLLERS********

app.controller('CategoryController',function($scope){
  $scope.categories=[{"id":"0","name":"Repair"},{"id":"1","name":"Reuse"}];

});

  app.controller('subcategoryController',function($scope){
    //  #/Reuse-and-Repair/web/index.php/subcategories/category/1
  //  console.log($scope);
    //if($scope.id == 1) {
      $scope.subcategories = [{"id": "44", "name": "Appli"}, {"id": "1", "name": "Appliances, Large"}, {
        "id": "2",
        "name": "Appliances, Small"
      }, {"id": "3", "name": "Art Supplies"}, {"id": "4", "name": "Bedding\/Bath"}, {
        "id": "5",
        "name": "Bikes\/Exercise\/Sporting\/Camping"
      }, {"id": "6", "name": "Books"}, {"id": "7", "name": "Brown Paper\/Large Shopping Bags"}, {
        "id": "8",
        "name": "Building Materials\/Home Improvement"
      }, {"id": "9", "name": "CDs, DVDs, LPs, Video Games, etc"}, {"id": "10", "name": "Cell Phones"}, {
        "id": "11",
        "name": "Children\u00e2\u20ac\u2122s Goods\/Clothing"
      }, {"id": "12", "name": "Clothing\/Accessories"}, {"id": "13", "name": "Computer Paper"}, {
        "id": "14",
        "name": "Computers\/Monitors"
      }, {"id": "15", "name": "Egg Cartons"}, {"id": "16", "name": "Eyeglasses"}, {
        "id": "17",
        "name": "Fabric"
      }, {"id": "18", "name": "Firewood"}, {"id": "20", "name": "Food (surplus garden produce)"}, {
        "id": "19",
        "name": "Food (unopened, pre-expired)"
      }, {"id": "21", "name": "Food Containers (clean glass\/plastic w\/lids)"}, {
        "id": "22",
        "name": "Furniture"
      }, {"id": "24", "name": "Garden Pots"}, {"id": "23", "name": "Garden\/Farm\/Landscaping"}, {
        "id": "25",
        "name": "Home Electronics"
      }, {"id": "26", "name": "Household Goods"}, {"id": "36", "name": "Lawn Equipment"}, {
        "id": "27",
        "name": "Medical Equipment\/Supplies"
      }, {"id": "28", "name": "Office Equipment"}, {"id": "29", "name": "Office Supplies"}, {
        "id": "30",
        "name": "Packing Materials"
      }, {"id": "31", "name": "Pet Supplies\/Food"}, {"id": "32", "name": "Printer Cartridge Refilling"}, {
        "id": "37",
        "name": "Reel Mowers"
      }, {"id": "38", "name": "Sandals"}, {"id": "33", "name": "School Supplies"}, {
        "id": "39",
        "name": "Screen Repair"
      }, {"id": "40", "name": "Shoes, Boots"}, {"id": "34", "name": "Toiletries"}, {
        "id": "41",
        "name": "Upholstery, Furniture"
      }, {"id": "35", "name": "Vehicles\/Parts"}];
   // }
});
  */
