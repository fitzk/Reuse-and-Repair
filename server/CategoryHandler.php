<?php


/**
 * Created by PhpStorm.
 * User: kaylafitzsimmons
 * Date: 2/4/16
 * Time: 8:53 PM
 */
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
        return json_encode(getResults());
    }

    /**
     * @return string
     */
    public function getAllCategories(){

        $sql =  "SELECT * FROM Category";

        foreach ($this->db->query($sql) as $row) {
            $category = new Category($row['id'],$row['category_name']);
            $this->results.push($category);
            unset($category);
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
