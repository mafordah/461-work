<html>
<head>
</head>
<body>
  <?php
    require('mysqliconnection.php');
    require('pdoconnection.php');

    try {
      $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
      
      // execute the stored procedure
      $sql = 'CALL getAllUsers()';
      
      // call the stored procedure
      $q = $pdo->query($sql);
      $q->setFetchMode(PDO::FETCH_ASSOC);
  
    } catch (PDOException $e) {
      die("Error occurred:" . $e->getMessage());
    }
  
    while ($r = $q->fetch()) {
      echo $r['firstname'] . $r['lastname'] . "<br />";
    }
  ?>
</body>
</html>
