<?php
 mysql_connect("localhost","root","");
 mysql_select_db("mechanic");

 $q=mysql_query("SELECT * FROM mechanic_details");
 while($row=mysql_fetch_assoc($q))
    $json_output[]=$row;

 print(json_encode($json_output));

 mysql_close();

 ?>