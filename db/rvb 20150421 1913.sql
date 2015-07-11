-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.13-rc-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema rvb
--

CREATE DATABASE IF NOT EXISTS rvb;
USE rvb;

--
-- Definition of table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking` (
  `Booking_No` int(11) NOT NULL default '0',
  `Pass_No` varchar(50) default NULL,
  `PassName` varchar(50) default NULL,
  `Bus_RegNo` varchar(50) default NULL,
  `SeatNo` varchar(50) default NULL,
  `Date_of_Travel` varchar(50) default NULL,
  `Time_of_Travel` varchar(50) default NULL,
  `Pass_From` varchar(50) default NULL,
  `Destination` varchar(50) default NULL,
  `Amount` varchar(50) default NULL,
  PRIMARY KEY  (`Booking_No`),
  KEY `BOOKINGPass_No` (`Pass_No`),
  KEY `BusesBOOKING` (`Bus_RegNo`),
  KEY `PassengerBOOKING` (`Pass_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` (`Booking_No`,`Pass_No`,`PassName`,`Bus_RegNo`,`SeatNo`,`Date_of_Travel`,`Time_of_Travel`,`Pass_From`,`Destination`,`Amount`) VALUES 
 (1000,'1000','Goose Adriano','KAS 234P','1','2007-08-28','12:00PM','Kisumu','Busia','200'),
 (1001,'1001','Ooko Peterlis','KAS 234P','1','2008-10-12','sd','Kisumu','Busia','550'),
 (1002,'1002','Monica Bonanza','KAS 234P','1','2015-04-10','12:00PM','Kisumu','Busia','200'),
 (1003,'1003','Yusuf Justus','KAS 234P','1','2015-04-21','12:00PM','Kisumu','Busia','200');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;


--
-- Definition of table `buses`
--

DROP TABLE IF EXISTS `buses`;
CREATE TABLE `buses` (
  `Bus_RegNo` varchar(50) NOT NULL,
  `BusNo` varchar(50) default NULL,
  `Model` varchar(50) default NULL,
  `Capacity` int(11) default '0',
  `DateBought` date default NULL,
  `Insurance_Status` varchar(50) default NULL,
  `Date_Insured` date default NULL,
  `Insurance_Expiry` date default NULL,
  PRIMARY KEY  (`Bus_RegNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buses`
--

/*!40000 ALTER TABLE `buses` DISABLE KEYS */;
INSERT INTO `buses` (`Bus_RegNo`,`BusNo`,`Model`,`Capacity`,`DateBought`,`Insurance_Status`,`Date_Insured`,`Insurance_Expiry`) VALUES 
 ('56578','5676','rkdf',400,'2015-04-21','insured','2015-04-22','2015-04-30'),
 ('6543','456','sunil',345,'2015-04-14','kumar','2015-04-15','2015-04-28'),
 ('676','5678','rkdf',200,'2015-04-20','insurance','2015-04-21','2015-04-30'),
 ('90','1008','90',909,'2015-04-10','909','2015-04-10','2015-04-10'),
 ('KAD 897S','1001','Isuzu',45,'2007-08-17','Insured','2007-08-18','2007-11-18'),
 ('KAF 122Y','1005','Hummer',45,'2007-08-20','Insured','2007-08-20','2007-08-20'),
 ('KAJ 687B','1004','Ile Kali',45,'2007-08-17','Insured','2007-08-17','2007-10-18'),
 ('KAS 234P','1000','TATA',100,'2007-08-17','Insured','2007-08-17','2007-06-30'),
 ('KAV 657L','1007','Isuzu',35,'2007-08-20','Insured','2007-08-20','2007-08-20');
/*!40000 ALTER TABLE `buses` ENABLE KEYS */;


--
-- Definition of table `emp`
--

DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `empNo` varchar(50) NOT NULL,
  `Sname` varchar(50) default NULL,
  `Fname` varchar(50) default NULL,
  `Lname` varchar(50) default NULL,
  `Gender` varchar(50) default NULL,
  `DOB` date default NULL,
  `Designation` varchar(50) default NULL,
  `Telephone` int(11) default '0',
  `E_Mail` varchar(50) default NULL,
  `Address` varchar(50) default NULL,
  PRIMARY KEY  (`empNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp`
--

/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` (`empNo`,`Sname`,`Fname`,`Lname`,`Gender`,`DOB`,`Designation`,`Telephone`,`E_Mail`,`Address`) VALUES 
 ('1000','Ogallo','Tobias','Oluoch','Male','2007-04-06','Driver',720233259,'tobi@gmail.com','5454,Kamoro '),
 ('1001','Mbira','Michael','Mboya','Male','1987-08-23','Driver',72056787,'m@kmail.com','45,Anywhere'),
 ('1002','Mary','Thomson','Njeri','Male','2000-12-08','Manager',7289596,'tm@gmail.com','45,Somewhere'),
 ('1003','Jane','Hustom','Anne','Female','1987-08-23','Driver',72056787,'m@kmail.com','45,anywhere'),
 ('1004','Lady','Monics','Kjimbi','Female','2007-08-04','Booking Clerk',720233456,'jjj@gmail.com','4567,Kiserian');
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;


--
-- Definition of table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
CREATE TABLE `passenger` (
  `Pass_No` varchar(50) NOT NULL,
  `Pass_Name` varchar(50) default NULL,
  `Address` varchar(50) default NULL,
  `Tel_No` int(11) default '0',
  `Date_of_Travel` date default NULL,
  `Depot` varchar(50) default NULL,
  `To` varchar(50) default NULL,
  `Pay_Status` varchar(50) default 'Not_Paid',
  `Booked_Status` varchar(50) default 'Not_Booked',
  PRIMARY KEY  (`Pass_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `passenger`
--

/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` (`Pass_No`,`Pass_Name`,`Address`,`Tel_No`,`Date_of_Travel`,`Depot`,`To`,`Pay_Status`,`Booked_Status`) VALUES 
 ('1000','Goose Adriano','12 Post',7498977,'2007-08-10','Nairobi','Kisumu','Not_Paid','Booked'),
 ('1001','Ooko Peterlis','23 kiss',7887998,'2007-08-20','Kakamega','Bungoma','Paid','Booked'),
 ('1002','Monica Bonanza','456,JustinTime',56789,'2007-08-17','Kakamega','Bungoma','Not_Paid','Booked'),
 ('1003','Yusuf Justus','2333 Lindos',23455,'2007-08-17','Kisumu','Busia','Not_Paid','Booked'),
 ('1004','Henry','Kosgei',767676,'2007-08-17','Kisumu','Busia','Not_Paid','Not_Booked');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;


--
-- Definition of table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `Payment_No` varchar(50) NOT NULL,
  `Pass_No` varchar(50) default NULL,
  `Pass_Name` varchar(50) default NULL,
  `Payment_Mode` varchar(50) default NULL,
  `Date_Payment` date default NULL,
  `Amount_Paid` decimal(19,4) default '0.0000',
  `Received_By` varchar(50) default NULL,
  PRIMARY KEY  (`Payment_No`),
  KEY `Amount_Paid` (`Amount_Paid`),
  KEY `PassengerPayment` (`Pass_No`),
  KEY `PaymentPass_No` (`Pass_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` (`Payment_No`,`Pass_No`,`Pass_Name`,`Payment_Mode`,`Date_Payment`,`Amount_Paid`,`Received_By`) VALUES 
 ('1000','1000','Goose Adriano','Cash','2007-08-28','200.0000','Monics'),
 ('1001','1000','Goose Adriano','Cash','2007-08-28','200.0000','Monics'),
 ('1002','1000','Goose Adriano','Cash','2007-08-28','200.0000','Monics'),
 ('1003','1000','Goose Adriano','Cash','2008-10-12','200.0000','Monics'),
 ('1004','1000','Goose Adriano','Cash','2008-10-12','200.0000','Monics');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;


--
-- Definition of table `route`
--

DROP TABLE IF EXISTS `route`;
CREATE TABLE `route` (
  `Route_No` varchar(50) NOT NULL,
  `RouteName` varchar(50) default NULL,
  `Depot` varchar(50) default NULL,
  `Destination` varchar(50) default NULL,
  `Distance` varchar(50) default NULL,
  `Fare_Charged` smallint(6) default '0',
  PRIMARY KEY  (`Route_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `route`
--

/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` (`Route_No`,`RouteName`,`Depot`,`Destination`,`Distance`,`Fare_Charged`) VALUES 
 ('1000','Kisumu-Busia','Kisumu','Busia','1200KM',200),
 ('1002','Nairobi-Kisumu','Nairobi','Kisumu','400KM',550),
 ('1003','Kakamega-Bungoma','Kakamega','Bungoma','127KM',250),
 ('1004','Mombasa-Nairobi','Mombasa','Nairobi','457KM',700),
 ('1005','Malindi-Busia','Malindi','Busia','450KM',1200);
/*!40000 ALTER TABLE `route` ENABLE KEYS */;


--
-- Definition of table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
CREATE TABLE `schedules` (
  `Bus_No` int(11) default '0',
  `Bus_RegNo` varchar(50) default NULL,
  `Route_No` varchar(50) default NULL,
  `Route_Name` varchar(50) default NULL,
  `empNo` varchar(50) default NULL,
  `Driver_Name` varchar(50) default NULL,
  `Trip_No` smallint(6) default '0',
  `Date_Scheduled` date default NULL,
  `Dept_Time` varchar(50) default NULL,
  KEY `BusesSchedules` (`Bus_RegNo`),
  KEY `EmpSchedules` (`empNo`),
  KEY `RouteSchedules` (`Route_No`),
  KEY `SchedulesempNo` (`empNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedules`
--

/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` (`Bus_No`,`Bus_RegNo`,`Route_No`,`Route_Name`,`empNo`,`Driver_Name`,`Trip_No`,`Date_Scheduled`,`Dept_Time`) VALUES 
 (1000,'KAS 234P','1000','Kisumu-Busia','1000','Ogallo',1,'2007-08-28','12:00PM'),
 (1000,'KAS 234P','1002','Nairobi-Kisumu','1001','Mbira',1,'2008-10-12','sd'),
 (1000,'KAS 234P','1002','Nairobi-Kisumu','1003','Jane',1,'2008-10-23','12.20');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;


--
-- Definition of table `trips`
--

DROP TABLE IF EXISTS `trips`;
CREATE TABLE `trips` (
  `Trip_No` varchar(50) NOT NULL,
  `Bus_RegNo` varchar(50) default NULL,
  `Route_No` varchar(50) default NULL,
  `S_Date` varchar(50) default NULL,
  PRIMARY KEY  (`Trip_No`),
  KEY `BusesTrips` (`Bus_RegNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trips`
--

/*!40000 ALTER TABLE `trips` DISABLE KEYS */;
INSERT INTO `trips` (`Trip_No`,`Bus_RegNo`,`Route_No`,`S_Date`) VALUES 
 ('1','KAS 234P','1000','2007-08-22'),
 ('2','KAS 234P','1000','2007-08-30');
/*!40000 ALTER TABLE `trips` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `Name` varchar(50) default NULL,
  `Category` varchar(50) default NULL,
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`Name`,`Category`,`username`,`password`) VALUES 
 ('Anoop','Supervisor','anoop','anoop'),
 ('admin','Manager','admin','pass'),
 ('arif','Booking Clerk','arif','arif'),
 ('Pranoj Francis','Manager','pranoj','pranoj'),
 ('akshay','Manager','akshay','akki');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


--
-- Definition of table `validator`
--

DROP TABLE IF EXISTS `validator`;
CREATE TABLE `validator` (
  `Bus_No` varchar(50) default NULL,
  `DriverNo` varchar(50) default NULL,
  `RouteNo` varchar(50) default NULL,
  `Date_Schedule` varchar(50) default NULL,
  `Trip_No` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `validator`
--

/*!40000 ALTER TABLE `validator` DISABLE KEYS */;
INSERT INTO `validator` (`Bus_No`,`DriverNo`,`RouteNo`,`Date_Schedule`,`Trip_No`) VALUES 
 ('1000','1000','1000','2007-08-28','1'),
 ('1000','1001','1002','2008-10-12','1'),
 ('1000','1003','1002','2008-10-23','1');
/*!40000 ALTER TABLE `validator` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
