
DROP TABLE IF EXISTS `frete`;

CREATE TABLE `frete` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `motorista` varchar(100) NOT NULL,
  `carga` varchar(100) NOT NULL,
  `peso` float NOT NULL,
  `origem` varchar(100) NOT NULL,
  `destino` varchar(100) NOT NULL,
  `valor` float NOT NULL,
  `data` varchar(100) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `usuario`;




CREATE DATABASE IF NOT EXISTS`projeto`; 

USE `projeto`;


CREATE TABLE `protocolos` (
  `idPro` int(11) NOT NULL AUTO_INCREMENT,
  `numProtocolo` int(11) DEFAULT NULL,
  `remetente` varchar(100) DEFAULT NULL,
  `destinatario` varchar(100) DEFAULT NULL,
  `assunto` varchar(100) DEFAULT NULL,
  `dataenvio` varchar(100) DEFAULT NULL,
  `datarecepcao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;



CREATE TABLE `usuario` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
);