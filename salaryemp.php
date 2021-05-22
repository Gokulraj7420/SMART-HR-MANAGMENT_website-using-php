<?php 
require_once ('process/dbh.php');
$sql = "SELECT * FROM employee ";
$result = mysqli_query($conn, $sql);
?>


<html>
<head>
	<title>Admin Panel</title>
	<link rel="stylesheet" type="text/css" href="styleemplogin.css">
</head>
<body>
	
	<header>
		<nav>
			<h1>BARATH POULTRY PRODUCTS</h1>
			<ul id="navli">
				<li><a class="homeblack" href="aloginwel.php">Daily Report</a></li>
				<li><a class="homered" href="salaryemp.php">Mill Daily Report</a></li>
			</ul>
		</nav>
	</header>
	 
	<div class="divider"></div>
	<div id="divimg">
		<h2 style="font-family: 'Montserrat', sans-serif; font-size: 25px; text-align: center;">Daily Mill Report </h2>
    	<table border=1>

			<tr bgcolor="#000" >
				<th align = "center" rowspan="2">Seq.</th>
				<th align = "center" rowspan="2">Farmer Name</th>
				<th align = "center" colspan="2">Chicks</th>				
				<th align = "center" colspan="2">Dead</th>				
				<th align = "center" rowspan="2">Remaining Chicken</th>
				<th align = "center" rowspan="2">Total Food sent</th>
				<th align = "center" colspan="3">Inrupu Food</th>
				<th align = "center" rowspan="2">Total nugarvu</th>
				<th align = "center" rowspan="2">Nugarvu/Chicken</th>
				<th align = "center" rowspan="2">Chicken Weight</th>				

			</tr>
			<tr bgcolor="#000">
			    <th align = "center" colspan="1">No.of</th>
				<th align = "center" colspan="1">Age</th>
				<th align = "center" colspan="1">Today</th>
				<th align = "center" colspan="1">Total</th>
				<th align = "center" colspan="1">Mootai</th>
				<th align = "center" colspan="1">Box</th>
				<th align = "center" colspan="1">Total</th>
			</tr>
			

			<?php
				$seq = 1;
				while ($employee = mysqli_fetch_assoc($result)) {
					echo "<tr>";
					echo "<td>".$seq."</td>";
					echo "<td>".$employee['frname']."</td>";
					
					echo "<td>".$employee['noc']."</td>";
					echo "<td>".$employee['age']."</td>";
					echo "<td>".$employee['dtoday']."</td>";
					echo "<td>".$employee['dtotal']."</td>";
					echo "<td>".$employee['remchick']."</td>";
					echo "<td>".$employee['tfs']."</td>";
					echo "<td>".$employee['mo']."</td>";
					echo "<td>".$employee['box']."</td>";					
					echo "<td>".$employee['ftotal']."</td>";
					echo "<td>".$employee['ti']."</td>";
					echo "<td>".$employee['idc']."</td>";
					echo "<td>".$employee['cw']."</td>";
					
					$seq+=1;
				}


			?>

		</table>

		

		
	</div>
</body>
</html>