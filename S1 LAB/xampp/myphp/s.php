<html>
<head>
<title>SAMPLE</title>
</head>
<body>
<h3>Registration</h3>
<form method="POST" action="">
<table border=1>
<tr><th>ROLLNO</th>
<td><input type="textbox" name="rollno"></input></td></tr>
<tr><th>NAME</th>
<td><input type="textbox" name="name"></input></td></tr>
<tr><th>MARK</th>
<td><input type="textbox" name="mark"></input></td></tr>
<tr><td colspan='2'align="center">
<input type="submit" name="register" value="register"></input>
<input type="reset" name="reset"></input></td></tr>
</table>
</form>
</body>
</html>
<?php
$con=mysqli_connect('localhost','root','','student');
if($con)
{
echo "connected";
}
if(isset($_POST['register']))
{
$rollno=$_POST['rollno'];
$name=$_POST['name'];
$mark=$_POST['mark'];
$q="insert into stud values('$rollno','$name','$mark')";
$qc=mysqli_query($con, $q);
if($qc)
{
Header("location:dis.php");
}
}
?>