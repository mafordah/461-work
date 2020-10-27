<!DOCTYPE html>
<html>
  <head>
    <title>PHP Test</title>
    <link rel="stylesheet" href="./index.css">
  </head>
  <body>
    <div class="form">
      <?php

        //$gamerTag =  $_POST['txtGamerTag'];
        if (!isset($_COOKIE['gamerTag'])){
          echo ("Your information is not saved under this address. Please register ");
        } else {
          echo ("Welcome back, " . $_COOKIE['gamerTag']);
        }

        $_SESSION["email"] = $_POST['txtEmail'];
        echo $_SESSION["email"] . " with Griz eSports";
      ?>

    </div>
  </body>
</html>
