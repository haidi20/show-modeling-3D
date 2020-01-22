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
        $floor = $_GET['floor'] != "null" ? $_GET['floor'] : 'LANTAI DASAR';
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
            "LANTAI DASAR", 
            "LANTAI 1",
            "LANTAI 2",
            "LANTAI 3",
        ];

        return $result;
    }
}
$api = new Api;

$index          = $api->index();
$getAllFloor    = $api->getAllFloor(); 
echo json_encode(['data' => $index, 'getAllFloor' => $getAllFloor]);

