<?php
$fact=1;
$n=$_POST['number'];
for($i=1;$i<=$n;$i++)
{
$fact=$fact*$i;
}
echo "Factorial is   ",$fact;
?>