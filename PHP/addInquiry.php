<?php

include 'connect.php';

$name = $_GET["name"];
$email = $_GET["email"];
$phone = $_GET["phone"];
$message = $_GET["message"];


$sql = "INSERT INTO inquiry (inquiry_id, customer_name, phone_number, customer_email, inquiry_message)
	    VALUES(NULL, '$name', '$phone', '$email', '$message');";
$result = $conn -> query($sql);

if ($conn -> query($sql) == TRUE){
	
	$last_id = $conn -> insert_id;		// retrieving the ID of the newly inserted row
	
	
	$query = "SELECT * FROM inquiry WHERE inquiry_id = '$last_id';";
	$result = $conn -> query($query);
	
	
	echo "<script language='javascript'>";	// used js to send an alert message prompting the user that their inquiry is sent sucessfully
	echo 'alert("Inquiry Sent");';
	echo 'window.location.replace("about.html");';
	echo "</script>";
	
}

else{
	echo "Error: ".sql . "<br/>" . $conn ->error;
}

$conn -> close();	//closes the Database connection
?>