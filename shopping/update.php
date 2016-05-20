<?php
session_start();
if(isset($_POST['ok'])){
	unset($_POST['ok']);
	foreach($_POST as $k => $v) {
		$_SESSION['cart'][$k]['quantity'] = $v;
	}
}
header("location:list.php");
?>

