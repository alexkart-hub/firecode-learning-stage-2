<?php 
$query = "UPDATE guest SET name = 'Василий', surname = 'Иванов', password = 'pass777' WHERE id = 15";
try{
    $connection->exec($query);
    echo "Данные успешно обновлены!!! (PDO)";
}
catch(PDOException $e){
    echo "Ошибка: ".$e-> getMessage();
}