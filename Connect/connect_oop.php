<?php
// - Объектно-ориентированный подход
// ---------------------------------

// $connection = new mysqli($server,$user,$password,$db);
$connection = new mysqli($server,$user,$password);

if($connection -> connect_error){
    die('Ошибка подключения: '.$connection->connect_error);
}
echo "Подключение прошло успешно! (OOP)";