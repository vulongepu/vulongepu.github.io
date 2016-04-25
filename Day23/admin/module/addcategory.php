<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title"><?php echo isset($_GET["id"])?"Sua":"Them moi"?> The Loai</h3>
	</div>
	<div class="panel-body">	
	<?php 
		if(isset($_POST["submit"])){
			$catname = $_POST["catName"];
			if(empty($_POST["id"])){
				$sqlInsert = 'INSERT INTO tbl_category (cat_name,`status`,datecreate) VALUES ("'.$catname.'","1","'.date("Y-m-d H:i:s").'")';
				mysql_query($sqlInsert);
			}else{
				$sqlUpdate='UPDATE tbl_category SET cat_name="'.$catname.'" WHERE cat_id='.$_POST["id"];
				mysql_query($sqlUpdate);
			}
			header("location:index.php?layout=list_category");
		}
		$catname = "";
		if(isset($_GET["id"])){
			$sqlSelect = "SELECT * FROM tbl_category WHERE cat_id =".$_GET["id"];
			$ketqua = mysql_query($sqlSelect);
			$rowdata = mysql_fetch_row($ketqua);
		}
	?>			  			    
    	<form class = "form-horizontal" action="" method="POST" role="form">
    		<div class="form-group">
		    <label for="" class="col-sm-2  control-label">Category</label>
		    <div class="col-sm-4">
		    	<input type="hidden" class="form-control" id = "id" name="id" value="<?php echo !empty($rowdata)?$rowdata[0]:"";?>">
		      	<input type="text" class="form-control" id="catName" name ="catName" value="<?php echo !empty($rowdata)?$rowdata[1]:"";?>" placeholder="Category name">
		    </div>
		    <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="submit" name = "submit" class="btn btn-primary"><?php echo empty($_GET["id"])?"Insert":"Update";?></button>
		    </div>
		</div>
    	</form>
	</div>
</div>