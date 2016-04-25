<?php
	$server = "localhost";
	$user = "root";
	$pass = "";
	$dbName = "ph1511m";
	$conn = mysql_connect($server, $user, $pass) or die("khong the ket noi server");
	$selectDb = mysql_select_db($dbName) or die("khong co csdl");
	mysql_query("SET NAMES 'utf8'");
?>