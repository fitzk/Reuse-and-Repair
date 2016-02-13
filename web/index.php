<?php
require_once __DIR__ .'/../vendor/autoload.php';
// require('../server/Database.php');
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

    return new Response('How about implementing categoryCategoryIdPut as a POST method ?');
});

// Update category
$app->POST('/categories/{category}', function (Application $app, Request $request) {


    return new Response('How about implementing categoryCategoryIdDelete as a DELETE method ?');
});

// Destroy category
$app->DELETE('/categories/{category}', function (Application $app, Request $request) {


    return new Response('How about implementing categoryCategoryIdDelete as a DELETE method ?');
});


// Subcategory routes
// All subcategories
$app->GET('/subcategories', function (Application $app, Request $request) {
    
    $handler = New SubcategoryHandler();
    $result = $handler->getAll();

    return new Response($result, 200);
});

// Get subcategories by categories
$app->GET('{category}/subcategories', function (Application $app, Request $request, $category) {
    
    $handler = New SubcategoryHandler();
    $result = $handler->getByCategory($category);

    return new Response($result, 200);
});

// Create subcategory
$app->PUT('/subcategories', function (Application $app, Request $request) {
    
    //authenticate();
    
    $handler = New SubcategoryHandler();
    $result = $handler->add($request->get('subcategory_name'));
    
    return new Response($result[0], $result[1]);
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
    
    return new Response($result[0], $result[1]);
});

// Delete subcategory
$app->DELETE('/subcategories/{subcategory}', function (Application $app, Request $request, $subcategory) {

    //authenticate();
    
    $handler = New SubcategoryHandler();
    $result = $handler->delete($subcategory);
    
    return new Response($result[0], $result[1]);
});


// Business routes
// All businesses
$app->GET('/businesses', function (Application $app, Request $request) {

    $handler = New BusinessHandler();
    $result = $handler->getAll();

    return new Response($result, 200);
});

// Get businesses by category
$app->GET('/businesses/{category}', function (Application $app, Request $request) {


    return new Response('How about implementing businessRepairGet as a GET method ?');
});

// Create business
$app->PUT('/businesses', function (Application $app, Request $request) {


    return new Response('How about implementing businessAddPut as a PUT method ?');
});

// Get business by id
$app->GET('/businesses/{business_id}', function (Application $app, Request $request, $business_id) {


    return new Response('How about implementing businessBusinessIdGet as a GET method ?');
});

// Update business
$app->POST('/business/{business_id}', function (Application $app, Request $request, $user_id, $business_id) {


    return new Response('How about implementing businessBusinessIdEditPost as a POST method ?');
});


// Destroy business
$app->DELETE('/business/{business_id}', function (Application $app, Request $request, $business_id) {


    return new Response('How about implementing businessBusinessIdEditDelete as a DELETE method ?');
});

// optional geolocation in body
$app->GET('/businesses/{category}/{subcategory}', function (Application $app, Request $request, $subcategory) {


    return new Response('How about implementing businessRepairSubcategoryGet as a GET method ?');
});


$app->run();
