<?php
if($connection -> real_connect($server,$user,$password,$db)){
    echo"<br>Соединились с базой данных $db.<br>";
}
// -----------------------------------------------------------
// $query = "UPDATE users SET name = 'Юрик', surname = 'Юрьев', password = 'pass123' WHERE id = 12";
$query = "REPLACE INTO users VALUES
(1,'Петр','Петров','s24rg3fgerg'),
(13,'John','Petterson','55g4r84h56')
";
if($connection -> query($query)){
    echo "Данные в таблице users обновлены успешно! (OOP)";
} else {
    echo "Ошибка при обновлении данных: ".$connection -> error;
}