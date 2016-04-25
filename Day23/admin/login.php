<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"> 
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<script type="text/javascript" src = "js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src = "js/bootstrap.min.js"></script>
</head>
<body>
	<header id = "login-header">
		<div class="container">
			<div class="row">
				<div class="block col-md-4 col-sm-6 col-xs-8 col-md-offset-4 col-sm-offset-3 col-xs-offset-2">
					<h1>Simpla Admin</h1>
				</div>
			</div>
		</div>
	</header>
	<section id="login-content">
		<div class="container">
			<div class="row">
				<div class="block col-md-4 col-sm-6 col-xs-8 col-md-offset-4 col-sm-offset-3 col-xs-offset-2">
					<div class="alert alert-warning" id = "alert" role="alert">
					  <i class="fa fa-exclamation-circle"></i>	Warning! Better check yourself.
					</div>
					<form class="form-horizontal" id = "frm-login" method = "post" action="index.php">
					  <div class="form-group">
					    <label for="user" class="col-sm-3 control-label">Username</label>
					    <div class="col-sm-9">
					      <input type="text" class="form-control" id="user" name="user" placeholder="Username">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="pass" class="col-sm-3 control-label">Password</label>
					    <div class="col-sm-9">
					      <input type="password" class="form-control" id="pass" name="pass" placeholder="Password">
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-3 col-sm-9">
					      <div class="checkbox">
					        <label>
					          <input type="checkbox"> Remember me
					        </label>
					      </div>
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-3 col-sm-9">
					      <button type="submit" class="btn btn-default " name = "login" id = "login">Sign in</button>
					    </div>
					  </div>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
</html>