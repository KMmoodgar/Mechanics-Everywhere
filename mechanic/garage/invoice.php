<?php


$s1=$_REQUEST["s1"];
$s2=$_REQUEST["s2"];
$s3=$_REQUEST["s3"];
$s4=$_REQUEST["s4"];
$s5=$_REQUEST["s5"];


$con=mysql_connect("localhost","root","");

mysql_select_db("mechanic",$con);

$sql="insert into invoice values('$s1','$s2','$s3','$s4','$s5')";

mysql_query($sql);
echo "one rec inserted";




?>