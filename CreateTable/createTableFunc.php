<?php 
if(mysqli_real_connect($connection,$server,$user,$password,$db)){
    echo"<br>Соединились с базой данных $db.<br>";
}
$table_name = 'staff';
$query = "CREATE TABLE $table_name (
    id int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(30) NOT NULL,
    surname VARCHAR(30) NOT NULL,
    password VARCHAR(30) NOT NULL)
";
if(mysqli_query($connection,$query)===true){
    echo "Таблица $table_name создана успешно! (Func)";
} else {
    echo "Ошибка создания таблицы (OOP): ".mysqli_error($connection);
}
// mysqli_close($connection);