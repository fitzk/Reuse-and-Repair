<?php

/**
 * Created by PhpStorm.
 * User: kaylafitzsimmons
 * Date: 2/4/16
 * Time: 8:04 PM
 */
interface CategoryInterface
{
    public function getSubcategories();
    public function addSubcategory(Subcategory $sub);
    public function updateSubcategory(Subcategory $sub, $id);
    public function removeSubcategory($id);
}