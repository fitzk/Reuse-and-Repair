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
        $sql = "SELECT * FROM reuse_and_repair_db.Business
                LEFT JOIN reuse_and_repair_db.Address
                ON reuse_and_repair_db.Business.address_id = reuse_and_repair_db.Address.address_id
                LEFT JOIN reuse_and_repair_db.Hours
                ON reuse_and_repair_db.Business.hours_id = reuse_and_repair_db.Hours.hours_id
                WHERE reuse_and_repair_db.Business.business_id = ?
                ORDER BY reuse_and_repair_db.Business.name";
        $prepared = $this->db->link->prepare($sql, $id);
        $success = $prepared->execute();
        $all = $prepared->fetchAll();
        //var_dump($all);
        foreach ($all as $row) {
            //  $business = new Business($row['business_id'],$row['business_name'],$row['name'], $row['']);
            //   $this->results[]= $business->jsonSerialize();
            var_dump($row);
        }
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
        $sql = "UPDATE `reuse_and_repair_db`.`Business`
            SET
            `business_id` = ?,
            `category_name` = ?,
            `name` = ?,
            `address_id` = ?,
            `phone` = ?,
            `description` = ?,
            `hours_id` = ?,
            `website` = ?
            WHERE `business_id` = ?";

        $prepared = $this->db->link->prepare($sql,[
                $object->getId(),
                $object->getCategoryName(),$object->getName(),
                /*$object->getAddressId(),*/ $object->getPhone(),
                $object->getDescription(), $object->getHoursId(),
                $object->getWebsite(), $object->getId()
            ]
        );
        $success = $prepared->execute();
        $all = $prepared->fetchAll();
        //var_dump($all);
        foreach ($all as $row) {
            //  $business = new Business($row['business_id'],$row['business_name'],$row['name'], $row['']);
            //   $this->results[]= $business->jsonSerialize();
            var_dump($row);
        }

    }

    /**
     * @return string
     */
    public function add($object)
    {
        $sql = "INSERT INTO `reuse_and_repair_db`.`Business`(
        `business_id`, `category_name`, `name`,
        `address_id`, `phone`, `description`,
        `hours_id`, `website`)
        VALUES ( ?,?,?,?,?,?,?,? )";

        $prepared = $this->db->link->prepare($sql,[
                $object->getId(),
                $object->getCategoryName(),$object->getName(),
                $object->getAddressId(), $object->getPhone(),
                $object->getDescription(), $object->getHoursId(),
                $object->getWebsite(), $object->getId()
            ]
        );
        $success = $prepared->execute();
        $all = $prepared->fetchAll();
        //var_dump($all);
        foreach ($all as $row) {
            //  $business = new Business($row['business_id'],$row['business_name'],$row['name'], $row['']);
            //   $this->results[]= $business->jsonSerialize();
            var_dump($row);
        }


    }

    /**
     * @return
     */
    // SELECT * FROM Business LEFT JOIN Address ON Business.address_id = Address.address_id LEFT JOIN Hours ON Business.hours_id = Hours.hours_id ORDER BY Business.name;
    public function getAll()
    {
        $sql = "SELECT * FROM reuse_and_repair_db.Business
                LEFT JOIN reuse_and_repair_db.Address
                ON reuse_and_repair_db.Business.address_id = reuse_and_repair_db.Address.address_id
                LEFT JOIN reuse_and_repair_db.Hours
                ON reuse_and_repair_db.Business.hours_id = reuse_and_repair_db.Hours.hours_id,
                ORDER BY reuse_and_repair_db.Business.name";
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

