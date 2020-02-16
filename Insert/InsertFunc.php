<?php 
if(mysqli_real_connect($connection,$server,$user,$password,$db)){
    echo"<br>Соединились с базой данных $db.<br>";
}
$query = "INSERT INTO staff (name,surname,password)
    VALUES ('Александр','Картавцев','54321')
";

if(mysqli_query($connection,$query)===true){
    echo "Данные внесены успешно! (Func)<br>";
    echo "Последний id: ".mysqli_insert_id($connection);
} else {
    echo "Ошибка внесения данных (Func): ".mysqli_error($connection);
}