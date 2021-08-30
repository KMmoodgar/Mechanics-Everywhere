<?php


$s1=$_REQUEST["s1"];
$s2=$_REQUEST["s2"];
$s3=$_REQUEST["s3"];
$s4=$_REQUEST["s4"];
$s5=$_REQUEST["s5"];
$s6=$_REQUEST["s6"];
$s7=$_REQUEST["s7"];


$con=mysql_connect("localhost","root","");

mysql_select_db("mechanic",$con);

$sql="update customer_info set name='$s2',email_id='$s3',mobileno='$s4',vehicle_no='$s5',type='$s6',make='$s7' where customer_id='$s1' ";

mysql_query($sql);
echo "one record updated";




?>