/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.30-MariaDB : Database - elrinco8_cliente
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`elrinco8_cliente` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `elrinco8_cliente`;

/*Table structure for table `administrador` */

DROP TABLE IF EXISTS `administrador`;

CREATE TABLE `administrador` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(100) NOT NULL,
  `nombre_admin` varchar(60) NOT NULL,
  `clave` text NOT NULL,
  `email_admin` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`),
  UNIQUE KEY `correo` (`email_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `administrador` */

insert  into `administrador`(`id_admin`,`nombre_completo`,`nombre_admin`,`clave`,`email_admin`) values (1,'Super Administrador','Administrador','2a2e9a58102784ca18e2605a4e727b5f','administrador@gmail.com');

/*Table structure for table `cliente` */

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_usuario` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `email_cliente` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `clave` text COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `id_num` (`email_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `cliente` */

insert  into `cliente`(`id_cliente`,`nombre_completo`,`nombre_usuario`,`email_cliente`,`clave`) values (1,'felix','retroxdf','retroxdf@gmail.com','fc594f0a596a322f0ba0dc78e24f03b9');

/*Table structure for table `ticket` */

DROP TABLE IF EXISTS `ticket`;

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `serie` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `estado_ticket` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_usuario` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` bigint(10) NOT NULL,
  `email_cliente` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `departamento` varchar(70) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `asunto` varchar(70) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `mensaje` text CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `solucion` text CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `cotizacion` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `pagar` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serie` (`serie`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `ticket` */

insert  into `ticket`(`id`,`fecha`,`serie`,`estado_ticket`,`nombre_usuario`,`telefono`,`email_cliente`,`departamento`,`asunto`,`mensaje`,`solucion`,`cotizacion`,`pagar`) values (3,'02/19/2018','TK4496N1','Pendiente','Romando Contreras',3119109496,'retroxdf@gmail.com','Hardware','iphon4','Liberacion de equipo','','50','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
