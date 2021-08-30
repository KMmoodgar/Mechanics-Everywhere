<?php

   $cn=mysql_connect("localhost","root",""); // host, username, password...
    mysql_select_db("mechanic"); // db name...
	 
	
$username=$_REQUEST['s1'];

$password=$_REQUEST['s2'];


	 
	$r="select * from login where username='$username'  and password='$password' ";
	$result=mysql_query($r);
	while($row=mysql_fetch_array($result))
	{
		
		$type=$row['type'];
echo $type;
	}
       	

	//close($con);
?>
