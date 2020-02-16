<?php 
if(mysqli_real_connect($connection,$server,$user,$password,$db)){
    echo"<br>Соединились с базой данных $db.<br>";
}
$query = "INSERT INTO staff (name,surname,password)
    VALUES ('Александр','Картавцев','54321');
";
$query .= "INSERT INTO staff (name,surname,password)
    VALUES ('Алек1','Карт1','543');
";
$query .= "INSERT INTO staff (name,surname,password)
    VALUES ('Алек2','Карт2','321');
";
if(mysqli_multi_query($connection,$query)===true){ // - вместо mysqli_query
    echo "Данные внесены успешно! (Func)<br>";
} else {
    echo "Ошибка внесения данных (Func): ".$connection->error;
}