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
class CategoryHandler extends Handler {


    /*
     * getAll
     * @param recursive - if true return all nested objects, else return
     * only category objects
     * @return string
     */
    public function getAll(boolean $recursive){
	if($recursive == true){
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
         }
	}else{
         $sql =  "SELECT * FROM `Category`";
	 $prepared = $this->db->link->prepare($sql);
	 $success = $prepared->execute();
	 $fetchAll = $prepared->fetchAll();
	 
	 foreach ($all as $row) {
           $category = new Category($row['category_name'],$row['category_name']);
           $this->results[]= $category->jsonSerialize();
         }	
	}
        return $this->getJSON();
    }
    /**
     * @param $id
     * @return string
     */
    public function get($id){
        $results = null;
        setResults($results);
        return $this->getJSON();
    }
    /**
     * @param $id
     * @return string
     */
    public function delete($id){
        $results = null;
        setResults($results);
        return $this->getJSON();
    }

    /**
     * @return string
     */
    public function update($id){
        $results = null;
        setResults($results);
        return $this->getJSON();
    }

    /**
     * @return string
     */
    function add($object){
        $results = null;
        setResults($results);
        return $this->getJSON();
    }

}
