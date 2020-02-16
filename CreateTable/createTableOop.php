<?php 
if($connection -> real_connect($server,$user,$password,$db)){
    echo"<br>Соединились с базой данных $db.<br>";
}
$table_name = 'users';
$query = "CREATE TABLE $table_name (
    id int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(30) NOT NULL,
    surname VARCHAR(30) NOT NULL,
    password VARCHAR(30) NOT NULL)
";
if($connection->query($query)===true){
    echo "Таблица $table_name создана успешно! (OOP)";
} else {
    echo "Ошибка создания таблицы (OOP): ".$connection->error;
}