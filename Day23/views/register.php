<link rel="stylesheet" type="text/css" href="js/jquery-ui.min.css">
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<div class="row center">
	<h3><a href="#">Register</a></h3>
	<?php 
		include("./connection.php");
		if(isset($_POST["dangKy"])){
			$userName = $_POST["userName"];
			$email = $_POST["email"];
			$password = md5($_POST["password"]);
			$birthday = strtotime($_POST["birthday"]);//chuyen thanh keu Int
			$birthday = date("Y-m-d",$birthday);
			$gender = $_POST["gender"];
			$provinceid = $_POST["province"];;
			$sqlInsert = 'INSERT INTO tbl_users (userName,`password`,email,birthday,gender,provinceid) VALUES("'.$userName.'","'.$password.'","'.$email.'","'.$birthday.'","'.$gender.'","'.$provinceid.'");';
			//die($sqlInsert);
			mysql_query($sqlInsert);// or die("khong in sert dc");
		}
	?>
	<div class="col-md-8 col-md-offset-2 line-height-border" style="padding:5% 5%;">
		<h4>Thông Tin Khách Hàng ĐĂNG KÝ Hệ Thống</h4><br />
		<form role="form" method="post">
		  	<div class="form-group">
			    <label for="exampleInputEmail1">Họ Tên*</label>
			    <input type="text" value=""  class="form-control" name="userName" id="userName" placeholder="User Name">
		  	</div>
		  	<div class="form-group">
			    <label for="exampleInputEmail1">Email*</label>
			    <input type="text" value=""  class="form-control" name="email" id="email" placeholder="Email">
		  	</div>
		  	<div class="form-group">
			    <label for="exampleInputPassword1">Mật Khẩu*</label>
			    <input type="password" value="" class="form-control" id="password" name="password" placeholder="Password">
		  	</div>
		  	<div class="form-group">
			    <label for="exampleInputPassword1">Ngày, Tháng, Năm Sinh*</label>
			    <input type="text" value="" class="form-control" id="birthday" name="birthday">
		  	</div>
		  	<div class="form-group">
			    <label for="exampleInputPassword1">Giới tính*</label>
			    <select class="form-control" name="gender" id="gender">
				  	<option value="">Lựa Chọn</option>
				  	<option value="1">Nam</option>
				  	<option value="0">Nữ</option>
				  	<option value="2">3D</option>
				</select>
		  	</div>
		  	<div class="form-group">
			    <label for="exampleInputPassword1">Tinh</label>
			    <select class="form-control" name="province" id="province">
			    <option value="">Lựa Chọn</option>
			    <?php 
			    	$sqlSelect = "SELECT * FROM tbl_province";
			    	$result =  mysql_query($sqlSelect);
			    	// echo "<prE>";
			    	// print_r(mysql_fetch_array($result));
			    	// die;
			    	while ($row = mysql_fetch_array($result)) {
			    		echo "<option value='".$row["pro_id"]."'>".$row["province_name"]."</option>";
			    	}
			    ?>
				  	
				</select>
		  	</div>
		  	<!--div class="form-group">
			    <label for="exampleInputPassword1">Mã Xác Nhận*</label>
			    <img src="captcha.php?rand=<?php echo rand();?>" id='captchaimg'>
			    <input type="text" value="" class="form-control" id="maxacnhan" name="maxacnhan" placeholder="Mã Xác Nhận">
		  	</div-->
		  	<div class="checkbox">
		    <label>
		      <input type="checkbox" name="remember" id="remember"> Tôi đã đọc và đồng ý với <a href="#" class="dieukhoansudung">điều khoản sử dụng</a> của SonsGuitar
		    </label>
		  	</div>
		  	<button type="submit" class="btn btn-success" name="dangKy">Đăng Ký</button>
		</form>
		<script>
		  $(function() {
		    $( "#date" ).datepicker();
		  });
		  </script>
	</div>
</div>