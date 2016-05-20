<?php
session_start();
require('connect.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>shopping</title>
</head>
<style>
	li{list-style: none;};
	li{text-decoration: none;}
</style>
<body>
	<h1 style="padding:10px 0;background:#D4E9FF;width=100%;text-align: center;">Thông tin sản phẩm</h1>
	<?php
       $sql = "select * from product";
       $result = mysqli_query($connect,$sql);
       if(mysqli_num_rows($result)>0){
       	if(!isset($_SESSION['cart']) or empty($_SESSION['cart'])){
       		echo "chua co san pham nao trong gio hang";
       	}else{
       		$total = 0;
       		foreach ($_SESSION['cart'] as $value) {
       			$total+=$value['quantity'];
       		}
       		echo "Gio hang co :  <a href='list.php'>$total</a> san pham";
       	}
       	   while($row = mysqli_fetch_assoc($result)){
       	   	  echo "<ul>";
       	   	  echo "<li><h3>$row[name]</h3></li>";
       	   	  echo "<li><p>$row[description]</p></li>";
       	   	  echo "<li>$row[price]</li>";
       	   	  echo "<li><a href='insert.php?id=$row[id]' style='color:red;font-weight:bold;'>Mua Ngay</a></li>";
       	   	  echo "</ul>";
       	   	  echo "<hr/>";
       	   }
       }
	?>
	<?php
          // print_r(array($data));
	?>
</body>
</html>