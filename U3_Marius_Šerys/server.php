<?php

class Corse
{
    public $id;
    public $name;
    public $lastname;
    public $title;
    public $created;
    public $smallDescription;
    public $description;
    public $image;
    public $popular;
    public $price;
    public $commetsNumber;
    public function __construct($row)
    {
        $this->id = $row['id'];
        $this->name = $row['name'];
        $this->lastname = $row['lastname'];
        $this->title = $row['title'];
        $this->created = $row['created_at'];
        $this->smallDescription = $row['small_description'];
        $this->description = $row['description'];
        $this->image = $row['image'];
        $this->popular = $row['popular'];
        $this->price = $row['price'];
        $this->commetsNumber = $row['commets_number'];
    }
}

$corsArray = [];

$mysqliConnection = mysqli_connect("localhost", "root", "", "vtmc_egzaminas");
if (mysqli_connect_errno()) {
    echo mysqli_connect_error();
    exit();
} else {
    $corsCommentsSelect = 'SELECT kursai.*, COUNT(komentarai.kursai_id) AS commets_number
     FROM kursai LEFT JOIN komentarai ON (kursai.id = komentarai.kursai_id)
     GROUP BY kursai.id';

    $resultCors = mysqli_query($mysqliConnection, $corsCommentsSelect);
    if (mysqli_errno($mysqliConnection)) {
        echo mysqli_error($mysqliConnection);
        exit();
    } else {

        while ($row = mysqli_fetch_array($resultCors, MYSQLI_ASSOC)) {
            $createObject = new Corse($row);
            array_push($corsArray, $createObject);
        }
    }
}
