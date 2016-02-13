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
        // TODO
    }
    /**
     * @param $id
     * @return string
     */
    public function delete($id)
    {
        // TODO: Implement delete() method.
    }

    /**
     * @return string
     */
    public function update($object)
    {
        if ($object['new_subcategory'] == null)
          return ["Invalid parameter", 400];
      
        // Check if subcategory exists
        $sql = "SELECT * FROM reuse_and_repair_db.Subcategory
        	WHERE reuse_and_repair_db.Subcategory.subcategory_name = ?;";
        $prepared = $this->db->link->prepare($sql);
        $prepared->bindParam(1, $object['subcategory']);
        $success = $prepared->execute();
        
        if ($prepared->rowCount() == 0)
           return ["Subcategory doesn't exist", 400]; 
           
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
    public function add($object)
    {
        // TODO: Implement add() method.
    }
}
