<?php

/**
 * Created by PhpStorm.
 * User: kaylafitzsimmons
 * Date: 2/9/16
 * Time: 11:28 AM
 */
class CategoryHandlerTest extends PHPUnit_Framework_TestCase
{


    function testGetAllCategories(){
        $handler = new CategoryHandler();
        $db = new Database();
        $sql =  "SELECT * FROM Category";

        foreach ($db->query($sql) as $row) {
            $this->assertEquals($row['id'],$handler->results['id']);
            $this->assertEquals($row['category_name'],$handler->results['category_name']);
        }

    }

}
