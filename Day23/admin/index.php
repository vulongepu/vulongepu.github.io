<?php
	ob_start();
	session_start();
	if (isset($_POST['login'])) {
	    include ("connection.php");
	    $user = $_POST['user'];
	    $pass = md5($_POST['pass']);
	    $sqlcheck = "SELECT * FROM tbl_users WHERE userName='$user' AND `password`='$pass'";
	    //die($sqlcheck);
	    $result = mysql_query($sqlcheck);
	    $data = mysql_num_rows($result);
	    if ($data) {
	        $content = mysql_fetch_row($result);
	        $_SESSION['user'] = $content;
	        //die("sdfgdg");
	        header("location:./index.php");
	    }
	}

	if(empty($_SESSION['user'])){
		header("location:./login.php");
		die;
	}
	include("connection.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Admin | Admin</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/user.css">
	<script type="text/javascript" src = "js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src = "js/bootstrap.min.js"></script>
</head>
<body>
	<div id = "wrapper">
		<div id="mobile-menu">
			<a id="responsive-menu-button" class = "btn btn-default" href="#mobile-menu"><i class = "glyphicon glyphicon-menu-hamburger"></i></a>
		</div>
		<!--side left-->
		<div class = "sidebar col-sm-2">
			<h1 class = "sidebar-title">Simpla Admin</h1> 
			<div class = "sidebar-profile">
				<span>Hello,</span>
				<a href = "#"><?php echo $_SESSION["user"][3] ?></a><span>, you have </span><a href = "#">3 Messages </a>
				<br>
				<br>
				<a href = "#" title = "view the site">View the site</a><span> | </span><a href = "?layout=logout" title = "sign out">Sign Out</a>
			</div>
			<div class = "sidebar-menu">
				<?php
					include("menuleft/menuleft.php");
				 ?>
			</div>
		</div><!-- end side-left -->
		<!-- content -->
		<div class = "content">
			<div class = "container-fluid">
				<div class="row">
					<div class = "col-sm-12">
					<div class = "content-title">
						<h1>Welcome Admin</h1>
					</div>
					<div class = "frm-search">
						<div class = "col-sm-4 col-sm-offset-8">
							<div class="input-group">
						      	<input type="text" class="form-control" placeholder="Search for...">
						      	<span class="input-group-btn">
						        	<button class="btn btn-default" type="button">Go!</button>
						      	</span>
						    </div>
						</div>
						<div class = "clearfix"></div>
					</div>
					<div class = "content-main">
					  	<?php
					  		if(isset($_GET["layout"])){
					  			switch ($_GET["layout"]) {
					  				// case 'listuser': include("user/list_user.php");
					  				// 	break;
					  				// case 'adduser': include("user/action_user.php");
					  				// 	break;
					  				case $_GET["layout"]: 
					  					include("module/".$_GET["layout"].".php");
					  					break;
					  				// case 'logout': include("logout.php");
					  				// 	break;
					  				// default:
					  				// 	include("user/list_user.php");
					  				// 	break;
					  			}
					  		}else{
					  			//include("user/list_user.php");
					  		}
					  	?>
					</div>
				</div>
			  	</div>
			</div>
		</div><!--end content -->  
	</div>
</div>
	</div>
	<script type = "text/javascript">
		$(document).ready(function(){
			$(".list-group-item > a").on('click',function(){	
				$(".list-group-item > a").removeClass("active");
				$(this).addClass("active");
				if( $(".list-group-item > a.active + ul").is(":visible") ){
					$(".list-group-item > a.active + ul").slideUp(400);
				}else{	
					$(".list-group-item > a.active + ul").slideToggle(400);	
					$(".list-group-item :not(.active) + ul").slideUp(400);
				}
			});
			$("#checkall").click(function () {
			    $(".check").prop('checked', $(this).prop('checked'));
			});
			$("#mobile-menu").click(function(e) {
	        	e.preventDefault();
	        	$("#wrapper").toggleClass("toggled");
    		});
		});
	</script>
</body>
</html>
<?php
	mysql_close($conn);
?>