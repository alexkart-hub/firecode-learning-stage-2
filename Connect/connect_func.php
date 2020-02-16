<?php 
// - Функциональный подход
// -----------------------

// $connection = mysqli_connect($server,$user,$password,$db);
$connection = mysqli_connect($server,$user,$password);

if(!$connection){
    die('Ошибка подключения: '.mysqli_connect_error());
}
echo "Подключение прошло успешно! (func)";