<?php
include 'connector.php';
session_start();

$sql = $pdo->prepare("SELECT * FROM verkochten_tickets WHERE id = :id");
$sql->bindParam("id", $_SESSION["id_vlucht"]);
$sql->execute();
$Resultaat = $sql->fetchAll();
$persoon = $Resultaat;

echo $Resultaat[0]['id'];

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<label for="name">Name:</label>
<p><?php echo $Resultaat[0]['name'] ?></p>

<label for="name">Surname:</label>
<p><?php echo $Resultaat[0]['surname'] ?></p>

<label for="name">Departure locatie:</label>
<p><?php echo $Resultaat[0]['vertrek_locatie'] ?></p>

<label for="name">Arrival locatie:</label>
<p><?php echo $Resultaat[0]['aankomst_locatie'] ?></p>

<label for="name">Departure time:</label>
<p><?php echo $Resultaat[0]['vertrek_tijd'] ?></p>

<label for="name">Arrival time:</label>
<p><?php echo $Resultaat[0]['aankomst_tijd'] ?></p>

<label for="name">Arrival locatie:</label>
<p><?php echo $Resultaat[0]['aankomst_locatie'] ?></p>

<label for="name">luggage:</label>
<p><?php echo $Resultaat[0]['baggage'] ?></p>

<label for="name">Date:</label>
<p><?php echo $Resultaat[0]['datum'] ?></p>

<label for="name">Total Price:</label>
<p><?php echo $Resultaat[0]['prijs'] ?></p>

<form action="bevestiging.php">
    <input type="submit" value="Send">
</form>

</body>
</html>