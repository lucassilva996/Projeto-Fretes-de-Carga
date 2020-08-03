/*
SQLyog Community v12.04 (64 bit)
MySQL - 5.1.50-community : Database - projeto
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`projeto` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `projeto`;

/*Table structure for table `protocolos` */

DROP TABLE IF EXISTS `protocolos`;

CREATE TABLE `protocolos` (
  `idPro` int(11) NOT NULL AUTO_INCREMENT,
  `numProtocolo` int(11) DEFAULT NULL,
  `remetente` varchar(100) DEFAULT NULL,
  `destinatario` varchar(100) DEFAULT NULL,
  `assunto` varchar(100) DEFAULT NULL,
  `dataEnvio` varchar(100) DEFAULT NULL,
  `dataRecepcao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPro`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `protocolos` */

insert  into `protocolos`(`idPro`,`numProtocolo`,`remetente`,`destinatario`,`assunto`,`dataEnvio`,`dataRecepcao`) values (6,21214,'renato','erick','ajihasjhi','19/11/1996','19/11/2016'),(7,1,'teste','teste','teste','18/11/2016','19/11/2016'),(8,2,'teste','teste','teste','19/11/1996','19/11/2016');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

insert  into `usuario`(`id`,`usuario`,`nome`,`senha`,`email`) values (1,'Lucassilva996','Lucas','lucas1020','lucassilva996@outlook.com'),(2,'teste','teste','123','teste@teste.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
