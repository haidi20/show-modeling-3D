<?php

session_start();

class Api {
    public function __construct()
    {
        require_once ('./config.php');

        $this->db = $db;
    }

    public function index()
    {
        $result = [];

        $sql    ="select * from room LIMIT 5";
        $query  =$this->db->query($sql);
        
        while($data = $query->fetch(PDO::FETCH_OBJ)){
            $result[] = $data;
        }

        return $result;
    }

}

$api = new Api;

$index = $api->index();

echo json_encode($index);
