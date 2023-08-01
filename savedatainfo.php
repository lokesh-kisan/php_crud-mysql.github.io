<?php
echo "<pre>";
	echo $student_name = $_POST['sname'];
	echo $student_address = $_POST['saddress'];
	echo $student_class = $_POST['class'];
	echo $student_phone = $_POST['sphone'];

	include 'configuration.php';
	$sql = "INSERT INTO students(sname, saddress, sclass, sphone) VALUES('{$student_name}','{$student_address}','{$student_class}','{$student_phone}');";
	$result = mysqli_query($conn, $sql) or die("Query Unsuccessful");
	header("Location: http://localhost/crud_php-mysql/index.php");
?>