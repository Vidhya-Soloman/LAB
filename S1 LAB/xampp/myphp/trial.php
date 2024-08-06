
<html>
<head>
<title>TRIAL</title>
</head>
<body>
<center>
<h2>Registration</h2>
<form method="POST" action="trial1.php">
Username <input type="textbox" name="user" ></input><br>
Password <input type="password" name="pass1"></input><br>
<input type="submit" name="login" value="login"></input>
<input type="button" name="result" value="result"></input><br>
<a href="trial1.php">Not a member?</a>
</form>
</center>
</body>
</html>
<?php
$con=mysqli_connect('localhost','root','','registration');
if($con)
{
echo "connection successfull";
}
?>