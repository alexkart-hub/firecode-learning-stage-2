<?php
$sql = "CREATE DATABASE $db";
if ($connection->exec($sql)) {
    echo "База данных создана успешно! (PDO)";
} else {
    echo "Ошибка: ".$connection -> errorInfo();
}
