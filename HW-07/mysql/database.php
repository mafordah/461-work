<html>
<body>
  <?php
    $servername = "localhost";
    $username = "root";
    $password = "mart461";
    $dbname = "esports";

    $conn = new mysqli($servername, $username, $password. $dbname);

    if ($conn->connect_error){
      die("Connection failed:" . $conn->connect_error);
    }
    echo "Connected successfully";

    $sql = "SELECT userid, firstName, lastName FROM users ORDER BY name";

    $result = $conn->query($sql);

    if($result ->num_rows > 0){
      while ($row = $result->fetch_assoc()){
        echo "ID: " . $row["userid"] . "First Name: " . $row["firstName"] . "Last Name: " . $row["lirstName"] . "<br />";
      }
    } else {
      echo "0 results";
    }
    $conn->close();
  ?>

