-- Created by DiaSql-Dump Version 0.01(Beta)
-- Filename: 01-schema.sql

-- talleres --
DROP TABLE IF EXISTS `talleres`;
CREATE TABLE IF NOT EXISTS `talleres` (
	`user_id` INT( 4 ) NOT NULL,
	`id` INT( 4 ) PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	`nombre` VARCHAR(75) NOT NULL UNIQUE,
	`slug_dst` VARCHAR(80) NOT NULL UNIQUE,
	`horario` VARCHAR(200) DEFAULT NULL,
	`fecha_inicio` DATE DEFAULT NULL,
	`fecha_final` DATE DEFAULT NULL,
	`costo` FLOAT( 4 ) DEFAULT NULL,
	`resumen` VARCHAR( 200 ) DEFAULT NULL,
	`contenido` TEXT DEFAULT NULL,
	`numero_total_horas` INT( 20 ) DEFAULT NULL,
	`big_slide` BOOLEAN DEFAULT FALSE NOT NULL,
	`slide` BOOLEAN DEFAULT FALSE DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- etiquetas_talleres --
DROP TABLE IF EXISTS `etiquetas_talleres`;
CREATE TABLE IF NOT EXISTS `etiquetas_talleres` (
	`id` INT(2) PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	`taller_id` INT ( 4) NOT NULL UNIQUE,
	`etiqueta_id` INT( 5 ) NOT NULL UNIQUE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- users --
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
	`id` INT(5) PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	`role` ENUM('admin','maestro','registrado') NOT NULL,
	`username` VARCHAR(50) NOT NULL UNIQUE,
	`password` VARCHAR(50) NOT NULL,
	`email` VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- posts --
DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
	`id` INT(2) PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	`nombre` VARCHAR(75) NOT NULL UNIQUE,
	`slug_dst` VARCHAR(80) NOT NULL UNIQUE,
	`created` DATETIME NOT NULL,
	`modified` DATETIME NOT NULL,
	`content` TEXT DEFAULT NULL,
	`taller_id` INT( 4 ) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- talleres_users --
DROP TABLE IF EXISTS `talleres_users`;
CREATE TABLE IF NOT EXISTS `talleres_users` (
	`id` INT(2) PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	`user_id` INT( 5 ) NOT NULL UNIQUE,
	`taller_id` INT( 4 ) NOT NULL,
	`descuento` INT( 2 ) DEFAULT 0 NOT NULL,
	`created` DATETIME NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- noticias --
DROP TABLE IF EXISTS `noticias`;
CREATE TABLE IF NOT EXISTS `noticias` (
	`id` INT(2) PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	`user_id` INT( 5 ) NOT NULL,
	`nombre` VARCHAR(75) NOT NULL UNIQUE,
	`slug_dst` VARCHAR(80) NOT NULL UNIQUE,
	`created` DATETIME NOT NULL,
	`modified` DATETIME NOT NULL,
	`content` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- etiquetas --
DROP TABLE IF EXISTS `etiquetas`;
CREATE TABLE IF NOT EXISTS `etiquetas` (
	`id` INT(2) PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	`nombre` VARCHAR(75) NOT NULL UNIQUE,
	`slug_dst` VARCHAR(80) NOT NULL UNIQUE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- noticias_talleres --
DROP TABLE IF EXISTS `noticias_talleres`;
CREATE TABLE IF NOT EXISTS `noticias_talleres` (
	`id` INT(2) PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
	`noticia_id` INT( 5 ) NOT NULL UNIQUE,
	`etiqueta_id` INT ( 4) NOT NULL UNIQUE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
-- End SQL-Dump
