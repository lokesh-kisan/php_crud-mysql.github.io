<?php
	echo $student_id = $_POST['sid'];
	echo $student_name = $_POST['sname'];
	echo $student_address = $_POST['saddress'];
	echo $student_class = $_POST['sclass'];
	echo $student_phone = $_POST['sphone'];

	include'configuration.php';
	$sql="UPDATE students set sname = '{$student_name}', saddress = '{$student_address}', sclass ='${student_class}', sphone = '{$student_phone}' WHERE sid = {$student_id} ";
	$result = mysqli_query($conn, $sql) or die('Query Unsuccessful');
	header("Location:http://localhost/crud_php-mysql/index.php");
?>