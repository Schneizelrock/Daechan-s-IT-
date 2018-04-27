<html>
	<head>
		<?php
	session_start();
	include 'connection.php';
	

	$query1="select c1.* from Candidate c1  join (select section,max(vote_count) as vote_count from Candidate  group by section)b on c1.section=b.section and c1.vote_count=b.vote_count and c1.CGPA>=6.5;";

	$result1=mysqli_query($dbh,$query1);
       	
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
	<div align="right">
<form action="logout.php" method="post">
	<input style="margin-top:50px;" type="submit" value="logout"/>
</form>
</div>

		<center><h2>Welcome, Admin</h2></center>
<div class="tab"><table class="table" border=1px rules="all">
		<tr>
				<th colspan="2">Section 1</th>
		</tr>
		<tr>
			<th>Candidate</th>
			<th>Vote</th>
                        <th>cgpa</th>
			<th>section</th>
		</tr>
		<?php while($row1=mysqli_fetch_array($result1,MYSQLI_ASSOC)){ ?>
		<tr>
			<td><?php echo $row1['name']; ?></td>
			<td><?php echo $row1['vote_count']; ?></td>
                        <td><?php echo $row1['CGPA']; ?></td>
    			    <td><?php echo $row1['section']; ?></td>
			<?php } ?>
		</tr>
		</table>


		
</div>


	</body>
</html>		
