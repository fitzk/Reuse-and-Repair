<?php

/**
 * Created by PhpStorm.
 * User: kaylafitzsimmons
 * Date: 2/4/16
 * Time: 8:49 PM
 */
 
include_once('Database.php');
include_once('Subcategory.php');
include_once('Handler.php');

class SubcategoryHandler extends Handler
{
    /**
     * @param $id
     * @return boolean
     */  
    private function subcategoryExist($id)
    {
        $sql = "SELECT * FROM reuse_and_repair_db.Subcategory
        	WHERE reuse_and_repair_db.Subcategory.subcategory_name = ?;";
        $prepared = $this->db->link->prepare($sql);
        $prepared->bindParam(1, $id);
        $success = $prepared->execute();

        return ($prepared->rowCount() > 0 ? true : false);
    }
    
    /**
     * @return
     */
    public function getAll()
    {
        $sql = "SELECT DISTINCT(reuse_and_repair_db.Subcategory.subcategory_name) FROM reuse_and_repair_db.Business INNER JOIN reuse_and_repair_db.Business_Subcategory ON reuse_and_repair_db.Business.business_id = reuse_and_repair_db.Business_Subcategory.business_id
        	INNER JOIN reuse_and_repair_db.Subcategory ON reuse_and_repair_db.Business_Subcategory.subcategory_name = reuse_and_repair_db.Subcategory.subcategory_name
        	ORDER BY reuse_and_repair_db.Subcategory.subcategory_name;";
        $prepared = $this->db->link->prepare($sql);
        $success = $prepared->execute();
        $all = $prepared->fetchAll();
        foreach ($all as $row) {
          $subcategory = new Subcategory($row['subcategory_name'],$row['subcategory_name']);
          $this->results[]= $subcategory->jsonSerialize();
        }
        return $this->getJSON();
    }

    /**
     * @param $id
     * @return string
     */
    public function getByCategory($category)
    {
        $sql = "SELECT DISTINCT(reuse_and_repair_db.Subcategory.subcategory_name) FROM reuse_and_repair_db.Business INNER JOIN reuse_and_repair_db.Business_Subcategory ON reuse_and_repair_db.Business.business_id = reuse_and_repair_db.Business_Subcategory.business_id
        	INNER JOIN reuse_and_repair_db.Subcategory ON reuse_and_repair_db.Business_Subcategory.subcategory_name = reuse_and_repair_db.Subcategory.subcategory_name
        	WHERE reuse_and_repair_db.Business.category_name = ?
        	ORDER BY reuse_and_repair_db.Subcategory.subcategory_name;";
        $prepared = $this->db->link->prepare($sql);
        $prepared->bindParam(1, $category);
        $success = $prepared->execute();
        $all = $prepared->fetchAll();
        foreach ($all as $row) {
          $subcategory = new Subcategory($row['subcategory_name'],$row['subcategory_name']);
          $this->results[]= $subcategory->jsonSerialize();
        }
        return $this->getJSON();
    }

     /**
     * @param $id
     * @return string
     */
    public function get($id)
    {
        return $id;
    }
    
    /**
     * @param $id
     * @return string
     */
    public function delete($id)
    {
        // Check if subcategory exists
        if (!$this->subcategoryExist($id))
           return ["Subcategory doesn't exist", 404]; 
           
        // Delete subcategory
        $sql = "DELETE FROM reuse_and_repair_db.Subcategory
          WHERE reuse_and_repair_db.Subcategory.subcategory_name = ?;";
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
        if ($object['new_subcategory'] == null)
          return ["Invalid parameter", 400];
        
        // Check if subcategory exists
        if (!$this->subcategoryExist($object['subcategory']))
           return ["Subcategory doesn't exist", 404]; 

        // Check if new subcategory exists
        if ($this->subcategoryExist($object['new_subcategory']))
           return ["New subcategory already exists", 409];
                
        // Update subcategory
        $sql = "UPDATE reuse_and_repair_db.Subcategory
        	SET reuse_and_repair_db.Subcategory.subcategory_name = ?
          WHERE reuse_and_repair_db.Subcategory.subcategory_name = ?;";
        $prepared = $this->db->link->prepare($sql);
        $prepared->bindParam(1, $object['new_subcategory']);
        $prepared->bindParam(2, $object['subcategory']);
        $success = $prepared->execute(); 
        
        if ($success)
          return ["Success", 200];
        else
          return ["Fail", 400];
    }

    /**
     * @return string
     */
    public function add($id)
    {
        if ($id == null)
          return ["Invalid parameter", 400];
          
        // Check if subcategory exists
        if ($this->subcategoryExist($id))
           return ["Subcategory already exists", 400]; 
           
        // Create subcategory
        $sql = "INSERT INTO reuse_and_repair_db.Subcategory (subcategory_name) VALUES (?);";
        $prepared = $this->db->link->prepare($sql);
        $prepared->bindParam(1, $id);
        $success = $prepared->execute(); 
        
        if ($success)
          return ["Created", 201];
        else
          return ["Fail", 400];
    }
}
