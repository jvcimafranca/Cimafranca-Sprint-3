<!DOCTYPE html>
<html>
<style>
    body{
      font-family: Calibri, Candara, Segoe, Segoe UI, Optimize, Arial, sans-serif;
      background-image: url('blue.jpg');
      background-repeat: no-repeat;
      background-size: cover;
      color: white;
    }
    table, th, td{
        border: 1px solid silver;
    }
</style>
<body>
<h2 style="color: silver;">Client Reservation Details:</h2>
		<table style="width:100%">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Number of People</th>
                <th>Reservation Time</th>
                <th>Reservation Message</th>
                <?php
                    include 'client.php';   
                ?>
            </tr>
    </body>
</html>