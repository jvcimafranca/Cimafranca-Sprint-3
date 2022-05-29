<?php

include 'connect.php';

$name = $_GET["name"];
$email = $_GET["email"];
$phone = $_GET["phone"];
$numofPeople = $_GET["number_of_people"];
$reservationTime = $_GET["reservation_time"];
$message = $_GET["message"];


$sql = "INSERT INTO clients (client_id, client_name, client_phone, client_email, number_of_people, reservation_time, reservation_message)
	    VALUES(NULL, '$name', '$phone', '$email', '$numofPeople', '$reservationTime', '$message');";
$result = $conn -> query($sql);

if ($conn -> query($sql) == TRUE){
	
	$last_id = $conn -> insert_id;		// retrieving the ID of the newly inserted row
	
	
	$query = "SELECT * FROM clients WHERE client_id = '$last_id';";
	$result = $conn -> query($query);
	


	echo "<script language='javascript'>";	// used js to send an alert message prompting the user that their reservation is sent sucessfully
	echo 'alert("Reservation Sent");';
	echo 'window.location.replace("reservation.html");';
	echo "</script>";
   
}

else{
	echo "Error: ".sql . "<br/>" . $conn ->error;
}

$conn -> close();	//closes the Database connection
?>