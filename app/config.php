<?php	

	define('db_host','localhost');
	define('db_user','root');
	define('db_pass','');
	define('db_name','concepts');
	
$db=new PDO('mysql:host=localhost;dbname=concepts;charset=utf8','root','');
//	$db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
//$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>
