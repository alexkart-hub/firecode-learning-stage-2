<?php
try {
    $connection->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    $table_name = 'guest';
    $query = "CREATE TABLE $table_name (
        id int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
        name VARCHAR(30) NOT NULL,
        surname VARCHAR(30) NOT NULL,
        password VARCHAR(30) NOT NULL)
    ";
   
    $connection -> exec($query);
    echo "<br>Таблица $table_name создана успешно!<br>";
} catch (PDOException $e) {
    echo "<br>Ошибочка: " . $e->getMessage() . "<br>";
}
$connection = null;