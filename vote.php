<html>
<head><title>Show Candidates</title>
<script>

</script>
</head>
<body>
<form id="myform">
<input type="radio" id="na" name="Nominee_1" value="You have voted ABC">ABC<br>
<input type="radio" id="na" name="Nominee_2" value="You have voted XYZ">XYZ<br>
<input type="radio" id="na" name="Nominee_3" value="You have voted POR">POR<br>
<input type="button" value="Record Vote" onclick="getValidate();"/>
<div id="check" class="displaybox">
</div>
</form>
  <form method="post" action="bjb.php">
Name:<input type="text" value="name" placeholder="Enter your name...">
Be a member:<input type="button" value="Record Vote">
</form>
  <form method="post" action="bjb.php">
Name:<input type="text" value="name" placeholder="Enter your name...">
Be a member:<input type="button" value="Record Vote">
</form>
</body>
</html>
