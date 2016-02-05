<?php

/**
 * Created by PhpStorm.
 * User: kaylafitzsimmons
 * Date: 2/4/16
 * Time: 8:45 PM
 */
interface SubCategoryInterface
{
    public function getSubcategories();
    public function addSubcategory(SubCategory $subCategory);
}