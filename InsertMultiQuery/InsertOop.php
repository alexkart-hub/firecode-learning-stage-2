<?php 
if($connection -> real_connect($server,$user,$password,$db)){
    echo"<br>Соединились с базой данных $db.<br>";
}

$query = "INSERT INTO users (name,surname,password)
    VALUES ('Александр1','Картавцев1','12345');
";
$query .= "INSERT INTO users (name,surname,password)
    VALUES ('Александр2','Картавцев2','54321');
";
$query .= "INSERT INTO users (name,surname,password)
    VALUES ('Сандр2','Авцев2','00000');
";
if($connection->multi_query($query)===true){ // - вместо $connection -> query()
    echo "Данные внесены успешно! (OOP)<br>";
} else {
    echo "Ошибка внесения данных (OOP): ".$connection->error;
}