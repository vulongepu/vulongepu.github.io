<?php
$connect = mysqli_connect('localhost','root','','shopppingcart');
if(!$connect){
	die('ban khong ket noi thanh cong csdl');
}
mysqli_set_charset($connect,'utf8');
?>