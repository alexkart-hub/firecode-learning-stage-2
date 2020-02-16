<?php
// - PDO
// -----

try {
    $connection = new PDO("mysql:host=$server;dbname=$db", $user, $password);
    echo "Подключение прошло успешно! (PDO)<br>";
} catch (PDOException $e) {
    echo "Ошибка подключения: " . $e->getMessage() . "<br>";
}
