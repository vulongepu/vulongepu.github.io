<div class="row center">
	<h3><a href="#">Change Password</a></h3>
	<div class="col-md-8 col-md-offset-2" style="padding:5% 5%;">
		<form role="form" method="post">
		  <div class="form-group">
		    <label for="exampleInputEmail1">User Name</label>
		    <input type="text" value="<?php echo $user ?>"  class="form-control" name="userName" id="userName" placeholder="User Name">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1">Password</label>
		    <input type="password" value="<?php echo $pass ?>" class="form-control" id="password" name="password" placeholder="Password">
		  </div>
		  <div class="checkbox">
		    <label>
		      <input type="checkbox" name="remember" id="remember" <?php echo ($checked)?"checked":"" ?>> Check me out
		    </label>
		  </div>
		  <button type="submit" class="btn btn-default" name="login">Submit</button>
		</form>
	</div>
</div>