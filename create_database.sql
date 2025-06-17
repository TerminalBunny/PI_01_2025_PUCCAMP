drop database if exists sustentabilidade;
create database sustentabilidade;
use sustentabilidade;

DROP TABLE IF EXISTS `dados`;
CREATE TABLE `dados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dia` date DEFAULT NULL,
  `Quantidade_de_Água_Consumida` float DEFAULT NULL,
  `Quantidade_de_Energia` float DEFAULT NULL,
  `Quantidade_de_Resíduo_Não_Reciclável` float DEFAULT NULL,
  `Porcentagem_de_Recicláveis` float DEFAULT NULL,
  `Meio_de_Transporte_Público` varchar(50) DEFAULT NULL,
  `Meio_de_Transporte_Bicicleta` varchar(50) DEFAULT NULL,
  `Meio_de_Transporte_Caminhada` varchar(50) DEFAULT NULL,
  `Meio_de_Transporte_Carro` varchar(50) DEFAULT NULL,
  `Meio_de_Transporte_Carro_Elétrico` varchar(50) DEFAULT NULL,
  `Meio_de_Transporte_Carona_Compartilhada` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `saídas`;
CREATE TABLE `saídas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Sustentabilidade_Água` VARCHAR(100) DEFAULT NULL,
  `Sustentabilidade_Energia` VARCHAR(100) DEFAULT NULL,
  `Sustentabilidade_Lixo` VARCHAR(100) DEFAULT NULL,
  `Sustentabilidade_Transporte` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
);