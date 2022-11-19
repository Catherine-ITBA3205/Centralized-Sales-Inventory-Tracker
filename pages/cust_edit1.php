<?php
include('../includes/connection.php');
			$zz = $_POST['id'];
			$name = $_POST['name'];
			$phone = $_POST['phone'];
	   	
		
	 			$query = 'UPDATE customer set NAME ="'.$name.'",
					 PHONE_NUMBER="'.$phone.'" WHERE
					CUST_ID ="'.$zz.'"';
					$result = mysqli_query($db, $query) or die(mysqli_error($db));
							
?>	
	<script type="text/javascript">
			alert("You've Update Customer Successfully.");
			window.location = "customer.php";
		</script>