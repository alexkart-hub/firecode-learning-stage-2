<?php 
$query = "SELECT * FROM guest";
try{
    $result = $connection->query($query);
    foreach($result as $row){
        echo "id: " . $row["id"] . "; name: " . $row["name"] . "; surname: " . $row["surname"] . "; password: " . $row["password"] . ";<br>";
    }
    echo "<hr><br>";
    $result = $connection->prepare($query);
    $result -> execute();
    if($result){
        while($row = $result -> fetch(PDO::FETCH_ASSOC)){ 
        echo "id: " . $row["id"] . "; name: " . $row["name"] . "; surname: " . $row["surname"] . "; password: " . $row["password"] . ";<br>";
        }
    }
    echo "<hr>";
}
 catch(PDOException $e) {
    echo "Ошибка: " . $e->getMessage();
}
