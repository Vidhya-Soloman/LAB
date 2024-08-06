<?php
$con=mysqli_connect('localhost','root','','registration');
if($con)
{
echo "successfull";
}
?>

<html>
<head>
<title>Registration</title>
</head>
<body>
<form method="POST" action="trial1.php">
Name<input type="textbox" name="name"></input><br>
Age
<select>
<option>select</option>
<?php 
for($i=18;$i<=50;$i++)
echo "<option>".$i."</option>";
?>
</select><br>
Email<input type="textbox" name="email"></input><br>
Phone no<input type="textbox"></input><br>
Passwod<input type="password" name="pass1"></input><br>
Retype password<input type="password" name="pass2"></input><br> 
<input type="submit" name="register" value="Register"></input>
<input type="reset" name="reset" value="Reset"></input>
</form>
</body>
</html>
<?php
if(isset($_POST['register']))
{
$pass1=$_POST['pass1'];
$pass2=$_POST['pass2'];
if($pass1==$pass2)
 echo"valid password";
}
?>