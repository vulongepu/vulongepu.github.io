<?php
session_start();
  require('connect.php');
       $sql = "select * from product";
       $result = mysqli_query($connect,$sql);
       if(mysqli_num_rows($result)>0){
       	$data = array();
       	   while($row = mysqli_fetch_assoc($result)){
       	   	 $data[$row['id']] = $row;
       	   }
       }
 $id =  $_GET['id'];
  if(!isset($_SESSION['cart']) or empty($_SESSION['cart']))
  {
  	$data[$id]['quantity']=1;
  	$_SESSION['cart'][$id] = $data[$id];
  }else{
  	if(array_key_exists($id, $_SESSION['cart'])){
  		$_SESSION['cart'][$id]['quantity']+=1;
  	}else{
  		$data[$id]['quantity']=1;
  	    $_SESSION['cart'][$id] = $data[$id];
  		echo "<pre>";
  		print_r($_SESSION["cart"]);
  	}
  }
  header("location:index.php");
  // echo "<pre>";
  // 		print_r($_SESSION["cart"]);
?>