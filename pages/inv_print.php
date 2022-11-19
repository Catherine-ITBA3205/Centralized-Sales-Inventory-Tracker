<!DOCTYPE html>
<?php
include'../includes/connection.php';

?>
<html lang="en">
	<head>
		<style>	
		.table {
			width: 100%;
			margin-bottom: 20px;
		}	
		
		.table-striped tbody > tr:nth-child(odd) > td,
		.table-striped tbody > tr:nth-child(odd) > th {
			background-color: #f9f9f9;
		}
		
		@media print{
			#print {
				display:none;
			}
		}
		@media print {
			#PrintButton {
				display: none;
			}
		}
		
		@page {
			size: auto;   /* auto is the initial value */
			margin: 10;  /* this affects the margin in the printer settings */
		}
	</style>
	</head>
<body>
	<h2>Inventory</h2>
	<br /> <br /> <br /> <br />
	<b style="color:green;">Date Prepared:</b>
	<?php
		$date = date("Y-m-d", strtotime("+6 HOURS"));
		echo $date;
	?>
	<br /><br />
	<table class="table table-striped">
		<thead>
			<tr>
				<th>Product Code</th>
				<th>Name</th>
				<th>Quantity</th>
				<th>Category</th>
				<th>Date Stock In</th>
            </tr>
		</thead>
		<tbody>
			<?php
                include'../includes/connection.php';
                $query = 'SELECT PRODUCT_ID, PRODUCT_CODE, NAME, QTY_STOCK, CNAME, DATE_STOCK_IN FROM product p join category c on p.CATEGORY_ID=c.CATEGORY_ID GROUP BY PRODUCT_CODE';
                $result = mysqli_query($db, $query) or die (mysqli_error($db));

                while ($row = mysqli_fetch_assoc($result)) {

					
			?>
			
			<tr>
				<td style="text-align:center;"><?php echo $row['PRODUCT_CODE']?></td>
				<td style="text-align:center;"><?php echo $row['NAME']?></td>
				<td style="text-align:center;"><?php echo $row['QTY_STOCK']?></td>
				<td style="text-align:center;"><?php echo $row['CNAME']?></td>
                <td style="text-align:center;"><?php echo $row['DATE_STOCK_IN']?></td>
			</tr>
			
			<?php
                }
			?>
		</tbody>
	</table>
	
	<center><button id="PrintButton" onclick="PrintPage()">Print</button></center>
</body>
<script type="text/javascript">
	function PrintPage() {
		window.print();
	}
	document.loaded = function(){
		
	}
	window.addEventListener('DOMContentLoaded', (event) => {
   		PrintPage()
		setTimeout(function(){ window.close() },750)
	});
</script>


</html>

