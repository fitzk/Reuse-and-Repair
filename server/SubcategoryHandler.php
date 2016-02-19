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
          $this->results[] = $subcategory->jsonSerialize();
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
    public function getByBusiness($business_id)
    {
        $sql = "SELECT DISTINCT(reuse_and_repair_db.Subcategory.subcategory_name) FROM reuse_and_repair_db.Business
          INNER JOIN reuse_and_repair_db.Business_Subcategory ON reuse_and_repair_db.Business.business_id = reuse_and_repair_db.Business_Subcategory.business_id
        	INNER JOIN reuse_and_repair_db.Subcategory ON reuse_and_repair_db.Business_Subcategory.subcategory_name = reuse_and_repair_db.Subcategory.subcategory_name
        	WHERE reuse_and_repair_db.Business.business_id = ?
        	ORDER BY reuse_and_repair_db.Subcategory.subcategory_name;";
        $prepared = $this->db->link->prepare($sql);
        $prepared->bindParam(1, $business_id);
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
        setResults($id);
        return $this->getJSON();
    }
    
    /**
     * @param $id
     * @return string
     */
    public function delete($id)
    {
        // Check if subcategory exists
        if (!$this->subcategoryExist($id))
          return ['message' => 'Subcategory does not exist', 'status_code' => 404];
           
        // Delete subcategory
        $sql = "DELETE FROM reuse_and_repair_db.Subcategory
          WHERE reuse_and_repair_db.Subcategory.subcategory_name = ?;";
        $prepared = $this->db->link->prepare($sql);
        $prepared->bindParam(1, $id);
        $success = $prepared->execute(); 
        
        if ($success)
          return ['message' => 'Success', 'status_code' => 200];
        else
          return ['message' => 'Fail', 'status_code' => 400];
    }

    /**
     * @return string
     */
    public function update($object)
    {
        if ($object['new_subcategory'] == null)
          return ['message' => 'Invalid parameter', 'status_code' => 400];
        
        // Check if subcategory exists
        if (!$this->subcategoryExist($object['subcategory']))
          return ['message' => 'Subcategory does not exist', 'status_code' => 404];

        // Check if new subcategory exists
        if ($this->subcategoryExist($object['new_subcategory']))
          return ['message' => 'New subcategory already exists', 'status_code' => 409];
                
        // Update subcategory
        $sql = "UPDATE reuse_and_repair_db.Subcategory
        	SET reuse_and_repair_db.Subcategory.subcategory_name = ?
          WHERE reuse_and_repair_db.Subcategory.subcategory_name = ?;";
        $prepared = $this->db->link->prepare($sql);
        $prepared->bindParam(1, $object['new_subcategory']);
        $prepared->bindParam(2, $object['subcategory']);
        $success = $prepared->execute(); 
        
        if ($success)
          return ['message' => 'Success', 'status_code' => 200];
        else
          return ['message' => 'Fail', 'status_code' => 400];
    }

    /**
     * @return string
     */
    public function add($id)
    {
        if ($id == null)
          return ['message' => 'Invalid parameter', 'status_code' => 400];
          
        // Check if subcategory exists
        if ($this->subcategoryExist($id))
          return ['message' => 'Subcategory already exists', 'status_code' => 400];
           
        // Create subcategory
        $sql = "INSERT INTO reuse_and_repair_db.Subcategory (subcategory_name) VALUES (?);";
        $prepared = $this->db->link->prepare($sql);
        $prepared->bindParam(1, $id);
        $success = $prepared->execute(); 
        
        if ($success)
          return ['message' => 'Created', 'status_code' => 201];
        else
          return ['message' => 'Fail', 'status_code' => 400];
    }
}
