<?php
require_once __DIR__ .'/../vendor/autoload.php';

require('../server/CategoryHandler.php');
require('../server/BusinessHandler.php');
require('../server/SubcategoryHandler.php');

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Silex\Application;


$app = new Silex\Application();

$app['debug'] = true;

// Request::setTrustedProxies(array($ip));

$app->GET('/', function (Application $app, Request $request) {

    return new Response("<p>All good!</p>", 200);
});


// Category Routes
// All categories
$app->GET('/categories', function (Application $app, Request $request) {

    $handler = New CategoryHandler();
    $result = $handler->getAll();
    
    return new Response($result, 200);
});

// Create category
$app->PUT('/categories', function (Application $app, Request $request) {
    
    //authenticate();
    
    $handler = New CategoryHandler();
    $result = $handler->add($request->get('category_name'));
    
    return new Response($result['message'], $result['status_code']);
});

// Update category
$app->POST('/categories/{category}', function (Application $app, Request $request, $category) {

    //authenticate();

    $object = array(
      'category' => $category,
      'new_category' => $request->get('category_name')
    );
    
    $handler = New CategoryHandler();
    $result = $handler->update($object);
    
    return new Response($result['message'], $result['status_code']);
});

// Destroy category
$app->DELETE('/categories/{category}', function (Application $app, Request $request, $category) {

    //authenticate();
    
    $handler = New CategoryHandler();
    $result = $handler->delete($category);
    
    return new Response($result['message'], $result['status_code']);
});


// Subcategory routes
// All subcategories
$app->GET('/subcategories', function (Application $app, Request $request) {
    
    $handler = New SubcategoryHandler();
    $result = $handler->getAll();

    return new Response($result, 200);
});

// Get subcategories by categories
$app->GET('/subcategories/category/{category}', function (Application $app, Request $request, $category) {
    
    $handler = New SubcategoryHandler();
    $result = $handler->getByCategory($category);

    return new Response($result, 200);
});

// Get subcategories by business_id
$app->GET('/subcategories/business/{business_id}', function (Application $app, Request $request, $business_id) {
    
    $handler = New SubcategoryHandler();
    $result = $handler->getByBusiness($business_id);

    return new Response($result, 200);
});

// Create subcategory
$app->PUT('/subcategories', function (Application $app, Request $request) {
    
    //authenticate();
    
    $handler = New SubcategoryHandler();
    $result = $handler->add($request->get('subcategory_name'));
    
    return new Response($result['message'], $result['status_code']);
});

// Update subcategory
$app->POST('/subcategories/{subcategory}', function (Application $app, Request $request, $subcategory) {
    
    //authenticate();

    $object = array(
      'subcategory' => $subcategory,
      'new_subcategory' => $request->get('subcategory_name')
    );
    
    $handler = New SubcategoryHandler();
    $result = $handler->update($object);
    
    return new Response($result['message'], $result['status_code']);
});

// Delete subcategory
$app->DELETE('/subcategories/{subcategory}', function (Application $app, Request $request, $subcategory) {

    //authenticate();
    
    $handler = New SubcategoryHandler();
    $result = $handler->delete($subcategory);
    
    return new Response($result['message'], $result['status_code']);
});


// Business routes
// All businesses
$app->GET('/businesses', function (Application $app, Request $request) {

    $handler = New BusinessHandler();
    $result = $handler->getAll();

    return new Response($result, 200);
});

// Get businesses by category
$app->GET('/businesses/category/{category}', function (Application $app, Request $request, $category) {

    $handler = New BusinessHandler();
    $result = $handler->getByCategory($category);

    return new Response($result, 200);
});

// Create business
$app->PUT('/businesses', function (Application $app, Request $request) {

    //authenicate();
    
    $object = array(
      'street_number' => $request->get('street_number'),
      'street_name' => $request->get('street_name'),
      'city' => $request->get('city'),
      'state' => $request->get('state'),
      'zip' => $request->get('zip'),
      'hours_entry' => $request->get('hours_entry'),
      'category_name' => $request->get('category_name'),
      'name' => $request->get('name'),
      'phone' => $request->get('phone'),
      'description' => $request->get('description'),
      'website' => $request->get('website'),
      'geolocation' => null
    );

    $handler = New BusinessHandler();
    $result = $handler->add($object);

    return new Response($result['message'], $result['status_code']);
});

// Get business by id
$app->GET('/businesses/{business_id}', function (Application $app, Request $request, $business_id) {

    $handler = New BusinessHandler();
    $result = $handler->get($business_id);

    return new Response($result, 200);
});

// Update business
$app->POST('/businesses/{business_id}', function (Application $app, Request $request, $business_id) {

    //authenicate();
    
    $object = array(
      'business_id' => $business_id,
      'street_number' => $request->get('street_number'),
      'street_name' => $request->get('street_name'),
      'city' => $request->get('city'),
      'state' => $request->get('state'),
      'zip' => $request->get('zip'),
      'hours_entry' => $request->get('hours_entry'),
      'category_name' => $request->get('category_name'),
      'name' => $request->get('name'),
      'phone' => $request->get('phone'),
      'description' => $request->get('description'),
      'website' => $request->get('website'),
      'geolocation' => null
    );

    $handler = New BusinessHandler();
    $result = $handler->update($object);
    //return new Response($result, 200);
    return new Response($result['message'], $result['status_code']);
});


// Destroy business
$app->DELETE('/businesses/{business_id}', function (Application $app, Request $request, $business_id) {

    //authenticate();
    
    $handler = New BusinessHandler();
    $result = $handler->delete($business_id);
  
    return new Response($result['message'], $result['status_code']);
});

// optional geolocation in body
$app->GET('/businesses/{category}/{subcategory}', function (Application $app, Request $request, $subcategory) {


    return new Response('How about implementing businessRepairSubcategoryGet as a GET method ?');
});


$app->run();
