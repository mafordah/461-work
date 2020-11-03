<!DOCTYPE html>
<html>
  <head>
    <title>PHP Test</title>
    <link rel="stylesheet" href="./index.css">
    <link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans&display=swap" rel="stylesheet">
  </head>
  <body>
    <?php
      $firstName = "";
      $lastName = "";
      $email = "";
      $phone = "";

      if ($_SERVER["REQUEST_METHOD"] == "POST") {
        if (!empty($_POST["txtFirstName"])) {
          $firstName = $_POST["txtFirstName"];
        }else{
          echo("*first name is required ");
        }

        if (!empty($_POST["txtLastName"])) {
          $lastName = $_POST["txtLastName"];
        }else{
          echo("*last name is required ");
        }

        $email = $_POST["txtEmail"];
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
          echo ("*invalid email ");
        }
        $phone = $_POST["txtPhone"];
        if (!filter_var($phone, FILTER_SANITIZE_NUMBER_INT)) {
          echo ("*invalid phone number ");
        }

        $sql = 'CALL insertNewUser( :firstname, :lastname, :gamertag, :email, :PWD, :phone)'
        $stmt = $dbh->prepare($sql)
        VALUES (:firstname, :lastname, :gamertag, :email, :PWD, :phone)");
        $stmt->bindParam(':firstname', $txtFirstName);
        $stmt->bindParam(':lastname', $txtLastName);
        $stmt->bindParam(':gamertag', $txtGamerTag);
        $stmt->bindParam(':email', $txtEmail);
        $stmt->bindParam(':PWD', $txtPassword);
        $stmt->bindParam(':phone', $txtPhone);
        $stmt->execute();
      }
    ?>
    <div class="form">
      <h2 class="formItem">Welcome to Griz eSports</h2>
      <form id="formRegistration" class="form-scroll" action="register.php" method="POST">
        <div class="form-group">
          <div class="form-group-item">
            <label>First Name</label>
            <input type="text" id="txtFirstName" name="txtFirstName" value="<?php echo ($firstName) ?>">
          </div>
          <div class="form-group-item">
            <label>Last Name</label>
            <input type="text" id="txtLastName" name="txtLastName" value="<?php echo ($lastName) ?>">
          </div>
        </div>
        <br />
        <label>Gamer Tag</label>
        <input type="text" id="txtGamerTag" name="txtGamerTag">
        <br /><br />
        <label>Email</label>
        <input type="text" id="txtEmail" name="txtEmail" value="<?php echo ($email) ?>">
        <br />
        <label>Password</label>
        <input type="text" id="txtPassword" name="txtPassword">
        <br />
        <label>Comfirm Password</label>
        <input type="text" id="txtComfirmPassword">
        <br /><br />
        <label>Phone</label>
        <input type="text" id="txtPhone" name="txtPhone">
        <br /><br />
        <label>Address</label>
        <input type="text" id="txtStreetName1" name="txtStreetName1">
        <br />
        <input type="text" id="txtStreetName2" name="txtStreetName2">
        <br />
        <div class="form-group">
          <div class="form-group-item city">
            <label>City</label>
            <input type="text" id="txtCity" name="txtCity">
          </div>
          <div class="form-group-item state">
            <label>State</label>
            <!--<input type="text" id="txtState" name="txtState" maxlength="2">-->
            <select>
            	<option value="AL">Alabama</option>
            	<option value="AK">Alaska</option>
            	<option value="AZ">Arizona</option>
            	<option value="AR">Arkansas</option>
            	<option value="CA">California</option>
            	<option value="CO">Colorado</option>
            	<option value="CT">Connecticut</option>
            	<option value="DE">Delaware</option>
            	<option value="DC">District Of Columbia</option>
            	<option value="FL">Florida</option>
            	<option value="GA">Georgia</option>
            	<option value="HI">Hawaii</option>
            	<option value="ID">Idaho</option>
            	<option value="IL">Illinois</option>
            	<option value="IN">Indiana</option>
            	<option value="IA">Iowa</option>
            	<option value="KS">Kansas</option>
            	<option value="KY">Kentucky</option>
            	<option value="LA">Louisiana</option>
            	<option value="ME">Maine</option>
            	<option value="MD">Maryland</option>
            	<option value="MA">Massachusetts</option>
            	<option value="MI">Michigan</option>
            	<option value="MN">Minnesota</option>
            	<option value="MS">Mississippi</option>
            	<option value="MO">Missouri</option>
            	<option value="MT">Montana</option>
            	<option value="NE">Nebraska</option>
            	<option value="NV">Nevada</option>
            	<option value="NH">New Hampshire</option>
            	<option value="NJ">New Jersey</option>
            	<option value="NM">New Mexico</option>
            	<option value="NY">New York</option>
            	<option value="NC">North Carolina</option>
            	<option value="ND">North Dakota</option>
            	<option value="OH">Ohio</option>
            	<option value="OK">Oklahoma</option>
            	<option value="OR">Oregon</option>
            	<option value="PA">Pennsylvania</option>
            	<option value="RI">Rhode Island</option>
            	<option value="SC">South Carolina</option>
            	<option value="SD">South Dakota</option>
            	<option value="TN">Tennessee</option>
            	<option value="TX">Texas</option>
            	<option value="UT">Utah</option>
            	<option value="VT">Vermont</option>
            	<option value="VA">Virginia</option>
            	<option value="WA">Washington</option>
            	<option value="WV">West Virginia</option>
            	<option value="WI">Wisconsin</option>
            	<option value="WY">Wyoming</option>
            </select>
          </div>
          <div class="form-group-item zip">
            <label>Zip Code</label>
            <input type="number" id="txtZipCode" name="txtZipCode">
          </div>
        </div>
        <br /><br />
          <input type="checkbox" ID="chGame1" runat="server" group="games"> Apex Legends</input> <br />
          <input type="checkbox" ID="chGame2" runat="server" group="games"> Fortnite</input> <br />
          <input type="checkbox" ID="chGame3" runat="server" group="games"> League of Legends</input> <br />
          <input type="checkbox" ID="chGame4" runat="server" group="games"> Overwatch</input> <br />
          <input type="checkbox" ID="chGame5" runat="server" group="games"> Rocket League</input> <br />
          <input type="checkbox" ID="chGame6" runat="server" group="games"> Super Smash Bros</input> <br />
          <input type="checkbox" ID="chGame7" runat="server" group="games"> Tekken</input> <br />
          <input type="checkbox" ID="chGame8" runat="server" group="games"> Tetris</input> <br />
          <input type="checkbox" ID="chGameOther" runat="server" group="games"> Other (please specify)</input>
          <input type="text" ID="txtGameOther" runat="server" Width="50%" Style="min-width: 400px"></input>
        <br /><br />
        <label>I have read and agreed to the <a href="https://www.umt.edu/safety/policies/default.php#:~:text=The%20Student%20Conduct%20Code%20governs,citizenship%20in%20our%20academic%20community.">Student Code of Conduct</a></label>
        <input type="checkbox" id="chConduct" name="chConduct" value="yes"></input>
        <br /> <br />
        <label>Subscribe to email communication</label>
        <input type="checkbox" id="chSubscribe" name="chSubscribe" value="yes" checked="checked"></input>
        <br /> <br />
        <button type="submit" name="submit" value="Submit">Register</button>
      </form>
      <div class="form-item">
        <p>Already registered? <a href='./index.html'>Login</a></p>
      </div>
    </div>
  </body>
</html>
