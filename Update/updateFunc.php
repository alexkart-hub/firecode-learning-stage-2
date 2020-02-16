<?php 
if(mysqli_real_connect($connection,$server,$user,$password,$db)){
    echo"<br>Соединились с базой данных $db.<br>";
}
$query = "UPDATE staff SET name = 'Жека', surname = 'Жохов', password = 'pass007' WHERE id = 10";

if(mysqli_query($connection,$query)===true){
    echo "Данные были успешно обновлены! (Func)<br>";
} else {
    echo "Ошибка изменения данных (Func): ".mysqli_error($connection);
}