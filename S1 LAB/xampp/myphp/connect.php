<?php
$con=mysqli_connect('localhost','root','','student');
if($con)
{
echo "connection successful!!!";
}
else
{
echo "Unsuccessful";
}
$sq="insert into stud values(4,'joel',77)";
$p=mysqli_query($con,$sq);
if($p)
{
echo "<script>alert('1 row inserted successfully');</script>";
}
?>


