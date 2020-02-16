<?php 
if( mysqli_real_connect($connection,$server,$user,$password,$db)){
    echo"<br>Соединились с базой данных $db.<br>";
}
// -----------------------------------------------------------
$query = "SELECT * FROM staff";
$result = mysqli_query($connection,$query);
echo "<pre>$query</pre>";
if ($result) {
    while ($row = mysqli_fetch_assoc($result)) {
        echo "id: " . $row["id"] . "; name: " . $row["name"] . "; surname: " . $row["surname"] . "; password: " . $row["password"] . ";<br>";
    }
}
mysqli_free_result($result);
echo "<hr>";