<?php

/**
 * Created by PhpStorm.
 * User: kaylafitzsimmons
 * Date: 2/9/16
 * Time: 8:05 PM
 */
require_once 'Address.php';
require_once 'Hours.php';
class Business implements JsonSerializable
{

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
            'address' => $this->address->jsonSerialize(),
            'hours' => $this->hours->jsonSerialize(),
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