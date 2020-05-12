/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - communitydiscovery
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`communitydiscovery` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `communitydiscovery`;

/*Table structure for table `boundarynodes` */

DROP TABLE IF EXISTS `boundarynodes`;

CREATE TABLE `boundarynodes` (
  `username` varchar(100) DEFAULT NULL,
  `community` varchar(100) DEFAULT NULL,
  `communitycount` int(11) DEFAULT NULL,
  `totalcount` int(11) DEFAULT NULL,
  `others` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `boundarynodes` */

insert  into `boundarynodes`(`username`,`community`,`communitycount`,`totalcount`,`others`) values ('ramu','Airtel',4,10,6),('ramu','Jio',6,10,4),('shiva','Airtel',2,4,2),('shiva','Jio',2,4,2);

/*Table structure for table `plans` */

DROP TABLE IF EXISTS `plans`;

CREATE TABLE `plans` (
  `plan` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `community` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `plans` */

insert  into `plans`(`plan`,`description`,`community`) values ('199','Rs199=1.5GB data/day along with Unlimited Local, STD+Roaming calls and 100 SMS/day for 28 days. #AirtelThanks','Airtel'),('558','Rs558=3GB/day data along with Unlimited Local, STD, Roaming calls and 100 SMS/day for 82 days.#airtelthanks','Airtel'),('509','Rs509=1.4GB/day data along with Unlimited Local, STD, Roaming calls and 100 SMS/day for 90 days. #AirtelThanks','Airtel'),('169','Rs169=Unlimited Local, STD and Roaming calls along with 1GB/day data and 100 SMS/day for 28 days.','Airtel'),('399','Rs399=1GB/day data along with Unlimited Local, STD, Roaming calls and 100 SMS/day for 84 days. #AirtelThanks','Airtel'),('448','Rs448=1.5GB data/day along with Unlimited Local, STD, Roaming calls and 100 SMS/day for 82 days. #AirtelThanks','Airtel'),('65','3G Data: 200 MB. Local & STD Calls @ 60p/min Promotional/Bonus Talktime: Rs.55.0. Smart Recharge','Airtel'),('245','3G Data: 2 GB. Local & STD Calls @ 30p/min. Promotional/Bonus Talktime: Rs.245.0. Smart Recharge','Airtel'),('145','3G Data: 1 GB. Local & STD Calls @ 30p/min. Promotional/Bonus Talktime: Rs.145.0. Smart Recharge','Airtel'),('49','Applicable Only on Jiophone activated SIMs: Jio Phone Plan-49 : Benefits: Free Voice, Unlimited Data (1GB High Speed Data, thereafter unlimited at 64Kbps), 50SMS and Complimentary Subscription to Jio Apps. Validity: 28days','JIO'),('98','For Prime Customers Only: Benefits: Free Voice, Unlimited Data (2GB High Speed Data, thereafter unlimited at 64Kbps), 300SMS and Complimentary Subscription to Jio Apps. Validity: 28days','JIO'),('149','For Prime Customers Only: Benefits: Free Voice, Unlimited Data (1.5GB High Speed Data per day, thereafter unlimited at 64Kbps), 100SMS/day and Complimentary Subscription to Jio Apps. Validity: 28days','JIO'),('153','Applicable Only on Jiophone activated SIMs: Jio Phone Plan-153 :Benefits: Free Voice, Unlimited Data (1.5GB High Speed Data per day, thereafter unlimited at 64Kbps), 100SMS/day and Complimentary Subscription to Jio Apps. Validity: 28days','JIO'),('198','For Prime Customers Only: Benefits: Free Voice, Unlimited Data (2GB High Speed Data per day, thereafter unlimited at 64Kbps), 100SMS/day and Complimentary Subscription to Jio Apps. Validity: 28days','JIO'),('398','For Prime Customers Only: Benefits: Free Voice, Unlimited Data (2GB High Speed Data per day, thereafter unlimited at 64Kbps), 100SMS/day and Complimentary Subscription to Jio Apps. Validity: 70days','JIO'),('399','For Prime Customers Only: Benefits: Free Voice, Unlimited Data (1.5GB High Speed Data per day, thereafter unlimited at 64Kbps), 100SMS/day and Complimentary Subscription to Jio Apps. Validity: 84days','JIO'),('449','For Prime Customers Only: Benefits: Free Voice, Unlimited Data (1.5GB High Speed Data per day, thereafter unlimited at 64Kbps), 100SMS/day and Complimentary Subscription to Jio Apps. Validity: 91days','JIO');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Waiting'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`username`,`password`,`email`,`dob`,`gender`,`address`,`mobile`,`status`) values ('ramu','ramu','ramu@gmail.com','1991-10-10','Male','Ameerpet','9052016340','Activated'),('shiva','shiva','shiva@gmail.com','1993-07-31','Male','Hyd','9052016341','Activated'),('nikil','nikil','nikil@gmail.com','1992-08-08','Male','Tarnaka','8974562130','Activated');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
