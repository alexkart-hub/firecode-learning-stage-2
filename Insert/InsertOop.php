<?php 
if($connection -> real_connect($server,$user,$password,$db)){
    echo"<br>Соединились с базой данных $db.<br>";
}
$query = "INSERT INTO users (name,surname,password)
    VALUES ('Александр','Картавцев','12345')
";

if($connection->query($query)===true){
    echo "Данные внесены успешно! (OOP)<br>";
    echo "Последний id: ". $connection -> insert_id;
} else {
    echo "Ошибка внесения данных (OOP): ".$connection->error;
}