<html>
<head>
<title>display</title>
</head>
<body>
<h3>register successfull</h3>
</body>
</html>
<?php
$con=mysqli_connect('localhost','root','','student');
if($con)
{
echo "connected";
}
$q="select * from stud";
$qc=mysqli_query($con,$q);
if(mysqli_num_rows($qc))
{
echo"<table border=1>";
while($row=mysqli_fetch_assoc($qc))
{
echo "<tr>";
echo"<td>".$row['rollno']."</td>";
echo"<td>".$row['name']."</td>";
echo"<td>".$row['mark']."</td>";
echo "<tr>";
}
}
?>