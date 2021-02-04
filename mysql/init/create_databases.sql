CREATE DATABASE `servicesdesk` CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
CREATE DATABASE `conflluence` CHARACTER SET utf8 COLLATE utf8_bin;
CREATE USER 'tradesoft'@'10.0.10.2' IDENTIFIED BY 'eVJ5U:nd:A';
GRANT ALL PRIVILEGES ON `servicesdesk`.* TO 'tradesoft'@'10.0.10.2';
GRANT ALL PRIVILEGES ON `conflluence`.* TO 'tradesoft'@'10.0.10.2';
CREATE USER 'tradesoft'@'10.0.10.3' IDENTIFIED BY 'eVJ5U:nd:A';
GRANT ALL PRIVILEGES ON `servicesdesk`.* TO 'tradesoft'@'10.0.10.3';
GRANT ALL PRIVILEGES ON `conflluence`.* TO 'tradesoft'@'10.0.10.3';
FLUSH PRIVILEGES;


