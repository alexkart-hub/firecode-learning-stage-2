-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 18 2020 г., 20:59
-- Версия сервера: 8.0.15
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `positions`
--

CREATE TABLE `positions` (
  `position_id` int(11) NOT NULL,
  `position_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `positions`
--

INSERT INTO `positions` (`position_id`, `position_name`) VALUES
(1, 'Продавец'),
(2, 'Старший продавец'),
(3, 'Стажер');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`product_id`, `warehouse_id`, `product_name`, `product_price`) VALUES
(1, 2, 'Шкаф', '8963.80'),
(2, 2, 'Стул', '1245.77'),
(3, 2, 'Стол', '8762.39'),
(4, 1, 'Кровать', '15956.41'),
(5, 3, 'Диван', '22456.89'),
(6, 2, 'Кресло', '7659.15'),
(7, 2, 'Комод', '8863.94');

-- --------------------------------------------------------

--
-- Структура таблицы `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `shopper_id` int(11) NOT NULL,
  `sale_date` date NOT NULL,
  `sale_quantity` int(11) NOT NULL,
  `warranty_end_date` date DEFAULT NULL,
  `sale_price` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `sales`
--

INSERT INTO `sales` (`sale_id`, `product_id`, `staff_id`, `shopper_id`, `sale_date`, `sale_quantity`, `warranty_end_date`, `sale_price`) VALUES
(1, 7, 1, 1, '2018-11-02', 1, '2019-11-02', '8863.94'),
(2, 6, 2, 2, '2018-11-07', 2, '2019-11-07', '7659.15'),
(3, 5, 3, 3, '2018-11-08', 1, '2019-11-08', '22456.89'),
(4, 4, 1, 2, '2018-11-10', 1, '2019-11-10', '15956.41'),
(5, 3, 2, 1, '2018-11-11', 1, '2019-11-11', '8762.39'),
(6, 2, 1, 1, '2018-11-12', 4, '2019-11-12', '1245.77'),
(7, 1, 7, 3, '2018-12-01', 3, '2019-12-01', '8963.80'),
(8, 7, 4, 1, '2018-12-03', 1, '2019-12-03', '8863.94'),
(9, 6, 5, 2, '2018-12-05', 1, '2019-12-05', '7659.15'),
(10, 5, 6, 2, '2018-12-08', 2, '2019-12-08', '22456.89');

-- --------------------------------------------------------

--
-- Структура таблицы `shoppers`
--

CREATE TABLE `shoppers` (
  `shopper_id` int(11) NOT NULL,
  `shopper_full_name` varchar(255) NOT NULL,
  `shopper_address` varchar(255) NOT NULL,
  `shopper_phone_number` varchar(255) DEFAULT NULL,
  `shopper_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `shoppers`
--

INSERT INTO `shoppers` (`shopper_id`, `shopper_full_name`, `shopper_address`, `shopper_phone_number`, `shopper_email`) VALUES
(1, 'Иванов Петр Васильевич', 'г. Ростов-на-Дону, ул. Ленина, 85', '+7-333-123-45-67', 'ivanov@anymail.ru'),
(2, 'Петров Иван Васильевич', 'г. Москва, ул. Шаболовка, 38', '+7-999-987-65-43', 'petrov@anymail.ru'),
(3, 'Сидоров Иван Петрович', 'г. Батайск, ул. Московская, 15', '+7-555-777-55-33', 'sidorov@anymail.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `staffers`
--

CREATE TABLE `staffers` (
  `staff_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `staff_full_name` varchar(255) NOT NULL,
  `staff_salary` decimal(10,2) NOT NULL,
  `staff_phone_numbe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `staffers`
--

INSERT INTO `staffers` (`staff_id`, `position_id`, `staff_full_name`, `staff_salary`, `staff_phone_numbe`) VALUES
(1, 2, 'Будько Иван Степанович', '55500.00', '+7-111-222-33-44'),
(2, 1, 'Михалков Никита Сергеевич', '32000.00', '+7-222-123-65-98'),
(3, 1, 'Павлова Светлана Николаевна', '31500.00', '+7-333-564-98-71'),
(4, 1, 'Семенова Екатерина Сергеевна', '29700.00', '+7-444-329-86-12'),
(5, 1, 'Пилипко Валентин Юрьевич', '28000.00', '+7-555-112-34-56'),
(6, 1, 'Сидоров Алексей Сергеевич', '27500.00', '+7-666-777-88-99'),
(7, 3, 'Бирюков Евгений Олегович', '22500.00', '+7-777-987-65-43'),
(8, 3, 'Котов Константин Кириллович', '24500.00', '+7-888-987-78-99');

-- --------------------------------------------------------

--
-- Структура таблицы `supply`
--

CREATE TABLE `supply` (
  `supply_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `purchase_quantity` int(11) NOT NULL,
  `purchase_price` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `supply`
--

INSERT INTO `supply` (`supply_id`, `product_id`, `vendor_id`, `purchase_quantity`, `purchase_price`) VALUES
(1, 1, 1, 2, '6532.18'),
(2, 2, 2, 5, '825.75'),
(3, 3, 2, 1, '5592.54'),
(4, 4, 3, 2, '10114.78'),
(5, 5, 3, 1, '16942.85'),
(6, 6, 3, 4, '4498.11'),
(7, 7, 1, 3, '6221.19'),
(8, 1, 1, 1, '6532.18'),
(9, 2, 2, 4, '825.75'),
(10, 3, 2, 2, '5592.54');

-- --------------------------------------------------------

--
-- Структура таблицы `vendors`
--

CREATE TABLE `vendors` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `vendor_address` varchar(255) NOT NULL,
  `vendor_phone_number` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `vendors`
--

INSERT INTO `vendors` (`vendor_id`, `vendor_name`, `vendor_address`, `vendor_phone_number`) VALUES
(1, 'ООО \"Самсон-РФ\"', 'г. Ростов-на-Дону, ул. Менжинского, 2 \"Г\"', '+7 863 268-90-01'),
(2, 'ИП Паршин Юрий Иванович', 'г. Ростов-на-Дону, ул. Врубовая, 38', '+7 863 295-45-00'),
(3, 'ООО \"Канцелярский мир\"', 'г. Ростов-на-Дону, пер. Доломановский, 130', '+7 863 227-50-90');

-- --------------------------------------------------------

--
-- Структура таблицы `warehouses`
--

CREATE TABLE `warehouses` (
  `warehouse_id` int(11) NOT NULL,
  `warehouse_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `warehouses`
--

INSERT INTO `warehouses` (`warehouse_id`, `warehouse_name`) VALUES
(1, 'Главный склад'),
(2, 'Склад магазина №1'),
(3, 'Склад магазина №2');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`position_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Индексы таблицы `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `product_id` (`product_id`,`staff_id`,`shopper_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `shopper_id` (`shopper_id`);

--
-- Индексы таблицы `shoppers`
--
ALTER TABLE `shoppers`
  ADD PRIMARY KEY (`shopper_id`);

--
-- Индексы таблицы `staffers`
--
ALTER TABLE `staffers`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `position_id` (`position_id`);

--
-- Индексы таблицы `supply`
--
ALTER TABLE `supply`
  ADD PRIMARY KEY (`supply_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Индексы таблицы `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Индексы таблицы `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`warehouse_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `positions`
--
ALTER TABLE `positions`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `shoppers`
--
ALTER TABLE `shoppers`
  MODIFY `shopper_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `staffers`
--
ALTER TABLE `staffers`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `supply`
--
ALTER TABLE `supply`
  MODIFY `supply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `warehouse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`warehouse_id`);

--
-- Ограничения внешнего ключа таблицы `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staffers` (`staff_id`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`shopper_id`) REFERENCES `shoppers` (`shopper_id`);

--
-- Ограничения внешнего ключа таблицы `staffers`
--
ALTER TABLE `staffers`
  ADD CONSTRAINT `staffers_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`);

--
-- Ограничения внешнего ключа таблицы `supply`
--
ALTER TABLE `supply`
  ADD CONSTRAINT `supply_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`vendor_id`),
  ADD CONSTRAINT `supply_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
