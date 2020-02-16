<?php
if($connection -> real_connect($server,$user,$password,$db)){
    echo"<br>Соединились с базой данных $db.<br>";
}
// -----------------------------------------------------------
$query = "SELECT * FROM users";
$result = $connection->query($query);
echo "<pre>$query</pre>";
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "id: " . $row["id"] . "; name: " . $row["name"] . "; surname: " . $row["surname"] . "; password: " . $row["password"] . ";<br>";
    }
    $result->free();
}
echo "<hr>";
