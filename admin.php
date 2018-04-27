<html>
	<head>
		<?php
	session_start();
	include 'connection.php';
	
	$query1="select * from Candidate where section=1 order by vote_count desc;";
	$result1=mysqli_query($dbh,$query1);
	$query2="select * from Candidate where section=2 order by vote_count desc;";
	$result2=mysqli_query($dbh,$query2);	
	$query3="select * from Candidate where section=3 order by vote_count desc;";
	$result3=mysqli_query($dbh,$query3);	
       	
?>
	<style>
		.table{
			float:left;
			margin-right:10px;
		}
		.tab{
			//float: left;
			margin-left:32%;
			width:100%;
		}
	</style>
	</head>
	<body>
	

		<center><h2 style="color:dodgerblue;font-size:20px">Landing page for Admin</h2></center>
<div class="tab"><table class="table" border=1px rules="all">
		<tr>
				<th colspan="2"style="font-family: Times New Roman;font-style: italic;color:blue">CSE SEC-1</th>
		</tr>
		<tr>
			<th style="color:magenta;font-size:15px">Candidate</th>
			<th style="color:magenta;font-size:15px">Vote</th>
                        <th style="color:magenta;font-size:15px">cgpa</th>
		</tr>
		<?php while($row1=mysqli_fetch_array($result1)){ ?>
		<tr>
			<td style="color:magenta;font-size:15px"><?php echo $row1['name']; ?></td>
			<td style="color:magenta;font-size:15px"><?php echo $row1['vote_count']; ?></td>
                        <td style="color:magenta;font-size:15px"><?php echo $row1['CGPA']; ?></td>
		<?php } ?>
		</tr>
		</table>


		<table class="table" border=1px rules="all">
		<tr>
				<th colspan="2" style="font-family: Times New Roman;font-style: italic;color:blue">Section 2</th>
		</tr>
		<tr>
			<th style="color:magenta;font-size:15px">Candidate</th>
			<th style="color:magenta;font-size:15px">Vote</th>
                        <th style="color:magenta;font-size:15px">cgpa</th>
		</tr>
		<?php while($row2=mysqli_fetch_array($result2)){ ?>
		<tr>
			<td style="color:magenta;font-size:15px"><?php echo $row2['name']; ?></td>
			<td style="color:magenta;font-size:15px"><?php echo $row2['vote_count']; ?></td>
                        <td style="color:magenta;font-size:15px"><?php echo $row2['CGPA']; ?></td>
		</tr>
			<?php } ?>
		</table>
		<table border=1px rules="all">
		<tr>
				<th colspan="2"style="font-family: Times New Roman;font-style: italic;color:blue">Section 3</th>
		</tr>
		<tr>
			<th style="color:magenta;font-size:15px">Candidate</th>
			<th style="color:magenta;font-size:15px">Vote</th>
                        <th style="color:magenta;font-size:15px">cgpa</th>
		</tr>
		<?php while($row3=mysqli_fetch_array($result3)){ ?>
		<tr>
			<td style="color:magenta;font-size:15px"><?php echo $row3['name']; ?></td>
			<td style="color:magenta;font-size:15px"><?php echo $row3['vote_count']; ?></td>
                        <td style="color:magenta;font-size:15px"><?php echo $row3['CGPA']; ?></td>
		</tr>
			<?php } ?>
		</table>
		
</div>
<center>
<form action="admin1.php" method="post">
	<input style="margin-top:50px;" type="submit" value="eligible student"/>
</form>
</center>

	</body>
</html>		
