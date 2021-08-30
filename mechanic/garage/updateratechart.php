<?php


$s1=$_REQUEST["s1"];
$s2=$_REQUEST["s2"];
$s3=$_REQUEST["s3"];


$con=mysql_connect("localhost","root","");

mysql_select_db("mechanic",$con);

$sql="update rate_chart set name='$s2',rate='$s3' where service_id='$s1' ";

mysql_query($sql);
echo "one rec updated";




?>