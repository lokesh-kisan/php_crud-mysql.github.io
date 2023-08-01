<?php include 'header.php'; ?>
			<div id="main-content">
				<h2>Add New Record</h2>
				<form class="post-form" method="post" action="savedatainfo.php">
					<div class="form-group">
						<label for="name">Name</label>
						<input type="text" id="name" name="sname">
					</div>
					<div class="form-group">
						<label for="address">Address</label>
						<input type="text" id="address" name="saddress">
					</div>
					<div class="form-group">
						<label for="class">Class</label>
						<select name="class" >
							<option value="" selected disabled>--Selected Class--</option>
							<?php
								include 'configuration.php'; 
								$sql = "SELECT * FROM studentclass";
								$result = mysqli_query($conn, $sql) or die("Query Unsuccessful");

								while( $row=mysqli_fetch_assoc($result)){
							?>
								<option value="<?php echo $row['cid']; ?>"><?php echo $row['cname']; ?></option>
							<?php } ?>
						</select>
					</div>
					<div class="form-group">
						<label for="p">Phone</label>
						<input type="text" name="sphone" id="p">
					</div>
					<input class="submit" type="submit" value="Save">
				</form>
			</div>
		</div><!-- wrapper ------------->
	</body>
</html>