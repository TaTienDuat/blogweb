<?php
define('DB_SERVER','db');
define('DB_USER','root');
define('DB_PASS' ,'example');
define('DB_NAME','blog');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>