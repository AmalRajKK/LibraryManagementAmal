<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Information On Books Available</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@tabler/core@latest/dist/css/tabler.min.css">
    <link rel="stylesheet" href="style.css">

</head>

<body>
    <ul class="ul">
        <li class="lileft"><a class="active" href="index.html">HOME</a></li>
        <li class="lileft"><a href="#index.html">ABOUT</a></li>
        <li class="lileft"><a href="#index.html">CONTACT</a></li>
        <li class="liright"><a class="active" href="index.html">LOGOUT</a></li>
    </ul>
    <div class="table-responsive">
        <h2 style="text-align: center;">Information On Books Available</h2>

        <?php
        $serverName = "localhost";
        $userName = "root";
        $password = "root";
        $dbName = "library_management";

        $connection = new mysqli($serverName, $userName, $password, $dbName);


        if ($connection->connect_error) {
            die("Connection failed: " . $connection->connect_error);
        }

        $sql = file_get_contents(__DIR__ . '/queries/01-item-details-and-management/01-Item_Details.sql');

        $result = $connection->query($sql);

        if ($result->num_rows > 0) {

            echo '<table class="table table-vcenter">';
            echo '<thead>';
            echo '<tr class="text-secondary">';
            while ($column = $result->fetch_field()) {
                echo '<th class="text-secondary">' . $column->name . '</th>';
            }
            echo '</tr>';
            echo '</thead>';
            echo '<tbody>';
            while ($row = $result->fetch_assoc()) {
                echo '<tr class="text-secondary">';
                foreach ($row as $value) {
                    echo '<td class="text-secondary">' . $value . '</td>';
                }
                echo '</tr>';
            }

            echo '</tbody>';
            echo '</table>';
        } else {
            echo "0 results";
        }
        $connection->close();
        ?>
    </div>
</body>

</html>
