<?php 
$sql = "CREATE DATABASE newDB";
if(mysqli_query($connection,$sql)===true){
    echo "База данных создана успешно! (func)";
} else {
    echo "Ошибка создания базы данных (func): ".mysqli_error($connection);
}
// mysqli_close($connection);