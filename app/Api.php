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
        $sql    ="select * from room ORDER BY nomor_hak ASC LIMIT 2";
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
