<?php

/**
 * Created by PhpStorm.
 * User: kaylafitzsimmons
 * Date: 2/9/16
 * Time: 8:05 PM
 */

class Business
{
    /*CREATE TABLE Business
    (
    business_id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR (255) NOT NULL,
    name VARCHAR (255),
    address_id INT,
    phone VARCHAR (255),
    description VARCHAR (255),
    hours_id INT,
    website VARCHAR (255),

    PRIMARY KEY (business_id),
    FOREIGN KEY (category_name)
    REFERENCES Category (category_name),
    FOREIGN KEY (address_id)
    REFERENCES Address (address_id),
    FOREIGN KEY (hours_id)
    REFERENCES Hours (hours_id)
    ) ENGINE=INNODB; */

    private $id;
    private $name;
    private $category;
    private $address;
    private $hours;
    private $website;

    /**
     * Business constructor.
     * @param $id
     * @param $category
     * @param $name
     * @param $address
     * @param $hours
     * @param $website
     */
    public function __construct($id, $category, $name, $address, $hours, $website)
    {
        $this->id = $id;
        $this->category = $category;
        $this->name = $name;
        $this->address = $address;
        $this->hours = $hours;
        $this->website = $website;
    }

    public function jsonSerialize()
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'category' => $this->category,
            'address' => $this->address,
            'hours' => $this->hours,
            'website' => $this->website
        ];
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @return mixed
     */
    public function getCategory()
    {
        return $this->category;
    }

    /**
     * @param mixed $category
     */
    public function setCategory($category)
    {
        $this->category = $category;
    }

    /**
     * @return mixed
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * @param mixed $name
     */
    public function setName($name)
    {
        $this->name = $name;
    }

    /**
     * @return mixed
     */
    public function getAddress()
    {
        return $this->address;
    }

    /**
     * @param mixed $address
     */
    public function setAddress($address)
    {
        $this->address = $address;
    }

    /**
     * @return mixed
     */
    public function getHours()
    {
        return $this->hours;
    }

    /**
     * @param mixed $hours
     */
    public function setHours($hours)
    {
        $this->hours = $hours;
    }

    /**
     * @return mixed
     */
    public function getWebsite()
    {
        return $this->website;
    }

    /**
     * @param mixed $website
     */
    public function setWebsite($website)
    {
        $this->website = $website;
    }


}