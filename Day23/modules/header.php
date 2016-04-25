<header>
	<div class="topMenu">
		<nav class="navbar navbar-inverse brMenu">
		  <div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand bglogo" href="#">SongsGuitar</a>
		    </div>

		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		        <li class="active"><a href="index.php">Trang Chủ <span class="sr-only">(current)</span></a></li>
		        <li><a href="index.php?view=about">Giới Thiệu</a></li>
		        <li><a href="index.php?view=news">Tin Tức</a></li>
		        <li class="dropdown txtMenu">
		          <a href="index.php?view=product" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sản Phẩm <span class="caret"></span></a>
		          <ul class="dropdown-menu">
		            <li><a href="index.php?view=product&catid=">Guitar Acoustic</a></li>
		            <li><a href="#">Guitar Classic</a></li>
		            <li><a href="#">Guitar Electric</a></li>
		            <li><a href="#">Guitar Electric</a></li>
		            <li><a href="#">Sản Phẩm Khuyến Mại</a></li>
		            <li><a href="#">Sản Phẩm Bán Chạy Nhất</a></li>
		          </ul>
		        </li>
		        <li><a href="#">Địa Chỉ</a></li>
		      </ul>
		      <form class="navbar-form navbar-left" role="search">
		        <div class="form-group">
		          <input type="text" class="form-control" placeholder="Search">
		        </div>
		        <button type="submit" class="btn btn-default">Tìm Kiếm</button>
		      </form>
		      <ul class="nav navbar-nav navbar-right">
		        <li class="dropdown txtMenu">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Chao:<?php echo isset($_SESSION['userInfo'])?$_SESSION['userInfo'][1]:"Ban"; ?> Thông Tin <span class="caret"></span></a>
		          <ul class="dropdown-menu">
		          <?php if(!isset($_SESSION['userInfo'])){?>
		            <li><a href="index.php?view=login">LogIn</a></li>
		            <li><a href="index.php?view=register">Register</a></li>
		            <?php 
		            	}else{
		            ?>
		            <li><a href="#">Change password</a></li>
		            <li><a href="index.php?view=profile">Profile</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="index.php?view=logout">LogOut</a></li>
		            <?php } ?>
		          </ul>
		        </li>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
	</div> <!-- /.topMenu -->
</header>