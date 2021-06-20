

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Kabir', 'kabir@gmail.com', 40000),
(2, 'Arjun', 'arjun@gmail.com', 20000),
(3, 'Balaa', 'balaa@gmail.com', 30000),
(4, 'Ambi', 'ambi@gmail.com', 70000),
(5, 'Anniyan', 'anniyan@gmail.com', 60000),
(6, 'Remo', 'remo@gmail.com', 50000),
(7, 'Velu', 'velu@gmail.com', 40000),
(8, 'Kanikanipalan', 'kankanipalan@gmail.com', 30000),
(9, 'Vinodh', 'vinodh@gmail.com', 20000),
(10, 'Bhargav', 'bhargav@gmail.com', 40000);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);




ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;
