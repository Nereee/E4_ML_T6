<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db_spoty";

$username = $_POST["erabiltzaile"];
$password = $_POST["pasahitza"];

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Erabiltzaile eta pasahitza ez dute bat egiten: " . $conn->connect_error);
}
else {
    header("Location: ../html/hasiera.html");
    exit;
}

$conn->close();
?>