<?php

/**
 * Created by PhpStorm.
 * User: kaylafitzsimmons
 * Date: 2/4/16
 * Time: 8:53 PM
 */
include_once('Database.php');
include_once('Category.php');
include_once('Handler.php');
class CategoryHandler extends Handler
{
    /**
     * @param $id
     * @return boolean
     */  
    private function categoryExist($id)
    {
        $sql = "SELECT * FROM reuse_and_repair_db.Category
            WHERE reuse_and_repair_db.Category.category_name = ?;";
        $prepared = $this->db->link->prepare($sql);
        $prepared->bindParam(1, $id);
        $success = $prepared->execute();

        return ($prepared->rowCount() > 0 ? true : false);
    }

    /*
     * getAll
     * @param recursive - if true return all nested objects, else return
     * only category objects
     * @return string
     */
    public function getAll(){
    	/*if($recursive == true){
    		$sql="SELECT Subcategory.subcategory_name, Business.business_id
    		from`Category` inner join `Business` on 
    		Category.category_name = Business.category_name 
    		inner join Business_Subcategory 
    		on Business.business_id=Business_Subcategory.business_id
    		left join `Subcategory`on 
    		Business_Subcategory.subcategory_name = Subcategory.subcategory_name";
            
        $prepared = $this->db->link->prepare($sql);
        $success = $prepared->execute();
        $fetchAll = $prepared->fetchAll();
        
        foreach ($all as $row) {
          $category = new Category($row['category_name'],$row['category_name']);
        }
        $this->results[]= $category->jsonSerialize();

      }else{*/
         $sql = "SELECT * FROM reuse_and_repair_db.Category;";
      	 $prepared = $this->db->link->prepare($sql);
      	 $success = $prepared->execute();
      	 $all = $prepared->fetchAll();
	 
      	 foreach ($all as $row) {
                 $category = new Category($row['category_name'],$row['category_name']);
                 $this->results[]= $category->jsonSerialize();
         }	
      //}
      return $this->getJSON();
    }

    /**
     * @param $id
     * @return string
     */
    public function get($id)
    {
        setResults($id);
        return $this->getJSON();
    }

    /**
     * @param $id
     * @return string
     */
    public function delete($id)
    {
        // Check if category exists
        if (!$this->categoryExist($id))
           return ["Category doesn't exist", 404]; 
           
        // Delete subcategory
        $sql = "DELETE FROM reuse_and_repair_db.Category
          WHERE reuse_and_repair_db.Category.category_name = ?;";
        $prepared = $this->db->link->prepare($sql);
        $prepared->bindParam(1, $id);
        $success = $prepared->execute(); 
        
        if ($success)
          return ["Success", 200];
        else
          return ["Fail", 400];
    }

    /**
     * @return string
     */
    public function update($object)
    {
        if ($object['new_category'] == null)
          return ["Invalid parameter", 400];
        
        // Check if category exists
        if (!$this->categoryExist($object['category']))
           return ["Category doesn't exist", 404]; 

        // Check if new category exists
        if ($this->categoryExist($object['new_category']))
           return ["New category already exists", 409];
                
        // Update category
        $sql = "UPDATE reuse_and_repair_db.Category
            SET reuse_and_repair_db.Category.category_name = ?
          WHERE reuse_and_repair_db.Category.category_name = ?;";
        $prepared = $this->db->link->prepare($sql);
        $prepared->bindParam(1, $object['new_category']);
        $prepared->bindParam(2, $object['category']);
        $success = $prepared->execute(); 
        
        if ($success)
          return ["Success", 200];
        else
          return ["Fail", 400];
    }

    /**
     * @return string
     */
    function add($id)
    {
        if ($id == null)
          return ["Invalid parameter", 400];
          
        // Check if category exists
        if ($this->categoryExist($id))
           return ["Category already exists", 400]; 
           
        // Create category
        $sql = "INSERT INTO reuse_and_repair_db.Category (category_name) VALUES (?);";
        $prepared = $this->db->link->prepare($sql);
        $prepared->bindParam(1, $id);
        $success = $prepared->execute(); 
        
        if ($success)
          return ["Created", 201];
        else
          return ["Fail", 400];
    }
}
