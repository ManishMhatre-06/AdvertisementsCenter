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

    $admin_emailid = $_POST['admin_emailid'];
    $admin_password = $_POST['admin_password'];

    echo "{$admin_emailid} and {$admin_password}";

    $sql = "SELECT * FROM admin_table WHERE admin_emailid = '$admin_emailid'";
    $result = $conn->query($sql);
    
    // Check if a row exists
    if ($result->num_rows > 0) {
        // Fetch the row
        $row = $result->fetch_assoc();
    
        // Verify password (replace with secure password hashing method)
        if ($admin_password === $row['admin_password']) {
            
            
            // Successful login
            session_start();
            $_SESSION['admin_id'] = $row['admin_id']; // Store admin ID in session
            //header("Location: admin_dashboard.php"); // Redirect to dashboard
            exit();
        } else {
            // Incorrect password
            echo "Incorrect password.";
        }
    } else {
        // User not found
        echo "User not found.";
    }
    
    $conn->close();
    ?>
</body>
</html>