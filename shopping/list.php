<script>
	function confirm_query(){
		if(window.confirm('Bạn có muốn thực hiện hành động này ?')){
			return true;
		}else{
			return false;
		}
	}
</script>
<?php
  session_start();
  // echo "<pre>";
  // print_r($_SESSION['cart']);
  if(isset($_SESSION['cart']) && !empty($_SESSION['cart'])){
  	echo "<form action='update.php' method='POST'>";
  	echo "<table border='1' align='center' width='600'>";
  	echo "<center>";
       echo "<tr>";
         echo "<td>Tên</td>";
         echo "<td>Mô tả</td>";
         echo "<td>Giá</td>";
         echo "<td>Số lượng</td>";
         echo "<td>Thành tiền</td>";
         echo "<td>Xóa</td>";
       echo "</tr>";
       foreach ($_SESSION['cart'] as $value) {
       	echo "<tr>";
       	echo "<td>$value[name]</td>";
       	echo "<td>$value[description]</td>";
       	echo "<td>".number_format($value['price'])."</td>";
       	echo "<td><input type='text' name='$value[id]' value='$value[quantity]'></input></td>";
       	echo "<td>".number_format($value['price']*$value['quantity'])."</d>";
       	echo "<td><a href='delete.php?id=$value[id]' onclick='return confirm_query()'>Xóa</a></td>";
       	echo "</tr>";
       }
  	echo "</table>";
  	echo "<input type='submit' name='ok' value='UpDate' onclick='return confirm_query()'>";
  	echo "</center>";
  	echo "</form>";
  }
?>