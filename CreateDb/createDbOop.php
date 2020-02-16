<?php 
$sql = "CREATE DATABASE newDB";
if($connection->query($sql)===true){
    echo "База данных создана успешно! (OOP)";
} else {
    echo "Ошибка создания базы данных (OOP): ".$connection->error;
}