<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db_spoty";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("La conexión a la base de datos ha fallado: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["erabiltzaile"];
    $password = $_POST["pasahitza"];

    $sql = "SELECT * FROM bezeroa WHERE Erabiltzailea = '$username' AND Pasahitza = '$password'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        header("Location: ../html/hasiera.html");
        exit;
    } else {
        header("Location: ../index.html?error=invalid_credentials");
        exit;
    }
}
$conn->close();
?>
