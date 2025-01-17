<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MySQL conn</title>
</head>
<body>
    <h2>This is 2nd page for php conn</h2>
    <?php
// db_connect.php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "advertisment_center";
/*
// Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } else {
        echo "Connection to MySQL had sucessfully executed";
    }
    */
    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        echo "Connection Successful.";
    } catch (PDOException $e) {
        echo "Connection failed.". $e->getMessage();
    }
    ?>
</body>
</html>