<?php


$s1=$_REQUEST["s1"];
$s2=$_REQUEST["s2"];
$s3=$_REQUEST["s3"];



$con=mysql_connect("localhost","root","");

mysql_select_db("mechanics",$con);

$sql="insert into customer_details values('$s1',curdate(),curtime(),'$s2','$s3')";

mysql_query($sql);
echo "one rec inserted";




?>