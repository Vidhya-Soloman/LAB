<html>
<head>
<title>student</title>
</head>
<body>
<form action="stud.php" method="POST">
<table border='1'>
<tr>
<th>Rollno</th>
<td><input type="textbox" name="rollno"></input>
</td>
</tr>
<tr>
<th>Name</th>
<td><input type="textbox" name="name"></input>
</td>
</tr>
<tr>
<th>Mark</th>
<td><input type="textbox" name="mark"></input>
</td>
</tr>
<tr>
<td colspan='2' align="center">
<input type="submit" name="submit" value="submit">
</input>
</td></tr>
</table>
</body>
</html>
<?php
$con=mysqli_connect('localhost','root','','student');
if($con)
{
echo "connected";
}
if(isset($_POST['submit']))
{
$rollno=$_POST['rollno'];
$name=$_POST['name'];
$mark=$_POST['mark'];
$q="insert into stud values('$rollno','$name','$mark')";
$qc=mysqli_query($con,$q);
if($qc)
{
Header("location:stude.php");
}
}
?>