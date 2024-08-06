<html>
<head>
<title>Registration</title>
</head>
<body>
<center>
<form action="regtest.php" method="POST">
<h3>REGISTRATION</h3>
<table border='1'>
<tr>
<th>NAME</th><td><input type="textbox" name="name"></input>
</td></tr>
<tr>
<th>AGE</th>
<td>
<select name="age">
<option>select</option>
<?php
for($i=18;$i<=50;$i++)
echo "<option>".$i."</option>";
?>
</select>
</td></tr>
<tr>
<th>EMAIL</th>
<td><input type="textbox" name="email"></input>
</td></tr>
<tr>
<th>PHONE NO</th>
<td><input type="textbox" name="phone"></input>
</td></tr>
<tr>
<th>PASSWORD</th>
<td><input type="password" name="pass"></input>
</td></tr>
<tr>
<th>RE-TYPE PASSWORD</th>
<td><input type="password" name="pass1"></input>
<tr>
<td colspan='2' align="center"><input type="submit" name="register" value="register"></input>
<input type="reset" name="reset" value="reset"></input></td></tr>
</table>
</form>
</center>
</body>
</html>