<?php

/**
 * Created by PhpStorm.
 * User: kaylafitzsimmons
 * Date: 2/9/16
 * Time: 8:06 PM
 */
class BusinessHandler extends Handler
{

    /**
     * Get a business by id
     * @param $id
     * @return string
     */
    public function get($id)
    {
        // TODO: Implement get() method.
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
    public function update($id)
    {
        // TODO: Implement update() method.
    }

    /**
     * @return string
     */
    public function add($object)
    {
        // TODO: Implement add() method.
    }

    /**
     * @return
     */
    // SELECT * FROM Business LEFT JOIN Address ON Business.address_id = Address.address_id LEFT JOIN Hours ON Business.hours_id = Hours.hours_id ORDER BY Business.name;
    public function getAll()
    {
        $sql =  "SELECT * FROM Business LEFT JOIN Address ON Business.address_id = Address.address_id LEFT JOIN Hours ON Business.hours_id = Hours.hours_id ORDER BY Business.name";
        $prepared = $this->db->link->prepare($sql);
        $success = $prepared->execute();
        $all = $prepared->fetchAll();
        //var_dump($all);
        foreach ($all as $row) {
          //  $business = new Business($row['business_id'],$row['business_name'],$row['name'], $row['']);
          //   $this->results[]= $business->jsonSerialize();
            var_dump($row);
        }
      //  return $this->getJSON();

    }
}

