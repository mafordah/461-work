<?php
    $host = "localhost"; 
    $db = "esports";
    $user = "root";
    $pass = "mart461";
    $dsn = "mysql:host=$host;dbname=$db";
    
    $cn=new PDO($dsn, $user, $pass);
  ?>