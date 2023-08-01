<?php include 'header.php';
	if(isset($_POST['deletebtn'])){
		include 'configuration.php';
		$student_id=$_POST['sid'];
		$sql="DELETE FROM students WHERE sid={$student_id}";
		$result = mysqli_query($conn, $sql) or die("Query Unsuccessful");
		header("Location:http://localhost/crud_php-mysql/index.php");
		mysqli_close($conn);
	}
	?> 
<div id="main-content">
	<h2>Delete Record</h2>
	<form class="post-form" action="<?php echo $_SERVER['PHP_SELF'];?>"
	 method="post" >
		<div class="form-group">
			<label>ID</label>
			<input type="text" name="sid">
		</div>
		<input class="submit" type="submit" name="deletebtn" value="Delete">
	</form>
</div>
</div>
</body>
</html>