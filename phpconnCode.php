<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
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

// Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } else {
        echo "Connection to MySQL had sucessfully executed";
    }
   
// SQL query to fetch all banners
    $sql = "SELECT banner_id, banner_image, banner_area, banner_price FROM banner_table";
    $result = $conn->query($sql);

    ?>
        <h1>Available Banners</h1>

        <table>
            <thead>
                <tr>
                    <th>Banner ID</th>
                    <th>Image</th>
                    <th>Area</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                        ?>
                        <tr>
                            <td><?php echo $row["banner_id"]; ?></td>
                            <td>
                                <img src="<?php echo $row["banner_image"]; ?>" alt="Banner Image" width="100"> 
                            </td>
                            <td><?php echo $row["banner_area"]; ?></td>
                            <td><?php echo $row["banner_price"]; ?></td>
                            <td>
                                <a href="purchase_banner.php?banner_id=<?php echo $row["banner_id"]; ?>">Purchase</a>
                            </td>
                        </tr>
                        <?php
                    }
                } else {
                    ?>
                    <tr><td colspan="5">No banners available.</td></tr>
                    <?php
                }
                ?>
            </tbody>
        </table>
</body>
</html>