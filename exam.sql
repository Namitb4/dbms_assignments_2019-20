/*Table structure for table `employees` 
*/
DROP TABLE IF EXISTS `employees`;

CREATE TABLE employees (
  `employeeNumber` int(11) NOT NULL ,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `officeCode` varchar(10) NOT NULL,
  `reportsTo` int(11) DEFAULT NULL,
  `jobTitle` varchar(50) NOT NULL
 
);




/*Data for the table `employees` */

insert  into `employees`(`employeeNumber`,`lastName`,`firstName`,`extension`,`email`,`officeCode`,`reportsTo`,`jobTitle`) values 


(1001,'Murphy','Diane','x5800','dmurphy@classicmodelcars.com','1',NULL,'President'),


(1002,'Patterson','Mary','x4611','mpatterso@classicmodelcars.com','1',1002,'VP Sales'),


(1003,'Firrelli','Jeff','x9273','jfirrelli@classicmodelcars.com','1',1002,'VP Marketing'),


(1004,'Patterson','William','x4871','wpatterson@classicmodelcars.com','6',1003,'Sales Manager (APAC)'),


(1005,'Bow','Anthony','x5428','abow@classicmodelcars.com','1',1005,'Sales Manager (NA)'),


(1006,'Jennings','Leslie','x3291','ljennings@classicmodelcars.com','1',1003,'Sales Rep'),


(1007,'Thompson','Leslie','x4065','lthompson@classicmodelcars.com','1',1003,'Sales Rep'),


(1008,'Firrelli','Julie','x2173','jfirrelli@classicmodelcars.com','2',1004,'Sales Rep'),


(1009,'Patterson','Steve','x4334','spatterson@classicmodelcars.com','2',1007,'Sales Rep'),


(1010,'Tseng','Foon Yue','x2248','ftseng@classicmodelcars.com','3',1003,'Sales Rep'),


(1011,'Vanauf','George','x4102','gvanauf@classicmodelcars.com','3',1006,'Sales Rep');


/*Table structure for table `offices` */

DROP TABLE IF EXISTS `offices`;

CREATE TABLE `offices` (
  `officeCode` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `postalCode` varchar(15) NOT NULL,
  `territory` varchar(10) NOT NULL,
  PRIMARY KEY (`officeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `offices` */

insert  into `offices`(`officeCode`,`city`,`phone`,`addressLine1`,`addressLine2`,`state`,`country`,`postalCode`,`territory`) values 


('1','San Francisco','+1 650 219 4782','100 Market Street','Suite 300','CA','USA','94080','NA'),


('2','Boston','+1 215 837 0825','1550 Court Place','Suite 102','MA','USA','02107','NA'),


('3','NYC','+1 212 555 3000','523 East 53rd Street','apt. 5A','NY','USA','10022','NA'),


('4','Paris','+33 14 723 4404','43 Rue Jouffroy D\'abbans',NULL,NULL,'France','75017','EMEA'),


('5','Tokyo','+81 33 224 5000','4-1 Kioicho',NULL,'Chiyoda-Ku','Japan','102-8578','Japan'),


('6','Sydney','+61 2 9264 2451','5-11 Wentworth Avenue','Floor #2',NULL,'Australia','NSW 2010','APAC'),


('7','London','+44 20 7877 2041','25 Old Broad Street','Level 7',NULL,'UK','EC2N 1HN','EMEA');




