<?php
	include 'connect.php';
	
	$sql = "SELECT * FROM inquiry";
	$result = $conn -> query($sql);
	
	if($result -> num_rows > 0){
		
		while($row = $result -> fetch_assoc()){
			
			echo "<tr>".
				"<td align='center'>".$row["inquiry_id"]."</td>".
				"<td align='center'>".$row["customer_name"]."</td>".
                "<td align='center'>".$row["phone_number"]."</td>".
				"<td align='center'>".$row["customer_email"]."</td>".
				"<td align='center'>".$row["inquiry_message"]."</td>";
			echo "</tr>";   
		}
	}
	else{
		echo "0 results";		
	}
	
	$conn->close();	
?>	