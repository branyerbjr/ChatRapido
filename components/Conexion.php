<?php 
$password = "SZOtrdgNresfIBLi2BK8PcaN";
$usuario = "cli3wx8z60032ahs6dbvs5ac8";
$nombre_bd = "chatrapido";

try {
	$bd = new PDO (
		'mysql:host=cli3wx8z80079s6ah7bpie476:3306;
		dbname='.$nombre_bd,
		$usuario,
		$password,
		array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")
	);
} catch (Exception $e) {
	echo "Problema con la conexion: ".$e->getMessage();
}
?>