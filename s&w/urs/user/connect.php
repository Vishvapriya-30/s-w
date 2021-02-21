<?php
	$username = $_POST['username'];
	$email = $_POST['email'];
	$phone = $_POST['phone'];
	$date = $_POST['date'];
	$department = $_POST['department'];
	$device= $_POST['device'];
	$message= $_POST['message'];

	// Database connection
	$conn = new mysqli('localhost','root','','emp');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		$stmt = $conn->prepare("insert into registration(userame, email, phone, date, department, device, message) values(?, ?, ?, ?, ?, ?, ?)");
		$stmt->bind_param("ssiisss", $userame, $email, $phone , $date, $department, $device, $message);
		$execval = $stmt->execute();
		echo $execval;
		echo "Registration successfully...";
		$stmt->close();
		$conn->close();
	}
?>