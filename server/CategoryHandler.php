<?php


/**
 * Created by PhpStorm.
 * User: kaylafitzsimmons
 * Date: 2/4/16
 * Time: 8:53 PM
 */
include_once('Database.php');
include_once('Category.php');

class CategoryHandler extends Handler {


    /**
     * @return string
     */
    public function getAll(){

        $sql =  "SELECT * FROM `Category`";
	    $prepared = $this->db->link->prepare($sql);
        $success = $prepared->execute();
	    $all = $prepared->fetchAll();
	    //var_dump($all);
	     foreach ($all as $row) {
            $category = new Category($row['category_name'],$row['category_name']);
             $this->results[]= $category->jsonSerialize();
           
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
