DROP DATABASE IF EXISTS `spacex`;
CREATE DATABASE `spacex`;
USE `spacex`;
DROP TABLE IF EXISTS `id_spacex`;
CREATE TABLE id_spacex (
    id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_persoon VARCHAR(30) NOT NULL,
    name varchar(30) NOT NULL,
    surname varchar(30) NOT NULL,
    email VARCHAR(30) NOT NULL
);

INSERT INTO id_spacex (id_persoon, name,surname, email) VALUES
    ('A1', 'Karlijn', 'Jansen', 'kalijn@gmail.com'),
    ('A2', 'Beyza',' Herdam', 'beyza@gmail.com'),
    ('A3', 'Sueda',' Herdam', 'sueda@gmail.com'),
    ('A4', 'Nicky' ,'Boer', 'nmjdeboer@gmail.com'),
    ('A5', 'Job',' Graaf', 'job@gmail.com');

DROP TABLE IF EXISTS `vluchten`;
CREATE TABLE vluchten (
    id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    vertrek_locatie VARCHAR(30) NOT NULL,
    aankomst_locatie varchar(30) NOT NULL,
    prijs VARCHAR(30) NOT NULL,
    vertrek_tijd VARCHAR(30) NOT NULL,
    aankomst_tijd VARCHAR(30) NOT NULL,
    datum SET('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday')
);

INSERT INTO vluchten (vertrek_locatie, aankomst_locatie, prijs, vertrek_tijd, aankomst_tijd, datum) VALUES
    ('Amsterdam', 'New York', '20', '6:00', '6:33','Monday'),
    ('Amsterdam', 'New York', '20', '6:00', '6:33','Tuesday'),
    ('Amsterdam', 'New York', '20', '6:00', '6:33','Wednesday'),
    ('Amsterdam', 'New York', '20', '6:00', '6:33','Thursday'),
    ('Amsterdam', 'New York', '20', '6:00', '6:33','Friday'),
    ('Amsterdam', 'New York', '20', '6:00', '6:33','Saturday'),
    ('Amsterdam', 'New York', '20', '6:00', '6:33','Sunday'),
    ('Amsterdam', 'Sydney', '30', '6:30', '7:10','Monday'),
    ('Amsterdam', 'Sydney', '30', '6:30', '7:10','Tuesday'),
    ('Amsterdam', 'Sydney', '30', '6:30', '7:10','Wednesday'),
    ('Amsterdam', 'Sydney', '30', '6:30', '7:10','Thursday'),
    ('Amsterdam', 'Sydney', '30', '6:30', '7:10','Friday'),
    ('Amsterdam', 'Sydney', '30', '6:30', '7:10','Saturday'),
    ('Amsterdam', 'Sydney', '30', '6:30', '7:10','Sunday'),
    ('Amsterdam', 'Tokyo', '40', '7:00', '7:28','Monday'),
    ('Amsterdam', 'Tokyo', '40', '7:00', '7:28','Tuesday'),
    ('Amsterdam', 'Tokyo', '40', '7:00', '7:28','Wednesday'),
    ('Amsterdam', 'Tokyo', '40', '7:00', '7:28','Thursday'),
    ('Amsterdam', 'Tokyo', '40', '7:00', '7:28','Friday'),
    ('Amsterdam', 'Tokyo', '40', '7:00', '7:28','Saturday'),
    ('Amsterdam', 'Tokyo', '40', '7:00', '7:28','Sunday'),
    ('Amsterdam', 'Dubai', '50', '7:30', '8:01','Monday'),
    ('Amsterdam', 'Dubai', '50', '7:30', '8:01','Tuesday'),
    ('Amsterdam', 'Dubai', '50', '7:30', '8:01','Wednesday'),
    ('Amsterdam', 'Dubai', '50', '7:30', '8:01','Thursday'),
    ('Amsterdam', 'Dubai', '50', '7:30', '8:01','Friday'),
    ('Amsterdam', 'Dubai', '50', '7:30', '8:01','Saturday'),
    ('Amsterdam', 'Dubai', '50', '7:30', '8:01','Sunday'),
    ('New york', 'Amsterdam', '20', '8:00', '8:46','Monday'),
    ('New york', 'Amsterdam', '20', '8:00', '8:46','Tuesday'),
    ('New york', 'Amsterdam', '20', '8:00', '8:46','Wednesday'),
    ('New york', 'Amsterdam', '20', '8:00', '8:46','Thursday'),
    ('New york', 'Amsterdam', '20', '8:00', '8:46','Friday'),
    ('New york', 'Amsterdam', '20', '8:00', '8:46','Saturday'),
    ('New york', 'Amsterdam', '20', '8:00', '8:46','Sunday'),
    ('New york', 'Sydney', '52', '8:30', '8:59','Monday'),
    ('New york', 'Sydney', '52', '8:30', '8:59','Tuesday'),
    ('New york', 'Sydney', '52', '8:30', '8:59','Wednesday'),
    ('New york', 'Sydney', '52', '8:30', '8:59','Thursday'),
    ('New york', 'Sydney', '52', '8:30', '8:59','Friday'),
    ('New york', 'Sydney', '52', '8:30', '8:59','Saturday'),
    ('New york', 'Sydney', '52', '8:30', '8:59','Sunday'),
    ('New york', 'Tokyo', '34', '9:00', '9:49','Monday'),
    ('New york', 'Tokyo', '34', '9:00', '9:49','Tuesday'),
    ('New york', 'Tokyo', '34', '9:00', '9:49','Wednesday'),
    ('New york', 'Tokyo', '34', '9:00', '9:49','Thursday'),
    ('New york', 'Tokyo', '34', '9:00', '9:49','Friday'),
    ('New york', 'Tokyo', '34', '9:00', '9:49','Saturday'),
    ('New york', 'Tokyo', '34', '9:00', '9:49','Sunday'),
    ('New york', 'Dubai', '56', '9:30', '10:00','Monday'),
    ('New york', 'Dubai', '56', '9:30', '10:00','Tuesday'),
    ('New york', 'Dubai', '56', '9:30', '10:00','Wednesday'),
    ('New york', 'Dubai', '56', '9:30', '10:00','Thursday'),
    ('New york', 'Dubai', '56', '9:30', '10:00','Friday'),
    ('New york', 'Dubai', '56', '9:30', '10:00','Saturday'),
    ('New york', 'Dubai', '56', '9:30', '10:00','Sunday'),
    ('Sydney', 'Amsterdam', '30', '10:00', '10:59','Monday'),
    ('Sydney', 'Amsterdam', '30', '10:00', '10:59','Tuesday'),
    ('Sydney', 'Amsterdam', '30', '10:00', '10:59','Wednesday'),
    ('Sydney', 'Amsterdam', '30', '10:00', '10:59','Thursday'),
    ('Sydney', 'Amsterdam', '30', '10:00', '10:59','Friday'),
    ('Sydney', 'Amsterdam', '30', '10:00', '10:59','Saturday'),
    ('Sydney', 'Amsterdam', '30', '10:00', '10:59','Sunday'),
    ('Sydney', 'Tokyo', '58', '10:30', '10:56','Monday'),
    ('Sydney', 'Tokyo', '58', '10:30', '10:56','Tuesday'),
    ('Sydney', 'Tokyo', '58', '10:30', '10:56','Wednesday'),
    ('Sydney', 'Tokyo', '58', '10:30', '10:56','Thursday'),
    ('Sydney', 'Tokyo', '58', '10:30', '10:56','Friday'),
    ('Sydney', 'Tokyo', '58', '10:30', '10:56','Saturday'),
    ('Sydney', 'Tokyo', '58', '10:30', '10:56','Sunday'),
    ('Sydney', 'Dubai', '64', '11:00', '11:42','Monday'),
    ('Sydney', 'Dubai', '64', '11:00', '11:42','Tuesday'),
    ('Sydney', 'Dubai', '64', '11:00', '11:42','Wednesday'),
    ('Sydney', 'Dubai', '64', '11:00', '11:42','Thursday'),
    ('Sydney', 'Dubai', '64', '11:00', '11:42','Friday'),
    ('Sydney', 'Dubai', '64', '11:00', '11:42','Saturday'),
    ('Sydney', 'Dubai', '64', '11:00', '11:42','Sunday'),
    ('Sydney', 'New york', '52', '11:30', '12:03','Monday'),
    ('Sydney', 'New york', '52', '11:30', '12:03','Tuesday'),
    ('Sydney', 'New york', '52', '11:30', '12:03','Wednesday'),
    ('Sydney', 'New york', '52', '11:30', '12:03','Thursday'),
    ('Sydney', 'New york', '52', '11:30', '12:03','Friday'),
    ('Sydney', 'New york', '52', '11:30', '12:03','Saturday'),
    ('Sydney', 'New york', '52', '11:30', '12:03','Sunday'),
    ('Tokyo', 'New york', '34', '12:00', '12:39', 'Monday'),
    ('Tokyo', 'New york', '34', '12:00', '12:39', 'Tuesday'),
    ('Tokyo', 'New york', '34', '12:00', '12:39', 'Wednesday'),
    ('Tokyo', 'New york', '34', '12:00', '12:39', 'Thursday'),
    ('Tokyo', 'New york', '34', '12:00', '12:39', 'Friday'),
    ('Tokyo', 'New york', '34', '12:00', '12:39', 'Saturday'),
    ('Tokyo', 'New york', '34', '12:00', '12:39', 'Sunday'),
    ('Tokyo', 'Amsterdam', '40', '12:30', '13:06', 'Monday'),
    ('Tokyo', 'Amsterdam', '40', '12:30', '13:06', 'Tuesday'),
    ('Tokyo', 'Amsterdam', '40', '12:30', '13:06', 'Wednesday'),
    ('Tokyo', 'Amsterdam', '40', '12:30', '13:06', 'Thursday'),
    ('Tokyo', 'Amsterdam', '40', '12:30', '13:06', 'Friday'),
    ('Tokyo', 'Amsterdam', '40', '12:30', '13:06', 'Saturday'),
    ('Tokyo', 'Amsterdam', '40', '12:30', '13:06', 'Sunday'),
    ('Tokyo', 'Dubai', '34', '13:00', '13:40', 'Monday'),
    ('Tokyo', 'Dubai', '34', '13:00', '13:40', 'Tuesday'),
    ('Tokyo', 'Dubai', '34', '13:00', '13:40', 'Wednesday'),
    ('Tokyo', 'Dubai', '34', '13:00', '13:40', 'Thursday'),
    ('Tokyo', 'Dubai', '34', '13:00', '13:40', 'Friday'),
    ('Tokyo', 'Dubai', '34', '13:00', '13:40', 'Saturday'),
    ('Tokyo', 'Dubai', '34', '13:00', '13:40', 'Sunday'),
    ('Tokyo', 'Sydney', '58', '13:30', '14:07','Monday'),
    ('Tokyo', 'Sydney', '58', '13:30', '14:07','Tuesday'),
    ('Tokyo', 'Sydney', '58', '13:30', '14:07','Wednesday'),
    ('Tokyo', 'Sydney', '58', '13:30', '14:07','Thursday'),
    ('Tokyo', 'Sydney', '58', '13:30', '14:07','Friday'),
    ('Tokyo', 'Sydney', '58', '13:30', '14:07','Saturday'),
    ('Tokyo', 'Sydney', '58', '13:30', '14:07','Sunday'),
    ('Dubai', 'Sydney', '64', '14:00', '14:44','Monday'),
    ('Dubai', 'Sydney', '64', '14:00', '14:44','Tuesday'),
    ('Dubai', 'Sydney', '64', '14:00', '14:44','Wednesday'),
    ('Dubai', 'Sydney', '64', '14:00', '14:44','Thursday'),
    ('Dubai', 'Sydney', '64', '14:00', '14:44','Friday'),
    ('Dubai', 'Sydney', '64', '14:00', '14:44','Saturday'),
    ('Dubai', 'Sydney', '64', '14:00', '14:44','Sunday'),
    ('Dubai', 'Amsterdam', '50', '14:30', '14:58','Monday'),
    ('Dubai', 'Amsterdam', '50', '14:30', '14:58','Tuesday'),
    ('Dubai', 'Amsterdam', '50', '14:30', '14:58','Wednesday'),
    ('Dubai', 'Amsterdam', '50', '14:30', '14:58','Thursday'),
    ('Dubai', 'Amsterdam', '50', '14:30', '14:58','Friday'),
    ('Dubai', 'Amsterdam', '50', '14:30', '14:58','Saturday'),
    ('Dubai', 'Amsterdam', '50', '14:30', '14:58','Sunday'),
    ('Dubai', 'New york', '56', '15:00', '15:40','Monday'),
    ('Dubai', 'New york', '56', '15:00', '15:40','Tuesday'),
    ('Dubai', 'New york', '56', '15:00', '15:40','Wednesday'),
    ('Dubai', 'New york', '56', '15:00', '15:40','Thursday'),
    ('Dubai', 'New york', '56', '15:00', '15:40','Friday'),
    ('Dubai', 'New york', '56', '15:00', '15:40','Saturday'),
    ('Dubai', 'New york', '56', '15:00', '15:40','Sunday'),
    ('Dubai', 'Tokyo', '34', '15:30', '16:07','Monday'),
    ('Dubai', 'Tokyo', '34', '15:30', '16:07','Tuesday'),
    ('Dubai', 'Tokyo', '34', '15:30', '16:07','Wednesday'),
    ('Dubai', 'Tokyo', '34', '15:30', '16:07','Thursday'),
    ('Dubai', 'Tokyo', '34', '15:30', '16:07','Friday'),
    ('Dubai', 'Tokyo', '34', '15:30', '16:07','Saturday'),
    ('Dubai', 'Tokyo', '34', '15:30', '16:07','Sunday');
    

DROP TABLE IF EXISTS `verkochten_tickets`;
CREATE TABLE verkochten_tickets (
    id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_persoon VARCHAR(30) NOT NULL,
    name varchar(30) NOT NULL,
    surname varchar(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    telefoonnummer VARCHAR(30) NOT NULL,
    vertrek_locatie VARCHAR(30) NOT NULL,
    aankomst_locatie varchar(30) NOT NULL,
    vertrek_tijd VARCHAR(30) NOT NULL,
    aankomst_tijd VARCHAR(30) NOT NULL,
    baggage VARCHAR(30) NOT NULL,
    datum VARCHAR(30) NOT NULL,
    prijs VARCHAR(30) NOT NULL
);
