<?php
include 'connector.php';
session_start();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="loginn.css">
    <title></title>

</head>
<body>

  
<div class="container">
     <br><br> <br><br>
    <form action="inlog.php" method="post">
     
    <label for="id_persoon"><b>vul hier jouw jouw unieke id in</b></label>
    <input type="text" placeholder="id" name="id_persoon">
           

    <label for="email"><b>vul hier jouw email in</b></label>
    <input type="text" placeholder="email" name="email">
          


        <button type="submit" value="Book Now" name="inlog">Login</button>
    </form>
</div>
<?php
    $error = '';
    if (isset($_POST["inlog"])) {
            $_SESSION["id_persoon"] = $_POST["id_persoon"];
            $_SESSION["email"] = $_POST["email"];
            
            $sql = $pdo->prepare("SELECT * FROM id_spacex WHERE id_persoon = :id_persoon AND email= :email ");
            $sql->bindParam("id_persoon", $_POST["id_persoon"]);
            $sql->bindParam("email", $_POST["email"]);
            $sql->execute();
            $Resultaat = $sql->fetchAll();

        if (count($Resultaat) > 0) {
            $_SESSION["loggedInUser"] = $Resultaat[0]['id'];
            $gebruiker = $_SESSION["loggedInUser"];
            
            header('Location: reisinfo.php');
            exit;
        } else {
          
           
            echo '<span style="color:#FF0000;text-align:center;">id of email is ongeldig</span>';

        } 
    }
    ?>
</body>
</html>
<?php
?>