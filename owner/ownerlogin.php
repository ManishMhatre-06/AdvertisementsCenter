<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login page</title>
</head>
<body>
    <?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "advertisment_center";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } else {
        echo "Connection to MySQL had sucessfully executed";
    }

    $owner_emailid = $_POST['owner_emailid'];
    $owner_password = $_POST['owner_password'];

    echo "{$owner_emailid} and {$owner_password}<br>";

    $sql = "SELECT * FROM owner_table WHERE owner_emailid = '$owner_emailid'";
    $result = $conn->query($sql);
    
    // Check if a row exists
    if ($result->num_rows > 0) {
        // Fetch the row
        $row = $result->fetch_assoc();
    
        // Verify password (replace with secure password hashing method)
        if ($owner_password === $row['owner_password']) {
            
            // Successful login
            session_start();
            $_SESSION['owner_id'] = $row['owner_id']; // Store owner ID in session
            //header("Location: owner_dashboard.php"); // Redirect to dashboard
            exit();
        } else {
            echo "Incorrect password.";
        }
    } else {
        echo "User not found.";
    }
    
    $conn->close();
    ?>
</body>
</html>