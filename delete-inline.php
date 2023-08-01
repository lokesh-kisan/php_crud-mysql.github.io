<?php
	echo $student_id=$_GET['id'];
	include 'configuration.php';
	$sql= "DELETE FROM students WHERE sid={$student_id}";
	$result = mysqli_query($conn, $sql) or die("Query Unsuccessful");
	header("Location:http://localhost/crud_php-mysql/index.php");
	mysqli_close($conn);

?>