<?php 
//print_r(gd_info());
//phpinfo();
//die;
	session_start();
	$user = $pass="";
	$checked = false;
	if(isset($_POST["login"])){
		// echo '<pre>';
		// print_r($_POST);
		// die;
		$userName=$_POST["userName"];
		$pass=$_POST["password"];
		if(isset($_POST["remember"])){
			setcookie("userName",$userName);
			setcookie("password",$pass);
		}
		//LOGIN
		include("./connection.php");
		$sqlSelectLogin = 'SELECT * FROM tbl_users WHERE userName="'.$userName.'" AND `password`="'.md5($pass).'"';
		$ketqua = mysql_query($sqlSelectLogin);
		$rowcount=mysql_num_rows($ketqua);

		if($rowcount){
			$_SESSION['userInfo']= mysql_fetch_row($ketqua);
			header("location:index.php");
		}

		// $arr = array("admin"=>"123456","cuong"=>"123456");
		// if(array_key_exists($userName, $arr) && $arr[$userName]==$pass){
		// 	$_SESSION['userInfo']= $userName;
		// 	header("location:index.php");
		// }
	}

	if(isset($_COOKIE["userName"]) && isset($_COOKIE["password"]) ){
		$user  = $_COOKIE["userName"];
		$pass= $_COOKIE["password"];
		$checked = true;
	}
	

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ban dan</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/webStyle.css">
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/webJQuery.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
	<?php 
		include("modules/header.php");
		include("modules/banner.php");
	?>
	<section class="main">
	<img src="captcha.php?rand=<?php echo rand();?>" id='captchaimg'>
		<div class="container">
			<div class="row">	
				<div class="col-xs-12 col-md-3 left-menu">
					<?php 
						include("modules/danhmucsanpham.php");
						include("modules/nhasanxuat.php");
						include("modules/hotrotructuyen.php");
						include("modules/tintuc.php");
						include("modules/maquetthe.php");
						include("modules/lienketfacebook.php");
						include("modules/thongketruycap.php");
					?>
				</div> <!-- /.col-xs-12.col-md-3 -->
<!-- Phần center có thể bị thay đổi -->
				<div class="col-xs-12 col-md-9 center">
					<?php 
						if(isset($_GET["view"])) {
							switch ($_GET["view"]) {
								case $_GET["view"]:
									include("views/".$_GET["view"].".php");
									break;
								
								default:
									include("modules/sanphambanchay.php");
									include("modules/thongtinguitar.php");
									break;
							}
						} else {							
							include("modules/sanphambanchay.php");
							include("modules/thongtinguitar.php");
						}
					?>					
				</div> <!-- /.col-xs-12.col-md-3.center -->
			</div> <!-- /.row -->
		</div> <!-- /.container(main) -->
	</section> <!-- /.main -->

	<?php 
		include("modules/footer.php");
	?>	
</body>
</html>