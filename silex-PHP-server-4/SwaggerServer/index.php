<?php
require_once __DIR__ . '/vendor/autoload.php';

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Silex\Application;

$app = new Silex\Application();

    
        
            
// Category Routes

            

$app->GET('/{category}', function(Application $app, Request $request) {
            
            
            return new Response('How about implementing categoryAllGet as a GET method ?');
            });

            
$app->PUT('/categories', function(Application $app, Request $request, $category_id) {
            
            
            return new Response('How about implementing categoryCategoryIdPut as a PUT method ?');
            });

            

$app->DELETE('/{category}', function(Application $app, Request $request, $category_id) {
            
            
            return new Response('How about implementing categoryCategoryIdDelete as a DELETE method ?');
            });

            
        
    
        
// subcategory routes           
$app->GET('/{subcategory}', function(Application $app, Request $request) {
            
            
            return new Response('How about implementing subcategoryGet as a GET method ?');
            });

            

$app->PUT('/subcategories', function(Application $app, Request $request, $subcategory_name) {
            
            
            return new Response('How about implementing subcategoryAddPut as a PUT method ?');
            });

            

$app->POST('/subcategory/{subcategory}/edit', function(Application $app, Request $request, $subcategory_id) {
            
            
            return new Response('How about implementing subcategorySubcategoryEditPost as a POST method ?');
            });

            

$app->DELETE('/subcategory/{subcategory}/edit', function(Application $app, Request $request, $subcategory_id) {
            
            
            return new Response('How about implementing subcategorySubcategoryEditDelete as a DELETE method ?');
            });

            

$app->GET('/subcategory/{subcategory}/repair', function(Application $app, Request $request) {
            
            
            return new Response('How about implementing subcategorySubcategoryRepairGet as a GET method ?');
            });

            

$app->GET('/subcategory/{subcategory}/reuse', function(Application $app, Request $request) {
            
            
            return new Response('How about implementing subcategorySubcategoryReuseGet as a GET method ?');
            });

            
        
    
        
            

$app->GET('/business/reuse', function(Application $app, Request $request) {
            
            
            return new Response('How about implementing businessReuseGet as a GET method ?');
            });

            

$app->GET('/category/reuse', function(Application $app, Request $request) {
            
            
            return new Response('How about implementing categoryReuseGet as a GET method ?');
            });

            

$app->GET('/subcategory/{subcategory}/reuse', function(Application $app, Request $request) {
            
            
            return new Response('How about implementing subcategorySubcategoryReuseGet as a GET method ?');
            });

            
        
    
        
            

$app->GET('/business/repair', function(Application $app, Request $request) {
            
            
            return new Response('How about implementing businessRepairGet as a GET method ?');
            });

            

$app->GET('/category/repair', function(Application $app, Request $request) {
            
            
            return new Response('How about implementing categoryRepairGet as a GET method ?');
            });

            

$app->GET('/subcategory/{subcategory}/repair', function(Application $app, Request $request) {
            
            
            return new Response('How about implementing subcategorySubcategoryRepairGet as a GET method ?');
            });

            
        
    
        
            

$app->PUT('/business/add', function(Application $app, Request $request) {
            
            
            return new Response('How about implementing businessAddPut as a PUT method ?');
            });

            

$app->GET('/business/all', function(Application $app, Request $request) {
            
            
            return new Response('How about implementing businessAllGet as a GET method ?');
            });

            

$app->GET('/business/repair', function(Application $app, Request $request) {
            
            
            return new Response('How about implementing businessRepairGet as a GET method ?');
            });

            

$app->GET('/business/repair/{subcategory}', function(Application $app, Request $request, $subcategory) {
            
            
            return new Response('How about implementing businessRepairSubcategoryGet as a GET method ?');
            });

            

$app->GET('/business/repair/{subcategory}/{geolocation}', function(Application $app, Request $request, $subcategory, $geolocation) {
            
            
            return new Response('How about implementing businessRepairSubcategoryGeolocationGet as a GET method ?');
            });

            

$app->GET('/business/reuse', function(Application $app, Request $request) {
            
            
            return new Response('How about implementing businessReuseGet as a GET method ?');
            });

            

$app->GET('/business/reuse/{subcategory}', function(Application $app, Request $request, $subcategory) {
            
            
            return new Response('How about implementing businessReuseSubcategoryGet as a GET method ?');
            });

            

$app->POST('/business/reuse/{subcategory}/{geolocation}', function(Application $app, Request $request, $subcategory_id, $geolocation) {
            
            
            return new Response('How about implementing businessReuseSubcategoryGeolocationPost as a POST method ?');
            });

            

$app->GET('/business/{business_id}', function(Application $app, Request $request, $business_id) {
            
            
            return new Response('How about implementing businessBusinessIdGet as a GET method ?');
            });

            

$app->POST('/business/{business_id}/edit', function(Application $app, Request $request, $user_id, $business_id) {
            
            
            return new Response('How about implementing businessBusinessIdEditPost as a POST method ?');
            });

            

$app->DELETE('/business/{business_id}/edit', function(Application $app, Request $request, $business_id) {
            
            
            return new Response('How about implementing businessBusinessIdEditDelete as a DELETE method ?');
            });

            
        
    

$app->run();
