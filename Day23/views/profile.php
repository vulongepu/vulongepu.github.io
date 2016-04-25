<link rel="stylesheet" type="text/css" href="js/jquery-ui.min.css">
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<div class="row center">
	<h3><a href="#">Update profile</a></h3>
	<?php 
		include("./connection.php");
		if(isset($_POST["dangKy"])){
			$userName = $_POST["userName"];
			$email = $_POST["email"];
			$birthday = strtotime($_POST["birthday"]);
			$birthday = date("Y-m-d",$birthday);
			$gender = $_POST["gender"];
			$provinceid = $_POST["province"];;
			//$sqlInsert = 'INSERT INTO tbl_users (userName,`password`,email,birthday,gender,provinceid) VALUES("'.$userName.'","'.$password.'","'.$email.'","'.$birthday.'","'.$gender.'","'.$provinceid.'");';
			//die($sqlInsert);
			$sqlupdate = 'UPDATE tbl_users SET userName="'.$userName.'",email="'.$email.'",birthday="'.$birthday.'",gender="'.$gender.'",provinceid="'.$provinceid.'" WHERE id='.$_SESSION['userInfo'][0];
			
			mysql_query($sqlupdate);// or die("khong in sert dc");
		}

		$sqlGetInfo = "SELECT * FROM tbl_users WHERE id =".$_SESSION['userInfo'][0];
		$userInfo = mysql_query($sqlGetInfo);
		if(mysql_num_rows($userInfo)){
			$data = mysql_fetch_row($userInfo);
			// echo '<pre>';
			// print_r($data );
			// die;
		}
	?>
	<div class="col-md-8 col-md-offset-2 line-height-border" style="padding:5% 5%;">
		<h4>Cap nhat thong tin ca nhan</h4><br />
		<form role="form" method="post">
		  	<div class="form-group">
			    <label for="exampleInputEmail1">Họ Tên*</label>
			    <input type="text" value="<?php echo $data[1] ?>"  class="form-control" name="userName" id="userName" placeholder="User Name">
		  	</div>
		  	<div class="form-group">
			    <label for="exampleInputEmail1">Email*</label>
			    <input type="text" value="<?php echo $data[3] ?>"  class="form-control" name="email" id="email" placeholder="Email">
		  	</div>
		  	<div class="form-group">
			    <label for="exampleInputPassword1">Ngày, Tháng, Năm Sinh*</label>
			    <?php 
			    	// echo $data[4];
			    	$date = strtotime($data[5]);
			    	$date = date("d/m/Y",$date);
			    ?>
			    <input type="text" value="<?php echo $date ?>" class="form-control" id="birthday" name="birthday">
		  	</div>
		  	<div class="form-group">
			    <label for="exampleInputPassword1">Giới tính*</label>
			    <select class="form-control" name="gender" id="gender">
				  	<option value="">Lựa Chọn</option>
				  	<?php
				  		$gender = array("1"=>"Nam" ,"0"=>"Nữ","2"=>"3D");
				  	
				  		foreach ($gender as $key => $value) {
				  			if($key==$data[6]){
				  				echo '<option selected value="'.$key.'">'.$value.'</option>';
				  			}else{
				  				echo '<option  value="'.$key.'">'.$value.'</option>';
				  			}
				  			
				  		}
				  	?>
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
			    		if($row["pro_id"]==$data[7]){
			    			echo "<option selected value='".$row["pro_id"]."'>".$row["province_name"]."</option>";
			    		}else{
			    			echo "<option value='".$row["pro_id"]."'>".$row["province_name"]."</option>";
			    		}
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
		  	<button type="submit" class="btn btn-success" name="dangKy">Update</button>
		</form>
		<script>
		  $(function() {
		    $( "#date" ).datepicker();
		  });
		  </script>
	</div>
</div>