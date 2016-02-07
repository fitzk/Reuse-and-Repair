<?php
require_once __DIR__ .'/../vendor/autoload.php';


use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Silex\Application;

$app = new Silex\Application();

$app['debug'] = true;

// Request::setTrustedProxies(array($ip));

//$app->register(new Silex\Provider\DoctrineServiceProvider(), array(
//    'db.options' => array(
//        'driver' => 'pdo_mysql',
//        'dbhost' => 'localhost',
//        'dbname' => 'mydbname',
//        'user' => 'root',
//        'password' => '',
//    ),
//));

// Create
$app->GET('/', function (Application $app, Request $request) {

    return new Response("<p>All good</p>!", 200);
});
// Category Routes
// All categories
// Create
$app->POST('/newcategory', function (Application $app, Request $request) {

    return new Response('How about implementing categoryCategoryIdPut as a POST method ?');
});

// Read All
$app->GET('/categories', function (Application $app, Request $request) {

    return new Response('How about implementing categoryCategoryIdPut as a GET method ?');
});

$app->GET('/{category}', function (Application $app, Request $request) {
    return new Response('How about implementing categoryAllGet as a GET method ?');
});

// update
$app->PUT('/{category}', function (Application $app, Request $request) {


    return new Response('How about implementing categoryCategoryIdDelete as a DELETE method ?');
});

// destroy
$app->DELETE('/{category}', function (Application $app, Request $request) {


    return new Response('How about implementing categoryCategoryIdDelete as a DELETE method ?');
});


// subcategory routes
$app->PUT('{category}/subcategories', function (Application $app, Request $request, $subcategory_name) {


    return new Response('How about implementing subcategoryAddPut as a PUT method ?');
});

$app->GET('{category}/{subcategory}', function (Application $app, Request $request) {


    return new Response('How about implementing subcategoryGet as a GET method ?');
});




$app->POST('/{category}/{subcategory}', function (Application $app, Request $request, $subcategory_id) {


    return new Response('How about implementing subcategorySubcategoryEditPost as a POST method ?');
});


$app->DELETE('/{category}/{subcategory}/edit', function (Application $app, Request $request, $subcategory_id) {


    return new Response('How about implementing subcategorySubcategoryEditDelete as a DELETE method ?');
});



// Returns all businesses
$app->GET('/businesses', function (Application $app, Request $request) {

    return new Response('How about implementing businessReuseGet as a GET method ?');
});



$app->GET('/businesses/{category}', function (Application $app, Request $request) {


    return new Response('How about implementing businessRepairGet as a GET method ?');
});


$app->PUT('/businesses', function (Application $app, Request $request) {


    return new Response('How about implementing businessAddPut as a PUT method ?');
});


// optional geolocation in body
$app->GET('/businesses/{category}/{subcategory}', function (Application $app, Request $request, $subcategory) {


    return new Response('How about implementing businessRepairSubcategoryGet as a GET method ?');
});





$app->GET('/businesses/{business_id}', function (Application $app, Request $request, $business_id) {


    return new Response('How about implementing businessBusinessIdGet as a GET method ?');
});


$app->POST('/business', function (Application $app, Request $request, $user_id, $business_id) {


    return new Response('How about implementing businessBusinessIdEditPost as a POST method ?');
});


$app->DELETE('/business/{business_id}/edit', function (Application $app, Request $request, $business_id) {


    return new Response('How about implementing businessBusinessIdEditDelete as a DELETE method ?');
});


$app->run();
