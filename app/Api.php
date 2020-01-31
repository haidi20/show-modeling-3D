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
        $floor = $_GET['floor'] != "null" ? $_GET['floor'] : 'LANTAI 1';
        $conditionFloor = "WHERE letak='".$floor."'";
        $sql    = "select * from room ".$conditionFloor." ORDER BY nomor_hak ASC ";
        $query  = $this->db->query($sql);
        
        while($data = $query->fetch(PDO::FETCH_OBJ)){
            $result[] = $data;
        }

        return $result;
    }
    public function getAllFloor()
    {
        $result = [
            ["position"=>"LANTAI 1", "urlid" => "c33c9ad09a1f4a8095163da7c01222e6"],
            ["position"=>"LANTAI 2", "urlid" => "54ebec3b832d4b18b51c47cfb05377b1"],
            ["position"=>"LANTAI 3", "urlid" => "e4c145eb5e1e4cdbaf58234e31916d44"],
            ["position"=>"LANTAI 4", "urlid" => "5a7d2365ba5643d8af283eb9af424c90"],
        ];

        return $result;
    }
}

$api = new Api;

$index          = $api->index();
$getAllFloor    = $api->getAllFloor(); 
echo json_encode(['data' => $index, 'getAllFloor' => $getAllFloor]);

