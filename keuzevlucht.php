<?php
include 'connector.php';
session_start();
$_SESSION["loggedInUser"];

$_SESSION["vertrek"];
$_SESSION["aankomst"];
$_SESSION["datum"];

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="overzicht.css">
    <title>Document</title>
</head>
<body>
    <?php
    $sql = $pdo->prepare("SELECT * FROM vluchten WHERE vertrek_locatie = :vertrek AND aankomst_locatie = :aankomst");
    $sql->bindParam("vertrek", $_SESSION["vertrek"]);
    $sql->bindParam("aankomst", $_SESSION["aankomst"]);
    $sql->execute();
    $Resultaat = $sql->fetchAll();
    $vluchten = [];
    $vluchten =  $Resultaat;

    echo $Resultaat[0]['id'];
    
    $dayname = date('l', strtotime($_SESSION["datum"]));

    for ($x = 0; $x <= 6; $x++) {
        if ($vluchten[$x]['datum'] == $dayname) {
            ?>
                <div class="container">
		            <div class="flight">
			            <h2><?php echo $vluchten[$x]['vertrek_locatie'] ?> -> <?php echo $vluchten[$x]['aankomst_locatie'] ?></h2>
			            <p>Time: <?php echo $vluchten[$x]['vertrek_tijd'] ?> - <?php echo $vluchten[$x]['aankomst_tijd'] ?> </p>
			            <p>Price: <?php echo $vluchten[$x]['prijs'] ?></p>
                        <form action="gegevens.php">
                            <button type="submit" name='ticket'>Book now</button>
                        </form>
		            </div>
                </div>
            <?PHP
            $_SESSION['prijs'] = $vluchten[$x]['prijs'];
            $_SESSION["ticket_id"] = $vluchten[$x]['id'];
            $_SESSION['vertrek_tijd'] = $vluchten[$x]['vertrek_tijd'];
            $_SESSION['aankomst_tijd'] = $vluchten[$x]['aankomst_tijd'];
            break;
        }
    }

    ?>
</body>
</html>