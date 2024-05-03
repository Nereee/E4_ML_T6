<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db_spoty";

$username = $_POST["erabiltzaile"];
$password = $_POST["pasahitza"];

try {
    $mysqli = new mysqli($servername, $username, $password, $db);
    header("Location: ../html/hasiera.html");
    exit;

} catch (mysqli_sql_exception $e) {
    echo '<script>
           alert("Erabiltzaile edo pasahitza txarto sartu duzu");
           window.location.href = "../index.html";
        </script>';
    die("Connection failed: " . $e->getMessage());
}

?>