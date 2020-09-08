<html>
  <head>
    <title>PHP Test</title>
    <link rel="stylesheet" href="./index.css">
  </head>
  <body>
    <div class="form">
      <?php
        $gamerTag =  $_POST['txtGamerTag'];
        echo ("Welcome, " . $gamerTag);
      ?>
    </div>
  </body>
</html>
