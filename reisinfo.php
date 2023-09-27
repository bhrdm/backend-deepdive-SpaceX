<?php
include 'connector.php';
session_start();
$_SESSION["loggedInUser"];

if (isset($_POST["inlog"])) {
    $_SESSION["vertrek"] = $_POST["vertrek"];
    $_SESSION["aankomst"] = $_POST["aankomst"];
    $_SESSION["datum"] = $_POST["datum"];

    header('Location: keuzevlucht.php');
    exit;
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="reisinfo.css">
</head>
<body>
<div class="container">
    <H1>vluchten</H1>
    <form action="reisinfo.php" method="post">
        <label for="vertrek">vertrek locatie</label>
        <select name="vertrek" id="departure">
            <option value="Amsterdam">Amsterdam</option>
            <option value="New york">New york</option>
            <option value="Sydney">Sydney</option>
            <option value="Tokyo">Tokyo</option>
            <option value="Dubai">Dubai</option>
        </select>

        <label for="aankomst">aankomst locatie</label>
        <select name="aankomst" id="arrival">
            <option value="Amsterdam">Amsterdam</option>
            <option value="New york">New york</option>
            <option value="Sydney">Sydney</option>
            <option value="Tokyo">Tokyo</option>
            <option value="Dubai">Dubai</option>
        </select>

        <label for="datum">Datum</label>
        <input type="date" name='datum'>

        <button type="submit" value="Book Now" name="inlog">Login</button>
    </form>
</div>
</body>
</html>