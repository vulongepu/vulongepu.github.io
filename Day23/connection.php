<?php

	$server = "localhost";
	$user ="root";
	$pw ="";
	$database="ph1511m";
	$conn = mysql_connect($server,$user,$pw) or die("Khong ket noi dc");
	$db= mysql_select_db($database) or die("khong co db");
	mysql_query("SET NAMES 'utf8'");
