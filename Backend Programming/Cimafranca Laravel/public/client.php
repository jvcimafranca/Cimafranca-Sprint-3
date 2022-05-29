<?php
	include 'connect.php';
	
	$sql = "SELECT * FROM clients";
	$result = $conn -> query($sql);
	
	if($result -> num_rows > 0){
		
		while($row = $result -> fetch_assoc()){
			
			echo "<tr>".
				"<td align='center'>".$row["client_id"]."</td>".
				"<td align='center'>".$row["client_name"]."</td>".
				"<td align='center'>".$row["client_phone"]."</td>".
				"<td align='center'>".$row["client_email"]."</td>".
				"<td align='center'>".$row["number_of_people"]."</td>".
				"<td align='center'>".$row["reservation_time"]."</td>".
				"<td align='center'>".$row["reservation_message"]."</td>";
			echo "</tr>";   
		}
	}
	else{
		echo "0 results";		
	}
	
	$conn->close();	
?>	