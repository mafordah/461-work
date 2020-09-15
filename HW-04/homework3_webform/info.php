<!DOCTYPE html>
<html>
  <head>
    <title>PHP Test</title>
    <link rel="stylesheet" href="./index.css">
  </head>
  <body>
    <div class="form">
      <?php
        $firstName =  $_POST['txtFirstName'];
        $gamerTag = $_POST['txtGamerTag'];
        $email = $_POST['txtEmail'];
        setcookie ("gamerTag", $gamerTag, time() + (86400*14), "/");
        if ($_GET['firstTime'] = true){
          echo ("Welcome to eSports, " . $firstName . " (" . "$gamerTag" . ")<br /><br />");
        };
        echo ("<strong>Email: </strong>" . $email . "<br /><br />");
        echo ("<strong>Address: </strong>" . $_POST['txtAddress'] . ", " . $_POST['txtCity'] . ", " . $_POST['txtState']. " " . $_POST['txtZipCode']. "<br /><br />");
        echo ("<strong>Phone: </strong>" . $_POST['txtPhone'] . "<br /><br />");
      ?>
    </div>
  </body>
</html>
