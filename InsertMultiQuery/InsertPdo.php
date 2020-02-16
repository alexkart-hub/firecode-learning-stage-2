<?php
try {
    $connection -> beginTransaction();
    $connection->exec("INSERT INTO guest (name,surname,password) VALUES ('Ал001','Карт001','55555001')");
    $connection->exec("INSERT INTO guest (name,surname,password) VALUES ('Ал002','Карт002','55555002')");
    $connection->exec("INSERT INTO guest (name,surname,password) VALUES ('Ал003','Карт003','55555003')");
    $connection -> commit(); // - выход из режима транзакции в режим автоматической фиксации
    echo "Данные внесены успешно!<br>";
} catch (PDOException $e) {
    $connection -> rollBack(); // - Возвращает базу данных в режим автоматической фиксации
    echo "<br>Ошибочка: " . $e->getMessage() . "<br>";
}
