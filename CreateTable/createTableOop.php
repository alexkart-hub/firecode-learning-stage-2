<?php 
if($connection -> real_connect($server,$user,$password,$db)){
    echo"<br>Соединились с базой данных $db.<br>";
}
// $table_name = 'users';
// $query = "CREATE TABLE vendors (
//     vendor_id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
//     vendor_name VARCHAR(255) NOT NULL,
//     vendor_address VARCHAR(255) NOT NULL,
//     vendor_phone_number VARCHAR(30) NOT NULL);
// ";
$query .= "CREATE TABLE supply (
    supply_id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    product_id INT(11) NOT NULL,
    vendor_id INT(11) NOT NULL,
    purchase_quantity INT(11) NOT NULL,
    purchase_price decimal(15,2) NOT NULL);
";
$query .= "CREATE TABLE products (
    product_id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    warehouse_id INT(11) NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    product_price decimal(15,2) NOT NULL);
";
$query .= "CREATE TABLE warehouses (
    warehouse_id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    warehouse_name VARCHAR(255) NOT NULL);
";
$query .= "CREATE TABLE sales (
    sale_id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    product_id INT(11) NOT NULL,
    staff_id INT(11) NOT NULL,
    shopper_id INT(11) NOT NULL,
    sale_date DATETIME NOT NULL,
    sale_quantity INT(11) NOT NULL,
    warranty_end_date DATETIME,
    sale_total decimal(15,2) NOT NULL);
";
$query .= "CREATE TABLE shoppers (
    shopper_id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    shopper_full_name VARCHAR(255) NOT NULL,
    shopper_address VARCHAR(255) NOT NULL,
    shopper_phone_number VARCHAR(255),
    shopper_email VARCHAR(100));
";
$query .= "CREATE TABLE staffers (
    staff_id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    position_id INT(11) NOT NULL,
    staff_full_name VARCHAR(255) NOT NULL,
    staff_salary decimal(10,2) NOT NULL,
    staff_phone_numbe VARCHAR(255));
";
$query .= "CREATE TABLE positions (
    position_id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    position_name VARCHAR(255) NOT NULL);
";
if($connection->multi_query($query)===true){
    echo "Таблицы созданы успешно! (OOP)";
} else {
    echo "Ошибка создания таблицы (OOP): ".$connection->error;
}