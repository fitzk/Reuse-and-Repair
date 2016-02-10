<?php


/**
 * Created by PhpStorm.
 * User: kaylafitzsimmons
 * Date: 2/4/16
 * Time: 8:53 PM
 */
include_once('Database.php');
include_once('Category.php');

class CategoryHandler 
{

    public $results = array();
    public $db;

    /**
     * CategoryHandler constructor.
     * @param array $results
     */
    public function __construct()
    {
        $this->db = new Database();
    }

    /**
     * @return mixed
     */
    public function getResults()
    {
        return $this->results;
    }

    /**
     * @param mixed $results
     */
    public function setResults($results)
    {
        $this->results = $results;
    }
    /**
     * @return string
     */
    public function getJSON(){
       return json_encode($this->getResults());
    }

    /**
     * @return string
     */
    public function getAllCategories(){

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
    public function getCategory($id){
        $results = null;
        setResults($results);
        return $this->getJSON();
    }
    /**
     * @param $id
     * @return string
     */
    public function deleteCategory($id){
        $results = null;
        setResults($results);
        return $this->getJSON();
    }

    /**
     * @return string
     */
    public function updateCategory(){
        $results = null;
        setResults($results);
        return $this->getJSON();
    }

    /**
     * @return string
     */
    function addCategory(){
        $results = null;
        setResults($results);
        return $this->getJSON();
    }

}
