<?php

/**
 * Created by PhpStorm.
 * User: kaylafitzsimmons
 * Date: 2/4/16
 * Time: 8:04 PM
 */
interface CategoryInterface
{
    public function getCategories();
    public function addCategory();
    public function updateCategory();
    public function removeCategory();
}
