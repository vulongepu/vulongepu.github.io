<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">Danh sach danh muc</h3>
	</div>
	<div class="panel-body">
		<div role="tabpanel">
		<div id = "rule-action" class="panel-heading">
				<a href = "index.php?layout=addcategory" class = "btn btn-default">
					<i class="fa fa-plus-circle"></i> Insert 
				</a>
			</div>
		    <!-- Tab panes -->
		    <div class="tab-content">
		        <div role="tabpanel" class="tab-pane active" id="all">
		        	<table class="table table-hover">
		        		<thead>
		        			<tr>
		        				<th>
		        					<input type="checkbox" class = "check" id = "checkall">
		        				</th>
		        				<th>#</th>
		        				<th>name</th>
		        				<th>Status</th>
		        				<th>Date Create</th>
		        				<th>Action</th>				  			        				
		        			</tr>
		        		</thead>
		        		<tbody>
		        			<?php 
		        				if(isset($_GET["id"])){
		        					$sqlDel = "DELETE FROM tbl_category WHERE cat_id = ".$_GET["id"];
		        					mysql_query($sqlDel) or die("khong xoa dc");
		        				}
		        				$sqlCategory = "SELECT * FROM tbl_category";
		        				$result = mysql_query($sqlCategory);
		        				$i=0;
		        				while ($row = mysql_fetch_array($result)) {
		        					$i++;
		        			?>
		        			<tr>
		        				<td></td>
		        				<td><?php echo $i; ?></td>
		        				<td>
		        					<?php echo $row['cat_name'] ?>
		        				</td>
		        				<td>
		        					<?php echo ($row['status'])?"Hien thi":"An" ?>
		        				</td>
		        				<td>
		        					<?php echo date("d-m-Y H:i:s",strtotime($row['datecreate']))  ?>
		        				</td>
		        				<td>
		        					<a href = "./index.php?layout=addcategory&id=<?php echo $row["cat_id"] ?>" class="edit" title = "edit">
		        						<img src = "images/icons/pencil.png" />
		        					</a>&nbsp;
		        					<a href = "./index.php?layout=list_category&id=<?php echo $row["cat_id"] ?>" class="delete" title = "delete">
		        						<img src = "images/icons/cross.png" />
		        					</a>&nbsp;
		        					<a href = "#" class="block" title = "block">
		        						<img src = "images/icons/tick_circle.png" />
		        					</a>
		        				</td>
		        			</tr>
		        			<?php 
		        				}
		        			?>
		        		</tbody>
		        	</table>
		        	<!-- <nav>
					  <ul class="pagination">
					    <li>
					      <a href="#" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span>
					      </a>
					    </li>
					    
					    <li>
					      <a href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li>
					  </ul>
					</nav> -->
		        </div>
		        <div role="tabpanel" class="tab-pane" id="active">Active</div>
		        <div role="tabpanel" class="tab-pane" id="no-active">No Active</div>
		    </div>
		</div>
	</div>
</div>