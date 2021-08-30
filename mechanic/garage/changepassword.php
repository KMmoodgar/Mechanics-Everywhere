<?php


$s1=$_REQUEST["s1"];
$s2=$_REQUEST["s2"];
$s3=$_REQUEST["s3"];
$s4=$_REQUEST["s4"];

$con=mysql_connect("localhost","root","");

mysql_select_db("mechanic",$con);

$sql="select * from login where username='$s4' and password='$s1'";

$rs=mysql_query($sql);
if($rs)
{
if($s2==$s3)
{

$sql1="update login set password='$s3' where username='$s4'";
mysql_query($sql1);
echo"password changed";
}
else
{
echo "new password and confirmed paswword must be the same";
}
}
else
{
echo "check old password";
}






?>