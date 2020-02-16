<?php

$query = "INSERT INTO guest (name,surname,password)
    VALUES ('Алекс','Карт','55555')
";

try {
    $connection->exec($query);
    echo "Данные внесены успешно!<br>";
    echo "Последний id: ".$connection -> lastInsertId();
} catch (PDOException $e) {
    echo "<br>Ошибочка: " . $e->getMessage() . "<br>";
}

