CREATE DATABASE IF NOT EXISTS `bdlospotros`;

USE `bdlospotros`;

SET foreign_key_checks = 0;

DROP TABLE IF EXISTS `acompanantes`;

CREATE TABLE `acompanantes` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(255) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `fechan` varchar(255) NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefonot` varchar(255) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `procedencia` varchar(255) NOT NULL,
  `destino` varchar(255) NOT NULL,
  `profesion` varchar(255) NOT NULL,
  `estadocivil` varchar(255) NOT NULL,
  `nacionalidad` varchar(255) NOT NULL,
  `cedulahuesped` varchar(20) NOT NULL,
  `habitacion` varchar(2) NOT NULL,
  `fechaingreso` date NOT NULL,
  `fechasalida` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

INSERT INTO `acompanantes` VALUES (23,9294677,"Alfredo Tiapa",04265910071,"alfredotiapa@gmail.com","1970-02-08","Masculino","La caracoal 4 maturin",04267883333,"digsby construcciopnes","Maturin","","ingeniero","casado","venezolano",9294677,6,"2020-02-21","0000-01-01"),
(22,9294677,"Alfredo Tiapa",04265910071,"alfredotiapa@gmail.com","1970-02-08","Masculino","La caracoal 4 maturin",04267883333,"digsby construcciopnes","Maturin","","ingeniero","casado","venezolano",9294677,6,"2020-02-21","0000-01-01"),
(21,9294677,"Alfredo Tiapa",04265910071,"alfredotiapa@gmail.com","1970-02-08","Masculino","La caracoal 4 maturin",04267883333,"digsby construcciopnes","Maturin","","ingeniero","casado","venezolano",9294677,6,"2020-02-21","0000-01-01"),
(20,11338898,"mariela bermudez",04148972972,"agracia@gmail.com","1971-09-17","Femenino","anaco",04267883333,"consultori","Barcelona/Anzoategui","","doctoras","anzoategui","Venezuela",9294677,3,"2020-02-21","0000-01-01"),
(18,11338898,"mariela bermudez",04148972972,"agracia@gmail.com","1971-09-17","Femenino","anaco",04267883333,"consultori","Barcelona/Anzoategui","","doctoras","anzoategui","Venezuela",9294677,3,"2020-02-21","0000-01-01"),
(19,9294677,"Alfredo Tiapa",04265910071,"alfredotiapa@gmail.com","1970-02-08","Masculino","La caracoal 4 maturin",04267883333,"digsby construcciopnes","Maturin","","ingeniero","casado","venezolano",9294677,3,"2020-02-21","0000-01-01"),
(17,9294677,"Alfredo Tiapa",04265910071,"alfredotiapa@gmail.com","1970-02-08","Masculino","La caracoal 4 maturin",04267883333,"digsby construcciopnes","Maturin","","ingeniero","casado","venezolano",9294677,3,"2020-02-21","0000-01-01"),
(16,11338898,"mariela bermudez",04148972972,"agracia@gmail.com","1971-09-17","Femenino","anaco",04267883333,"consultori","Barcelona/Anzoategui","Barcelona/Anzoategui","doctoras","anzoategui","Venezuela",11338898,4,"2020-02-21","0000-01-01"),
(15,9294677,"Alfredo Tiapa",04265910071,"alfredotiapa@gmail.com","1970-02-08","Masculino","La caracoal 4 maturin",04267883333,"digsby construcciopnes","Maturin","Barcelona/Anzoategui","ingeniero","casado","venezolano",11338898,4,"2020-02-21","0000-01-01"),
(24,11338898,"mariela bermudez",04148972972,"agracia@gmail.com","1971-09-17","Femenino","anaco",04267883333,"consultori","Barcelona/Anzoategui","","doctoras","anzoategui","Venezuela",9294677,6,"2020-02-21","0000-01-01"),
(25,11338898,"mariela bermudez",04148972972,"agracia@gmail.com","1971-09-17","Femenino","anaco",04267883333,"consultori","Barcelona/Anzoategui","","doctoras","anzoategui","Venezuela",9294677,6,"2020-02-21","0000-01-01"),
(26,11338898,"mariela bermudez",04148972972,"agracia@gmail.com","1971-09-17","Femenino","anaco",04267883333,"consultori","Barcelona/Anzoategui","","doctoras","anzoategui","Venezuela",9294677,6,"2020-02-21","0000-01-01"),
(27,9294677,"Alfredo Tiapa",04265910071,"alfredotiapa@gmail.com","1970-02-08","Masculino","La caracoal 4 maturin",04267883333,"digsby construcciopnes","Maturin","","ingeniero","casado","venezolano",9294677,4,"2020-02-24","0000-01-01");


DROP TABLE IF EXISTS `auditoria`;

CREATE TABLE `auditoria` (
  `id` int(255) NOT NULL,
  `numerodeAjuste` int(10) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `usercode` varchar(255) NOT NULL,
  `nombreMovimiento` varchar(255) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  PRIMARY KEY (`numerodeAjuste`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `auditoria` VALUES (0,0," "," ","NO BORRAR","NO BORRAR","NO BORRAR");


DROP TABLE IF EXISTS `calendar`;

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `cedula` varchar(255) NOT NULL,
  `nacionalidad` varchar(255) NOT NULL,
  `fechan` varchar(255) NOT NULL,
  `estadocivil` varchar(255) NOT NULL,
  `profesion` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `adultos` int(2) NOT NULL,
  `ninosmen` int(2) NOT NULL,
  `ninosmay` int(2) NOT NULL,
  `procedencia` varchar(255) NOT NULL,
  `destino` varchar(255) NOT NULL,
  `monto` int(15) NOT NULL,
  `bancoe` varchar(255) NOT NULL,
  `bancor` varchar(255) NOT NULL,
  `transferencia` varchar(255) NOT NULL,
  `moneda` varchar(255) NOT NULL,
  `quientransfiere` varchar(255) NOT NULL,
  `fechatransf` varchar(255) NOT NULL,
  `costohab` int(15) NOT NULL,
  `costoadic` int(15) NOT NULL,
  `usdbsf` int(15) NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `telefonot` varchar(255) NOT NULL,
  `estatus` varchar(255) NOT NULL,
  `borderColor` varchar(255) NOT NULL,
  `horaingreso` varchar(255) NOT NULL,
  `horasalida` varchar(255) NOT NULL,
  `montocredito` int(15) NOT NULL,
  `abono` int(15) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `usuarioact` varchar(20) NOT NULL,
  `acompanantes` int(2) NOT NULL,
  `utileria1` varchar(30) NOT NULL,
  `utileria1c` int(2) NOT NULL,
  `utileria2` varchar(30) NOT NULL,
  `utileria2c` int(2) NOT NULL,
  `utileria3` varchar(30) NOT NULL,
  `utileria3c` int(2) NOT NULL,
  `cargohabitacion` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

INSERT INTO `calendar` VALUES (23,9,"Alfredo Tiapa","2020-02-25","2020-02-26",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","hh",1,0,0,"Maturin","AnzoÃ¡tegui, Barcelona",90,"EFECTIVO","ZELLE CD",1111,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Checking","green","10:57:00","00:00:00",13,0,"at","at",0,"",0,"",0,"",0,0),
(22,5,"Alfredo Tiapa","2020-02-25","2020-02-26",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","ff",1,0,0,"Maturin","Vargas, La Guaira",90,"BANESCO","BANESCO",11,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Checking","green","10:56:46","00:00:00",12,0,"at","at",0,"",0,"",0,"",0,0),
(21,2,"mariela bermudez","2020-02-25","2020-02-26",04148972972,11338898,"Venezuela","1971-09-17","anzoategui","doctoras","agracia@gmail.com","anaco","yy",1,0,0,"Barcelona/Anzoategui","Yaracuy, San Felipe",90,"BANESCO","ZELLE CD",222,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Femenino","consultori",04267883333,"Checking","green","10:56:31","00:00:00",12,0,"at","at",0,"",0,"",0,"",0,0),
(20,10,"mariela bermudez","2020-02-25","2020-02-26",04148972972,11338898,"Venezuela","1971-09-17","anzoategui","doctoras","agracia@gmail.com","anaco","dd",1,0,0,"Barcelona/Anzoategui","AnzoÃ¡tegui, Barcelona",90,"EFECTIVO","ZELLE CD",12121,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Femenino","consultori",04267883333,"Checking","green","10:55:23","00:00:00",33,0,"at","at",0,"",0,"",0,"",0,0),
(19,8,"Alfredo Tiapa","2020-02-25","2020-02-26",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","ff",1,0,0,"Maturin","Vargas, La Guaira",90,"EFECTIVO","ZELLE CD",12121,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Checking","green","10:54:49","00:00:00",12,0,"at","at",0,"",0,"",0,"",0,0),
(18,7,"Alfredo Tiapa","2020-02-25","2020-02-26",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","kkk",1,0,0,"Maturin","AnzoÃ¡tegui, Barcelona",90,"EFECTIVO","ZELLE CD",11,"USD","alfredo tiapa11","2020-02-25",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Checking","green","10:10:17","00:00:00",120,0,"at","at",0,"",0,"",0,"",0,0),
(17,6,"mariela bermudez","2020-02-25","2020-02-26",04148972972,11338898,"Venezuela","1971-09-17","anzoategui","doctoras","agracia@gmail.com","anaco","hhh",1,0,0,"Barcelona/Anzoategui","AnzoÃ¡tegui, Barcelona",120,"EFECTIVO","ZELLE CD",12121,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Femenino","consultori",04267883333,"Checkout","magenta","08:56:23","20:23:22",2000,0,"at","at",0,"",0,"",0,"",0,2320),
(16,4,"Alfredo Tiapa","2020-02-24","2020-02-25",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","fff",2,2,2,"Maturin","AnzoÃ¡tegui, Barcelona",150,"EFECTIVO","ZELLE CD",12121,"USD","alfredo tiapa","2020-02-22",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Reservada","brown","00:00:00","00:00:00",0,0,"at","",1,"",0,"",0,"",0,0),
(14,6,"Alfredo Tiapa","2020-02-21","2020-02-22",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","fgfgfg",2,2,2,"Maturin","AnzoÃ¡tegui, Barcelona",150,"EFECTIVO","ZELLE CD",111,"USD","alfredo tiapa","2020-02-27",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Checking","green","11:16:14","00:00:00",0,0,"at","at",6,"",0,"",0,"",0,0),
(13,4,"mariela bermudez","2020-02-21","2020-02-22",04148972972,11338898,"Venezuela","1971-09-17","anzoategui","doctoras","agracia@gmail.com","anaco","DD",2,2,2,"Barcelona/Anzoategui","AnzoÃ¡tegui, Barcelona",150,"EFECTIVO","EFECTIVO $",222,"USD","alfredo tiapa","2020-02-21",90,30,80000,"Femenino","consultori",04267883333,"Checkout","magenta","11:17:54","16:50:25",1500,0,"at","at",2,"",0,"",0,"",0,0),
(15,7,"Alfredo Tiapa","2020-02-21","2020-02-22",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","fff",2,2,0,"Maturin","AnzoÃ¡tegui, Barcelona",90,"EFECTIVO","ZELLE CD",2222,"USD","alfredo tiapa","2020-02-21",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Reservada","brown","00:00:00","00:00:00",0,0,"at","",0,"",0,"",0,"",0,0),
(12,3,"Alfredo Tiapa","2020-02-21","2020-02-22",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","XXX",2,1,1,"Maturin","AnzoÃ¡tegui, Barcelona",120,"EFECTIVO","EFECTIVO $",0,"USD","alfredo tiapa","2020-02-01",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Reservada","green","11:03:51","00:00:00",0,0,"at","at",4,"",0,"",0,"",0,0),
(24,11,"Alfredo Tiapa","2020-02-25","2020-02-26",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","ss",1,0,0,"Vargas, La Guaira","Vargas, La Guaira",90,"EFECTIVO","ZELLE CD",12121,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Checking","green","10:57:12","00:00:00",13,0,"at","at",0,"",0,"",0,"",0,0),
(25,12,"Alfredo Tiapa","2020-02-25","2020-02-26",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","jujj",1,0,0,"Maturin","AnzoÃ¡tegui, Barcelona",90,"EFECTIVO","ZELLE CD",1111,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Checkout","magenta","10:57:24","16:51:44",11,0,"at","at",0,"",0,"",0,"",0,0),
(26,14,"mariela bermudez","2020-02-25","2020-02-26",04148972972,11338898,"Venezuela","1971-09-17","anzoategui","doctoras","agracia@gmail.com","anaco","jj",1,0,0,"Barcelona/Anzoategui","Vargas, La Guaira",90,"BANESCO","ZELLE CD",12121,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Femenino","consultori",04267883333,"Checking","green","10:57:41","00:00:00",44,0,"at","at",0,"",0,"",0,"",0,0),
(27,15,"Alfredo Tiapa","2020-02-25","2020-02-26",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","aa",1,0,0,"Maturin","AnzoÃ¡tegui, Barcelona",90,"EFECTIVO","ZELLE CD",12121,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Reservada","brown","00:00:00","00:00:00",11,0,"at","",0,"",0,"",0,"",0,0),
(28,14,"Alfredo Tiapa","2020-02-26","2020-02-27",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin",11,1,0,0,"Maturin","AnzoÃ¡tegui, Barcelona",90,"EFECTIVO","ZELLE CD",12121,"USD","alfredo tiapa","2020-02-26",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Checkout","magenta","08:27:43","09:06:39",123,0,"at","at",0,"",0,"",0,"",0,5800),
(29,15,"mariela bermudez","2020-02-26","2020-02-27",04148972972,11338898,"Venezuela","1971-09-17","anzoategui","doctoras","agracia@gmail.com","anaco","ss",1,1,0,"Barcelona/Anzoategui","AnzoÃ¡tegui, Barcelona",90,"EFECTIVO","ZELLE CD",2222,"USD","alfredo tiapa","2020-02-26",90,30,80000,"Femenino","consultori",04267883333,"Reservada","brown","00:00:00","00:00:00",11,11,"at","at",0,"",0,"",0,"",0,0),
(30,1,"Alfredo Tiapa","2020-03-08","2020-03-09",11111111111,11111111,"Venezolano","2020-03-03","Soltero","ee","alfredotiapa@gmail.com","",1111111111222222222233333333334444444444555555555566666666667777777777888888888899999999990000000000,1,1,0,"Vargas, La Guaira","Vargas, La Guaira",90,"BANESCO","ZELLE CD",12121,"USD","alfredo tiapa","2020-03-25",90,30,80000,"Femenino","","","Reservada","brown","00:00:00","00:00:00",0,0,"at","",0,"",0,"",0,"",0,0);


DROP TABLE IF EXISTS `calendarbohio`;

CREATE TABLE `calendarbohio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceId` int(15) NOT NULL,
  `title` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `cedula` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fechan` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `telefonot` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `empresa` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estatus` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `borderColor` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `horaingreso` time NOT NULL,
  `horasalida` time NOT NULL,
  `estadocivil` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nacionalidad` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `profesion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nombremesa` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nombrebohio` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nombrelocacion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `procedencia` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `usuarioact` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `abono` int(15) NOT NULL,
  `tipoabono` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `adultos` int(15) NOT NULL,
  `ninosmen` int(15) NOT NULL,
  `teraedad` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `calendarbohio` VALUES (1,10,"Alfredo Tiapa","2020-02-16","2020-02-17",9294677,04265910071,"alfredotiapa@gmail.com","La caracoal 4 maturin","","Masculino","1970-02-08",04267883333,"digsby construcciopnes","Reservada","brown","00:00:00","00:00:00","casado","venezolano","ingeniero","Bohio","Bohio","Piscina Playita","Maturin","at","",0,"$",1,1,1),
(2,51,"Alfredo Tiapa","2020-02-18","2020-02-19",9294677,04265910071,"alfredotiapa@gmail.com","La caracoal 4 maturin","","Masculino","1970-02-08",04267883333,"digsby construcciopnes","Reservada","brown","00:00:00","00:00:00","casado","venezolano","ingeniero","Mesa 51","Bahio","Piscina Playita","Maturin","at","",0,"$",1,1,1),
(3,11,"Alfredo Tiapa","2020-02-16","2020-02-17",9294677,04265910071,"alfredotiapa@gmail.com","La caracoal 4 maturin","","Masculino","1970-02-08",04267883333,"digsby construcciopnes","Reservada","brown","00:00:00","00:00:00","casado","venezolano","ingeniero","Mini Churuatas N","Mini churuatas N","Piscina Playita","Maturin","at","",0,"$",1,1,1),
(4,76,"Alfredo Tiapa","2020-02-17","2020-02-18",9294677,04265910071,"alfredotiapa@gmail.com","La caracoal 4 maturin","","Masculino","1970-02-08",04267883333,"digsby construcciopnes","Reservada","brown","00:00:00","00:00:00","casado","venezolano","ingeniero","Mesa 76","Mini Churuatas N","Piscina Playita","Maturin","at","",0,"",1,1,1),
(5,15,"Alfredo Tiapa","2020-02-16","2020-02-17",9294677,04265910071,"alfredotiapa@gmail.com","La caracoal 4 maturin","","Masculino","1970-02-08",04267883333,"digsby construcciopnes","Reservada","brown","00:00:00","00:00:00","casado","venezolano","ingeniero","Churuata Grande-1","Churuata Grande-1","Piscina Playita","Maturin","at","",0,"",1,1,1),
(6,22,"Alfredo Tiapa","2020-02-16","2020-02-17",9294677,04265910071,"alfredotiapa@gmail.com","La caracoal 4 maturin","","Masculino","1970-02-08",04267883333,"digsby construcciopnes","Reservada","brown","00:00:00","00:00:00","casado","venezolano","ingeniero","Camping","Camping","Piscina Pequena","Maturin","at","",0,"",1,1,1),
(7,24,"Alfredo Tiapa","2020-02-16","2020-02-17",9294677,04265910071,"alfredotiapa@gmail.com","La caracoal 4 maturin","","Masculino","1970-02-08",04267883333,"digsby construcciopnes","Reservada","brown","00:00:00","00:00:00","casado","venezolano","ingeniero","Camping Exterior","Camping Exterior","Piscina Pequena","Maturin","at","",0,"",1,1,1),
(8,42,"Alfredo Tiapa","2020-02-17","2020-02-18",9294677,04265910071,"alfredotiapa@gmail.com","La caracoal 4 maturin","","Masculino","1970-02-08",04267883333,"digsby construcciopnes","Reservada","brown","00:00:00","00:00:00","casado","venezolano","ingeniero","Mesa 42","Camping Exterior","Piscina Pequena","Maturin","at","",0,"",1,1,1),
(9,76,"Alfredo Tiapa","2020-02-15","2020-02-16",9294677,04265910071,"alfredotiapa@gmail.com","La caracoal 4 maturin","","Masculino","1970-02-08",04267883333,"digsby construcciopnes","Reservada","brown","00:00:00","00:00:00","casado","venezolano","ingeniero","Mesa 76","Mini Churuatas N","Piscina Playita","Maturin","at","",0,"",1,1,1),
(10,10,"Alfredo Tiapa","2020-02-17","2020-02-18",9294677,04265910071,"alfredotiapa@gmail.com","La caracoal 4 maturin","","Masculino","1970-02-08",04267883333,"digsby construcciopnes","Reservada","brown","00:00:00","00:00:00","casado","venezolano","ingeniero","Bohio","Bohio","Piscina Playita","Maturin","at","",0,"",1,1,1);


DROP TABLE IF EXISTS `calendarorg`;

CREATE TABLE `calendarorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceId` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `cedula` varchar(255) NOT NULL,
  `nacionalidad` varchar(255) NOT NULL,
  `estadocivil` varchar(255) NOT NULL,
  `prefesion` varchar(255) NOT NULL,
  `destino` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `adultos` varchar(255) NOT NULL,
  `ninosmen` int(20) NOT NULL,
  `ninosmay` int(20) NOT NULL,
  `procedencia` varchar(255) NOT NULL,
  `monto` int(20) NOT NULL,
  `bancoe` varchar(255) NOT NULL,
  `bancor` varchar(255) NOT NULL,
  `transferencia` varchar(50) NOT NULL,
  `moneda` varchar(255) NOT NULL,
  `quientransfiere` varchar(50) NOT NULL,
  `fechatransf` varchar(20) NOT NULL,
  `costohab` int(20) NOT NULL,
  `costoadic` int(20) NOT NULL,
  `usdbsf` int(20) NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `telefonot` varchar(255) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `estatus` varchar(255) NOT NULL,
  `borderColor` varchar(255) NOT NULL,
  `horaingreso` time NOT NULL,
  `horasalida` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4;

INSERT INTO `calendarorg` VALUES (16,4,"DANIELA BERROTERAN","2019-09-06","2019-09-07","","","","","","","","","",2,0,0,"",0,"","","","USD","","",0,0,0,"","","","","","00:00:00","00:00:00"),
(15,3,"DANIELA BERROTERAN","2019-09-06","2019-09-07","",11,"","","","","","","",2,0,0,"",0,"","","","USD","","",0,0,0,"","","","","","00:00:00","00:00:00"),
(14,2,"DANIELA BERROTERAN","2019-09-06","2019-09-07","",11,"","","","","",11,"",2,0,0,"",0,"","","","USD","","",0,0,0,"","","","","","00:00:00","00:00:00"),
(13,1,"DANIELA BERROTERAN","2019-09-06","2019-09-07",11,11,"","","","","DANIELA@GMAIL.COM",",MATURIN","CANCELO 2 HABITACIONES",2,0,0,"MATURIN",0,"BOFA","BOFA",22,"USD","DANIELA BERROTERAN","2019-01-09",0,0,0,"","","","","","00:00:00","00:00:00"),
(17,5,"ALEXANDER PALACIO","2019-09-06","2019-09-07","","","","","","","","","",2,0,0,"",0,"","","","USD","","",0,0,0,"","","","","","00:00:00","00:00:00"),
(18,6,"CRISTINA PEREZ","2019-09-06","2019-09-08","","","","","","","","","",2,0,0,"",0,"","","","USD","","",0,0,0,"","","","","","00:00:00","00:00:00"),
(19,9,"ALBERTO ANZELLINI","2019-09-06","2019-09-07","","","","","","","","","",2,0,0,"",0,"","","","USD","","",0,0,0,"","","","","","00:00:00","00:00:00"),
(20,10,"ADRIANA HOUDA","2019-09-06","2019-09-08","","","","","","","","","",2,0,0,"",0,"EFECTIVO","","","USD","","",0,0,0,"","","","","","00:00:00","00:00:00"),
(21,11,"ADRIANA HOUDA","2019-09-06","2019-09-08","","","","","","","","","",2,0,0,"",0,"EFECTIVO","","","BSF","","",0,0,0,"","","","","","00:00:00","00:00:00"),
(22,1,"ENRIQUE FONZALEZ","2019-09-07","2019-09-08","","","","","","","","","",2,0,0,"",0,"","","","USD","","",0,0,0,"","","","","","00:00:00","00:00:00"),
(23,2,"ENRIQUE GONZALEZ","2019-09-07","2019-09-08","","","","","","","","","",2,0,0,"",0,"","","","USD","","",0,0,0,"","","","","","00:00:00","00:00:00"),
(24,3,"ENRIQUE GONZLEZ","2019-09-07","2019-09-08","","","","","","","","","",2,0,0,"",0,"","","","USD","","",0,0,0,"","","","","","00:00:00","00:00:00"),
(25,4,"ENRIQUE GONZALEZ","2019-09-07","2019-09-08","","","","","","","","","",1,0,0,"",0,"","","","USD","","",0,0,0,"","","","","","00:00:00","00:00:00"),
(26,5,"LUIS OCHOA","2019-09-07","2019-09-08","","","","","","","","","",2,0,0,"",0,"WELLS FARGO","ZELLE CD","","USD","LUIS OCHOA","",0,0,0,"","","","","","00:00:00","00:00:00"),
(27,7,"COJE BURRA","2019-09-07","2019-09-08","","","","","","","","","",2,0,0,"",0,"EFECTIVO","","","USD","","",0,0,0,"","","","","","00:00:00","00:00:00"),
(28,8,"COJE BURRA","2019-09-07","2019-09-08","","","","","","","","","",2,0,0,"",0,"","","","USD","","",0,0,0,"","","","","","00:00:00","00:00:00"),
(29,9,"COJE BURRA","2019-09-07","2019-09-08","","","","","","","","","",2,0,0,"",0,"EFECTIVO","","","USD","","",0,0,0,"","","","","","00:00:00","00:00:00"),
(94,1,"Alfredo Tiapa","2020-01-08","2020-01-09",04265910071,9294677,"","","","","alfredotiapa@gmail.com","La caracoal 4 maturin","aaaa",2,2,2,"Merida",130,"EFECTIVO","BANESCO",12121,"USD","alfredo tiapa","12/31/2019",80,25,50000,"masculino",04267883333,"digsby construcciopnes","checkout","magenta","15:45:08","15:46:08"),
(92,2,"Alfredo Tiapa","2020-01-06","2020-01-07",04265910071,9294677,"","","","","alfredotiapa@gmail.com","La caracoal 4 maturin","ASDADASD",2,2,2,"Valencia",130,"BOFA","EFECTIVO","","USD","alfredo tiapa","12/26/2019",80,25,50000,"masculino",04267883333,"digsby construcciopnes","checking","yellow","21:22:24","00:00:00"),
(91,3,"LUIS GARCIAS","2020-01-06","2020-01-07",04265910071,11223344,"","","","","","MATURIBN","ASASAS",2,1,1,"Puerto la Cruz",105,"EFECTIVO","EFECTIVO",12121,"USD","alfredo tiapa","12/26/2019",80,25,50000,"masculino",0245666666,"DIGSBY","checkout","magenta","12:04:52","21:18:31"),
(90,1,"Alfredo Tiapa","2020-01-06","2020-01-07",04265910071,9294677,"","","","","alfredotiapa@gmail.com","La caracoal 4 maturin","asas",2,2,2,"Puerto la Cruz",130,"EFECTIVO","EFECTIVO",12121,"USD","alfredo tiapa","12/09/2019",80,25,50000,"masculino",04267883333,"digsby construcciopnes","checkout","magenta","12:11:43","22:56:19"),
(89,7,"Mariela Bermudez","2020-01-06","2020-01-07",04267883333,11338898,"","","","","bermudemariela@gmail.com","Maturin edo monagas la caracola v casa 10","asasas",2,2,2,"Maracay",130,"BOFA","EFECTIVO",12121,"USD","alfredo tiapa","01-01-2020",80,25,50000,"Femenino",04247883333,"consultorio","checkout","magenta","11:56:43","13:17:11"),
(93,8,"Alfredo Tiapa","2020-01-06","2020-01-07",04265910071,9294677,"","","","","alfredotiapa@gmail.com","La caracoal 4 maturin","asasa",2,2,2,"Puerto la Cruz",130,"EFECTIVO","EFECTIVO",12121,"USD","alfredo tiapa","12/26/2019",80,25,50000,"masculino",04267883333,"digsby construcciopnes","checkout","magenta","13:21:28","21:22:06"),
(95,3,"Alfredo Tiapa","2020-01-08","2020-01-09",04265910071,9294677,"","","","","alfredotiapa@gmail.com","La caracoal 4 maturin","asasas",2,2,2,"Puerto la Cruz",130,"EFECTIVO","EFECTIVO",12121,"USD","alfredo tiapa","12/26/2019",80,25,50000,"masculino",04267883333,"digsby construcciopnes","checking","yellow","18:41:06","00:00:00"),
(96,1,"Alfredo Tiapa","2020-01-10","2020-01-11",04265910071,9294677,"","","","","alfredotiapa@gmail.com","La caracoal 4 maturin","asasas",2,2,2,"El tigre",130,"EFECTIVO","EFECTIVO",2222,"USD","alfredo tiapa","12/26/2019",80,25,50000,"masculino",04267883333,"digsby construcciopnes","checkout","magenta","21:13:22","21:16:37"),
(97,3,"Mariela Bermudez","2020-01-10","2020-01-11",04267883333,11338898,"","","","","bermudemariela@gmail.com","Maturin edo monagas la caracola v casa 10",12121,2,2,3,"Puerto la Cruz",155,"EFECTIVO","EFECTIVO",12121,"USD","alfredo tiapa","12/26/2019",80,25,50000,"Femenino",04247883333,"consultorio","checkout","magenta","21:14:58","21:17:17"),
(98,4,"Mariela Bermudez","2020-01-10","2020-01-11",04267883333,11338898,"","","","","bermudemariela@gmail.com","Maturin edo monagas la caracola v casa 10","asasa",1,1,1,"Puerto la Cruz",105,"EFECTIVO","EFECTIVO",12121,"USD","alfredo tiapa","12/09/2019",80,25,50000,"Femenino",04247883333,"consultorio","checkout","magenta","21:15:41","21:23:03"),
(99,6,"Alfredo Tiapa","2020-01-10","2020-01-11",04265910071,9294677,"","","","","alfredotiapa@gmail.com","La caracoal 4 maturin","sadasdsa",1,1,3,"El tigre",155,"EFECTIVO","EFECTIVO",12121,"USD","alfredo tiapa","12/26/2019",80,25,50000,"masculino",04267883333,"digsby construcciopnes","checking","yellow","21:16:04","00:00:00"),
(100,7,"Alfredo Tiapa","2020-01-10","2020-01-11",04265910071,9294677,"","","","","alfredotiapa@gmail.com","La caracoal 4 maturin","asasa",2,2,2,"Puerto la Cruz",130,"EFECTIVO","EFECTIVO",12121,"USD","alfredo tiapa","12/31/2019",80,25,50000,"masculino",04267883333,"digsby construcciopnes","checking","yellow","21:24:37","00:00:00"),
(101,8,"LUIS GARCIAS","2020-01-10","2020-01-11",04265910071,11223344,"","","","","","MATURIBN","sdasdasd",2,2,2,"Caracas",130,"EFECTIVO","EFECTIVO",12121,"USD","alfredo tiapa","12/26/2019",80,25,50000,"masculino",0245666666,"DIGSBY","checkout","magenta","11:27:28","11:30:01");


DROP TABLE IF EXISTS `campamento`;

CREATE TABLE `campamento` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `campamento` varchar(40) NOT NULL,
  `cupos` int(4) NOT NULL,
  `asignado` int(4) NOT NULL,
  `costo` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

INSERT INTO `campamento` VALUES (1,"adulto",100,10,100000);


DROP TABLE IF EXISTS `cargohabitacion`;

CREATE TABLE `cargohabitacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `resourceId` int(13) NOT NULL,
  `fechaingreso` date NOT NULL,
  `cliente` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `habitacion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `servicio` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `concepto` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `und` int(15) NOT NULL,
  `precio` int(15) NOT NULL,
  `iva` int(13) NOT NULL,
  `importe` int(15) NOT NULL,
  `credito` int(15) NOT NULL,
  `factura` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `moneda` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `cargohabitacion` VALUES (9,11338898,4,"2020-02-21","mariela bermudez","","2020-02-24","Servicio Restaurant","asdsad",6,6,6,6,1500,222,"$"),
(18,11338898,6,"2020-02-25","mariela bermudez","","2020-02-25","Servicio Restaurant","",1,2000,16,2320,2000,33,"$"),
(16,9294677,12,"2020-02-25","Alfredo Tiapa","","2020-02-25","Servicio Restaurant","111111aaaaaa",1,1000,16,1160,11,11,"$"),
(25,11338898,10,"2020-02-25","mariela bermudez","","2020-02-29","Servicio Restaurant","asdsad",1,105,16,121,33,11,"$"),
(26,9294677,8,"2020-02-25","Alfredo Tiapa","","2020-02-18","Servicio Restaurant","asdsad",1,105,16,121,12,11,"$"),
(21,11338898,14,"2020-02-25","mariela bermudez","","2020-02-26","Servicio Restaurant","asdsad",1,1500,16,1740,44,11,"$"),
(22,11338898,14,"2020-02-25","mariela bermudez","","2020-02-26","Servicio Piscina Playita","asdsad",1,4500,16,5220,44,11,"$"),
(23,9294677,14,"2020-02-26","Alfredo Tiapa","","2020-02-26","Servicio Restaurant","asdsad",1,5000,16,5800,123,22,"$");


DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(255) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `fechan` date NOT NULL,
  `correo` varchar(60) NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefonot` varchar(255) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `procedencia` varchar(255) NOT NULL,
  `profesion` varchar(255) NOT NULL,
  `estadocivil` varchar(255) NOT NULL,
  `nacionalidad` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4;

INSERT INTO `clientes` VALUES (65,11338898,"mariela bermudez",04148972972,"1971-09-17","agracia@gmail.com","Femenino","anaco",04267883333,"consultori","Barcelona/Anzoategui","doctoras","anzoategui","Venezuela"),
(34,9294677,"Alfredo Tiapa",04265910071,"1970-02-08","alfredotiapa@gmail.com","Masculino","La caracoal 4 maturin",04267883333,"digsby construcciopnes","Maturin","ingeniero","casado","venezolano"),
(67,9294688,"maria valentina tiap",04249988888,"1990-02-08","valentiapa@hotmail.com","Femenino","anaco",04265554444,"ucv","Anaco/Anzoategui","estudiante","Soltero","Venezolano"),
(68,1111,111,04267883333,"1980-01-01","alfredotiapa@gmail.com","Femenino","anaco",04267883333,"digsby construcciopnes","Valencia/Carabobo","ingeniero","Soltero","Venezolano"),
(69,1133,1111,04267883333,"1111-01-01","alfredotiapa@gmail.com","Femenino","anaco",04267883333,"digsby construcciopnes","Barcelona/Anzoategui","ingeniero","Soltero","Venezolano"),
(70,111222,"mariela bermudez",04267883333,"0001-01-01","agracia@gmail.com","Femenino","anaco",04267883333,"consultori","Barcelona/Anzoategui","doctoras","Soltero","Venezolano"),
(71,15805987,"Xavier rivero",04148705686,"1989-02-11","x.riverovera@gmail.com","Masculino","asasa",04148705686,"estancia los potros","Carupano/Sucre","gerente","Casado","Venezolano"),
(72,3123123,1312312,123123,"2020-02-14","agracia@gmail.com","Femenino","anaco",123123,"","","","Soltero","Venezolano"),
(73,3123213,21312312,123123,"2020-02-14","agracia@gmail.com","Femenino","anaco",213213,"","","","Soltero","Venezolano"),
(74,1231321212,31231231,123123,"2020-02-14","agracia@gmail.com","Masculino","",12312312,"","","","Casado","Extranjero"),
(75,11223344,"aaaaaaaaaaaaa",2222222222,"2020-02-14","agracia@gmail.com","Femenino","anaco",333333333333,"","","","Soltero","Venezolano");


DROP TABLE IF EXISTS `controlcierre`;

CREATE TABLE `controlcierre` (
  `MesAct` varchar(255) NOT NULL,
  `MesPrev` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `controlcierre` VALUES (7,6);


DROP TABLE IF EXISTS `costohabitacion`;

CREATE TABLE `costohabitacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` varchar(13) COLLATE utf8_spanish_ci NOT NULL,
  `costohab` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `costoadic` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `husdbsf` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `costohabitacion` VALUES (1,"2019-12-19",80,25,47500);


DROP TABLE IF EXISTS `departamentos`;

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `nombre` int(11) NOT NULL,
  `descripcion` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;



DROP TABLE IF EXISTS `depositos`;

CREATE TABLE `depositos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `producto` varchar(30) NOT NULL,
  `deposito` int(3) NOT NULL,
  `ubicacion` varchar(50) NOT NULL,
  `cantidad` decimal(12,3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

INSERT INTO `depositos` VALUES (48,"Cerveza",2,"dep2","36.000"),
(47,"Carne porcina",1,"dep1","10.020"),
(46,"Cerveza",1,"dep1","10.000"),
(45,"Cerveza",3,"frizer","6.000"),
(44,"Vino blanco",4,"estante","5.000"),
(43,"Vino blanco",3,"estanten","5.000"),
(42,"Vino blanco",1,"dep1","100.000"),
(41,"Vino blanco",2,"estante","5.000"),
(49,"Desinfectante",3,"dep3","5.000"),
(50,"estafilo coco",1,"No especificada","0.000");


DROP TABLE IF EXISTS `egresoreporte`;

CREATE TABLE `egresoreporte` (
  `id` int(255) NOT NULL,
  `numerodeAjuste` int(10) NOT NULL,
  `nombreArchivo` varchar(255) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  PRIMARY KEY (`numerodeAjuste`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `egresoreporte` VALUES (0,0,"NO BORRAR","NO BORRAR","NO BORRAR");


DROP TABLE IF EXISTS `eventos`;

CREATE TABLE `eventos` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `codigoevento` varchar(10) NOT NULL,
  `descripcionevento` varchar(30) NOT NULL,
  `precio` int(12) NOT NULL,
  `cupos` int(4) NOT NULL,
  `ocupados` int(4) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

INSERT INTO `eventos` VALUES (4,11,"campamento adulto",356,100,22),
(5,22,"campamento carpa",22,22,22),
(6,11,"campamento ninos",356,100,11);


DROP TABLE IF EXISTS `formularioadulto`;

CREATE TABLE `formularioadulto` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `fechan` varchar(10) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `edad` varchar(2) NOT NULL,
  `talla` varchar(3) NOT NULL,
  `trabajo` varchar(20) NOT NULL,
  `cargo` varchar(20) NOT NULL,
  `lengua` varchar(20) NOT NULL,
  `cedula` varchar(12) NOT NULL,
  `carpa` varchar(1) NOT NULL,
  `habitacion` varchar(1) NOT NULL,
  `nombre2` varchar(30) NOT NULL,
  `telh` varchar(11) NOT NULL,
  `telo` varchar(11) NOT NULL,
  `telm` varchar(11) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `direccionh` varchar(60) NOT NULL,
  `medico` varchar(30) NOT NULL,
  `telefonom` varchar(11) NOT NULL,
  `poliza` varchar(15) NOT NULL,
  `seguro` varchar(20) NOT NULL,
  `numerop` varchar(15) NOT NULL,
  `titularp` varchar(30) NOT NULL,
  `titularc` varchar(11) NOT NULL,
  `emernombre` varchar(30) NOT NULL,
  `emertelf` varchar(11) NOT NULL,
  `emercasa` varchar(11) NOT NULL,
  `emercel` varchar(11) NOT NULL,
  `espnombre1` varchar(30) NOT NULL,
  `esptelf1` varchar(11) NOT NULL,
  `espnombre2` varchar(30) NOT NULL,
  `esptelf2` varchar(11) NOT NULL,
  `espnombre3` varchar(30) NOT NULL,
  `esptelf3` varchar(11) NOT NULL,
  `cm1` varchar(1) NOT NULL,
  `cm2` varchar(1) NOT NULL,
  `cm3` varchar(1) NOT NULL,
  `cm4` varchar(1) NOT NULL,
  `cm5` varchar(1) NOT NULL,
  `cm6` varchar(1) NOT NULL,
  `cm7` varchar(1) NOT NULL,
  `cm8` varchar(1) NOT NULL,
  `cm9` varchar(1) NOT NULL,
  `cm10` varchar(1) NOT NULL,
  `cm11` varchar(1) NOT NULL,
  `cm12` varchar(1) NOT NULL,
  `cm13` varchar(1) NOT NULL,
  `cm14` varchar(1) NOT NULL,
  `cm15` varchar(1) NOT NULL,
  `cm16` varchar(1) NOT NULL,
  `cm17` varchar(1) NOT NULL,
  `cm18` varchar(1) NOT NULL,
  `cm19` varchar(1) NOT NULL,
  `cm20` varchar(1) NOT NULL,
  `cm21` varchar(1) NOT NULL,
  `cm22` varchar(1) NOT NULL,
  `cm23` varchar(1) NOT NULL,
  `cm24` varchar(30) NOT NULL,
  `cm25` varchar(30) NOT NULL,
  `cm26` varchar(60) NOT NULL,
  `a1` varchar(1) NOT NULL,
  `a2` varchar(1) NOT NULL,
  `a3` varchar(1) NOT NULL,
  `a4` varchar(1) NOT NULL,
  `a5` varchar(1) NOT NULL,
  `a6` varchar(1) NOT NULL,
  `a7` varchar(30) NOT NULL,
  `a8` varchar(30) NOT NULL,
  `ra1` varchar(1) NOT NULL,
  `ra2` varchar(1) NOT NULL,
  `ra3` varchar(1) NOT NULL,
  `ra4` varchar(1) NOT NULL,
  `ra5` varchar(1) NOT NULL,
  `ra6` varchar(30) NOT NULL,
  `ip1` varchar(1) NOT NULL,
  `ip2` varchar(1) NOT NULL,
  `ip3` varchar(1) NOT NULL,
  `ip4` varchar(1) NOT NULL,
  `ip5` varchar(1) NOT NULL,
  `ip6` varchar(1) NOT NULL,
  `ip7` varchar(1) NOT NULL,
  `tm1` varchar(60) NOT NULL,
  `banco` varchar(15) NOT NULL,
  `confirmacion` varchar(10) NOT NULL,
  `fechat` varchar(11) NOT NULL,
  `monto` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

INSERT INTO `formularioadulto` VALUES (1,"alfredo ramon","tiapa gascon","","","","","","","",27333444,"","","","","","","alfredotiapa@gmail.com","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",1,"banesco",2432141234,"2019-01-01",200000),
(2,"","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");


DROP TABLE IF EXISTS `habitaciones`;

CREATE TABLE `habitaciones` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `precio` varchar(20) NOT NULL,
  `adicional` varchar(20) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `usdbsf` varchar(20) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

INSERT INTO `habitaciones` VALUES (1,"Precio Habitaciones",90,30,"2020-02-08",80000);


DROP TABLE IF EXISTS `ingresoreporte`;

CREATE TABLE `ingresoreporte` (
  `id` int(255) NOT NULL,
  `numerodeAjuste` int(10) NOT NULL,
  `nombreArchivo` varchar(255) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  PRIMARY KEY (`numerodeAjuste`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `ingresoreporte` VALUES (0,0,"NO BORRAR","NO BORRAR","NO BORRAR");


DROP TABLE IF EXISTS `kardexingresos`;

CREATE TABLE `kardexingresos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `numerodefactura` int(11) NOT NULL,
  `usuario` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fechadeingreso` date NOT NULL,
  `codproveedor` int(11) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `iva` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `movimiento` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;



DROP TABLE IF EXISTS `kardexsalidas`;

CREATE TABLE `kardexsalidas` (
  `id` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `solicitante` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `razon` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fechadesalida` date NOT NULL,
  `movimiento` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;



DROP TABLE IF EXISTS `kardextraslados`;

CREATE TABLE `kardextraslados` (
  `id` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `solicitante` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `razon` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fechadetraslado` date NOT NULL,
  `movimiento` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;



DROP TABLE IF EXISTS `movimientoskardexauditoria`;

CREATE TABLE `movimientoskardexauditoria` (
  `numerodereferencia` int(12) NOT NULL,
  `producto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `deposito` int(3) NOT NULL,
  `cantidad` decimal(12,3) NOT NULL,
  `nuevacantidad` decimal(12,3) NOT NULL,
  `und` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `undN` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `nuevoprecio` decimal(12,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;



DROP TABLE IF EXISTS `movimientoskardexi`;

CREATE TABLE `movimientoskardexi` (
  `numerodefactura` int(12) NOT NULL,
  `codigoproveedor` int(5) NOT NULL,
  `producto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `deposito` int(3) NOT NULL,
  `cantidad` decimal(12,3) NOT NULL,
  `und` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `iva` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;



DROP TABLE IF EXISTS `movimientoskardexs`;

CREATE TABLE `movimientoskardexs` (
  `id` int(6) NOT NULL,
  `producto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` decimal(12,3) NOT NULL,
  `und` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `antiguodeposito` int(3) NOT NULL,
  `motivo` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;



DROP TABLE IF EXISTS `movimientoskardext`;

CREATE TABLE `movimientoskardext` (
  `id` int(6) NOT NULL,
  `producto` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` decimal(12,3) NOT NULL,
  `und` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `antiguodeposito` int(3) NOT NULL,
  `nuevodeposito` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;



DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `und` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `costo` decimal(12,2) NOT NULL,
  `descuento` int(3) NOT NULL,
  `departamento` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `cta` decimal(12,3) NOT NULL,
  `ctaprevia` decimal(12,3) NOT NULL,
  `reorden` int(3) NOT NULL,
  `fechaultpedido` date NOT NULL,
  `noultimopedido` int(5) NOT NULL,
  `IVA` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `productos` VALUES (1,300,"Carne porcina","Kilogramos","30.00",0,"Cocina","10.020","10.010",10,"2020-04-28",3,"11.00"),
(5,500,"Desinfectante","Unidades","35.00",0,"Limpieza","5.000","0.000",10,"2020-05-09",6,"10.00"),
(9,100,"Vino blanco","Unidades","15.00",0,"Vinos","115.000","15.000",10,"2020-05-09",6,"12.00"),
(11,200,"Cerveza","Unidades","2.00",0,"Licores","56.000","20.000",10,"2020-05-09",6,"12.00");


DROP TABLE IF EXISTS `proveedor`;

CREATE TABLE `proveedor` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `rif` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `direccionfiscal` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `direccionoficina` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `telefonooficina` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `telefonocelular` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `contacto` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `cargocontacto` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `telefonocontacto` varchar(13) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `proveedor` VALUES (1,100,"Distribuidora Oriente","J-102332012","Juanico","El Mero Centro",04128582440,04128582404,"Perezra@gmail.com","Perez","Jefe",04248768768);


DROP TABLE IF EXISTS `pypeliminados`;

CREATE TABLE `pypeliminados` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `POoPR` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `usuario` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `reporteedm`;

CREATE TABLE `reporteedm` (
  `numerodeReporte` int(10) NOT NULL,
  `nombreArchivo` varchar(255) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  PRIMARY KEY (`numerodeReporte`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `reporteedm` VALUES (0,"NO BORRAR","NO BORRAR","NO BORRAR");


DROP TABLE IF EXISTS `reporteidm`;

CREATE TABLE `reporteidm` (
  `numerodeReporte` int(10) NOT NULL,
  `nombreArchivo` varchar(255) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  PRIMARY KEY (`numerodeReporte`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `reporteidm` VALUES (0,"NO BORRAR","NO BORRAR","NO BORRAR");


DROP TABLE IF EXISTS `reportepr`;

CREATE TABLE `reportepr` (
  `numerodeReporte` int(10) NOT NULL,
  `nombreArchivo` varchar(255) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  PRIMARY KEY (`numerodeReporte`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `reportepr` VALUES (0,"NO BORRAR","NO BORRAR","NO BORRAR");


DROP TABLE IF EXISTS `reservaciones`;

CREATE TABLE `reservaciones` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `tipohabitacion` varchar(20) NOT NULL,
  `numerohab` int(2) NOT NULL,
  `fechai` date NOT NULL,
  `fechas` date NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

INSERT INTO `reservaciones` VALUES (1,"KING",1,"2019-12-07","2019-12-07"),
(2,"KING",1,"2019-12-09","2019-12-13");


DROP TABLE IF EXISTS `resourcebohio`;

CREATE TABLE `resourcebohio` (
  `idp` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `eventColor` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `children` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `id` int(11) NOT NULL,
  `parentId` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nombreparendid` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nombrebuilding` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `status` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idp`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `resourcebohio` VALUES (1,"Piscina Playita","","",1,"","","",""),
(2,"Bohio","","",10,1,"Bohio","Piscina Playita","Disponible"),
(3,"Mesa 51","green","",51,10,"Bahio","Piscina Playita","Disponible"),
(4,"Mesa 52","green","",52,10,"Bahio","Piscina Playita","Disponible"),
(5,"Mesa 53","green","",53,10,"Bahio","Piscina Playita","Disponible"),
(6,"Mesa 54","green","",54,10,"Bahio","Piscina Playita","Disponible"),
(7,"Mesa 55","green","",55,10,"Bahio","Piscina Playita","Disponible"),
(8,"Mesa 56","green","",56,10,"Bahio","Piscina Playita","Disponible"),
(9,"Mesa 57","green","",57,10,"Bahio","Piscina Playita","Disponible"),
(10,"Mesa 58","green","",58,10,"Bahio","Piscina Playita","Disponible"),
(11,"Mesa 59","green","",59,10,"Bahio","Piscina Playita","Disponible"),
(12,"Mesa 56","green","",60,10,"Bahio","Piscina Playita","Disponible"),
(13,"Mini Churuatas N","","",11,1,"Mini churuatas N","Piscina Playita","Disponible"),
(14,"Mesa 76","red","",76,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(15,"Mesa 77","red","",77,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(16,"Mesa 78","red","",78,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(17,"Mesa 79","red","",79,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(18,"Mesa 80","red","",80,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(19,"Mesa 81","red","",81,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(20,"Mesa 82","red","",82,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(21,"Mesa 83","red","",83,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(22,"Mesa 84","red","",84,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(23,"Mesa 85","red","",85,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(24,"Mini Churuatas E","","",12,1,"Mini churuatas E","Piscina Playita","Disponible"),
(25,"Mesa 86","blue","",86,12,"Mini Churuatas E","Piscina Playita","Disponible"),
(26,"Mesa 87","blue","",87,12,"Mini Churuatas E","Piscina Playita","Disponible"),
(27,"Mesa 88","blue","",88,12,"Mini Churuatas E","Piscina Playita","Disponible"),
(28,"Mesa 89","blue","",89,12,"Mini Churuatas E","Piscina Playita","Disponible"),
(29,"Mesa 90","blue","",90,12,"Mini Churuatas E","Piscina Playita","Disponible"),
(30,"Mesa 91","blue","",91,12,"Mini Churuatas E","Piscina Playita","Disponible"),
(31,"Mesa 92","blue","",92,12,"Mini Churuatas E","Piscina Playita","Disponible"),
(32,"Mesa 93","blue","",93,12,"Mini Churuatas E","Piscina Playita","Disponible"),
(33,"Mesa 94","blue","",94,12,"Mini Churuatas E","Piscina Playita","Disponible"),
(34,"Mini Churuatas O","","",13,1,"Mini churuatas O","Piscina Playita","Disponible"),
(35,"Mesa 67","blue","",67,13,"Mini Churuatas O","Piscina Playita","Disponible"),
(36,"Mesa 68","blue","",68,13,"Mini Churuatas O","Piscina Playita","Disponible"),
(37,"Mesa 69","blue","",69,13,"Mini Churuatas O","Piscina Playita","Disponible"),
(38,"Mesa 70","blue","",70,13,"Mini Churuatas O","Piscina Playita","Disponible"),
(39,"Mini Churuatas S","","",14,1,"Mini churuatas S","Piscina Playita","Disponible"),
(40,"Mesa 71","purple","",71,14,"Mini Churuatas S","Piscina Playita","Disponible"),
(41,"Mesa 72","purple","",72,14,"Mini Churuatas S","Piscina Playita","Disponible"),
(42,"Mesa 73","purple","",73,14,"Mini Churuatas S","Piscina Playita","Disponible"),
(43,"Churuata Grande-1","","",15,1,"Churuata Grande-1","Piscina Playita","Disponible"),
(44,"Mesa 61","brown","",61,15,"Churuata Grande-1","Piscina Playita","Disponible"),
(45,"Mesa 62","brown","",62,15,"Churuata Grande-1","Piscina Playita","Disponible"),
(46,"Mesa 63","brown","",63,15,"Churuata Grande-1","Piscina Playita","Disponible"),
(47,"Churuata Grande-2","","",16,1,"Churuata Grande-2","Piscina Playita","Disponible"),
(48,"Mesa 64","brown","",64,16,"Churuata Grande-2","Piscina Playita","Disponible"),
(49,"Mesa 65","brown","",65,16,"Churuata Grande-2","Piscina Playita","Disponible"),
(50,"Mesa 66","brown","",66,16,"Churuata Grande-2","Piscina Playita","Disponible"),
(51,"Mesa 67","brown","",67,16,"Churuata Grande-2","Piscina Playita","Disponible"),
(52,"Mesas Picnic","","",17,1,"Mesas Picnic","Piscina Playita","Disponible"),
(53,"Mesa 95","gold","",95,17,"Mesas Picnic","Piscina Playita","Disponible"),
(54,"Mesa 96","gold","",96,17,"Mesas Picnic","Piscina Playita","Disponible"),
(55,"Mesa 97","gold","",97,17,"Mesas Picnic","Piscina Playita","Disponible"),
(56,"Mesa 98","gold","",98,17,"Mesas Picnic","Piscina Playita","Disponible"),
(57,"Mesa 99","gold","",99,17,"Mesas Picnic","Piscina Playita","Disponible"),
(58,"Grand Caney","","",18,1,"Grand Caney","Piscina Playita","Disponible"),
(59,"Mesas Solera","","",19,18,"Grand Caney","Piscina Playita","Disponible"),
(60,"Mesa 100","silver","",100,19,"Gran Caney","Piscina Playita","Disponible"),
(61,"Mesa 101","silver","",101,19,"Gran Caney","Piscina Playita","Disponible"),
(62,"Mesa 102","silver","",102,19,"Gran Caney","Piscina Playita","Disponible"),
(63,"Mesa 103","silver","",103,19,"Gran Caney","Piscina Playita","Disponible"),
(64,"Mesa 104","silver","",104,19,"Gran Caney","Piscina Playita","Disponible"),
(65,"Mesa 105","silver","",105,19,"Gran Caney","Piscina Playita","Disponible"),
(66,"Mesa 106","silver","",106,19,"Gran Caney","Piscina Playita","Disponible"),
(67,"Mesa 107","silver","",107,19,"Gran Caney","Piscina Playita","Disponible"),
(68,"Mesa 108","silver","",108,19,"Gran Caney","Piscina Playita","Disponible"),
(69,"Mesas Picnic","","",20,18,"Grand Caney","Piscina Playita","Disponible"),
(70,"Mesa 109","silver","",109,20,"Gran Caney","Piscina Playita","Disponible"),
(71,"Mesa 110","silver","",110,20,"Gran Caney","Piscina Playita","Disponible"),
(72,"Mesa 111","silver","",111,20,"Gran Caney","Piscina Playita","Disponible"),
(73,"Mesa 112","silver","",112,20,"Gran Caney","Piscina Playita","Disponible"),
(74,"Mesa 113","silver","",113,20,"Gran Caney","Piscina Playita","Disponible"),
(75,"Mesa 114","silver","",114,20,"Gran Caney","Piscina Playita","Disponible"),
(76,"Mesa 115","silver","",115,20,"Gran Caney","Piscina Playita","Disponible"),
(77,"Mesa 116","silver","",116,20,"Gran Caney","Piscina Playita","Disponible"),
(78,"Mesa 117","silver","",117,20,"Gran Caney","Piscina Playita","Disponible"),
(79,"Piscina Pequena","","",2,"","","",""),
(80,"Camping","silver","",22,2,"Camping","Piscina Pequena","Disponible"),
(81,"Mesa 34","silver","",34,22,"Camping","Piscina Pequena","Mantenimiento"),
(82,"Mesa 35","silver","",35,22,"Camping","Piscina Pequena","Disponible"),
(83,"Mesa 36","silver","",36,22,"Camping","Piscina Pequena","Disponible"),
(84,"Mesa 37","silver","",37,22,"Camping","Piscina Pequena","Disponible"),
(85,"Solera","blue","",23,2,"Solera","Piscina Pequena","Disponible"),
(86,"Mesa 38","blue","",38,23,"Solera","Piscina Pequena","Disponible"),
(87,"Mesa 39","blue","",39,23,"Solera","Piscina Pequena","Disponible"),
(88,"Mesa 40","blue","",40,23,"Solera","Piscina Pequena","Disponible"),
(89,"Mesa 41","blue","",41,23,"Solera","Piscina Pequena","Disponible"),
(90,"Camping Exterior","red","",24,2,"Camping Exterior","Piscina Pequena","Disponible"),
(91,"Mesa 42","red","",42,24,"Camping Exterior","Piscina Pequena","Disponible"),
(92,"Mesa 43","red","",43,24,"Camping Exterior","Piscina Pequena","Disponible"),
(93,"Mesa 44","red","",44,24,"Camping Exterior","Piscina Pequena","Disponible"),
(94,"Mesa 45","red","",45,24,"Camping Exterior","Piscina Pequena","Disponible"),
(95,"Mesa 46","red","",46,24,"Camping Exterior","Piscina Pequena","Disponible"),
(96,"Mesa 47","red","",47,24,"Camping Exterior","Piscina Pequena","Disponible"),
(97,"Mesa 48","red","",48,24,"Camping Exterior","Piscina Pequena","Disponible"),
(98,"Mesa 49","red","",49,24,"Camping Exterior","Piscina Pequena","Disponible"),
(99,"Mesa 50","red","",50,24,"Camping Exterior","Piscina Pequena","Disponible");


DROP TABLE IF EXISTS `resourcebohio3`;

CREATE TABLE `resourcebohio3` (
  `idp` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `eventColor` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `children` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `id` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `parentId` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nombreparendid` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nombrebuilding` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idp`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `resourcebohio3` VALUES (1,"Piscina Playita","","",1,"","",""),
(2,"Bohio","","",10,1,"",""),
(3,"Mesa 51","green","",51,10,"Bohio","Piscina Playita"),
(4,"Mesa 52","green","",52,10,"Bohio","Piscina Playita"),
(5,"Mesa 53","green","",53,10,"Bohio","Piscina Playita"),
(6,"Mesa 54","green","",54,10,"Bohio","Piscina Playita"),
(7,"Mesa 55","green","",55,10,"Bohio","Piscina Playita"),
(8,"Mesa 56","green","",56,10,"Bohio","Piscina Playita"),
(9,"Mesa 57","green","",57,10,"Bohio","Piscina Playita"),
(10,"Mesa 58","green","",58,10,"Bohio","Piscina Playita"),
(11,"Mesa 59","green","",59,10,"Bohio","Piscina Playita"),
(12,"Mesa 60","green","",60,10,"Bohio","Piscina Playita"),
(13,"Mini Churuatas N","","",11,1,"",""),
(14,"Mesa 76","red","",76,11,"Mini Churuatas N","Piscina Playita"),
(15,"Mesa 77","red","",77,11,"Mini Churuatas N","Piscina Playita"),
(16,"Mesa 78","red","",78,11,"Mini Churuatas N","Piscina Playita"),
(17,"Mesa 79","red","",79,11,"Mini Churuatas N","Piscina Playita"),
(18,"Mesa 80","red","",80,11,"Mini Churuatas N","Piscina Playita"),
(19,"Mesa 81","red","",81,11,"Mini Churuatas N","Piscina Playita"),
(20,"Mesa 82","red","",82,11,"Mini Churuatas N","Piscina Playita"),
(21,"Mesa 83","red","",83,11,"Mini Churuatas N","Piscina Playita"),
(22,"Mesa 84","red","",84,11,"Mini Churuatas N","Piscina Playita"),
(23,"Mesa 85","red","",85,11,"Mini Churuatas N","Piscina Playita"),
(24,"Mini Churuatas E","","",12,1,"",""),
(25,"Mesa 86","blue","",86,12,"Mini Churuatas E","Piscina Playita"),
(26,"Mesa 87","blue","",87,12,"Mini Churuatas E","Piscina Playita"),
(27,"Mesa 88","blue","",88,12,"Mini Churuatas E","Piscina Playita"),
(28,"Mesa 89","blue","",89,12,"Mini Churuatas E","Piscina Playita"),
(29,"Mesa 90","blue","",90,12,"Mini Churuatas E","Piscina Playita"),
(30,"Mesa 91","blue","",91,12,"Mini Churuatas E","Piscina Playita"),
(31,"Mesa 92","blue","",92,12,"Mini Churuatas E","Piscina Playita"),
(32,"Mesa 93","blue","",93,12,"Mini Churuatas E","Piscina Playita"),
(33,"Mesa 94","blue","",94,12,"Mini Churuatas E","Piscina Playita"),
(34,"Mini Churuatas O","","",13,1,"",""),
(35,"Mesa 67","orange","",67,13,"Mini Churuatas O","Piscina Playita"),
(36,"Mesa 68","orange","",68,13,"Mini Churuatas O","Piscina Playita"),
(37,"Mesa 69","orange","",69,13,"Mini Churuatas O","Piscina Playita"),
(38,"Mesa 70","orange","",70,13,"Mini Churuatas O","Piscina Playita"),
(39,"Mini Churuatas S","","",14,1,"",""),
(40,"Mesa 71","purple","",71,14,"Mini Churuatas S","Piscina Playita"),
(41,"Mesa 72","purple","",72,14,"Mini Churuatas S","Piscina Playita"),
(42,"Mesa 73","purple","",73,14,"Mini Churuatas S","Piscina Playita"),
(43,"Churuatas Grandes","","",15,1,"",""),
(44,"Mesa 61","brown","",61,15,"Churuatas Grandes","Piscina Playita"),
(45,"Mesa 62","brown","",62,15,"Churuatas Grandes","Piscina Playita"),
(46,"Mesa 63","brown","",63,15,"Churuatas Grandes","Piscina Playita"),
(47,"Mesa 64","brown","",64,15,"Churuatas Grandes","Piscina Playita"),
(48,"Mesa 65","brown","",65,15,"Churuatas Grandes","Piscina Playita"),
(49,"Mesa 66","brown","",66,15,"Churuatas Grandes","Piscina Playita"),
(50,"Mesas Picnic","","",16,1,"",""),
(51,"Mesa 96","gold","",96,16,"Mesas Picnic","Piscina Playita"),
(52,"Mesa 97","gold","",97,16,"Mesas Picnic","Piscina Playita"),
(53,"Mesa 98","gold","",98,16,"Mesas Picnic","Piscina Playita"),
(54,"Mesa 99","gold","",99,16,"Mesas Picnic","Piscina Playita"),
(55,"Grand Caney","","",17,1,"",""),
(56,"Mesas Solera","","",18,17,"",""),
(57,"Mesa 100","silver","",100,18,"Mesa solera","Gran Caney"),
(58,"Mesa 101","silver","",101,18,"Mesa solera","Gran Caney"),
(59,"Mesa 102","silver","",102,18,"Mesa solera","Gran Caney"),
(60,"Mesa 103","silver","",103,18,"Mesa solera","Gran Caney"),
(61,"Mesa 104","silver","",104,18,"Mesa solera","Gran Caney"),
(62,"Mesa 105","silver","",105,18,"Mesa solera","Gran Caney"),
(63,"Mesa 106","silver","",106,18,"Mesa solera","Gran Caney"),
(64,"Mesa 107","silver","",107,18,"Mesa solera","Gran Caney"),
(65,"Mesa 108","silver","",108,18,"Mesa solera","Gran Caney"),
(66,"Mesas picnic","","",19,17,"",""),
(67,"Mesa 109","#CC00AA","",109,19,"Mesa picnic Madera","Gran Caney"),
(68,"Mesa 110","#CC00AA","",110,19,"Mesa picnic Madera","Gran Caney"),
(69,"Mesa 111","#CC00AA","",111,19,"Mesa picnic Madera","Gran Caney"),
(70,"Mesa 112","#CC00AA","",112,19,"Mesa picnic Madera","Gran Caney"),
(71,"Mesa 113","#CC00AA","",113,19,"Mesa picnic Madera","Gran Caney"),
(72,"Mesa 114","#CC00AA","",114,19,"Mesa picnic Madera","Gran Caney"),
(73,"Mesa 115","#CC00AA","",115,19,"Mesa picnic Madera","Gran Caney"),
(74,"Mesa 116","#CC00AA","",116,19,"Mesa picnic Madera","Gran Caney"),
(75,"Mesa 117","#CC00AA","",117,19,"Mesa picnic Madera","Gran Caney"),
(76,"Piscina Pequena","","",2,"","",""),
(77,"Mesas camping piscina","","",20,2,"",""),
(78,"Mesa 34","#FF9922","",34,20,"Mesa camping piscina","Piscina Pequena"),
(79,"Mesa 35","#FF9922","",35,20,"Mesa camping piscina","Piscina Pequena"),
(80,"Mesa 36","#FF9922","",36,20,"Mesa camping piscina","Piscina Pequena"),
(81,"Mesa 37","#FF9922","",37,20,"Mesa camping piscina","Piscina Pequena"),
(82,"Mesas solera","","",21,2,"",""),
(83,"Mesa 38","#FF2255","",38,21,"Mesa solera","Piscina Pequena"),
(84,"Mesa 39","#FF2255","",39,21,"Mesa solera","Piscina Pequena"),
(85,"Mesa 40","#FF2255","",40,21,"Mesa solera","Piscina Pequena"),
(86,"Mesa 41","#FF2255","",41,21,"Mesa solera","Piscina Pequena"),
(87,"Mesas camping exterior","","",22,2,"",""),
(88,"Mesa 42","#22EE77","",42,22,"Mesa camping exterior","Piscina Pequena"),
(89,"Mesa 43","#22EE77","",43,22,"Mesa camping exterior","Piscina Pequena"),
(90,"Mesa 44","#22EE77","",44,22,"Mesa camping exterior","Piscina Pequena"),
(91,"Mesa 45","#22EE77","",45,22,"Mesa camping exterior","Piscina Pequena"),
(92,"Mesa 46","#22EE77","",46,22,"Mesa camping exterior","Piscina Pequena"),
(93,"Mesa 47","#22EE77","",47,22,"Mesa camping exterior","Piscina Pequena"),
(94,"Mesa 48","#22EE77","",48,22,"Mesa camping exterior","Piscina Pequena"),
(95,"Mesa 49","#22EE77","",49,22,"Mesa camping exterior","Piscina Pequena"),
(96,"Mesa 50","#22EE77","",50,22,"Mesa camping exterior","Piscina Pequena");


DROP TABLE IF EXISTS `resourcebohioorg`;

CREATE TABLE `resourcebohioorg` (
  `idp` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `eventColor` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `children` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `id` int(11) NOT NULL,
  `parentId` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nombreparendid` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nombrebuilding` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `status` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idp`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `resourcebohioorg` VALUES (1,"Piscina Playita","","",1,"","","","Disponible"),
(2,"Bohio","","",10,1,"Bohio","Piscina Playita","Disponible"),
(3,"Mesa 51","green","",51,10,"Bohio","Piscina Playita","Disponible"),
(4,"Mesa 52","green","",52,10,"Bohio","Piscina Playita","Disponible"),
(5,"Mesa 53","green","",53,10,"Bohio","Piscina Playita","Disponible"),
(6,"Mesa 54","green","",54,10,"Bohio","Piscina Playita","Disponible"),
(7,"Mesa 55","green","",55,10,"Bohio","Piscina Playita","Disponible"),
(8,"Mesa 56","green","",56,10,"Bohio","Piscina Playita","Disponible"),
(9,"Mesa 57","green","",57,10,"Bohio","Piscina Playita","Disponible"),
(10,"Mesa 58","green","",58,10,"Bohio","Piscina Playita","Disponible"),
(11,"Mesa 59","green","",59,10,"Bohio","Piscina Playita","Disponible"),
(12,"Mesa 60","green","",60,10,"Bohio","Piscina Playita","Disponible"),
(13,"Mini Churuatas N","","",11,1,"Mini Churuatas N","Piscina Playita","Disponible"),
(14,"Mesa 76","red","",76,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(15,"Mesa 77","red","",77,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(16,"Mesa 78","red","",78,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(17,"Mesa 79","red","",79,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(18,"Mesa 80","red","",80,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(19,"Mesa 81","red","",81,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(20,"Mesa 82","red","",82,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(21,"Mesa 83","red","",83,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(22,"Mesa 84","red","",84,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(23,"Mesa 85","red","",85,11,"Mini Churuatas N","Piscina Playita","Disponible"),
(24,"Mini Churuatas E","","",12,1,"Mini churuatas E","Piscina Playita","Disponible"),
(25,"Mesa 86","blue","",86,12,"Mini Churuatas E","Piscina Playita","Disponible"),
(26,"Mesa 87","blue","",87,12,"Mini Churuatas E","Piscina Playita","Disponible"),
(27,"Mesa 88","blue","",88,12,"Mini Churuatas E","Piscina Playita","Disponible"),
(28,"Mesa 89","blue","",89,12,"Mini Churuatas E","Piscina Playita","Disponible"),
(29,"Mesa 90","blue","",90,12,"Mini Churuatas E","Piscina Playita","Disponible"),
(30,"Mesa 91","blue","",91,12,"Mini Churuatas E","Piscina Playita","Disponible"),
(31,"Mesa 92","blue","",92,12,"Mini Churuatas E","Piscina Playita","Disponible"),
(32,"Mesa 93","blue","",93,12,"Mini Churuatas E","Piscina Playita","Disponible"),
(33,"Mesa 94","blue","",94,12,"Mini Churuatas E","Piscina Playita","Disponible"),
(34,"Mini Churuatas O","","",13,1,"Mini Churuatas O","Piscina Playita","Disponible"),
(35,"Mesa 67","orange","",67,13,"Mini Churuatas O","Piscina Playita","Disponible"),
(36,"Mesa 68","orange","",68,13,"Mini Churuatas O","Piscina Playita","Disponible"),
(37,"Mesa 69","orange","",69,13,"Mini Churuatas O","Piscina Playita","Disponible"),
(38,"Mesa 70","orange","",70,13,"Mini Churuatas O","Piscina Playita","Disponible"),
(39,"Mini Churuatas S","","",14,1,"Mini Churuatas S","Piscina Playita","Disponible"),
(40,"Mesa 71","purple","",71,14,"Mini Churuatas S","Piscina Playita","Disponible"),
(41,"Mesa 72","purple","",72,14,"Mini Churuatas S","Piscina Playita","Disponible"),
(42,"Mesa 73","purple","",73,14,"Mini Churuatas S","Piscina Playita","Disponible"),
(43,"Churuatas Grandes","","",15,1,"Churutas Grandes","Piscina Playita","Disponible"),
(44,"Mesa 61","brown","",61,15,"Churuatas Grandes","Piscina Playita","Disponible"),
(45,"Mesa 62","brown","",62,15,"Churuatas Grandes","Piscina Playita","Disponible"),
(46,"Mesa 63","brown","",63,15,"Churuatas Grandes","Piscina Playita","Disponible"),
(47,"Mesa 64","brown","",64,15,"Churuatas Grandes","Piscina Playita","Disponible"),
(48,"Mesa 65","brown","",65,15,"Churuatas Grandes","Piscina Playita","Disponible"),
(49,"Mesa 66","brown","",66,15,"Churuatas Grandes","Piscina Playita","Disponible"),
(50,"Mesas Picnic","","",16,1,"Mesas Picnic","Piscina Playita","Disponible"),
(51,"Mesa 96","gold","",96,16,"Mesas Picnic","Piscina Playita","Disponible"),
(52,"Mesa 97","gold","",97,16,"Mesas Picnic","Piscina Playita","Disponible"),
(53,"Mesa 98","gold","",98,16,"Mesas Picnic","Piscina Playita","Disponible"),
(54,"Mesa 99","gold","",99,16,"Mesas Picnic","Piscina Playita","Disponible"),
(55,"Grand Caney","","",17,1,"","","Disponible"),
(56,"Mesas Solera","","",18,17,"Mesas Solera","Gran Caney","Disponible"),
(57,"Mesa 100","silver","",100,18,"Mesa solera","Gran Caney","Disponible"),
(58,"Mesa 101","silver","",101,18,"Mesa solera","Gran Caney","Disponible"),
(59,"Mesa 102","silver","",102,18,"Mesa solera","Gran Caney","Disponible"),
(60,"Mesa 103","silver","",103,18,"Mesa solera","Gran Caney","Disponible"),
(61,"Mesa 104","silver","",104,18,"Mesa solera","Gran Caney","Disponible"),
(62,"Mesa 105","silver","",105,18,"Mesa solera","Gran Caney","Disponible"),
(63,"Mesa 106","silver","",106,18,"Mesa solera","Gran Caney","Disponible"),
(64,"Mesa 107","silver","",107,18,"Mesa solera","Gran Caney","Disponible"),
(65,"Mesa 108","silver","",108,18,"Mesa solera","Gran Caney","Disponible"),
(66,"Mesas picnic","","",19,17,"Mesa picnic Madera","Gran Canay","Disponible"),
(67,"Mesa 109","#CC00AA","",109,19,"Mesa picnic Madera","Gran Caney","Disponible"),
(68,"Mesa 110","#CC00AA","",110,19,"Mesa picnic Madera","Gran Caney","Disponible"),
(69,"Mesa 111","#CC00AA","",111,19,"Mesa picnic Madera","Gran Caney","Disponible"),
(70,"Mesa 112","#CC00AA","",112,19,"Mesa picnic Madera","Gran Caney","Disponible"),
(71,"Mesa 113","#CC00AA","",113,19,"Mesa picnic Madera","Gran Caney","Disponible"),
(72,"Mesa 114","#CC00AA","",114,19,"Mesa picnic Madera","Gran Caney","Disponible"),
(73,"Mesa 115","#CC00AA","",115,19,"Mesa picnic Madera","Gran Caney","Disponible"),
(74,"Mesa 116","#CC00AA","",116,19,"Mesa picnic Madera","Gran Caney","Disponible"),
(75,"Mesa 117","#CC00AA","",117,19,"Mesa picnic Madera","Gran Caney","Disponible"),
(76,"Piscina Pequena","","",2,"","","","Disponible"),
(77,"Mesas camping piscina","#AAAA00","",20,2,"Mesas camping piscina","Piscina Pequena","Disponible"),
(78,"Mesa 34","#AAAA00","",34,20,"Mesa camping piscina","Piscina Pequena","Disponible"),
(79,"Mesa 35","#AAAA00","",35,20,"Mesa camping piscina","Piscina Pequena","Disponible"),
(80,"Mesa 36","#AAAA00","",36,20,"Mesa camping piscina","Piscina Pequena","Disponible"),
(81,"Mesa 37","#AAAA00","",37,20,"Mesa camping piscina","Piscina Pequena","Disponible"),
(82,"Mesas solera","","",21,2,"Mesa solera","Piscina Pequena","Disponible"),
(83,"Mesa 38","#FF2255","",38,21,"Mesa solera","Piscina Pequena","Disponible"),
(84,"Mesa 39","#FF2255","",39,21,"Mesa solera","Piscina Pequena","Disponible"),
(85,"Mesa 40","#FF2255","",40,21,"Mesa solera","Piscina Pequena","Disponible"),
(86,"Mesa 41","#FF2255","",41,21,"Mesa solera","Piscina Pequena","Disponible"),
(87,"Mesas camping exterior","","",22,2,"Mesa camping exterior","Piscina Pequena","Disponible"),
(88,"Mesa 42","#22EE77","",42,22,"Mesa camping exterior","Piscina Pequena","Disponible"),
(89,"Mesa 43","#22EE77","",43,22,"Mesa camping exterior","Piscina Pequena","Disponible"),
(90,"Mesa 44","#22EE77","",44,22,"Mesa camping exterior","Piscina Pequena","Disponible"),
(91,"Mesa 45","#22EE77","",45,22,"Mesa camping exterior","Piscina Pequena","Disponible"),
(92,"Mesa 46","#22EE77","",46,22,"Mesa camping exterior","Piscina Pequena","Disponible"),
(93,"Mesa 47","#22EE77","",47,22,"Mesa camping exterior","Piscina Pequena","Disponible"),
(94,"Mesa 48","#22EE77","",48,22,"Mesa camping exterior","Piscina Pequena","Disponible"),
(95,"Mesa 49","#22EE77","",49,22,"Mesa camping exterior","Piscina Pequena","Disponible"),
(96,"Mesa 50","#22EE77","",50,22,"Mesa camping exterior","Piscina Pequena","Disponible");


DROP TABLE IF EXISTS `resources`;

CREATE TABLE `resources` (
  `idp` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `building` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `occupancy` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `eventColor` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `imageurl` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `parentId` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `status` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `detalles` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` longblob NOT NULL,
  `limpieza` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idp`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=FIXED;

INSERT INTO `resources` VALUES (23,1,"Queen","Hab-01","1-Queen+Lit","gray","img/hotelhabitaciones/2.jpg","","Disponible","1-Queen+Lit ","","Aseado"),
(24,2,"Matrimonial","Hab-02","2+Mat","red","img/hotelhabitaciones/3.jpg","","Disponible","2+Mat ","","PorAsearce"),
(25,3,"Queen","Hab-03","1-Queen+Lit","gray","",1,"Disponible","1-Queen+Lit","","Aseado"),
(26,4,"Queen","Hab-04","1+Queen+Lit","gray","",1,"Disponible","1+Queen+Lit","","Aseado"),
(27,5,"Matrimonial","Hab-05","2-Mat","red","",2,"Disponible","2-Mat","","Aseado"),
(28,6,"Queen","Hab-06","1-Queen+Lit","gray","",1,"Disponible","1-Queen+Lit","","Aseado"),
(29,7,"Queen","Hab-07","1-Queen+Ind","gray","",1,"Disponible","1-Queen+Ind","","Aseado"),
(30,8,"Queen","Hab-08","1-Queen+Lit","gray","",1,"Disponible","1-Queen+Lit","","Aseado"),
(31,9,"King","Hab-09","1-King","children","","","Disponible","1-King","","Aseado"),
(32,10,"Queen","Hab-10","1-Queen+Lit","gray","",1,"Disponible","1-Queen+Lit","","Aseado"),
(33,11,"King","Hab-11","1-King+Ind","children","",9,"Disponible","1-King+Ind","","Aseado"),
(34,12,"King","Hab-12","1-King+Lit","children","",9,"Disponible","1-King+Lit","","Aseado"),
(36,14,"King","Hab-14","2-Mat+Lit","red","",9,"Disponible","2-Mat+Lit","","Aseado"),
(38,15,"Campamento","Camp-Hembras","25 Literas","blue","","","Disponible","25 Literas","","Aseado"),
(39,16,"Campamento","Camp-Varones","25 Literas","Orange","","","Mantenimiento","25 Literas","","Aseado");


DROP TABLE IF EXISTS `resourcesorg`;

CREATE TABLE `resourcesorg` (
  `idp` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `building` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `occupancy` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `eventColor` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `imageurl` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `parentId` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idp`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=FIXED;

INSERT INTO `resourcesorg` VALUES (23,1,"Queen","Hab-01","1-Queen+Lit","green","img/hotelhabitaciones/2.jpg",""),
(24,2,"Matrimonial","Hab-02","2+Mat","red","img/hotelhabitaciones/3.jpg",""),
(25,3,"Queen","Hab-03","1-Queen+Lit","green","",1),
(26,4,"Queen","Hab-04","1+Queen+Lit","green","",1),
(27,5,"Matrimonial","Hab-05","2-Mat","red","",2),
(28,6,"Queen","Hab-06","1-Queen+Lit","green","",1),
(29,7,"Queen","Hab-07","1-Queen+Ind","green","",1),
(30,8,"Queen","Hab-08","1-Queen+Lit","green","",1),
(31,9,"King","Hab-09","1-King","children","",""),
(32,10,"Queen","Hab-10","1-Queen+Lit","green","",1),
(33,11,"King","Hab-11","1-King+Ind","children","",9),
(34,12,"King","Hab-12","1-King+Lit","children","",9),
(36,14,"King","Hab-14","2-Mat+Lit","red","",9),
(38,15,"Campamento","Camp-Hembras","25 Literas","blue","",""),
(39,16,"Campamento","Camp-Varones","25 Literas","Orange","","");


DROP TABLE IF EXISTS `restcajas`;

CREATE TABLE `restcajas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estatus` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `restcajas` VALUES (1,"luis maria","cajera 01","aperturada"),
(2,"carmen pedra","cajera 02","cerrada");


DROP TABLE IF EXISTS `restclasprod`;

CREATE TABLE `restclasprod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `impresora` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `restclasprod` VALUES (1,"pastas","cocina1"),
(2,"carnes","cocina1"),
(4,"coca cola","bar1");


DROP TABLE IF EXISTS `restcontrol`;

CREATE TABLE `restcontrol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factura` int(13) NOT NULL,
  `pedido` int(13) NOT NULL,
  `notas` int(13) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `restcontrol` VALUES (1,100,187,100);


DROP TABLE IF EXISTS `restkardexenlaceinv`;

CREATE TABLE `restkardexenlaceinv` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `solicitante` varchar(30) NOT NULL,
  `razon` varchar(215) NOT NULL,
  `fechadesalida` int(11) NOT NULL,
  `movimiento` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `restkardexenlaceinvmov`;

CREATE TABLE `restkardexenlaceinvmov` (
  `id` int(6) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `cantidad` decimal(12,5) NOT NULL,
  `unidad` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `restmenu`;

CREATE TABLE `restmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `clasificacion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ubicacion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `precio` int(7) NOT NULL,
  `moneda` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` longblob NOT NULL,
  `menu` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `estatus` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `restmenu` VALUES (1,1001,"pasta corta","desc pasta corta","pasta","mibotalon",10,"$","����\0JFIF\0\0\0\0\0\0��\0�\0\t( %!1!%)+...383-7(-.+\n\n\n\r5& %/---.0----0------//--/--//------------------------��\0\0�,\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0?\0\n\0\0\0\0!1AQaq\"2������BR�#�3CSbr���$���\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\02\0\0\0\0\0\0\0!1\"AQaq���2���#��B$3���\0\f\0\0?\0�SB�r�\"q����L���\'�����&y��Oe�D�X�Oe���A\t�!$�D�\t���N��,��BI�]\"�Զ��L��w���>~\\�=�X�\t*{Q�Y��*��ez x�b&L��R��U�|!/wJ����4��Z�f$v���;/W$��\vǈQh޹�FY��p_�=G�3?�a��\'\v�?�_�O�J�E0k-�?h!*T�\rRG��-\'N���D�����0Bq���A\t�\"$�!;\'���L�L���h!8�Bu���I�\"\t�I�\\\"|�$�������sI�Z��\0w��G�FF�R�T<�:�N�+�F�߅Hy�>�\'d�2��iF�\\�&\'d��c\t=��O�I>���$o0�]��N���\"v��.^ i,{AB`���IA��<����8���&�>��fv��h)=�`��,u���0.Ll���3>�2,��$�5G��\r\tv��6B����NȤA}�s��@�����jQ��D��e2��E�-\"��q����a�I���5�/\t� �(��Ϗ\'��\'r���P=��\"�@QIPs,{DP�fS3�V��� �!���v>�Z�O��`���\'�Q+D�BDF�\'y��?\v�,�W��l��EU_��?$��>�\f��&��<�F�*�Z\"���&���T�4���DKE�%)>`GPG�H�D\'��L�A\t� �0BHA̙��\0��|!�\fV�\\�Ù�I����l0� 3�\vT�2�q�\'p��;5T�e��]�M�\n.�UM,�*�Cs.jp����������������\0����Eg�����$�Qvf�W�R}�N�*\\ƒ�!>T��[�f��`��A;!$)��I�5A\t\\�9z�d�Ms\n�����0���yG7��/�ܚP���\v�\n�&Mya^T��<���\f�7�c�97��N�b����_n|Z�7!���Qq��o��N�d�)�Y�Zl������K�m�\0���W6\\���[]IH\0s7�h�Ve�c��v!T�4��S�HH����-������I��52V3�t�@/}�\'�8�*~sPbW�>R��yI,�N`ː.\\6���:��><�ś\fhq�vh�(�V\t\n�t-����/��{�����U�U���\n��<�+6eĶd$hq�@ZA����3�~ h�rag[�^�5&Eqje\n�3�/+9���ALu\0�I�T�t�.ZO��*$�1!�\n)�Br �T���f+�\f�s\"na�C�\"�\f��&j����D�e�AGgj�?(�����O�G�X�Of���?�27O�f��s�x.�T\v:�+p���5��r��RD\'J��K$����4�L�\"�1��X��`Bz&DX��r���P(2�W-���Z��,d����z\vz�;�,��؇��J�{oH���u$�`;7�8��`����m��L3%�@:?ʦ��#��6��˘�W(\t�Q�#�\0bbֵ�U����E�l\\�o��\0c2i�R�p=�\0�?\t�W�!\t���}�B�g�m�W�W&>f��UR�!�\0o2R���akq���%.�<WgxHC�x�%d�ɢe�̩�U$���b\\���E��+׳�NvM6Lg�����*�4�����oψ��z�ˮ��0��ie�R�e��#Vq�kǓ\"��QňT�g�P\n�=�X��������z�櫓�;f�L\0%%J��p{F-F���u��ƙ|\"�d�\"zVeL�g�8܋4WP\t��R�Dq5�̔%S�)^�nm�;�������қe�j�,�LF�;:|����.�\'h�&P�>\t2��*@��!In;D{�K�#(aBQ^��2�̣���ʡ�z�嫥A١�n\r3?��L ʔ��~\\#�8XY��C���\"��\tƂBI0\\%�� �,\0�I\"t!<��x�$\v5���%�F|z�nh���.�$�҈r�.F�!�2{b�1�E��!2i2��~i�OnI(�뵔6,ч]����BGx\f�7Ys���8��Q�f���1$�KZ�:�A ������KD��WG�zk�4�1Z�o�ov��V9A�Qi��q�ܾ]Ne;2�p�~e���Vƨ7]�Κ�-��m,\t�r\nU��Q�1�����2���%I�Ik��R\"q���E}�)U^,߾v��\\��N`t`�BM�#Pa�[6�fg�LfB��.�a�`_��?�7aBQ�;�&�JP�\'��\ve�N�wm�!�6Q�}�N��mD�5\'.d��R.1�3�5g����)�J;EA�K�Quy�.�����)�\v(���f\t�m��������������3xC�^�j��%�S��9�;�\0Џ�@�,\fN��3�7�|#���w0j��?�UJ�AJ��rێ �Q�2���[)Xmk�L˧uo�\fMp��+�ji�9S\0RV<�r�R,p��\nHe�\n2����3a�JS���hω��sפ�\"�\n�2d��\t��)����Gh�F��L����h!��BI2��p�\f4���h! \'g��\v\\%55�@u�dU�&6cB ��r.�fmZ�McDޱ-Oh��$�Y\nЁ�h����7F&%S��̘�8\')b�k<��Q�i�^�p�b��h���H�ǋoP�!R����x|��1g#��3�񚺮%�J��e\'%Ud\tJ!\rd�\\�ឬ��\nB��T\t\n����[[���\f\f�J��L��!kd{��H��e���yX�W���ӳ�Ѥɽ�F��\t�jewYR�Y!�Z�э�k�h^;�<r���S%J\'I�l箑�͐�돟�Q�=�;M�i��$�dHܗ\nXk1��i���5aM�bH�!���@��<�o��K�{��sb�\0����A\tKM(Q���Z�ߜ/�6(������E*�*%)Q�s�81;�F:�R���+P�KX ��*m�5�^׊��\nnf�\r�O�o�c���+�Uχ���)�O�\0���\0E�9Xs���^�Y�$��FR��\0}f�� ���PV�\v��3}b��abIfaC���{aP�&X�6]�Qr�x���R�7LT�+�\\�\0�HI\0�C庈���?Cs잖;0B� \rO�.�4�6���n�_I_2[������Q�x�ߔM�T$&k�s���>1��lzm�<Hb�\t�S�Q$hAf􅶫&N\t�G�z���D��R�;��,5ͳi�#.�3X�jp�VK�����\"�G�2�#|��E���+�^�*V�2#\f�`��ng3A\t�R���HRz�N�d�U�x������/�z�e�*a\v�u���Ը�1�5\vL����(:�����]��\f:D��p:�)��j%���(5�����2��,$�ĭɌz̦���z��lw\\���Z�:^C��~��y��e�ᖔ���\\$��*�\\�zِ���Tڔ��@u�A:vLK�oiw}��MN�L�1,�����h�c������M2xԹ��*J�^M��\v����\0���~@/�����N�Y^(L(HW�r�������O���i����jp<5R�17ԓ��7ƄܫB�g\\FT�~U�l~)�������9*}D��`P��0:�ߐ�iSc���b@15�&M0B,���SP)�����g0�Β�s^�3��\\;����\0�\nQR��a�1�7��$��ί�,nN������9u��\0�h\tB���k��2f�:(U�߶F<{����15�/�\n2��<*�S��AI<��cw����ʕ ���e\0gYo`é�:��-���]KS��b�r�;Or�1���(��xj!َô�c��,��L��LQ ~��6�׫�XoCbX����ҧ��(h�4w��h����6�Fb|+�e^Pb��7�@�Df��J�<<�\fo��o�Gx<�`��cL�Wc���\\�\nJ��6ň�6���#�9*x\"5��FBHe��q,ؔX�jœ�<��\tP\ruj���\fM�\0˱��eQ��Co���*ҧ�&�����g�-��6�牗>�8���ʨJ����1�W\f�2�ɼ:.^U\"p��1\'��.U�Kt�f�\\Q���o��\f7<�Rék�x��ֱo7SV<aGg�;54��i^쨔p��{�bS�/R�j��\f9,�n�X\n��:_v���/wx��U���L�Wl��\0�\n����$��Fx��T\t`$����?XFJ�~�VȊ1�_ҐI��%_�P,y��|�5c�1�}ĺ�E4�S�X�l\\i���Lf����Fip�\t��r��h�.�|@ncT�;���D�\0�)��Ӯ��r��a)���,u���B�^�(�>i&���ȰRŔ80̘|D�]Z��HRwxǰ:����7\nMHK�t��~����O�=��_qR��~4l��:����o@%C)�}������4�{@���EZ\r�9��\'!9<�����2l���g�TM��T���\nm:���dE���SU��ƽ���e�%ʟ5����7`ܶ�wT(��ХI�=\'Q���ɣ�3��v�HHD�Ω,\0��1�P�A���j(�<��\t���Y��B�Tu\0�[����p�����.Obo)�%�A�1@B@��Q�땒�9F��a���\0�S�P}GΠ�Ʀ�lA�$(�9JHX*c�N>�ÿ.w-�ֻW���2�(>�;���W�g߲ێ故��)BJ�HH<��ፔ����ٗSU/ L�t�DemQ/��G�%���B��Q��%C�[�p�؇���ؙ�\\���T��v�=���60\t��B�F\'�cj��*RT�`�HѼ��x\n�^%���&g�+ JI$�mq�0aU 1�gb-a���UFd�d �;��P!��;�\\Ň\"�r����c��F/Ψ4�Q�I��iqeRL�����h����Y��L��|�Mm:��)��n����M���BO���h�s\0�cX��D��r#����k~ٻK�n��{/V��R�I`7�G�Zu7uƻA\"Y)R��B��UhEj�P�\f����4aӹ{�r/x�:�\vߋErb�O��.0��:TR�����(q\0�4��},�6x�LR��12X�6(zI���ZVY:\'[4f̡��U�1%��̴�5�����YWsn��cdN����s�;���T0Y����w��|�����l~m�~�J���}*��U)\f�v���J���[b,=�س�i�&�s��������7Қ�\nF3B��s3oS�������bf�ӒY#+[N\r���yXR�<��XP�����Z��U2r�\f�\t?�\f,���ISF-�CQ,�f���)6{8��/��p���Dv=.����J\'��\0�C:w�HmF�Ųd`�b�J�G���0��$LWxA_�$��2���O�=8�&b�\tQ�|�g��X�\'�F��4k�b;���KA}gg�$Y���RyD#��h}d�,�Ěq�2NG�@e����u82i����xs&S�I���$9,Fäa:��x?��1M�b43��s�/�l4euf��F2�(\n���U(FY�*ab�z���*��(����X��\0oM��E��(�3[���p65� ��\"�V��*�k�o���cV럾d�,%ԓS�ܔ�����Dʣ�=��2������U(<�����j������Sh=D\f�&4��J��4{���Fuř\rq�.3V~�U����[;�:��h����8�=̱��s\t��%�F���y�SKP���\n�Y%���]F��yO��H�b�8�����:��\fk�<�gnh�1\"\\��%\' $XF|ᕩ:�D�,���yTܡl:������@�T�������B���l���#7]M^/P9s@�3���jZ��O� 稼�Q~0:�PB�~9�z�#I�2p\'�7�%\"b����K)�-Kcj&4�\r�mIM=G�d1p3%�[���<\'�cUw�1�쩘s�XH�*Cz9���*-��F��B����\r8D.�#d.G�dmN06�6�D��Z���éx�yH �*��6\'hhP�(!E ��D���n/!�Fl���Ρ2�$�Hg��y�[�%i8��m(ZJ�m}�LH,%��53�\'�%�X\v�jGE�{�Rh43p���NIH��#[�FrZ��=����X�gG� ��m�YM��nƸ���߶#(7K����Z����6<����H����M�#��+�(D��-ē�\nQ�b����O\v��i�)r�ю��shv@��+��d&-2�Z(�l�h˓S�\tׯ�V�\t��KJJR�Q�on�ɑwlJg�ؙV�?HT����k�1�1y�F3ጥ]��͕jc�d��b�ѥ]; ����9�&\"ń���EE6$��sr���hN�V\\�_�?~�dn\r(O1��S�i!)��8G7�$_߾jw\v+��R��)A��I��5C]B���g��t�\v�;���*�^R���sv�>=��5���l��o\r��\\�3��H�]ZT�����*\r�R��d�:�Qx�(|���\f��Ҡ�ظc�-���3H<�{E8��T���\0��ƭ�j�o�gԀA�\f7@K�@,�$�Ϥol,I2b�*�?�hf�FX!b͛x�۱y�?��<�\\�WRBQ,��%ҫ��t�V��;&�e���Ý�>m1*k�;M���bZf#�sl���9�����kI��3�甤�����\"��́!�F.�I6b�V�]�a��!����h�dm#���3d)/a�\vy�Mq#�a]�(�1��Fb��\\h}#��\"��j����G5ql�� |yr�����V�1e��i�N�4ɡM��\r�s��j#q�m*�A��������Ѐ&f�Z�-���6iqm`�b��B�g�Dğ! ~����ɪT�s9���ݚ�\f!�*Ju\f=#�������3��<�,OC�Qb��KpC߬J�V뙧Oq�,�jBgKb�\v��������_�D�wb/�d@����H����˧�e*������4������wڭ^���S2iPQ��������T\t�ԭ�n+�S҄��VX%\t����jŉ����Ak<ŵz��,��w������k��\\�\0G���M��k`X��QY]@�\\��\0GPH.O��ݸŒ��Q�p�<\ny))s0fRN��LG ��:�\f*J�\fc.cY�8�Y��l�Upfm7hԚ���-q����:�2ek��*�2��%�\f�xn��Od���a�Z���.�P����\'���b,�ˠ��a\v�>AȢ%�o�����3f(����\0�xЙS`E�\0w,\r��y�-�\t���\0(�`X\\��\nj�ܒBB��ClM��B� )�žu\0�8����B��sg��l���s�����7p��5Ҥ�\0;�ޖ��(<���$�IJ�S�:��qc�Í���U�㾢�MiQ��w�Fw��%\t��f�S�t+�lo}��iF+���8[�>KJ��~Q�Z�=.0������4�ǔ�\\b����ni�\n��(X�=��c�6��#B7�0�6p�T���h5���(5�}�#1\\B{@$�f��F��s�����swW\'Fg� ?��w�XR6�g6��B�g���9���hU��.+v7}��UF��l��D�S֧Enw�Q��e�����*`��]�c\fL�o��d�:��2RJ;�/��\tK�HV]�<�1k�/`��?>bD����N�1��\0R҇Q��D�B`ZP�]Dh.\\�CN�x{H��N��:�̛+�m�Hgqv��qs��zM\05`�2��f��%�^�b��_l�H�v��fR�1Т|\"�+v=b�v|}��s�jD��\0<f��x��4c�d�+6M���a�y�M�R.n����rc�6\"��{�1�E ���N��jyxF,����}��\0���Ā���ɊJ�+BIE�C��s*pш�p�5�:�+6�)O��Es��1��d \f��D��D\0��#��!��)q�Fbe�1Q�O[��H�r�*�ս��Y\\�gIK���Ȉ�P�~��B\rF�jDšB���<\v�c���%\v1��Q��D@տ|�\\h9�O�QV<��)\vm���l�T�dӥ��x��T4���`Bn�l+�@����� \0I��V0j�.Y�LIkA\\Ÿ*�,�N�(x{�ɳ梲fP��a[�@�QW��Bt1��rm,|�L䉁���+�uo3t�=E�ƫ��}�TH%�OG�2����#�`��O~��g�Y��q�z�xX���N���6�X�\f�-��C�eW\v9�ENs�nN��r��m1f���#��b�Zh��Zn\"��v��K\"�z�Zr\"��J�2�Re�*9Tɳ��iѕ,�#0<�\0¿���=Y?Ȗ$����vp��f:��3�B�H�۾�7�i�eϭf���Bu�<E@�܍���;����@ׇ�%ԖO��l���3j@+���,����q\r�����-����G�s)�+1%D9���O���_y�\f�����ð籵z�˂�s�Ud�(�1m[X�dӓ�m�S/��.�IQ�\n-p/nq�lI�3Hu���(p���R]���E���yiG�=��n��?�wԍC�k�������7b�)[iF#IO%m�d�fg��Ō7O������3i���� �����C�J�*`.��I�81�w9����y>Φ��8�XR�x�sjx�!:�v\'�|V?�\t���3\nBR���-��+�q����ڲ�6��G\t�%IJ�w�乴e�����4�4\0�\'W�Q���������t�0�F��\"��h�|�)@,���?����$�\0ɽ@��@��6^e�*����\'�ۇX��^⮣�k*-�9�<�%�,ŕ�gwݨl�x}�iʭ��hX��*�Te�������0�]�\":��@��J*@�JYI\nA�Q\f.�Nc�J��0/�X0�`O1K@c�>��s���G��\n�L�-KAQl�Iظ%�F���G�-��1��J��/6�ۨ��*\v��I����Z�[PMߘ`cN2sc�ܜh1�L�v\n�c��³�DP}!�R\t ˥S�WP��m�ͻ���:�&�$X\094ibØ��j%��e&a���H�G�3���M*�.-E��\n)ZF���71!rc��E�e�F�U��VD�f\'�\0�x�>/�GI�_�b�\n�%i\09*)Ӌ~qf�\"�^k���1���ǲS�Ou��8pK�[�x^La[�c���߃���\0r\"�j|�6�G�$\"�dK۱]J� �,\r���\t��dfB����f?U��c��|�BZ%���]��{z�4��n���-3흓�GS���T�>�K���ҥ�XrX�$.�fw�!���i�\"��<K�.>\0��u\\�z�v��\fH���,�|���DW *B���b��q$M2���^\r�����_�4�n$��,�ϕ�\\�{~b#��T�|���s�BM���HYp�:�;+�qh[f��ia�,��Oy��>���B��lid�������z�4�R���۽���A�9Y�\f+�����\'�Ĥq&�` s҃s��|��D��b�?�j�z�����EW(e����7�,�q����\v�NA���ci�B���Id��v �Ţ2b\tw1�5�ga���:zotҹ�\r�\0��8�s\'q�`y�hִx\")�~�Z����3�(����Ћk�4g���z��e��\'K=�ҩE!(X.V\\���㾱�&���Qrn\"����hJ]�È�4�y�܌���~9_>X%%:�+��ƍ;-�`o�3j�D[R+�2җwk���1�R���n�<�י[fm�ﻰׄb�>�Y��c-�����o��H*B�ڹ��}x�1�9��^ɭ�ķ*�֙��+�rŸ~��ɍ��J>�U>�iP+X�t)��n0�@�I�r_M�ɖY*u;Ev>PK��oG�������|+,��P��R�$�4l$-{b�=�k��6Y�\tk]�2�������f^��@/Q=.����\0!��/f�������F�J��\rxE���,-�����U5R��jQK��b]�nӍ��Q�@=���,1\n@6o��B����tqm~�!�h&*_x\0)�ݘ\v9~,}�A�g)�uu���e%��-���(�,��\'j�%�������9��8c�M�\f����p�;#���4/�e�@q��\0���-N�v�Ipz_�J�L��L��\0��{���&Z�3 J�b-mHh��ǔ�ʊܫ��?-�����b���h��Q��[]I�ȇ�\n\\B��ɖU�*rz��&N,D�c�\0&���\nR�Q��%�rO^�Fa��*d���Ԉrԧ��վ�SWJR�1��n\\����p�5�<�\0�-�q�W�IP�y������xˏ%5���(��\n* �b@�c�H�2�ĕ��6��D���.G���&��B&�\v�h�J�ZZ�Q)\tFe�n��M����1��\0� p\'��s�i2\'�\0K��>��}��m`��B-,\0J@ۘ׬p��L�(��g[�(�c�0\\rL��夤`�]���!�R����_a��K�cٟ���S������cF�%�,a��-��k$�\\��6l���\t7�-��r��̮��U-$�~1�&C}q\'\"��fg��]�V�]}\"�V�`�1�l�k��ɶ_8��,��?�������P��J�VG\v\t$��%�B�~M��X�I�\v�Si2xB\t<F��1c,~)P�И<r~u�u�s��rާ��>�B��Բu*�߱T��#�����&�ieN\'&d���(R@�����7ft1c6����L�%)H�#�zj}�[f�@u\rF?,�`&,�k(���My%���=��tȘ)\0����Id����W���͓*T�������!#ӿ�c|TR=�X~�8Іa`A����3�W�H;(2��\\Ա@��\f\t�\'q[�A?��ƪR_���֍CRP[�n�2��Ҥ�uK���oYO\f�q��y|�J[{Bq����aVAb}��H�Hb�F<%�@Vf\0I����`A�=*�_��vb\\���A\0�d��pT��k�ǓN��9:�ˋRX������Iʷ��om�~��Ɍ㽭����N����܄�!a�c�>_V��ƀ�<��\r��L��8�,�����7���J%IJ�Bԡ�\t��7���}��� �I�\tl��{\0{��\0��]r��X��:��;���DD������6=Xݺo����͙qe��B�B\t$ݮ4�g�*��J��ƕ���� ���uh��(�p�I1�6%��<�ܣ��H̶�ߺ`�1�\t���r�ꝏ�:�����&\\Z���v5��$�>���;��e}�\'g�����F�3��=�8��z�e�e�s�*Y�-�`y�C�ڑ~�;nh��r�囎t�0��?g����:_�0:|^\\��Դ���NG^�ñhrc�զҊy�b�ԙ�TJ��LX$;�Ջi�N]9U�V��߲#O���}\"����z�IhZ��S��:������ݠ�j,��\0���1�Թ��IŤ\\k��]n�%�1\\�@4]�i�f�tN;<\tZm�������\f�½%�����ptJG���U����Ib-��9�ޒ�AFd��R�T�teI\0��C�q�t?$�<|?�A{a}�\\��d��}\f\'*���r������]�)B���\'��1�D��Ӑ��)a�ԍ�$zs�*����ټ��~��� r1��,�� s�n%�l��(�Sy[n���gG�]G`%ő��_�$�Ikpp��3�Y�t�e��q%v^Ro��Ͷ���&A}׬���c��6MfY�]ڐ��X��F�.�H�Y�Q����\v��Q,dG��ٍ��X����׋J�9cQl�fj�������)���I�t��n�&��gV�Nޠ�j�q�\r�e`U�!�i�R��\vY��D��4O�Q�3�2�̞W{���D^�\t0*�t��������j��!2t##w:x�����BT�����저x�*��GRԘS%�I�����wn8��l�;�8Զ��<����\0��A��O�Z�\r�\t�F�.�P3>��wQ]J�-cR ����&��沺Y����.�C��υ�SsI�P-K�H�<�\nrf�&S���u�����M7����M7����23j�p�Gr�!�(�S7xd\\��iPe���d�6&{��k�7�m�tx���\vn�k�:�\0uZ\"e1\nir<3$�~9Kz)��Fw�����L��6�%��\nR�Fmի>�?�cFhy������`3\"T�Y�@���`�Dke!nB�-R4�\f��\t����.�}>0�����E�b��\nt��\0��!�E�m���w1n\tXʏ�s�I!�d�] ��j��]�.>�H�v�?I}4��¦(e*O���k�%��㾣o���^�\npA�.ݽc�3E%_��$d@]��{���_�h��Q~ȡB��+d9JFu��ӣ�.S`\0$���Ŏ�q��?�^c#^�~2�@�A}�\"9��V�Sz�sT�:m��[B.�5:uaFNT�������]�2*�@����I[(�eC�o��\f�p����K\"��%UxY���v%�S�f�Q��7�+��[6rPC�G��l;��h%k�%s�вU��V+2�O��D�0\fD1���K��.C��p�����&!-s@�W���C�t7�&5���A��\0_�\\��������+<u4��P��*͘k}�C����n�O�6�\tȔ\r��h��.�Wo�O�ʜ�[�nXZ߿hՃ\'$r�2uՁz\'(�����e��U�\f\0��J�(:C�_���[S���-dM��-m9���4��o\t���d�R-�g`A��nX�HAj������U��Y���T��$_N^��\\~�&L�-�xg&�a�7=��.S�%��r���|�jp��������\f_��9O�?��&���ZjtK\f��9}N��ǉ1��(N{�9�2׋�H�o.�)<�^Vq3��P@v!�U�0�$�A�WvbB���w�$���_���\nN>|����s25�����YL��2���*-��K�I���)�Q5IR��6Y�\0r/����\\ϓ��~����BN�I���b�W�Q�ID��7{p��\f]��er�Q�,.\0\0h�S��)���a�5�%���[$��Z�\\�2��؋lˌ�#yUhJ$�(٘r?�^/�*\0��$��\rSZ��C1 K>��BY��:��\\�2�����3����rb�5�)6\t>N�^{�_)�z�����G���6�¥>Q�w%Ɩ�xlbW\rz̫���P�k)\0��ķ��r�P����\'�5XF&�\n&�0{;q�G/6� ����]2+��pi�s��W�I�$ǃ�D��\0��nO\v\"�AJDũ�k\0jl�%�h�8�\f�(\v~���|���\0S:R���u*:p�\'6|!v ����?H&\f۷5������b5M�H^w+�` Rf���\t`�x�.���~d�<�Œ�\rkC�D���չ��1G(!$�P�6��/W\0#5�3�*�*M>r0����-�A�x��4�\0�5�|�»O��@JҐ���p\v��:phӦ�8�\0{�sdSř���\vRA*\t,H.��\v�~��Ex�\n����\'U�e`�J��C}���Bv�������Ï���]JU�w`ǩy�`�\tc���JL>D��\\�k��1����:�)�QP�(�_�Ha�C��rߑ>�/.�f���\t]�Z�6`�x���o��fBwdo�9��J��0��R�����|#��LC��mK��G@l,#LE��H��_�\t��tKW���\".MC%�H��R�5��a�rҔ�J�LF��J�P�D\\�����x�H� � ���\0��WU��Y�̠��K��L,(��]NU7pY��%(��;,fg}.W���p�B�������Dݲ�����ՙ\nB�;|��27�V��f���&���N�e�XV�bFp\v���Ύ��e\v���x��?�<\\D�\f>��)��B��%�Z�%DnJ��Z3�:`�P���4.K\fV��K��V�63��#�(\rP��&װo�U��?t�ml����o6k��͹ ^���� �i�YWy�ВK����C9K�P����Ŕ��BX�A�p#&��0�Y^�x��MJ��X�Y��gY6��%M�⊆ҥJNd���$7��F��]E>��3���G�����O�r5y���0Z�N��P�\f�w7�f`܏ښ��\v�c���,2�r;���\f2vV��0z�h�KHpT��e8*J��wM�b-�T���!��W�kU��A�>*�X�a\nX!R��ç*�=������9�����(����U�Q&X�A.��a�$۔W���Ҿ1#&4�=�t��P��H\n�Է��&\'�3�VS��:��4��2��G�!��Ƣ�?~�oo�\0}��t��p�����\v��%[6F��ɆEH�$Ԏ~\0�.$�\v<�.��\r�¡��F��ɐ�T�jb.X\n��v�ܶ���̛(�\0\rDr�{F��K��MA꟱�L�����3Ȱyh}��$F��Pu��w(V��EI�L�#GT.Td�s�7�Ap���X�IAĊ��\t�b*+��,�ȗ�?�P��Fol���甓��B�O��X��ʽ4gd���m�J��·�\0��3�ٽ�I]7di嗖V�\fY@�8�Ab˥E6.A��=Ծof���`$m��>�\n\"15�W�Gc�$�&�q���\nc>?ñ��O���o�2D��#;�Ҕ��M�Tu>�\0�3&��1C�\f�P�t�6A\f��#�!��+��c��>�vWb�Sp�>�~G��qcT�>R�\0�!�Y=Tbˢ½��j�7Ĺ��܏W?X�����:���/\n�O�L���\f\\8�J>Qg+��-#@@�u*O�t����0BG8��4gR�@baRbJ�(9��ѓ�����������Y�wHN���*������j���B���Ax�i`�T�nb�����n_l�9�uz�P��M�jURF��(���\"j�.\"!;O����d�\n����Q�ԋL�z�����!���Q�n^J���#�8�W�P�o���bR���$KB�+E{�!<i�t)>�&�M��\\�Ҟ0T.G�WFNj�2x�(W9���\n�0s\t�?��Q��<I�&q8��&q:���8�!_�\n2I�*�\'{��,N�uq��,I\nS�\n�rB�nL\r�M4���\v2��@��Bx͔5S�x.MJ����b.�����D\\�X���\t�E]\"�İCN�\f�yR���Ϥ��T���(��Dre��4�!d\\a\"DX,��K��[����","botalon","activada","comida"),
(2,1002,"pasta larga","descripcon pasdta larga","pasta","mibotalon",12,"$","����\0JFIF\0\0\0\0\0\0��\0�\0\t( %!1!%)+...383-7(-.+\n\n\n\r-% &---/----------------------------------------------��\0\0�\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0>\0\0\0\0!1AQa\"q�2��BR����#�b�3rSc���D��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\02\0\0\0\0!1A\"Qaq2��#����R��B3��\0\f\0\0?\0g�e�j�T��W$��j�����K�u$��ԒX�ԒY��� ��IԒXRI\"��N��@T�|R&�I\0�RI�\r(�&d�]*bLϣ\n����>��U1&Dﲪ�$̉aC�LI�>B���ļ������bQ3���{fwϊ�G*��o�����m�|�����Sl��#����V���3��cί93���0&�%��T\tULJ�m�d�R�T�`E\\�ARK��KR��K<:�Rij������t��\'��RI{m(�*�fhF\f�3,Ns���rp��I�0��RT�I\'MI\'j$�5$�5$�jI:���I>�ʤ��p-�t�^ebb!i[\r>�3+h��*��*}j�+l��V�t�_J��2�v�5�J�V�*��$�\fI3ڦ$�:��o\vM3$�֠H�Zgz���\"�zE^%n�f���M�Ay�6�[Ă���eo�3��I>խ���Xl\v���*`KɄ��\0��5�$���)�\n�I�RI��/!��T�b�11ޗ:�\r�lVH���-I7 =���$b*\r�\\�8��5ƿ�+�����v4�\0�2���5��;�j��o\\+���\t۞cKNj\0�u����N!V��%5��0*I%RI�T�}�$�O�$�RI�$�R�T�\v��m�c�{V�DE�nN�f�S;���������̩\\���N=}jm[��qnu0$�dB�y���̸�V���|��RT;��W��U,,c���I��ǽg3{a�p�@��*���S�UI�J�]*KV^&��\vԒZ�3�Q�X@��`x����%�*H�F���\\�=m�I$x>]k1��2��U��il�$�H�f���=���J��U��8ְ�R�_�D�\r���SO]C�a.�r�]��G���|H�(��6\t�Mi����5�1�&ɸ���J��?���,\v�8��Ѹo�F���Tꐂ`�}����]s���Z�*�w�oZ�y�����SS1\0�u�>��q\nWF+:���I:���I\'T�uI\'T�uI\'�$�IfYL���d���@�R~TL��a�kMIm Uq$��+>T�N%�\r{t����e��,�X&kJ�Jj��)sұ�J̡Oș���%�S�ą��b���M�X��nj�ω[��ȝ�d6en3\'��-#��\0;���8�|/��R��؍��D[w��D�����6Զ.m\\����!\0ZO27>Մ\vZ`u3e�Ó��;T�MȂ��d�\0�,sY�9z���`�S�T��I7$�I�I��DI�5��`�6I=����ŏ 1`y�΅a!Mi�\'b��AnJ�x��␴)\n���l�-7�Q]��c�:V�n���>#W� �LZ�\0����^q��<q9z�#�[�x�� �A�ЫS�u�O��$�,��v�\0@82�������*�H�Ҕ�. �n���D;�e\\F���<��f���t��Pa�\fƣ��A�9�5ќ�����I:���I:���0�rI\'���Y��h���-ፋ�*��ac��$Y̼I/T�L�x�Z���lrV5\0�x�����2Ob��W�1�kU�L�T��[�>��$P^������t�o�\nXK�y� ��ЃDk8�V`�6=IR�3�ކ�D��8�V�H?3�ڀǙP�b.U��{j-}J�d��~��[\n:�w��ʿAD��̻q��3���Y5.���G�Z�q�}&D��.�J$�I�$��֓,I�(l�RI�&��*\fw�m�SJD�*IR�~}�3A��)&1���`Q�Y����I���t+���;׹����ь��\f\r`��,u�ޔ�z�ܜu��+~��9�@G�ԙ���s��|�>1��i�N�0乱*\0��^ܩ�&���c����Mlc\t\v�7�tU������\vR21�3�޵-#@�Ԫj���G#��W\n�a�\0�X\\P�y|�U�f�=˟�7�,L���܃2�mz����۽ut:���rgY���1+�9��I:���I:���I0a0HlB@��(\t\'q UK�\\�R^&|K�*5���\"�q��j�\v�\'�#� 4ܑ�r�A����\0$\fy�����3T��\r$�7�k;�����#,���qs\'�\v���z�Ï2�\t���(�eM?����6��\0Pj\t2q3�?i�\t!3���u���X�i^�\'k�09��Lx�F�)sy��!��2\tN�)Ĥw�ߥ�\n�?2�PG�N#��\0|�a��9l�P�x�i�\\V�$��J r�\0t\0u�\\/3Q\t�ȕH\0vރ�Xh�ɱH�jLNV$�ݙ�Ff�7�a�ZYIJJ�Y�;��/J�^���h�M\"�ܱ��KL�)@�jZd�O/Q�d���5��lu�0fo����M@�\n`�F�^�u��8���$�&j����tÈԗT.���tR�Ci�uϨx=I�9޿)>`-;����}�8���9Ɍi(HID�Š�jʻ\"����k�#��,|bq+�QP��L��5WDwMԬN�W��`����\'�ѪЫ����`�-��>�\v**ۗ�z#�4�n�͒�$�u�\0�k>�by�v���Xm��\r���) T��$6��u\'\0����J�RI�$��ē�I�J�\0J�-~�*¥e��Yx��H�y~zƝ�#�Z� [ֹ��V׵�]F�\ru��0na�H@\'�R����1\\n����i�K�N�4���^DQ4��o黋�t�U�����´�T�6��i�Iڧ��zl�d�!��~uY3L������ɉ�Rw�����!��R��������+euFe��\r���pELbLf��\\l!$��`�T\t���t��.p��A�\"|���7��\"[$e\t�E�?�F;[B\t�L���Ե(�!3��Z�{�k$��\0����x�\0�\f#��\t)��nMQ����\r�2斝*QJ����3�&o���;4�W��k��B��B�t�bE�^&�j���(9#=�8|B<\r\nB�I�O¨��[\v������ħ��T��T���B�ՒX#Z�B�ny��������崁�����ij.�Q6�\r�f~m��������\t�DE0��~F��r7P�x���d��H�tڹ�T�\'�-�bv�`�L$)��\n���&�\t�*�.-��,���b�p�})q��bm)��1NYI�(0C��i,��Eĸgx�(F��;%�\r��9���R�\0H�@������+�W\0,/��|r�A�&=��h�DuH)\nH�82�ծ��1�;չ�\v�N17`q:ǥtt�������3Q� �f��(z\rք\\�d]�\r��J�F���Vo93�EA;�Tʊ���}j=[b�<��oP����L>�����h�s�[��¶۩ʎVe�d\r��:5�c��=�ʛ:UG�\tV��X��+��JQR�LI�.ڕ�Zi�R埁��]R�S{Qڀ��gɇ>��h}flVFݠ��B�t��}�\0�8�i�bv\fL���\nM�,�M�F���\f�9�YS����+�\0EFmʯc��=�7�\\��8���O�c{E��f�9c�ĭ�5e�\0���%O>��:BF��ny�?�Q�2�d�m�NT:��H�fT6܍�@��T�6=��\'��\r�z�R��\"��S ��\0��NX���15�GZp��\t(*N��m�;7\"iV�g\r��\v�vK��Ĳ|p�\n) �]\'��5��g���Ҧ^%ncT�N���gRԘ��ꝉ�W3Pn��Wt_�T�@��n^��Bt����\\TY7 ���H�U�X��f���ł���P��:R%$�N�\'��e��A�W���0�@���U�m�\0:���L�K�E%Aq6JV��h�H�\t۽h��$��2�pA��6`��J�-�$/a#��j\t��m~��]D2���8W�%Xs� \rE$��3}�S���!����Ŝ���JCI\\�5Fݽh)P�=|F¡l��\\y�k!@�,yP�l�/\\�ø71aA�J���&mʶc��z���Ձ{�oI;\tQ�y�Ne�{fs�������R�ۡ�[Vu�\'�����D}�q̸��犢=�WJ���3n?Yľ�Q�۴B�sS��B�\0qv,y��b|��E���\0Jw5��N�c��i+��!,��;�����u+��vI�Z����g�9E�Z�0:��v��qojx!w����W^o��J�m[��\t��m0\\�Y��+��֌\v��\"�l��Ŝ���\0�!Z�\'����W>��n���N�^ڶ3�r�A� \rei;|��ez��:�ż��n�13�:R_m3:mp~%v��V��l0v��B!̟\f�ѥ7�?zn��1~y�ĩ�u*\0H*���7�f�Dҡ �\t`�)&�Q:��X��FPDe؂�I\t�����lN@.0I��a��)�V�8�h�7 G��Z҇��;^��]ˀ!�61����BAP~�T���0%\n\f������8�]���ǐp-q~T�i\r���z�b��9�q��:HѦ�� DmMYX��~x�V+���.q.J�͑����\0�#�V6�ݹ�2;�\'�g��\n�����$� �P:u���3����A��;ZI�Lo�V�|�\f\t^%�(���T�Յ��\f��3�8{\"\r�mHmHL���II\"�\"�^�+ں���\0�����a���\nfT��I�����e7e���f-K��~&�Nh�i�D�ě�t+uA�i��L�/e)��l������]���?���g��������CJpN����o*��ޝ��x���Y�q3����Y�����:���\t�m��Ps�P���}��>���\n�\"{R�흸�ێPc8���D�$ʏ�W :�3�\v&6���_6��,�N��S�t�Y@�����Ta�����+���T$�$���U�U�1���^�\\��t�q-(\'{Vt��[���9v�2��cH؋��bs���3L� �(����;^���,�gb��g2rRI���6��ZZvt�� Gp�tXB���I�<�H�v ���f�F����8��G�I����u�HƲ�G5���IXB��J��n������ˌąD.�9�N�\n�S�\0tj��\"���W���:��n|�|�������Q�S)� I ��M�AXo�rm]�3���3e������ v�4�*_y��s��7�bk8�\0�hc]Kt�>��̌JI*Y����X��5�sBza����~m$�|��?��*z�����g<B�Lz�`�^�2$m����ؕb]AZ�b�S`\0T\r��փV���?�1��v�!�ᦐ�è�����0��H�$�\'pG֝M��b�k���y�=�I�d�$�����i�{ltt�R�U�\'�@���t�����&�.��\t��AH9�`lu�,���h\"A�}��u�L��\'�&�N6���R��.�\"Gr�ڜҠ{3/�6�����T�gH�F\'k&����\"��c���!m��1�*Z�-d\0I��V���f���;��\v�q8�bm\t*Sd�\0�%\"�W�M�|��\rK�{s��MI���s���#m����u;R�!���:i���x�(P�0�?���B3�.�@q��(���C��OL^3��0�GJ-1��+�G��D�kqp�d�!�%(�i����ҘD㑂9���eN\v��W����.��E�F̟�=*�T�E���f^�_c��\v���a�\n��S�ۓt���[�V)_�6iwS��Bx�������2{�@[�f�fB���7�U�&�\0��ޚ��Q���*���c�}P�?�i���,َ���MԮL��qk�:C~n�W�������u�M�@i�=�w\f��I�WJ���γ� \t��!%I�Q\v=jq͵�\f����$��s�=*˒�D�ا��m\nXl�i�ҹ;k�S��G+gT�>gϳ�6̀n\fX������%�ɰ8/d��^@� �!I\'ֱ�;Nd�&�jǔ<|A8<;n�_uz�*�0&6+�T\0�)�Ǟ��>�o��dx@_wJB@����T|�e�ǣX�cF\'T�6�G��omFNp�}�9+\n}�x=d���I��!�XV���3\0 ��]��W��()PnI\0zn���W\t��?��^�K���<�3�T���I���������AXn }��\0~�����fĥ��/�%�y��z�G��,����R��.͸���I2����Ԩ�۔�\"�p��S^�혰l��SIm@rR\0�s�SwG����>��A�v3>7�wJI���4��{��@�q��1����en}�t�}�Fx�6�p�Va��)�m�&zD�c�I�����WP�!����%Y\n&TG�����mzu��g<&8����;@@�\0Z\0���]�M��d��J�q��h��FZb��F�)�i<�yRڜ�y��\v����t�.AT��Q�����ҼG.��~O�ĩ�R��#�\'�����X��;�����ba�5�����6HU����3`q\r���CM��A�\"mo�ard�*��?h���6��i҅!_�n4�2n&c�n�]��b\'m�X61��х����������cV�a��S.��2A$I@�+��%��1+b\fg��C�R��\t���~T\nX`*OAC�F`<*�IRG�6�c�OC��3��R�|�\t��x��P�r?~g7Wr��9�Y��C��Q���?:�ր�G^g>�,�����%�]($r��o���E8��K�f�07��0��|��:�V}C�Ŵ�1�s4��X�SFA����E��)�����$?\rfY�X�Ӳ��s�uG|c�:Ti�ӓ�\0P�Y�kF������J�ի;r��~�c��LK�<{�$2��\t n\f��*A�j_5�\'cER֙��&�J�%�B\t��ܒ6���ӗ\n\t���Vo/���\\�,8l2a$�Ed]Ff��µ���B�8��q[o�H��^���\"\"\"I�Ϲ��En�w��� V6s���C*@)[����jU�\0@(��$�?H��۸���vy�XB�B��X��n:E7���l�t&4�!\"�b7p� !*W�T@ ���r\01�5�O@\r��\'N�j�+^q��\n\f���R�!��IP\t��L�����a}P\fT;\"�\'�9��<\t�̅�uy�$*���V,�N80b�r6���i��:ԛBPP�RG9�֒-�V�����n�ften��t��*���ǯZ�L\f�O�}��U���5�z\t*�6�k�\0���c����9���\0�<\n������Oi����R8ɀf\0�gNa����u;r����>T4 ���\\g�D�M�0�A& �7H*��v?@�\r��[.b1�yX�ۧ�D�ۘ;զ1�ɍgv+����V<?�p6eBdD^u\vM�C�o0�}\'�Z�-EGW�&z�w�C�9�!n�\n��w�+��+��7\v81�\t�m�_2V��s�Dnv���{��Y�rl�4ڞx��eI�\0�t�F���ei��LYav\n����<Hl*���H����l���ד\n*����Ph�ve\"�u>���\0�W5��,^n�!�7�`(�XB�@Ϙ�Tz���� �2V\'�`)I7 u�R�-��m��%�=É�]�>��:�Q�k�8�*�S�BvoᵀM��I�j8�Ϸ��mѫ���A�x�hI�H9\rϽ����b�S\rg�X1�\v�J��`\"�B E\n:��X���>!Y6��;i�tg�#6{<A�v1�:�wRu������uՑ��x��ը]�q��W\fC�\'���ea@Xv;�zi�I~����+�І�̛Ä��� ���$��?���G_x�i^�l~3*��̬����䙘�Z�����WI��V�j`1�\nT�)�7�j�\frg9����/�k�6۴�#�\'�9������iG�`)>�W����36�(�mA3��ft[w���g�PJ�!A�n�\\A�\'�)��g�9?\\�oS�7q�>�^�R���@����g�\n�^O��NR��ȗf�~#JQ\v\t%)�A#Lc봝���ؠ6����QNJ��ya�ul�i��ʔ�*�@@�==桡��}Ϙ#�Db�A����\r�q+���+���E����]#�����l\n��cN���JDy$��M/F���,�Qe�v3�W�@�$�G�:m=l�߰���k��C���_�}�a�֟���s�S�>��C,��I��\0���,:� ����s��Z�&=\n�)E��@�)N���t�\"�����~��8#0N��B�\\Rd��d�=�[1�\"���˞s=\t~�AkP0\"u@I؁�׽d\\@��2���2��/:���N�\'I(a��(w�3s\vF�]�K�&�4���\reM�\tZ��_s�V�wV��~&��]�c�[��ҩJP,\fjU�p,z����1��!�a�IҲ&�������\"�/?Ya,�>�c̟S�ؕ�p��\t��=6���Ozns�?����Ct�gX��m�jq���^f�wa�?Xz�ۛ�>P�\t֓����O�hv�6cnpc.{��Y`7\nT(��w9��0�͗c:�HP��)\'�iz��f\fb��~�̳�!����!x�*����\\l=E�ӌz�s%�O�־k�D\\ɷ���[(x&]�\v��3��M�\'Z�\0�.����t�aJ}L����`t#QNf\'���� ����)�<�׌��T\0�\\`OGU�,%��a�A`���*�t�鴱+����\0�����G��g8��t��V�\0Δ��ݩ�)�=�\0�&�Nlmǡ��ܕ<a#��ܞT�\tZ���G�g�ڡ��ռv�W;̞UקPɁZ`Nn��<�ds\f�E�D�H$��*��v}�\f�<�Q���A§���U�E)�܋D�T��m�h<|Ǫۧ�����\n}�\0�[�J�r>�d�\0�U�iՀ/��q��D�G �\\I��2Υ�KSbG1x������Ǩ3����n�0v/��V�[Q&�BL�r~j��Ө�\f�d��d_�P�i\01\0\r���(M�8�\fB\'���.`���I�( wRllm�cˤ�FTd�8��\t%]�ʃ�m��\n�*��9��j BGO���ѭ[D%l���k�:P��H0d����j;���W��8�5�Hn�t��@0H<�z�M�9=�E��1Y8��Q)B�L@��6�=�^L!����p\v���%\t�����<��nc��G����l�}�dr����t�� �D�����A�_S�Q�Ua�C`͉���C�J]jgRTILN�H�CC�7�\f8��8y�X�R�Y`�BA�I�͔���J�]�wpH|M��}�������J�ʅ��h%�����c�/��lS���a��Nf(��C���qe},~�چ����p8��yN�-����;V�?��r�k8_��������OI�Pl0�ІBA�7\n#m���]�}J���z��sLY�\0O�<�!*�M���WK�m��s�?���90qO$�/�������շq�����+�����B���ޖ\n\t%���`vc�K��TThM������&��[���M��?s�Mug8�W* 3��\'[�o���W�M�7�������;*��n)>UH��9�L��0�����>��Ɉ��asϐ�M!R�93���\nϕ�8S��H���!Nf/��BODʰm�ƫܓ��v����@�<�����Z��nq)8vuk>!33pI3a˥!�S]����G�.���3@����\0�������%)��y?|̌b�d�H֡�;�A�h�ji�\0B��aګ.w��g��~�A���5����0�:�ǘ���l���>��ꦬw:;�P9� �\'�����u���8&#\'S�R�0=/S\n1&�%nBLM����z��~�\"|��9��*�<K�&�󰽄zV��U�p~\"����`�Y��N)H*þ��؂&\fņ�E�����V���nw�F+\f�e7$�h�0&�������1f��|c��-�8u�J�HH��JngI�zRO��rq�0�k�#ja,ǵ���\tH JF������.��~������\0��\0��ڄ�A���G�\'���9U��S~��d|H;��V++��DY�Z�>|Ϲ�`�I�@Z�c��kԒp&O���n+)c�%\tK�u`X����4���1#�(�F��؅��3��(�\\�nr\f���.�N�<$��&@\0����0�x^d����Ϛ���@㙐3Ƀ�Q�F����l��k��}��eh&�S�R�\0w3]�bʳ#�A2���q\\�a\tb3#���K�m(����;&ۚo�,9��01�\0Đ���u8G -s���R�� �ɉZ�F��\0JDWu(��vbNL ��nD�I\"�HreEI�a�ּ���{���������0Of�i�x\0t��ޡ������>L�l7)+!-�Cқ�J�g[P���i�_)�V�-8�!ę��.��5�`�I9��HGڀ�<�\v�T�RۢT`i\\\0yε\r�.?�!֔8��-l��\v:�!%v���קel�,��@8���)��3��$�!A�w~�7�#��8���<���\f�\v�T�\\����W��3��A�Z�kзJ�R�lTD�\'�ՏE{�\0�f�\\VOfc\v�Z��%���s�֢\n�̖:��y�J�:tA����h�u�#VJ�F$r\"�b�B4HTy�B&~�\r�i���_1���g�Y.*u��EڽB\0��u�@�+�v5~���2��?�1V.���8l�e̡*�-k)$�m���r�٨�uch��\01�RÌ�����R}*@\\��Xň�5���n,;���\"��~!u��\tB�Ӽo�\04v���\0��\fXW���\f\r��b5JT)�G;Ro]�یz��nA9�+S�\nMҮ���\0�т�n~��.,���a3�zA2G�WuNFa�O�.f<~4���R@<�����\f&�}IfK�\r8�P���D�>�wژ����\0�1TQo�6~f.*��))>\t.�AQ�ܧr9�襬�f�����mc��c�QL2W_s\\b���\"<E�%D�{��ڗ{2z�V����܋���#�(���a��.zҥi;�֜���0kc)��618��\0|KY���X8�z�&H��\r��(�뛪LL��\f�B���q�\'в�D�)�U$�k�Z�ѧJ���u��0��騱2�PBg�\\�湟�\r�:�IV�6�Y�5�i�3�l���~��ǽ�����h�\f�f$f�[��+�M����ޚ����|b���\t��>�݄��\".�v��zծA��,��Op����a�L�̯�C�V�����O����W�l�p:��n�Q�I=��ui�s��=Z����bT�V�T$ǘ��}>u���K�3���*�J�r\\c���BRU���`��9\vP�����V����g)�z��J@ﴟJN��~s;�%k�i��A�QQ\0&IԮV���\r8u�b)mʍ��=-�h��E����#�+�`J�,��W�.{�i\t)i��7Q$���\'�j�[������Q�S��� M�b�z꽂���5�|���1@{X΃�R��Z��\t�-�C~Ry�նӇl�\'�6�8\'��\fn/�>f�Uʎ����9Һ�jP6/\'���_�]����Q����Hi�3i�� �Ŀ(�V�R���\rŷ�5(�;k[֍,b��@u�*w=�F<��\'5թm�ы�����P�S���U�ws�!�\\�9��M���#z�$�Į)�YN�DA�\0q3�Q�M�d�b����X�kt@_�4+ٜ\n̦\v_ r`Da%�(�THy{O�N��(�\n�y�W��#CB9�t3S�M�&4c��JLg��<袝�&c�/���\\��T�L�9�6��>ث��G/ᤏ3��7��\0�����~��S/�\rad���=`�^��4�͜�Yh\v��/���D��b�*�SN�97߻���\t�D�X��&�I���2:���3�C�`���y�mȞ��ՉQ�|;���S>��כ�U���6j���e(�L�.<�:Dm\"��f8�\"���\'��挑�Y�HY�j�����Φ����&uK�LH�\f�;�V�a\"G�Ms�-m��\t��®�<��YY��\0u&�ӵ�OLR�L�=;6h��\f$�%\t*�IJ��Z���X<O+�\"�,����<{>*�u1 ��.>�uk�u9��-��@��D�Ȗ�c�,�=�*2\\�rG~!�/���*༹�Yq�B�����t�}kz�bG�������|K�ч�S��6���9��X��A���u�h��$4��.R=ɍ4�+��S�,fL����J�׿b���㻟���L�Aä���Ǚ�@��3���6�clŵ�%���:�Ԡ��qI�1�Rc��z.��Md��,X��n]uԋ!�\'��7>�@�����(��S�sN�81�.8o`zᮚRD7���k��BA�&�����S�L�r\f#�X��aj?u��b�\v)^̫+66\f)�y�1L�I��\r��lheHc�O������γ\'�L�\no��u\fXy��B�u�DyW@ ~�]��\fdb��(S-���SI�*ޣy�ny�8uFM�ĀF�6>�\r3\f�\"��A�F\\����@T����D�(�s.I0mR�!L�܅%)m0J@��@{��7J(�K�Z��.�kU�-���s9j�e\0,�&IӰ\0���1��/�/}����|�!JR�% \r���N-��&6�0��K�J�RI�y���U+����w�e�<�̒L���椩4�W$�lnf��BU�s��1fs�=JWX�gFMe��:�\0��j<�oX}0)���(��j��\0��\f��0B�e�O)�G�n�*��C<�E˱�zØ�)2���F�ʭ�j��9�\0��$?�����5�xW�K�6��/H��\nM�܍Uz���gU��SY[9f5c����ђހG1��5���0`9�\0�ɯ�n��h��9�<xq:�@A���Ii�b�^gMS\n�3FV�(8R�C`�g�\r��a�똽�q��ۚQ%b� ��:�leNF�z��s����c��VO�~��*�s:j�h�Ĕ8�N$�0���o�z�)�&B01X������KRT\0R���iW���\0O�KY$��\\q(\'� I�ܣ�z\"��08��{�\\����r��*��+\nR\r��kWYu`@��P��\"�$�4.��,��V��~UVY[�:�7Yln-�b�\\ˉqeCO�. ��WB�]��!���P�C�W�\06�[��/Og�a�k�c?��\"�@���\\4)~�\tp~k[\v�bS\'��^�x��Z��C���3��!^`�rI�����>%�x�bpeZ��(�&\0�\v��פG1���q�en�t�&A׹��.8� 췠\"�N�Ÿu�EGP\"gnQ$M7z���G3^)�\tj\nsH\'���w�\"�8^�!���q\t[m\r*\"�&\f���9�*i4�DU� k(�µj}Z��;\'���Mӧ\0�\"���0��\0(�R�\tH�)�@����[���H�n\nd��D4\f�5D�A<{��踢�\n��W�g�5�C�D��������T���5rOa�2��֨�T�m��[�u!O�����>��Β��D��Nۓ ���#�ڧ+��\0��5�z���ׇ�Yh�IP\t��އ]f˱����v>aN)IZ�<���Lх�[����Y+\f��2�L�b���%Dmq���z-��z�oP�h��f<�Oa]*HR�;�;+�\t��}˜Fi���\r!�\fX�B����w��&�����\t���<O�p\fy�F�\r���;�Fe�j@�S����q���*:�s4�+Z�1��J�&$湊�W��$o������Lni� s/�0��E���V�<��F#�A�A��I\0��I�o\n���hb���r���\'t,>�]2+/�9����O+����u\n*K�@� ��*��T\'-�BWr8�R`Gs�¿���t�|������*���_�|8�3ac��<��z��\0?�K\r(:���j:L���Z!�XF(�q��l�I)ÒI�M�-��fڐ������u}�O���1��(8�Ҕ6��\0����L��Y6]�f`\"w��y�P$5�c�-��\v��Ay�h��*WHJ.Ri�*]�\t�H�L|����JF�\r�E����o;W��;��p�<۫�L�D�kXA��Vvs��:e��yF�9}k���;�1�rع���D�G@*J�\\E�m��u\0:�e�x�q������d��V@�r�����z��5��\0{��K�!���%K��1ZĹ���aę)o�oּ������z\r6\r8�<A��N!d�4��o�S�G�Jz���n����X�<�N��4�(+t���Bܫu��6��SU����c�g�7U$�N:L��tњ�>�\\�9#K��mJ3�S\r�\r�\0�v�R���&\0��Q�\n�s��ϝ�����#��]�*ṍY���8?�f��4�JYH�����q�*�燋�ςgH���\"`U���ɇn|�X��{�A�w>���4�S��@�d�$;�&S�I�\0Gb����3�CCk��\0���ʕ�<L��f�lB��R�4�z���C�`��0�n�b����X֐l���\v�c��\0�P���i}��cj�L��:\rB��QG�W���=���C�4�b���m�Պ�o����o�=�ja��o����=���Q��~���D4�=��ֽ<rL�9����[�TgH�m�T\0�R�K\f:��O~~�z��3�+`k8�2l)TxIҞj�}(�����|�X�X��<��!\0@�uk@�r�q�LaR���R�~h�����Y̘�i�?�T�R��[�֫9�����9s�$�l\'�hc̢e*]�H��\"T ʍ�\0�L������̳Q�AU�əzSW&g�g�2����޸���Σ�gOGp�$�؜;�i(��M��$\v�$���MN����s��6�,/�j�a^Jt��$��(�z%h��8 ��\r�T͑��Ŝ�ZS�;��8��H#�muJ� c�1^�ޏ2ií��p(�i�=�xb�p#!��E�-ᤥA��T���)����g���݈��j[N��T����4���D��QΛ\v`w&�i\'����b1���>u=��҆OQ���p��I��9�yG�ik�k�Sx�ۙW����|�2{u�2�|�s�p�;IKZ�\'�T�I�C��ƪ��v9�Ӷ̌�\'񸦐���PE��\\�%U\fp!F��w0�0n�R·#I1�Z�vB��>&,C�%�G��Bk ��Q`�3)*�B�����6�\r2O�}BL\f:�ȭ�0M�����(�4���VX���<����o����?�D\f�S�C���0��G5�G���G�0=s6�u)-�����Zz�ޫ����p2�r^\vq��܆�{n�n���Y�\v�OA˲f�����P:��rǙ��CbT@�LD�&�ƙ��I�x�\0�˸�%)$ߙX�1a�Q�̓W35a���f�����^�r����5\f�jS�5R��>�bIj��䟠1Lȷ}�R�ռq���(b�e�u$���&���b�W\\�ۮ��AV�\vw��Qa�� ��J��wc#�3��8q�9�!K��u��~��J?\"6�!�0&�<H�X&=�Q��d�\0w�AW�a:��ڼ�o8����73�դ,��������a ��Ms�o�+V\t2��\v��(j3�!~0�^�.�\"Ƅ�L|�AZ/��0{~9���8��]fT���Ͻt��^ϯ���8o��O>�]��!\\��ڷ�@��C09������Dm3�u�u4蒤eG0�̜N�l����kc�5Jy �������-���ٛZ�/��g\t�$����U�+�aOXcqXŋ)@�����5�L�1�\0���W��?Zظd+��̻(��*p� ��ժ]a�{�ǜ��t��O�@��Suh|���\\a}�8u�8�\vs\"�J�F\0��.w>�\t?�CbT�+D�E. �ƙy��^\'�q\'��J�s�\0��N�X�B�QR�Tc�z�Lȶ���*ja��*J3vAW*j�#�j�FoB,��f\\���>u$�4��jĒ��I���Ŏm$\\�X ��x�ٻa+ $��G�\\�@u���b�~Q��]�����\'/Y�.�@���w`����j��1[{�s�Ǆ� 1�]?�\tȊ8|B��W�ӄ\f͸3fT�_\'��\t�\0L��j2�&<�J��WQ]�*��i�S����K�N��!D���O�S�p�4�.v1�W>��^��G�8���\v�(�d�\0\"��d��H��=�3.h�\f(�sF��#p�\vZ�ҕQ@��]@�_P�\'�2f�Ɣ�6�\0���:�$�f�RbW�0��$�N*yP|ǟ3X3Sĳ�T�\f��72MA(̃��\\�ry�Ԓ\\�ur���5RMl|*���0����ͪ�+2K��\0�Is�*�ˀ�*��","botalon","activada","comida"),
(3,2001,"carne roja","pariila carne roja","carneroja","mibotalon",100,"$","����\0JFIF\0\0\0\0\0\0��\0�\0\t   (\" %!1!%)+...383,7(-.+\n\n\n\r0% %---72//52//-/--/-/2/-/-/--------55-----------/----��\0\0�+\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0C\0\0!\01AQ\"aq�2��BR����#b�3r����CS��4c�$��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\02\0\0\0\0\0\0!1Q\"Aa�2q��B����#��R3��\0\f\0\0?\0_�gh��\0�L\n��e�?���j8m,�6R9\t��1�l�*\0$������J�,�.��H�*�luR��v4m4:6G�C���\0UPM��� s�Y�eA`čF���,�Vq*V\f���;�v�3���xuh?�2\f�\t�H�{��X|1��9#淢��F,��jݯ�D�lU�JԧQ�Ƹ�)���w%[=��{ڀ��ԢG���ѕ�miY04=�l��U;O�fEB��Wbb77<�X�ˠ�z����>9��Mj� �+0|������=�!Q�� (��O�b�յF����\0d^�L�TR9@PO#��G�.5D\"��3\0��=��T�\f\"��r9tǍ�6d}m�t�\"��:H�$�V���K\n�uo��>g�8����R�pv�������dxc�nQ�������J������A���1s���>���\f>�וj�� e.;��RF���1���M2������<��|�\v�^�����3x�\'���ʻŨ����J,�mi�y�&\f�Y�\\W0�+}Ԯ�Pt�O�;��j�CN�o?L�60��, }��%mO�\vB�es}J�;Ń���M�[�}q���[0Z��\t�+�-�wŬ�F�`Q��G;L�m�%ڗ��K1��H�K��uBԀ��Q�\'\v4sT\t ��A �oi�T�e�H�g��7bcC��[_�`9�>�8����H��T=���J�����03�p�O�J�����4f�-��k�T���NE?������ő�e%��X�tkb,�~��j5�1���/�㵆��#�\0ql~���C����o}�� �+Yo��[��|�v�~�o?�ڱ��Yǎ��\"T��\0�� D���X�����<��ޗnt�M��\0�킩ò�~���S�)�b�W�\n6�[���a��u�R�|�����D��^ ���n��f��\f-��8$u\0nX��b�n�,5��\f>��҄���xu�G��mC�y�� \r�-bE�刏+��w���\0 q\"w(0��q~`���H��*>F��{�V���1��]l�\'U���pCQ��J�`�����?C����UT���y�=-\"���lĲ���\0����\vGTI����/���)�5Nt�zXߨ�È�<��8!;:���2�P4��\\�3��ꉸ�#�3{t�aQ3���\0Z�j3�`�kC>�u\"$)6�匒�NW�icE5�ū2r\t,A���I���^![IpL@`ބ������$ԩ+��f1��-���<$��S����Px����y\0�����`C\t�[�\r��<+�N��jj+;�BB7���<������w!i��7};3�OC�5�Ivf>J��\0c2����^��TeUP#�w���\'\r\ru$��`�m_��EӅP��TƭƀKz�����Rwjt�XiV)�ɉ6����o#���)WJf#���O ��z\'�?`�El�72��=���������6�?������-\"�u���\\K=ID�O3�u��=�˫j�cc$� u�O�J\0OuD��\0��26��l>h����H���\0XR��\v��m#H\"�9��F�0�!G�̞g�S��h�|n(7�`Zgo q���\vr/\t<-�K%�|�����ߧ�R�w�:������#��A�!�\n@�e\f~��a79�a�T���>]01Ɓ>�z\'ۦ>����XZ��3L���(�}@�^{��[}�?~x����N\r��ۑ���µ,�=�Y���G��i(�QQ�8&gT�\r�\\�\\5�z䥻W��@�_�X]is ������e��DZEIV��\'��>K>��V!we�dy`�Em�A#l\'{8�.1G�c�ǧ�h�.�I���X���K@���l�p��G^�=��M^��(>�X~B��-� &<�cS�*���b�ߦ�x������\'o1i�7w�ʟ����Yg���+���G��V�?#��� V7��q�\n���%�h�O��`��Kr+4�&T��`�*a�[ ��>@ :���<_���X��=0j�g��*�����\0���y�ð�<�����0��$��\n�<�9\\��+�a{1�j��2��!H�&�ӊ5�Y�e����8S���Oi]�z����q�N\"���@o���fK9�\n�?�ߌ��\ves��TP�\\���{`\f�o���o��P���1�>��}1���`��\0��8�\n�{�\"�uBdl%��ݺ��eP�aM���*w>`�c�bԘ�����3 �E`|��1��?�1�4���[F��S!Hi����+\'���~�\'�V��W��6�dT��@��+\f�]��zR~@��7��Ml\t!R�7\'��Γb�����x:!�<�sz�ЏU#��E/��>p?L�]�4�x�*_pT��1���c�9?\\c:�p!3f;:����#���7��is���Sv�RbfB�$nOA��Vk�g3b,�skը<�>zH?�\f�\t��Z!\re�mw��I�>X���ej��<��_����N{4�Q��LA�dɵ�A~|�/�{���5>���d�\0��]z�f\0���\vݧ�N[(�������|�4���\f=q��g��H���S�i)�t}/~X�85e��%BDJ�y��-����F�V�fk��\n���UbKB̓*���t�V��\v{ɋ�~�����feqӅEL�����ߡ�8��o��H���h`!�����sY\nmgP�Pd}A��G$�����q�*ѩ��.���\n*���i�2N��1w7�tk�v�ל�Ԓ0��{\r��+X:ݴ�_�M��\r�~*���k��涽/�?���Z4rʑQ�K��rt���ci�Sn%��R��ڝ*K#L�=@h$��-QȠb*T�5�\t�`{�+F����OLN�&9�N&@֛�zwI0�:��\\���Q�}�5*2ԹD4/�;�b���$~#��)�Z��{Ũ��#�6���ي��)}�ı��ld<�CK\vC���S�pT�ij�n׵��8��\t��ׁ���_�VEUط%DzN����\f��btTQm ı����n�ѵ�w����fx?�(�R�����g��3�Zdn{�2\t=Z\"�\f��[~�\r�I,y�cܾ{- �΢.V@�]F�y����ª�!s��zr~�}�.q!]��Qx��O�q�U���[�rm��P���`R�j{�T�b����0�p�oS�e\f�HV��\r�����\r��*���v��Z�K�\f@���)��8��ߠr��� 9�0��J�@wV�C}%b>G�k�#i��L�ħ���\f�~�\fpi�q�L�V�ͫ����\\�i�j�Q\'��NO�Ҩ%[��/��3�c��9\n��G�������r90��q����~M�1#�\0�g�5@G�q6�,.-x�(nv�4Q���v=7�L�N�6?)�\t�֓�Q�;nc����W�F�!f��\0���\f&K\'%�Q���T����3�U��lH������0�^�+&�\r�\0u}�x L���x�\fd�����[������y�.p1�и�T3\n�+��Ź��+\f�1q2y`�eWJL��T�\0\0�~��1�f�`J��L��Ð�t�m-����x��Ks�`1�s��X7\'x��ǧ<S��fN�_-�O)Ā��2\f���X_b\r��i@��pB�&��G+O�OJ6�+`�g�2X\\�29EǿLT�53Q�#�R��3G��}�#ur��e�*,�����cQ���~��陘#���߾��8��3|ljе%��p���`=.-�RJ�F[kci��G,��1�je�@��>C��%��Z+��P},H�\\E�Jt��Q�����/�y��(ӏ����\r�-�=��>q���� �[����+���H�*w��bn���r0LV�Q�Ӥ(P��\0�7��c`ȉ�F9�ۗ%�#S<��������������ݬ\0\0\v�����?�EE.��ʋ���x��.$���{�CHQ��\tc��|��\fu���3p���/l6�9)zm,q4\0}��Y�jT��J��|�/�ǋH7�T/�h�.c�|R�!S�v$�iW��H��ĪU�Z�\0�ҷ>����+4*պʠ�s��n�~���Q�(��)j������0���ְd\v����ZL��&�<�+Y���KT�L����k���e�Q���m���ZǥǾ&��_7d����b�(� ��\0H�8�-�l�Y5w��B`E���޸�8��\0J�˫�f��\0����9L�Z���`6%{����F\fd�p����5\0�C���/i�JzVwT3���2�W�f�\0|H㦨��_\n�|���ܽ��ֱ짧�� �3�Y���q6�lE�i;�\\�cx���A��$��\0��e�\"�$�v�=��$��co�<I�Z��ڜ�BT�i��$�3�.&|�i�Yi,)��I\fE�?c�zc��\"�x�������\"�[�_�Z��$@�?_LK�0���ec�b�#5�\"`\t+��ۑ��O`L)\'�v�;z�b��^QT�t˼[I��\0Q2>XS����E��-5�M�\"O>��rK���0l�h�g���\\�y\0\\����.��U]I����&$j��\v\f3vw������l6�>Xt������`h\0\0�+�~XxcY�ʭZ�H���#d��T|����u ����L�i��}:h����\t�MC�jBX�\v��N�҉\njs�s�g��8�\0��\'�87��]����&��{��\0�Σ�$0���q�����U�M��,�ᱳ�1MҠA���2,G9�3�_����i���n�I��N�ێj_�����d#|\'�y1G�u}R�ݒ�H�87�󴞠+\\:�ھ $\r���\t#�9��*X��y0� b\njIfyF�\0LK��L�=��\v����.VE&k���u}�LlO�c����!<5/!\\Z�`�� �N�w�n/]�k���ɧ\f�/� :��b\"���k�ʰ5����3Ζ/�\'����_�/TA�:��)����cm��jr\ve�\"��y\f�EC�\f�O�,)�Z����י�;w���A$�_�჈vq^����Y\"��\tc����5�׭&��M����C��JJ�x5��\0�e�L`Z��s�����\\�,˼H0cs D\\b�e�)WPXB��B��� u��7�+�=`%X(܋I<�q���F�,5���1�9�;�5�)lg.��uՈ��`<�{��q�����-�L�f�\n,)*��bB ��;�j&OV�0ɕ�\0�Y �Tz���*�E�L>��*���>+\\�@�)�r��s\0jn�{���\f_n�\"|N��\r9z7�F�Bl6��<�G�U���?䚂�N����2��d�S���g\ni�=ڵة��Y�����q%�:+{hP�W*ԃ�V�N�܅�{�`Ԓ|�ء�4i����(�%2Ǿ�#��M\f\v\0\'pe*1i���g��&���Sz��F�7|�S�j�=Z��Z�$��a���q��qg���U8�~�zH�I\t9��zߤͥ$T/2ğ@:�킼c9OQe%�| 6�@�?L\r�X(к�ēX�g�a[��&��&��fu:�G���u��k�ռ��x&�|�v���e�`���$��!��?g�]$M\0)sr��\"Nޘ�ה�>�Y�o��9 ~�����UΫTz��}4�v���=�o���ӫU��P�6��\0��w��2��B�.�G�@�\0lKW�S��J�u����`�7�mݓ�_����깝\'4�\0�]t6�^ F�y��\"-М^r���}�����,�VR��O�z� ���\t�H8[��K�Դ����}}���Q��g��W�XS�CFa\fk�@b�<��q\'���Jp4}�D����F�;�¢?uT1J�2U�\0=>��?L<i)4���)�G�c���\"��6�q�Au*z��\0��>�\vO��15V��\0U����<�����%J��r���\t�5xl�f��)�g�ķ�y�6�\\�����^��oS��R�V\0��h�7I=c���4��բ�|4�ۮ�{�N:\v�eTib@]�XX�@[�3\\S%\nN�m0>��|������t�y\'���2��{��W��\t?3�F��˒) ����$|�=-��G��%JN4�m1�0w�§F�W����X�D��>X�s�\"lp�7����Ŕ��ꍇ+n\fk����i�O��\f�ĀLN-p��Ņ���>�&@l#�i��.T�G�q²i-PZ�;hW�+@|Ȉ�q�(\'SQ̘��s�J�����jM����.�L)�=1�6Ji��q@\n�R�,�(���gڜ�z}�e��x@?�7>��+���k�w5$\0*�LxTn`bj���H#C� ���H8�Ʊgˬ�aLo����ժ�z!Z�B�MK�Jj��aޅ*���\nj\"�(�K�`@���\\�g���TV�O�7�$��a�j�p�Gq���q^Y��J�����A�U+�s*�\0��3<����`>g�\0�ݻ�B}��� �]���\"ìG��h�rHi7؂u��BI��Z��^2��� ��V�vֽR\r�)�����;�p�eIR�$Z������f�V�U(��w>�Ә��^�I��6^�c����W.����1��}��ɢ�9�H7�����X͊7��,<;r����o��ɀڭ�ߗ�{���ǚ\n��=N�n&�=G��qw��A��m�8��kZ���!��ı�;af�9Vh�>�8�U�C滆G��Je�6���Snld�.�W����rG=k|s|��Q0�Z-�k��/L��Ν2z�I�\\����h[Q��m�\v�2m���ps��|TSR�Ԃ�0OV�����\nY�\'q@1�,8�~3�i7q���mʧgj��8U+y~*�� �\0\r���N��ŲmR��Hy��㘌\t�-+�yF�F;������Q3��9�`�@g�L0�Tr�ha\f~�y�RV~^}\t&|��Q�z����m�\0�H��M��i�T\n�N��\0|_�搙��o�6���7�0i�\nQe8�O��YQ��8����WI&t��G�|�lfYZ����L�PB�*�@Xzᬈ��1�۔�����p?�c�т)A͛Cz����mP��-��OA�_Ɓe2:���yR\\,\v�:��RPO0 }6c�UBQ�S�A�?ltl���������\f*xZy�G| �Z7���]G�\\�>K!5*@�J-��Wo�\n���Q�@�,�[e�S�������W}��xO�3�@��偐x�3����>��L>�r\'Z�@m\0�bD�|Z �\f,Q��\\K��^K-�V����\\`g��~Xe�רڈoa,v�0/~^�2݈���9�mL��UxQ�\\��9��%�|�#��j���DG�W�p/�8X9LӾ]7��5���%j\nu�U��<�;�8`��)BT��cT8�>|�\\�6�Pm�HV�[�c�S�T�S�\'\0@�~g��X@m|KM�6O�����L�6��O�,\v�����2׼A��b�s6���\0�Kd�;a\v�=���]�X�o-�X����A;�`�\0/߲}5R���ꊢ�z\t�^�v�W.�6\f��s��~�ծګ9{�\0z(��5n���\n�2��J�P�cnFfz��b^�ܽRl�Omӊ��\0����Ǩu;>{A�0ѭM��Q*n�!�˞\r��mmaQ�����2:z`����K4\v�u$V�\"��w��Phuq����C�~5Z�?~��R@\f:ɱ������\v.I�>��5�Ʃ��\n�\f�4���v�&�Rd#TW���b��\v��&�#A�ꬍAw�\'��7��z���Is�2�Qpw�����Uu�}w<���]R���k�gpz�=}6�Wvd�0|�ߞ.�z4�3���3��t���e`n<�;�\v�[r��J� ���܌E[:��bǬX��a��\f�ah#���ϻ�Lb�4�q���v�Q�����n�_�}-�{c(vs:��0)&%\t�v:I،��7���ͥO���H�<��촫Se�*�olZ\r�\nΏ�֒�I�*\\�\r \nu�թ�f��Ԉp~k��;<�uП�Pwm�%>l1ժ�a�i7���^���m*@��� ��=��Me3/��\\t�+�P*Svŏ��S��S�>Fߎ:���D�4���[_�e�h,��\0�i�~%�in��WZ�\t�\rU\fB���7��X�/���:�~o%M���\"�>k�v~X�����#���U\r3�8Ln=�2��Q\\(e��{�{�\n�x-2A5_OA��-��E�l�4�yS��5�5������\"�\0�����.�Z��ߠ�1�l�,R�4���=$��Y���O6�dH$��qVf����CVLt�2����y���SV��|��k8`\f��N��ŧs`�F����\n�s�6b}w8���2\0�+rv1{em`%:\']�)����6/_,�9�F�����iE�:�� ��g�g�Bί�Q�\" ��F+��pZ��#4]A�n5V{�Uf,I�(�����q��Jc��&N$��L,�S�ظH,ʢ��$&���G/��@bO!=F,6I�����Y|�I$���勹w�`�ms#���I���{E[?��U{����������[�j�9�A�Н��9��\0����\\v�j�x\tz�\'�ޞX�)Ԫ;�7�U��ĐB�,M��p|��9�ơ�;9�����@r�\n3�o�N��L�{w�Z4���z��i�XY���;h_�l����i%��\t�a�l�yD�7a�\v\nF����S�SJ�i�D�J��\0�~��� �b�\rJ�*������|?��d0T1@������3��ƪR9�����_�z}����V��U{/�V0�W��1�RI$\v�W� ��Ǟ+�\nG�\n��\n������J��1\fbzA����U��e3g����H7�>X�A.LN�����\rQb�����X�#Ǥu�c����Q�4x}Evj ��I���ǵX��<[M���8�S�R�L�#�Z=�3�y��yu5\t��&�;`�ǿ���0�ǈ���-��v_��;d�\f/��� �b\'s7<�X-�\0%�*�3�k�wE?&`qS7�,�!��� nTkԤǾ.�\vZ)y�^�y\\\\t�vJ�Ȳf��.�Im`0�\v��^޽qU�\0��Ufj�1Ч��#�\n�)f��\v��?.X|��� jױ��o�yu�hi��w�������غ4Y�*Tb� �${�`�_\'M~������C2����#��p5rlO�\'�0~��w���6�j�����Z:�c\\�qi�\"J���������=��5�_f2/Lɪ��bA��\"�]&�m��~�J�\f#!Cl�{�f�!\\��\fZ@7�[R�w�s� ��j��5H����b\v���2�Foi�#�\0�B���9���aw)�B�>bY�!�G��q��y�@��,��\0� ��f��ڎ��jb��ed�?#��Y����a��^����7\f�s���-3�\t�^������\f�e|6\"7R6#��,�s�R���y0��9zF*��\nޚ`\r^��l�V�m���_�S�xeVz���@��*�����2��w8�<`e�|\\\rk���|,�*�j��U�\v�ܤ�<�m�1x���+TP�\0*�<�����������c�P.�h=9\f��zr�q~\"i��\0�}�`w�\t��z������&�q�=A�V}H\vkXr���|&�ͩ4Q���T�Tֶ�BL�uϗ��|ҦQ\'����i�B�\t\t���-���-@.�G�Y�\n|\f��n>x�����$���\08�f�*ԙj`���_�������X>�p/!�\v��|\'�˘�u2�3�.O�צ\vv��}L�J\'�����k��EP1�QϤF�g�T��~~�Q��!1�cZA�]?\'��ӨK�@\"m�\0U�ܚT�(+��P�t ���e��A��ϡ\'x�Jh{�~m����-ị�������h;�ϓ$��t���W��Tz�5��(���ua��c����wec(l`\f]�+�0V`�V�S�]�\r��Õ9�6�p�+��ҳ�4N�vm+ӳ\r[@���\t9��.�JM���4j���*�X@m\'�����k�븺�����H9\tqv���_�=\\�S&YJ��;O������#�JTl�3a�O���S��317�y�7�u���������~�{����ySq#R�jc����8��\0�,���Yc�g`O8A1kO�1̜�v6_-L�BT�@?%~��\rp��U��9s�k�<w�T��T.}<��*��|\f��i�b�W4�L���r<���ƙ��@�$����Db��i�`��ݿ�������w���H��QS2\fsw�Q�J��9��U�ƙ=\n���ۇ#\n6��*\\�sv(���T��:L���/������1��/,ON�\'_�9�By�\0�\\�l�;�r�r#˦ �!H������/+��$)��Y���n^�\tڞ�դ�4PRӽ�F�\r������7Y1;��)���=PƤ�\t�����]ݭ�k+������k+t_��p12\"Kӗ㈎A��\0�����Q�T��5J5t5J6�J\f�w�LL9`���4K)N�d��4ψr\'q���p�)x VK�6�x��\0��8@�Τ�����i�Z�t�Ph�nM�>Dcj�~0���!X�$z�o�u�+���|Z���A`&J�H��F��E��C|am�H��0H�C�J��6��X+>\"v��܅m�m��J�\t}Z���O�ט�u>^Gȃ�8p\f�c{����{hҹ\v���?�\'�9z���GO������X\vO/�Ŏ�q0lf}$G�D�&n��Vݢ�i\tY+��u�L�n�J���#��aӍ!�uh �$Z�\\\'�i�PB,I�����d\0�9x~\nb�q&���iV�&��>ǖ+T�����K2i1����^���-��\0�f�8\0�SmG^�X4\v�>D���=0b\f�<�k���=��<�HP���|��O��j��R�������ZWX\vP(�lc�~��X�Pv�<XP��R�>�0+9��F�U$�A���_�q&�Sc��)��:�\0i�;�|y��w%X.�0c����Pn\r��Fvj�zI3���aKVs��(Bg�\r`\"���)���`�U����a���r�\'�N�\0P�$�9�+%%\'N�\rq�����Q�7����z9p�33tX38#_�J�n-#��\n�!R�Ϝ}c\0x��1���7*`�c�\t1��Z��1�wvJ�Ƹ�|�Z����}!A����q�i����~�5�bĄV%��I��;�k�\0Ԧ`�@���$lZk���{^K�Y�R��0�}k3���i��bju6\"�t$�>�u���1�K�W�&�2V~-���|�\0�F�:���m�q=����\t�7���I���,�}�g��\rC4��lO��y`�o;N�f�\vV%P\v�=\'M�ls9�Q�C\'�a+=G0|ԃ炼:�3�\fDҨ�?�HY�Ci�l�{CG�~�~��u��0+iR�M�����7�������ɍ�=\vO�1�]��5��T$X�U,o,|S��$\\�xᑈ&X�;m;�\0�+Qn\n�n���ճ|r�X�<���o��u24����S=R�vY�R�k<��N8kM8�s�Q�+�k�?A�_B� H�R������$\t����6\t������T���Z��4j��t�\"�D��aw�e2�*�VG)���F�5i#T;�Ө�\f��ċ<�ᑓ�!U�jb\r��\0h�*\'��I*<��p�bl[�G�uL0\"0D�������l V�MY�$)o�D@<�8?� �#�\\L�Y«����.��K\t���vhs�)�h����b�Gk@ E��;5��*�Ɩ\'���<�_�p�./�4���$e.5�B�)߻y4��cM���w�&�\0;Eà�T�&�AV����5�ǳ���ATJ�i�ѩx>&�����`b��\r+ߨ�;�S(%v�c|��IDX��O;R�jL�R�E*WV���Z-*D����wiM\t�\f���a������հ����L�n�F*��$���V��z�.ŏ��9L�l�J�0�ur����b����DυF�>m��S�plƚ:|\'�����Rp��&J�*F�Q���w=p���N��[�ߖ:e���D�}d���eN�z���4e�\'�LN.d2�|O _lU|��r���ڧd��^O*��B�\f�H��֗`����(���>������p�X*J��c���O��\f�l��\\\ns�m�&��:���Q�\0�O儌�\\\"�@!��Oh������|�q?k�t�fUN�R�#Ӥ�/�؟�q�f��>A\f���aK�T���)�VvTPI$�\0bn#Et��\'�&?�O�i��\0��\n�!\'��vw�u�����qg��$N���0L�Ќ\r�Uz�i��ݖ�A��[|�x;�SR@��X����k�5������*��\vI�7��.}y���֕��R]��S����mH*jҶ������G�SW�`�[������j�H��\0�p�/hw��J7�\00S�>}v��8M�5�F�<����<��.�B��-!���\n����6ڹ������\\\t�4W�9`�E�Yr�[T���GLW���1�yb�U]\0N���AO.1��U��\tP@PH�F��A���UԂ7c���AA�Ͱ��*lk\n��`\0>b��ŘI���cH������p��x�\n��L}���x���Pp[&��>Z��T��R��ǂ��B�#�}8�qr�y��A��8Oi{�O��E&f>\'�cx��z���S|B�O# ��0�C�1k���@,b��s���TUg�fB́�7E������>`a��Y�\rC�Ěj�^�*����\0�Ʋ͖Pk���@>&�#o9�|�l3�?�?�A��?\\\t��J�b��V%����f7�|\v�G����;7�j�\0J����O����k���\\.������Q2�t�Ru��j\0@N��L�X�Z�\0�a2~����Rl��b�4^AwDS�X&�F\rpH\0�� ��`b�q�dOv}�߆����O����×�#zl���iR~gݴ�~�ƮNi=�S��(�o_.-֮_��//o<u~Ė�0T́cc1cN㺺��̫\\G&���7�. �0G�<��K��U�[�WwT��s� 3��#�<�b��8�-Y?�V�U��`�R�c�5�S\0\\��Uȫ�F������#���c�iMX�fxI�eW��F��ȑQ����t�s��߁p�i�T#��\r����-m��QՍ���O���)� O�I�%�&��H��t��>q�B�[��|����y[�\0����S\"��?LIJ����1��T�3�\0��\v}�����uV<�O��`�-V�<��/❜1\"\\��\0�᷆�\v�gk\f�1>��s�UD�޲G01��\\�&�̝?���D�y�U-�p��8e�)5�����ꩺ�%>�����mo*����>|���\"y�3���z�9�@\n\f)f����bT�T��gW1���6�+Ӟ0��PҍOD1���O�ż�M2��dL��ܱ�3�4�U�<Y�@��\0A�}zyi�(A ��Ў���w4��hYQ�p\"��&ֱ��Y\nj+g���ĻA�~��c8��@���s+\\i���}/�y��� ����x8K�O�d�7yM?�E���\0��X1��i�&���Z���kx��%��(���E��ċ�1Ȝy��*��s��Z�鱢�@�\n»-��6kφf��\'=V�64�M�Ԃ��f3\v��ALy���.�حZ\f�����\"b���뀴�������m9c1���\0��^p\n3C0UyL=8��挱��Y����b�������","botalon","activada","comida"),
(4,3001,"parrilla mar y tierra","descripcion parrilla","pescado","mibotalon",123,"$","����\0JFIF\0\0\0\0\0\0��\0�\0\t( %!1!%)+...383-7(-.+\n\n\n\r-%%---/--------0-------------------------------------��\0\0�;\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0I\0\0\0\0\0!1AQaq��\"R��2B������bSTr���#3����Cc�$s����\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0,\0\0\0\0\0\0!1AQ\"a2q��#R�����\0\f\0\0?\0���w�������?�*H*�luTAHF�¬�6��3��������\0�\'�l����\r0Z)R�G_\0���MYz(�\tGW�1I�.S3�U`S\nh���p1�d�Gn9,�c�K:�S%��Y��;z:$��\tGW8�h��­qj�l�2��ɩ)O�o�W0���+~�r��G:�*зf��3�*�2��+����u�5���R�h�:lԒ�a�e�R�QWJ�\nˌO�y8�Vxj�H������\"гWH�VJ�)3%�ʃ�`��\\E��\"3�r�\\��д-G���UOz��W��-���%���Ȍ�T\'r\"�d\v�<b�)]��\f6$w�����z��V��\0�n�����\t=��`�����>1�ђ��>04H�ȁ�+��8�,z�\r����<��܈�)G�1+����A߀F?��ѷ�܉܈����\0�������-�:u:;���x����?h8Y��GdI�I񃡓��W�C�#��\00�\r��=��GbA�}�40�\"/�72|`;f�BK\0N�[ta)7<1�܎��R�I��*��T��O�9yC�=�үK�c���,\0�Q��a�=Bw�+�u��sՋE�t͜>�|�<�:��D�w �}��^�S�4��X�~��\0�?8�����\0-?8ߩ�9�W������\n��nv��&>6)��+�LMo�t/cG�m��3?h_���|,S?h_���MO�4�c 8��[�����G�&,\v�z�#�[�+�z@�c�\r\\��h�~�g}1�p�L�`9?Aҽ�Xl��q���Y����o\tDp��~�7�\0�\t�~�н��G���֪���\t������\"G��:��-���\0��k~���m�I����1�wBں�-\nIu&�)*w%��1���V@p5vW��V��F5q��p���jM�c�}&�,�iisOf�J���y1[Lb�G�\n��y�$�xaƵ��4ϻ}s/�=�x1oD�/Zgr�i��k��YwMmJ�$�+e��~|�>��UqR����hS�\n�þ�X�1*\n!�_���0�b�=�[B�R��0[�p)r\v�͍(RB��zC�O�>P��5\t\n�}E,U�`�Fq^��&!J�&礒��Vu9�ͽ�i�[!��}��#/>�e��-�pe@;�ws*\\�\0��+��M�x\\y*��Dz�>D�\";��j�⁣e����}P�j��τt�|!q���\0?���9�:_����@�ɡ\f��;�¡��~om_T}�>_����D�ɡ\rx񏊷�_���W�~q�`F������v��S�1���i�#�x��#����à5dk�|�Ac���Ğ���\"{��~P5H�l��C_�&S`��h�2�d���Jlh�\r|�N���\n�g��Ţ�;����~��^����}b7َ�\fq�EI-�R���x\"+�iJKT��ˤw��,����-�,�W,�]��ૡ���l�\t�rȐ��%�F��\r�z�V�ϴ����Q���\r�/�RDe�\"�������nlP�2�)bҋA��0gk�����˕K�p�m���ȯe6�\\tS���oU.9g�����6����\'�U_`��l�-�L�_W��T_\\!��X��*n�x��i�5jXH$�o��m���%ֲ6|�Ƌ�ͨ�R�\0*¡ǌ�,��)�J�)F!�P|3���#���e�AHf���i�׏�c�=0���%�\'���9+�m�� �Q������i�+��He�PP��;<��Yj��\'U�HK�R����M�Fphؾ�d�\0x�N��Kv�䚆H5��C�W�trP;L��� �5�=[�1�c/��3&KZ��T�v��$�D��\"rS��F�A�DG�ˬԷ��@���E?��گzUl����=X��m�\tCLl�3d�\0��3�\f���\\c+p]��zRe�R)���Ζ\tܟ��SqQK��#��h�\r�^�q�~\f��s�*�Z_�r�����/���\"�/P���q}��؇�E��\td�~B��\r�Aά��$Y�X\0��Ý��a��b��cٌ�<ҒVR�@�s����\'�=�p@z0�).�|a��(MO��f����|aADh�!�~FF�m��4P�}N�ѷ�R�a7wy񏌽�IZ^Y@)04��~qZ��(�Q(�óDc\'�*%�\rc��$%\rc��)�Z�Y�����(f%���0#�M��Ʊ���5��A=Y�&8%�_3\r��]_do& T 5M%�������T:����U��\"D�o�4�j��\"FkaZ�P\fٕ��,�Eӭ&!:Ӷ[-,��}�Y�8~0ٖ�$����b�.+�:�N�a��e�P�ץn�b�{��ujI�����\tP��k���S���EU�K\'��t,�)KP��5/)]T\'�E��l�m�4���;��KJS�ruz��rT�ZʱT����!g�K&�F>8ꋴ\r���\tM�qG\rE\ngܕp��;��ՆQ�=�g��D�-wkuX3Q^9{8G���$3��_fػ\"i�G�����t��w8|�>�[0\t�4�C�ݓ\r`M�>&[-ג$��x��K�g��.9�kL{#�$�e�Th:�.�.q1 �^�1\"�#��-#.��%�s����2�Dn]����\f-U9�b���ݘmg)��\0b��5Ì1�dR��RC�js��x��Z\v�B������I�΢9�O3���\0#;�>J��\tm�\nJ�=.W�i���\0H�*�3����z����~��Ctw�W����V��}�\0�֏��\"q�pqY���C 2�P��i\r����\\�DE�\vV��,j����u7E��A�)�2�Ok`כT7�{>�a�l?ݬ�vU_\fc�z?����k5Y�C�:Į*O���>�M/BEiE&إ(����A�SZh�H#�9�\n�z�(�e!�O�}Qv��H\tS����\'�~qVl�kǟ�sT}��\\��\'�(әc�rЄ\thHKe���dq��읙����X��2��8A҅���O���\04��}��NVt��G��#dH);\"�?e:�����\0Q+���e�-�\'���Ct,E�P���b��J���V����\nmU�����D��=ѓ�̬&GT��*�e�d�5�-&��\0P�B�C �JN�/��?�\t�a^��4��M��0�z�3�M*�:�`�,k >��?�4%f�-&�]/8��a�E��f�bY���*�tP̤�\0(�I\tH9���M�X��D�-7��}*�a�iOsDq�4�T��E*��\f�\f<k�dh�%�,9g�17H)W��B�*�u�E�]�ܾ���=��;L��N\nBT3\0�xؗw\0�4?=n(��v�6�-Gc��E�����\"��yw2h�Z�]%��Tfk���t�iL��Ԕ�����\0l��������s�7K&��H����\"�\r�*K�\\���tt�R�%$Zj�<��jiI�$�\\��b�%=-j+��H��n��I�5�A�0����(�\t�5J\0��_�Q�%�}�� #��Wp�ti�Vdt��JI$�Ja��=�D��nq��~��Z�~�\'��W,9v+K�p��ݢCK�%�\0Z��d�my2~�9JT�\re��P�D�6\'��h�D��H�����꧊��J����\0Q��\0�|\vo�E/����;R�zP�i\nb�]qm_\nBti�\'Zw�^��jT��$3�|IX��L&ܶBʚ��o��(���]c�V���+���VcQ�0�6K�z�OD?���G�(�k�·@�FV����P\v`�8�cce��\t�BޖtjR�&!I�RAO�|g�^��H�BQީ���\v�\f�5L���ѭ�:c\'i��E�}���Y4t�2�Vo�9���tJ����<Z.L�*���J]������1?���+������[|��\f�+rb�i��GSm����rs�I�;�;�~�\vh��%��H����AHP�+#\'j#KLĭ.ڍq�r�&�Q��o�R�e�;7I.]�gH��\"o��Szc��#��X�)�Y�K¤N8.�jdJ�Tz:O�>����D�h����lx�g�\v�t�\f�\vN���CŽ�/�ԯH���A��������S�l.����� ��7iTn����4�ɪT��4��@����\"R-j=��DV��aR���Z\r�c�u�`)��IJ�zm��7�6I�AAW�j�v�xR+�L\nO�\t�[J%�Κ���6�g�����%ǣ�^Û�v.���o�;�������5}j�=�s��\'B-�\'*Q���5<�(�Z�CH�j<�S�ؗHM.Af�|�T�(j���RgZn�X))m����KC�凟������x�u\n�`����*��M\0\v�0f��\0��Mr��og��\\�p��Ŀ!�n����г���H��[T��X��#&�d$(��\t5ۇ #��D��q�9����8c|�ʐ:���A��4|�J�q\vX�\01#��IWnVٲG�11�s�\0��f�i�ڃ�g_��~���L�X!z$��\nx���|�ƈ��9�+�h�#��#/�~�$�q\0����#�BI��\0��\0J�%c�2b�B�\tP\f�����\'���\0��}\rсSzӂ�x��=���\"��F+�:8������I��Z\n)s��?�}k��\\��\\��]�\n�-Pc��K��5��~��kt�����<Qy7�gÑ�A�҆bԟED\01-GQ�=����]�Z��e-S%������4,�L�\\J�T@�O�ȧ�:��G\'t��\"�*QWa�mU�ƲE�U���ft�E�œ%w��\0L��윘�]`�Z�ue-Vu) {���rƿa!������Jp��Û򏍬�\\�z���HR�R��l�0�����&H���#8M���R�q1h���Lg$���7�-\"���<�h�#�6�B>I��F�+яS�|�{�.E��[/�Jr*\0�j͡�/B�wȣJ��D�\"�՟`���F\r�\f.���U!j\"�$k��5��e�B�U�`��R�M�C��<*4�Z�@��m`䨒��Տ��@i�P#aS�/�6�\"m%�SaQ]E�>�䯷/t�*#!��E��\\or�8r�Y<\0V���).��˝[�+���QR;W��z-JϏdB�k�GJ�d�읲h�����JX���x1�\tg���(6���-�~���\'���I�d��b�+;uB�eT�8\0\r�9\0`\rE��P�e����S��{��*\t�]i!%$�jx�J�x�X\0�� 9�<Oة��4t�.r&�\\)�!.�zX��k^\0��#ȴ��.�_x8�zWGm�}�L�{,w���`Őg��Ri�D�O����]�)Z����\'�,�<۲�v)�v��>���e��7=W����m�A뚤������h�UAHi�\tHR�\'cW��Ea���uW�28Bd��.Ï^H��>��*�P���e���\t��V��%�g�}b\n�3�V[ O*��!倄ɖ5${�r;�B����s�@�\'������K=Nh��afB��,��%3R��BR3Q1��p��`����_��0�\'�����ȏ�.�2�p��@���*N����w_�*6�#S����� /è.���q�,��d_�5���tR�QgK�J��Trh[�e�eI��@�QW cL���w���oN=l�1��=��vu��g����#����Y��&�w���pe�^\'Rt�L�t�gId\"�i����\0\"�j����K���}�sN*Ū�!`�kS% �h�9�#\'P�<��\0����:C�?�U�Bd�mE��)9��\tR���q;a/I:-8�D�\tXr�\n���Yt���p8m�sG-GV�bx��\r�cѿ����9\v)��vB�Y&R|�B}P��1�M�_xD�6��d�����!�����\0cτp[���X-�Ô:�S�ٟ�`O�þtϪ/�K�lϮ\f\t�%�,H\r�ʱ#R��3��cGt�\02a�\0T�GU��6�.�|�%]!��yx��Id��S�j�H=��֕9l5���S��(�A�h�$�U2�|J�Q��z�B�H}Y\f���RR��J��\0��$�����ؚn����Rg���%�f�FK�\0-�\0[�~/o��Δ�3H�j�WL{(g��P�0�Q��*�v�䔱/k`�v�5*J�,u6\n�A�g`&�)��N�B����IPc�6� JE�Iɰjb���K{d4���:�8�u���4B��hVS\n��u����QRҔ�T)�5\'�=;CI�Э�|U�Ӗ0�g?��&̇NB�ԏYD6x8�����Sm��RRF��,yPoI&���ݕWq|a��2R�0��.|�b�3$1�A���\\�<c��]b&���l+�h������w�/�V\0ʧj�~.9n�&�;DĞ�ӣ�,���nl��ގi�KP����7��#0\t%���D8f���ih$�7T�S�!�,��c,��JKɿ��6���N�I�$%\t�%��;���\f�W:�4��L����|h�^��f:�����7v5I@`�d�!-���{4�IB$���:�G�7m�ӎ�A���n@�G�MIĘ�zP�$�Z��V�$pE���\"t��O��\nG\"��4g:`T�:z��&��N\t�Kѓ&�&�9���K��c��dަ.�ӄ8��\0��� ���*�����]�MBH��աH��-�9�R�)\'PJ>��F�0����C�zd[��\\�ݝ��=*�]�|�?��=�9#4�d��J���~���T�e�J���\"�!�$���6�.���!e�WRl�8���Jд�jQ�������>�ߦ蚓\"lRݲ8��\\��-��y3y�������I;;v.����I��\0��Z�T_��HoX5�Dg,�De+�C���@���v�����r�J�>��u����<s�v+J_�S{���X�Q̢���~\r�̘�B�m�fʮ-L������QBT�.wS(*Y8µ�-6�r�IP�~����oJ�IR���X\06D&(ɖ�$�cNtpɴ_J�2���9I��U\r�!=*J�Hc��z��V�T�ڕ5j=`H�S٢p\0\fq�/�[�����F����:}#�ײ�<�(ͫY9�; �d(d�Q���b�*�)%��D��u����&�[W0�Hs�{V���A���so\f;Z����Be�P�\"<�F��f�\0\f!�3��C����|����2�t6!N�N��JY��9��)Z�ԐĒ|�3�˿gI8����L��5�r0\r���\"䢛��p\t������a%o��zT��,\f7��rЉ�����C.�3�����{����YR+���P�$��u@�\\�s��q+��z:��\"�&�\nLǔa���4{\t�`[OHm�Rh;���tp�I4՚u�o�e��Y�Ht��ў��t/��VV�B��\n����k���1X��َXp�2�����@�ɥ\v�������\n��\n�^I;���1(�}��3�-�i�8�J�P��ٴ|�O���K�����A붭tH�,��b(� 9R�/��Q�7Q�+�7[��Y\t��T:M,zN�����$���䌻Q1$8�.�&�ʻQ4�zP�DN�n��j�F�^�$!.�:Lĭ$�BM`+�݇B\\#���r���$�^�G�I����Xj�ޛY�Tn�\0�ΐ\tH����[������r�J)ZA�9r1��th�U��#E3J�XF{����(@R��������B�nn��j*���dMju�|!���Ml���)Eh�Ub�3�>��0���\f�q�1b�X�J��Ţj��)�(�_�`�9��>�ƹ|��S�C��ey¹�fݺ�:��e.X\r�{�+CZ�\0��V��x>Q�\"�L�L�(A��\t\'���FrǢ�Ȣ��!ig�KC�*P������c�@�am%�L�a@��Q�0���h�%�UApsf�=x\tjď�邲��w�<������D��ɃV���У�{�y�F�Aq�g�!��?U�1Z�L�P���Rh�*�4�D��Q���Κ=Q��K�P��t�W깏�$��\nu�Mj��b������|\'�T�d���h�X��s8�����BJ\n�T��&~Q\\Ą�$���S5�F��`JR봨g�*��Vk?VR�\0��\"�ޥ{C�回�\v\\�U�,a�lp�HB��VRT7�ꍟ�֯T�(:Ǣ)T�?h�礪q�`t~�R����n�Te\rE�ȼEi��\0�4�CB���f|�{@��(z��:��K2��X��y�)rˤ��;1����I�JԷ�6�:�*���%?D(J�����g�-�tm�-\0�,q�+H\"e�Jπ0d�oz#�g�a��\nԟl�1U6��=Z\0�nY�`b�>�U�Y%�� ;E�}�~��!��c(��G�G�;��h͚guO�Y��q?DML���Ш�?h�Ш�~���fw��Y��������)\n����Lh4���3��h�1ޮwqھ���)����Ƣ$7�j:��\'�W�$���;G�t@a%�%��)8�z�,�+��F6\r0����\0�]^iMq�}�*T@\r��R�{v�`� ��\fS֬\n%?�?DJU�k�(�a�\0�-��%,�\01`?�v�d$�JZ�J}��ĕi9%>��bR�%�\v�%��[�Ԯ�}��ą����*��?��","botalon","activada","comida"),
(5,2003,"carne roja2","descripcn carneroja2","carneroja","mibotalon",100,"$","����\0JFIF\0\0\0\0\0\0��\0�\0\t   (\" %!1!%)+...383,7(-.+\n\n\n\r0% %---72//52//-/--/-/2/-/-/--------55-----------/----��\0\0�+\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0C\0\0!\01AQ\"aq�2��BR����#b�3r����CS��4c�$��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\02\0\0\0\0\0\0!1Q\"Aa�2q��B����#��R3��\0\f\0\0?\0_�gh��\0�L\n��e�?���j8m,�6R9\t��1�l�*\0$������J�,�.��H�*�luR��v4m4:6G�C���\0UPM��� s�Y�eA`čF���,�Vq*V\f���;�v�3���xuh?�2\f�\t�H�{��X|1��9#淢��F,��jݯ�D�lU�JԧQ�Ƹ�)���w%[=��{ڀ��ԢG���ѕ�miY04=�l��U;O�fEB��Wbb77<�X�ˠ�z����>9��Mj� �+0|������=�!Q�� (��O�b�յF����\0d^�L�TR9@PO#��G�.5D\"��3\0��=��T�\f\"��r9tǍ�6d}m�t�\"��:H�$�V���K\n�uo��>g�8����R�pv�������dxc�nQ�������J������A���1s���>���\f>�וj�� e.;��RF���1���M2������<��|�\v�^�����3x�\'���ʻŨ����J,�mi�y�&\f�Y�\\W0�+}Ԯ�Pt�O�;��j�CN�o?L�60��, }��%mO�\vB�es}J�;Ń���M�[�}q���[0Z��\t�+�-�wŬ�F�`Q��G;L�m�%ڗ��K1��H�K��uBԀ��Q�\'\v4sT\t ��A �oi�T�e�H�g��7bcC��[_�`9�>�8����H��T=���J�����03�p�O�J�����4f�-��k�T���NE?������ő�e%��X�tkb,�~��j5�1���/�㵆��#�\0ql~���C����o}�� �+Yo��[��|�v�~�o?�ڱ��Yǎ��\"T��\0�� D���X�����<��ޗnt�M��\0�킩ò�~���S�)�b�W�\n6�[���a��u�R�|�����D��^ ���n��f��\f-��8$u\0nX��b�n�,5��\f>��҄���xu�G��mC�y�� \r�-bE�刏+��w���\0 q\"w(0��q~`���H��*>F��{�V���1��]l�\'U���pCQ��J�`�����?C����UT���y�=-\"���lĲ���\0����\vGTI����/���)�5Nt�zXߨ�È�<��8!;:���2�P4��\\�3��ꉸ�#�3{t�aQ3���\0Z�j3�`�kC>�u\"$)6�匒�NW�icE5�ū2r\t,A���I���^![IpL@`ބ������$ԩ+��f1��-���<$��S����Px����y\0�����`C\t�[�\r��<+�N��jj+;�BB7���<������w!i��7};3�OC�5�Ivf>J��\0c2����^��TeUP#�w���\'\r\ru$��`�m_��EӅP��TƭƀKz�����Rwjt�XiV)�ɉ6����o#���)WJf#���O ��z\'�?`�El�72��=���������6�?������-\"�u���\\K=ID�O3�u��=�˫j�cc$� u�O�J\0OuD��\0��26��l>h����H���\0XR��\v��m#H\"�9��F�0�!G�̞g�S��h�|n(7�`Zgo q���\vr/\t<-�K%�|�����ߧ�R�w�:������#��A�!�\n@�e\f~��a79�a�T���>]01Ɓ>�z\'ۦ>����XZ��3L���(�}@�^{��[}�?~x����N\r��ۑ���µ,�=�Y���G��i(�QQ�8&gT�\r�\\�\\5�z䥻W��@�_�X]is ������e��DZEIV��\'��>K>��V!we�dy`�Em�A#l\'{8�.1G�c�ǧ�h�.�I���X���K@���l�p��G^�=��M^��(>�X~B��-� &<�cS�*���b�ߦ�x������\'o1i�7w�ʟ����Yg���+���G��V�?#��� V7��q�\n���%�h�O��`��Kr+4�&T��`�*a�[ ��>@ :���<_���X��=0j�g��*�����\0���y�ð�<�����0��$��\n�<�9\\��+�a{1�j��2��!H�&�ӊ5�Y�e����8S���Oi]�z����q�N\"���@o���fK9�\n�?�ߌ��\ves��TP�\\���{`\f�o���o��P���1�>��}1���`��\0��8�\n�{�\"�uBdl%��ݺ��eP�aM���*w>`�c�bԘ�����3 �E`|��1��?�1�4���[F��S!Hi����+\'���~�\'�V��W��6�dT��@��+\f�]��zR~@��7��Ml\t!R�7\'��Γb�����x:!�<�sz�ЏU#��E/��>p?L�]�4�x�*_pT��1���c�9?\\c:�p!3f;:����#���7��is���Sv�RbfB�$nOA��Vk�g3b,�skը<�>zH?�\f�\t��Z!\re�mw��I�>X���ej��<��_����N{4�Q��LA�dɵ�A~|�/�{���5>���d�\0��]z�f\0���\vݧ�N[(�������|�4���\f=q��g��H���S�i)�t}/~X�85e��%BDJ�y��-����F�V�fk��\n���UbKB̓*���t�V��\v{ɋ�~�����feqӅEL�����ߡ�8��o��H���h`!�����sY\nmgP�Pd}A��G$�����q�*ѩ��.���\n*���i�2N��1w7�tk�v�ל�Ԓ0��{\r��+X:ݴ�_�M��\r�~*���k��涽/�?���Z4rʑQ�K��rt���ci�Sn%��R��ڝ*K#L�=@h$��-QȠb*T�5�\t�`{�+F����OLN�&9�N&@֛�zwI0�:��\\���Q�}�5*2ԹD4/�;�b���$~#��)�Z��{Ũ��#�6���ي��)}�ı��ld<�CK\vC���S�pT�ij�n׵��8��\t��ׁ���_�VEUط%DzN����\f��btTQm ı����n�ѵ�w����fx?�(�R�����g��3�Zdn{�2\t=Z\"�\f��[~�\r�I,y�cܾ{- �΢.V@�]F�y����ª�!s��zr~�}�.q!]��Qx��O�q�U���[�rm��P���`R�j{�T�b����0�p�oS�e\f�HV��\r�����\r��*���v��Z�K�\f@���)��8��ߠr��� 9�0��J�@wV�C}%b>G�k�#i��L�ħ���\f�~�\fpi�q�L�V�ͫ����\\�i�j�Q\'��NO�Ҩ%[��/��3�c��9\n��G�������r90��q����~M�1#�\0�g�5@G�q6�,.-x�(nv�4Q���v=7�L�N�6?)�\t�֓�Q�;nc����W�F�!f��\0���\f&K\'%�Q���T����3�U��lH������0�^�+&�\r�\0u}�x L���x�\fd�����[������y�.p1�и�T3\n�+��Ź��+\f�1q2y`�eWJL��T�\0\0�~��1�f�`J��L��Ð�t�m-����x��Ks�`1�s��X7\'x��ǧ<S��fN�_-�O)Ā��2\f���X_b\r��i@��pB�&��G+O�OJ6�+`�g�2X\\�29EǿLT�53Q�#�R��3G��}�#ur��e�*,�����cQ���~��陘#���߾��8��3|ljе%��p���`=.-�RJ�F[kci��G,��1�je�@��>C��%��Z+��P},H�\\E�Jt��Q�����/�y��(ӏ����\r�-�=��>q���� �[����+���H�*w��bn���r0LV�Q�Ӥ(P��\0�7��c`ȉ�F9�ۗ%�#S<��������������ݬ\0\0\v�����?�EE.��ʋ���x��.$���{�CHQ��\tc��|��\fu���3p���/l6�9)zm,q4\0}��Y�jT��J��|�/�ǋH7�T/�h�.c�|R�!S�v$�iW��H��ĪU�Z�\0�ҷ>����+4*պʠ�s��n�~���Q�(��)j������0���ְd\v����ZL��&�<�+Y���KT�L����k���e�Q���m���ZǥǾ&��_7d����b�(� ��\0H�8�-�l�Y5w��B`E���޸�8��\0J�˫�f��\0����9L�Z���`6%{����F\fd�p����5\0�C���/i�JzVwT3���2�W�f�\0|H㦨��_\n�|���ܽ��ֱ짧�� �3�Y���q6�lE�i;�\\�cx���A��$��\0��e�\"�$�v�=��$��co�<I�Z��ڜ�BT�i��$�3�.&|�i�Yi,)��I\fE�?c�zc��\"�x�������\"�[�_�Z��$@�?_LK�0���ec�b�#5�\"`\t+��ۑ��O`L)\'�v�;z�b��^QT�t˼[I��\0Q2>XS����E��-5�M�\"O>��rK���0l�h�g���\\�y\0\\����.��U]I����&$j��\v\f3vw������l6�>Xt������`h\0\0�+�~XxcY�ʭZ�H���#d��T|����u ����L�i��}:h����\t�MC�jBX�\v��N�҉\njs�s�g��8�\0��\'�87��]����&��{��\0�Σ�$0���q�����U�M��,�ᱳ�1MҠA���2,G9�3�_����i���n�I��N�ێj_�����d#|\'�y1G�u}R�ݒ�H�87�󴞠+\\:�ھ $\r���\t#�9��*X��y0� b\njIfyF�\0LK��L�=��\v����.VE&k���u}�LlO�c����!<5/!\\Z�`�� �N�w�n/]�k���ɧ\f�/� :��b\"���k�ʰ5����3Ζ/�\'����_�/TA�:��)����cm��jr\ve�\"��y\f�EC�\f�O�,)�Z����י�;w���A$�_�჈vq^����Y\"��\tc����5�׭&��M����C��JJ�x5��\0�e�L`Z��s�����\\�,˼H0cs D\\b�e�)WPXB��B��� u��7�+�=`%X(܋I<�q���F�,5���1�9�;�5�)lg.��uՈ��`<�{��q�����-�L�f�\n,)*��bB ��;�j&OV�0ɕ�\0�Y �Tz���*�E�L>��*���>+\\�@�)�r��s\0jn�{���\f_n�\"|N��\r9z7�F�Bl6��<�G�U���?䚂�N����2��d�S���g\ni�=ڵة��Y�����q%�:+{hP�W*ԃ�V�N�܅�{�`Ԓ|�ء�4i����(�%2Ǿ�#��M\f\v\0\'pe*1i���g��&���Sz��F�7|�S�j�=Z��Z�$��a���q��qg���U8�~�zH�I\t9��zߤͥ$T/2ğ@:�킼c9OQe%�| 6�@�?L\r�X(к�ēX�g�a[��&��&��fu:�G���u��k�ռ��x&�|�v���e�`���$��!��?g�]$M\0)sr��\"Nޘ�ה�>�Y�o��9 ~�����UΫTz��}4�v���=�o���ӫU��P�6��\0��w��2��B�.�G�@�\0lKW�S��J�u����`�7�mݓ�_����깝\'4�\0�]t6�^ F�y��\"-М^r���}�����,�VR��O�z� ���\t�H8[��K�Դ����}}���Q��g��W�XS�CFa\fk�@b�<��q\'���Jp4}�D����F�;�¢?uT1J�2U�\0=>��?L<i)4���)�G�c���\"��6�q�Au*z��\0��>�\vO��15V��\0U����<�����%J��r���\t�5xl�f��)�g�ķ�y�6�\\�����^��oS��R�V\0��h�7I=c���4��բ�|4�ۮ�{�N:\v�eTib@]�XX�@[�3\\S%\nN�m0>��|������t�y\'���2��{��W��\t?3�F��˒) ����$|�=-��G��%JN4�m1�0w�§F�W����X�D��>X�s�\"lp�7����Ŕ��ꍇ+n\fk����i�O��\f�ĀLN-p��Ņ���>�&@l#�i��.T�G�q²i-PZ�;hW�+@|Ȉ�q�(\'SQ̘��s�J�����jM����.�L)�=1�6Ji��q@\n�R�,�(���gڜ�z}�e��x@?�7>��+���k�w5$\0*�LxTn`bj���H#C� ���H8�Ʊgˬ�aLo����ժ�z!Z�B�MK�Jj��aޅ*���\nj\"�(�K�`@���\\�g���TV�O�7�$��a�j�p�Gq���q^Y��J�����A�U+�s*�\0��3<����`>g�\0�ݻ�B}��� �]���\"ìG��h�rHi7؂u��BI��Z��^2��� ��V�vֽR\r�)�����;�p�eIR�$Z������f�V�U(��w>�Ә��^�I��6^�c����W.����1��}��ɢ�9�H7�����X͊7��,<;r����o��ɀڭ�ߗ�{���ǚ\n��=N�n&�=G��qw��A��m�8��kZ���!��ı�;af�9Vh�>�8�U�C滆G��Je�6���Snld�.�W����rG=k|s|��Q0�Z-�k��/L��Ν2z�I�\\����h[Q��m�\v�2m���ps��|TSR�Ԃ�0OV�����\nY�\'q@1�,8�~3�i7q���mʧgj��8U+y~*�� �\0\r���N��ŲmR��Hy��㘌\t�-+�yF�F;������Q3��9�`�@g�L0�Tr�ha\f~�y�RV~^}\t&|��Q�z����m�\0�H��M��i�T\n�N��\0|_�搙��o�6���7�0i�\nQe8�O��YQ��8����WI&t��G�|�lfYZ����L�PB�*�@Xzᬈ��1�۔�����p?�c�т)A͛Cz����mP��-��OA�_Ɓe2:���yR\\,\v�:��RPO0 }6c�UBQ�S�A�?ltl���������\f*xZy�G| �Z7���]G�\\�>K!5*@�J-��Wo�\n���Q�@�,�[e�S�������W}��xO�3�@��偐x�3����>��L>�r\'Z�@m\0�bD�|Z �\f,Q��\\K��^K-�V����\\`g��~Xe�רڈoa,v�0/~^�2݈���9�mL��UxQ�\\��9��%�|�#��j���DG�W�p/�8X9LӾ]7��5���%j\nu�U��<�;�8`��)BT��cT8�>|�\\�6�Pm�HV�[�c�S�T�S�\'\0@�~g��X@m|KM�6O�����L�6��O�,\v�����2׼A��b�s6���\0�Kd�;a\v�=���]�X�o-�X����A;�`�\0/߲}5R���ꊢ�z\t�^�v�W.�6\f��s��~�ծګ9{�\0z(��5n���\n�2��J�P�cnFfz��b^�ܽRl�Omӊ��\0����Ǩu;>{A�0ѭM��Q*n�!�˞\r��mmaQ�����2:z`����K4\v�u$V�\"��w��Phuq����C�~5Z�?~��R@\f:ɱ������\v.I�>��5�Ʃ��\n�\f�4���v�&�Rd#TW���b��\v��&�#A�ꬍAw�\'��7��z���Is�2�Qpw�����Uu�}w<���]R���k�gpz�=}6�Wvd�0|�ߞ.�z4�3���3��t���e`n<�;�\v�[r��J� ���܌E[:��bǬX��a��\f�ah#���ϻ�Lb�4�q���v�Q�����n�_�}-�{c(vs:��0)&%\t�v:I،��7���ͥO���H�<��촫Se�*�olZ\r�\nΏ�֒�I�*\\�\r \nu�թ�f��Ԉp~k��;<�uП�Pwm�%>l1ժ�a�i7���^���m*@��� ��=��Me3/��\\t�+�P*Svŏ��S��S�>Fߎ:���D�4���[_�e�h,��\0�i�~%�in��WZ�\t�\rU\fB���7��X�/���:�~o%M���\"�>k�v~X�����#���U\r3�8Ln=�2��Q\\(e��{�{�\n�x-2A5_OA��-��E�l�4�yS��5�5������\"�\0�����.�Z��ߠ�1�l�,R�4���=$��Y���O6�dH$��qVf����CVLt�2����y���SV��|��k8`\f��N��ŧs`�F����\n�s�6b}w8���2\0�+rv1{em`%:\']�)����6/_,�9�F�����iE�:�� ��g�g�Bί�Q�\" ��F+��pZ��#4]A�n5V{�Uf,I�(�����q��Jc��&N$��L,�S�ظH,ʢ��$&���G/��@bO!=F,6I�����Y|�I$���勹w�`�ms#���I���{E[?��U{����������[�j�9�A�Н��9��\0����\\v�j�x\tz�\'�ޞX�)Ԫ;�7�U��ĐB�,M��p|��9�ơ�;9�����@r�\n3�o�N��L�{w�Z4���z��i�XY���;h_�l����i%��\t�a�l�yD�7a�\v\nF����S�SJ�i�D�J��\0�~��� �b�\rJ�*������|?��d0T1@������3��ƪR9�����_�z}����V��U{/�V0�W��1�RI$\v�W� ��Ǟ+�\nG�\n��\n������J��1\fbzA����U��e3g����H7�>X�A.LN�����\rQb�����X�#Ǥu�c����Q�4x}Evj ��I���ǵX��<[M���8�S�R�L�#�Z=�3�y��yu5\t��&�;`�ǿ���0�ǈ���-��v_��;d�\f/��� �b\'s7<�X-�\0%�*�3�k�wE?&`qS7�,�!��� nTkԤǾ.�\vZ)y�^�y\\\\t�vJ�Ȳf��.�Im`0�\v��^޽qU�\0��Ufj�1Ч��#�\n�)f��\v��?.X|��� jױ��o�yu�hi��w�������غ4Y�*Tb� �${�`�_\'M~������C2����#��p5rlO�\'�0~��w���6�j�����Z:�c\\�qi�\"J���������=��5�_f2/Lɪ��bA��\"�]&�m��~�J�\f#!Cl�{�f�!\\��\fZ@7�[R�w�s� ��j��5H����b\v���2�Foi�#�\0�B���9���aw)�B�>bY�!�G��q��y�@��,��\0� ��f��ڎ��jb��ed�?#��Y����a��^����7\f�s���-3�\t�^������\f�e|6\"7R6#��,�s�R���y0��9zF*��\nޚ`\r^��l�V�m���_�S�xeVz���@��*�����2��w8�<`e�|\\\rk���|,�*�j��U�\v�ܤ�<�m�1x���+TP�\0*�<�����������c�P.�h=9\f��zr�q~\"i��\0�}�`w�\t��z������&�q�=A�V}H\vkXr���|&�ͩ4Q���T�Tֶ�BL�uϗ��|ҦQ\'����i�B�\t\t���-���-@.�G�Y�\n|\f��n>x�����$���\08�f�*ԙj`���_�������X>�p/!�\v��|\'�˘�u2�3�.O�צ\vv��}L�J\'�����k��EP1�QϤF�g�T��~~�Q��!1�cZA�]?\'��ӨK�@\"m�\0U�ܚT�(+��P�t ���e��A��ϡ\'x�Jh{�~m����-ị�������h;�ϓ$��t���W��Tz�5��(���ua��c����wec(l`\f]�+�0V`�V�S�]�\r��Õ9�6�p�+��ҳ�4N�vm+ӳ\r[@���\t9��.�JM���4j���*�X@m\'�����k�븺�����H9\tqv���_�=\\�S&YJ��;O������#�JTl�3a�O���S��317�y�7�u���������~�{����ySq#R�jc����8��\0�,���Yc�g`O8A1kO�1̜�v6_-L�BT�@?%~��\rp��U��9s�k�<w�T��T.}<��*��|\f��i�b�W4�L���r<���ƙ��@�$����Db��i�`��ݿ�������w���H��QS2\fsw�Q�J��9��U�ƙ=\n���ۇ#\n6��*\\�sv(���T��:L���/������1��/,ON�\'_�9�By�\0�\\�l�;�r�r#˦ �!H������/+��$)��Y���n^�\tڞ�դ�4PRӽ�F�\r������7Y1;��)���=PƤ�\t�����]ݭ�k+������k+t_��p12\"Kӗ㈎A��\0�����Q�T��5J5t5J6�J\f�w�LL9`���4K)N�d��4ψr\'q���p�)x VK�6�x��\0��8@�Τ�����i�Z�t�Ph�nM�>Dcj�~0���!X�$z�o�u�+���|Z���A`&J�H��F��E��C|am�H��0H�C�J��6��X+>\"v��܅m�m��J�\t}Z���O�ט�u>^Gȃ�8p\f�c{����{hҹ\v���?�\'�9z���GO������X\vO/�Ŏ�q0lf}$G�D�&n��Vݢ�i\tY+��u�L�n�J���#��aӍ!�uh �$Z�\\\'�i�PB,I�����d\0�9x~\nb�q&���iV�&��>ǖ+T�����K2i1����^���-��\0�f�8\0�SmG^�X4\v�>D���=0b\f�<�k���=��<�HP���|��O��j��R�������ZWX\vP(�lc�~��X�Pv�<XP��R�>�0+9��F�U$�A���_�q&�Sc��)��:�\0i�;�|y��w%X.�0c����Pn\r��Fvj�zI3���aKVs��(Bg�\r`\"���)���`�U����a���r�\'�N�\0P�$�9�+%%\'N�\rq�����Q�7����z9p�33tX38#_�J�n-#��\n�!R�Ϝ}c\0x��1���7*`�c�\t1��Z��1�wvJ�Ƹ�|�Z����}!A����q�i����~�5�bĄV%��I��;�k�\0Ԧ`�@���$lZk���{^K�Y�R��0�}k3���i��bju6\"�t$�>�u���1�K�W�&�2V~-���|�\0�F�:���m�q=����\t�7���I���,�}�g��\rC4��lO��y`�o;N�f�\vV%P\v�=\'M�ls9�Q�C\'�a+=G0|ԃ炼:�3�\fDҨ�?�HY�Ci�l�{CG�~�~��u��0+iR�M�����7�������ɍ�=\vO�1�]��5��T$X�U,o,|S��$\\�xᑈ&X�;m;�\0�+Qn\n�n���ճ|r�X�<���o��u24����S=R�vY�R�k<��N8kM8�s�Q�+�k�?A�_B� H�R������$\t����6\t������T���Z��4j��t�\"�D��aw�e2�*�VG)���F�5i#T;�Ө�\f��ċ<�ᑓ�!U�jb\r��\0h�*\'��I*<��p�bl[�G�uL0\"0D�������l V�MY�$)o�D@<�8?� �#�\\L�Y«����.��K\t���vhs�)�h����b�Gk@ E��;5��*�Ɩ\'���<�_�p�./�4���$e.5�B�)߻y4��cM���w�&�\0;Eà�T�&�AV����5�ǳ���ATJ�i�ѩx>&�����`b��\r+ߨ�;�S(%v�c|��IDX��O;R�jL�R�E*WV���Z-*D����wiM\t�\f���a������հ����L�n�F*��$���V��z�.ŏ��9L�l�J�0�ur����b����DυF�>m��S�plƚ:|\'�����Rp��&J�*F�Q���w=p���N��[�ߖ:e���D�}d���eN�z���4e�\'�LN.d2�|O _lU|��r���ڧd��^O*��B�\f�H��֗`����(���>������p�X*J��c���O��\f�l��\\\ns�m�&��:���Q�\0�O儌�\\\"�@!��Oh������|�q?k�t�fUN�R�#Ӥ�/�؟�q�f��>A\f���aK�T���)�VvTPI$�\0bn#Et��\'�&?�O�i��\0��\n�!\'��vw�u�����qg��$N���0L�Ќ\r�Uz�i��ݖ�A��[|�x;�SR@��X����k�5������*��\vI�7��.}y���֕��R]��S����mH*jҶ������G�SW�`�[������j�H��\0�p�/hw��J7�\00S�>}v��8M�5�F�<����<��.�B��-!���\n����6ڹ������\\\t�4W�9`�E�Yr�[T���GLW���1�yb�U]\0N���AO.1��U��\tP@PH�F��A���UԂ7c���AA�Ͱ��*lk\n��`\0>b��ŘI���cH������p��x�\n��L}���x���Pp[&��>Z��T��R��ǂ��B�#�}8�qr�y��A��8Oi{�O��E&f>\'�cx��z���S|B�O# ��0�C�1k���@,b��s���TUg�fB́�7E������>`a��Y�\rC�Ěj�^�*����\0�Ʋ͖Pk���@>&�#o9�|�l3�?�?�A��?\\\t��J�b��V%����f7�|\v�G����;7�j�\0J����O����k���\\.������Q2�t�Ru��j\0@N��L�X�Z�\0�a2~����Rl��b�4^AwDS�X&�F\rpH\0�� ��`b�q�dOv}�߆����O����×�#zl���iR~gݴ�~�ƮNi=�S��(�o_.-֮_��//o<u~Ė�0T́cc1cN㺺��̫\\G&���7�. �0G�<��K��U�[�WwT��s� 3��#�<�b��8�-Y?�V�U��`�R�c�5�S\0\\��Uȫ�F������#���c�iMX�fxI�eW��F��ȑQ����t�s��߁p�i�T#��\r����-m��QՍ���O���)� O�I�%�&��H��t��>q�B�[��|����y[�\0����S\"��?LIJ����1��T�3�\0��\v}�����uV<�O��`�-V�<��/❜1\"\\��\0�᷆�\v�gk\f�1>��s�UD�޲G01��\\�&�̝?���D�y�U-�p��8e�)5�����ꩺ�%>�����mo*����>|���\"y�3���z�9�@\n\f)f����bT�T��gW1���6�+Ӟ0��PҍOD1���O�ż�M2��dL��ܱ�3�4�U�<Y�@��\0A�}zyi�(A ��Ў���w4��hYQ�p\"��&ֱ��Y\nj+g���ĻA�~��c8��@���s+\\i���}/�y��� ����x8K�O�d�7yM?�E���\0��X1��i�&���Z���kx��%��(���E��ċ�1Ȝy��*��s��Z�鱢�@�\n»-��6kφf��\'=V�64�M�Ԃ��f3\v��ALy���.�حZ\f�����\"b���뀴�������m9c1���\0��^p\n3C0UyL=8��挱��Y����b�������","botalon","activada","comida"),
(6,4000,"cerveza","cerveza polar","bebidas","mibotalon",4,"$","����\0JFIF\0\0\0\0\0\0��\0�\0\t#4 1 \"5#()-... 3:3/7(-.+\n\n\n\r7%&-2516+/-.---5251.---/+5-7-/6./---87--+-----+-5-5--��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0��\0E\0\t\t\0\0\0\0\0!1\"AQa�q��#2B��$RSb����s���%346CDTr���\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0/\0\t\0\0\0\0\0\0\0!12Aa��\"Q�#Bq�������\0\f\0\0?\0�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0q�|O���g\n�,��-��ڭ���������S�cgo��{��{���㊱�*�\rE(j}Td�\'v�vrk����l�J��w��ɶ��u^6Mwz��ZW��S�{��h(,]:r�R�ڇe�M_������tq��3:�\f´��)%q�������5w˽��=����Vk:�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0aK�x���Q�GRS�#������T�N6�m�o��Ь�1�ԕ����W�&��e̳�����wߗ���û�O����/�T�(��?��(Q���T���x����z���/��\\k��(�U;;v�ۆ������t�W2�9d\0ܠ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��T���~���)�{/\rbg�8z��Xg���UէRQr���>n�\0�},�S��N��^�/bT0�]���)��no��_�{�Iz�SX�҄�2�c�)ԭ9Mƭ9.QJӋ��ߓ���8�w�I���3k˪��}9/�N/�&[�m���\0��q�oY��=\0�T\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�*b=��1oƖ�~�%o�Vg�9b�.\n�۳�^�V�n����b|3_,��j�ےe�\n�\0C�i�mn�?�M���i�^[/��̠��v���L{8�q8�jxYo��^F��u���������E/��3��z���K�EX�k��:��:o�\'�4w�5�Vz��bU��L\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�K��y�aJ*jQ�9Fѻ�&�M��M/�3���k���6�S����W�0�M�\rSi���+��˞��:*��᜗vxO&WWے�?qo�˚K�v\\�Q�/>��<�7A��5�.Vٔĵw{���ߟ��zm2��6��!�g�~�m���.p����Uo:�%��U�S9j�7[_����Ieպ�2Z�4�/���^�8�:.�+���~��)��3�)֡�jAI|W#�\\<�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0;���5N��w��a&�m�H�W�i��_��%��?�/��nJ��+���s�q�o�MB=��*ڡf��9m����.�vo�]�\'���~��e��oK\\��Ww�UT���?��\tJ�ɭ��ob�+&�����\t}��4��id�F)j]⽧�i��*T��)6�L� z�\\wk<E[z��Q|zJ{��Y=�\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0e�<��[����s8����T�{.���6��Q�8�5^�bur��\\��h�ͱ��e=N�iSn��9(�ʖ�4�����+nC�x�x����ɶ*j�T5���(��}SԡE[�o�߻��oq+y,6���]�%Q�xx~��\t�0��z#:�ZLa.RP���(w�˜.{��qU(��a�:k� �]%~KT�iw^��c�H�i����kZӹ����gU��ҟSU�Xͧ�\0wQw�;2c�r�\0��S��ڳ������M�C9�y8�ž��9Ƭ ���1�J.�5���s౳�2IG0�u��I�*�f��8���NWǴ�jG_����}�7B��\t\v~���e��>�����j��Y����H\02�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08鲬�d�o�����$�~;��g�0�\v�b�+����\v98�n-F\t}^N���4>�\\�ҍ��;x]S�W���>/ظ���8F��фb��U�R}\\S䝓��os������0S�S��E�D��\f#N7r��$䢗;-߂+(f�2>(��Q�����U9����m�;+��$�*�F�N�h�4���\rNK�M�&�[�{8���T�AN2��}�[kw���o��f>�}����Z�8Z��\n����Rz��ԕMRVNNM[�O�M�r�UJ2�t0�d�$�Q�z�R����]I����l^�|0��7*5\'I5*u�=����{�5��A�8�5r���%�W�J�����MRU!%��.Ͻ[t���uވ�4�����qP�u�~�*�^��|!OG-u>����<6ϐ\0e�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0K��^{~r�����G�r�N�RU�����Es��c�N��h]1ONU���O�L��z�k������Ͻx�?s6b��ۂcp���O,E,>9�N)�5��8���VV,x�R�aZx�����:*5z��R���m�_�+�٧R�ԾR��KW�����]UӃ���t�� �ĘG*JpV�Tk7�{C�m���]X�11:��MS���\"�[\'�&���G��ru�d�J��m�%��a25�ʧ<E5���?�)\'�Y���]�._Ô0]\\]W^�>u*�/��-��$����1�;��J)�}�\'{�߯ϸ�K�OM<|~iV>2�z%���U=[Z�U���dH�WM��Z՛�G��\\q�d�\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0gӥgG&�8l���r�K��q;õ�Z�]H�E;����)�v�����P��e�>����r��8g����ZN��b����%*Zb�ކ�KC[�/3�cj��1�VN.2��-Q�{�6��j�d��}�6_��g8����r:r�5&�;\ro�S�o��^6����\0��vz�Ƣ�����ң9�}de��Y��ٽ�w��G�Tp���}�;_�+��e��->\r�%��D?�Nm-���do�U�n�]�F�^�jW�/���ތ��l3�|$�g&T=+p.ߪ�fS��\n���\0\f�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0κo���I;U��ֲ�W��|L���\'k���#Y�O#���}H`7��^:_j?��ϙVk�En�{w����b��e�<c�vÃ��>�=�*{��Mz8\'�Izxx�\0S����mo�[��PO\'W�q9�n�*\\]H���ׇ�ȑ�V���\0w����kq\"��)^M��v���{Z��󋏜�D����Vs�c{�\'e�#��Śٯ7&�Mm��_O�0�կ\t?YɕG�\"˖Q�Q�O�:Q���+���#P�v����\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0#��0�g��R������Y)?E��-�6ƪt9^��5�S�󋌽w�\'�O�|F����[v��6@G����77U{F\"�cd�Prnޛ��|\'���+��h���n���>Q\\���̭b!���\02�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��","botalon","activada","bebida"),
(7,4001,"cerveza pool","barde de cerveza","bebidas","mibotalon",5,"$","����\0JFIF\0\0\0\0\0\0��\0�\0\t (\"%\"1!%)+... 583-7(-.+\n\n\n\r-% %+//-/-5-----+----5-5---+--------------------------��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0C\0\0\0\0\0!1AQ\"a�2q�#BR����br��C�����$4DSt����\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0,\0\0\0\0\0\0\0\01!AQq\"2a��#3R����\0\f\0\0?\0�4�()JJR�R���()JJR�R���()JJR�R���()JJR�R��:��K�N�k���,��T���#�E�ʶ٢�f!��Qu��ʵN�V�w��\"6�~gS����[u�67�K+��~�}b�H`v �+ֵǱ\\Z�=�9ٞ�� �@V\n�\f����$��8��1JW�4�()JJW@sJ�i44�&���()JJR�R���q\\^c��`OI@W;{��I\f�D�#C忭j�&9mP��\0�1騭�ڻ���#t?��Z߆�19#6�o����\\���o8���ni�>�1y1�%r��n,�r�[���L۽�L~�˜#�\0+�8��ȵ���[Jh���۷���P]��M�����YQB��9�=�;MiN1�\0��f&�pq\f\0;+F�n測�X5c\t��+\'�\0�j�^ȸ�\"὆�����x��#7C��^u�+O��\r5�ҕ��:�p�3Qڌ�V�[Rv����*7�[v�� �P��@gb܀>u��<\n���\v/�p쓱$�:F�\0�W;�����!E�,�ܽ���Û֭��H�\0�3����+T�h<]Xŵa�SkU�$J��9�\'gq��߰Oԥ�\nfVu,�&Dh�l+#����8:FhDȒ�V�]�hf\tK>��m{;�0^��v�� �b�n�.bЀ@m��E^�V��w>2���UL�̹��AZ�U���)c5�\r�q�+$E)JJR�W��\r�}�q�]����p��f͐jۮ�kG�pk�_�E��m��Iq�����V�����i^Ҫ�7l��؈��I�Kܛd�\f�@\0�#Rzi\"5ִ�Z몒�^#�7��J�Z�6r�W�����tX���|R9*��ę�9�4x��1��\0i�Of�8u�\0�m���ᤩ���*\t.����=4���Uk쒡�$�U�댎���ܝ3[��ֶ�g���ӻ�R�M!���w�0�娞ZzU��^1_-f%��#���|�1�Z}Q܃��u*�#+�f����b��ղ�#|�j|E�.0 ����OA[���};w/�V���v��Ρ\0�ca����*�~9(�5���%�^+x���� �#����Lز�.%���Q��@:�k�|�����,�ԙF�;lg5��j?�q���w*!GVc�G��kn�q#s-��dzw�f?�\0Q��T���09�u;��;CmΦp^����e۬�O! ��\n��.|���U���W\vW)Ytc��s���k���N�a,[fl�Cbn)�y���t�Jǳ�a3gy��Үx��]��3�ԉ9ڄ|s�\'a�Tr��Zu\'$�־\th�ܹ�2���ao\t&/����[���\0���\0�\r�\0j���5}���ܱd�E)J��R���()J���ڴ�enF�����9���.�0���4���7�F�a3��|;�&\fɃ��g�@b�]N�>��O��\'�\t��b��>���\0��m��+�j�p�E�|�F��y�s�j��T�F��[��j�h�Ø9��֥z�ۥ�O�iq�s�,6�e��9�^+�l�-��N?�w�:T�\r�yr�.� kD��:���C��{��Ҭ��/]���:�B�3LR��\'�o�J�p^&�V݂2�\vd\0 ;��Vod�f���$�K��\\�%G�T:�[�A�T��u�W��ɪ\\��q4P]Ͳ3;m�abA�T�Y��d:ټ�Y�pĲ+�YA�ֵ_i@k癩�\n��3�\v�7\rJ\'v�F��?\0+S��++{��F�\f4ZMQ;w�3�\\:�T��r\n�ǐ�����v�pv��^�H���0�y:�k��n\\��\r� #��ʺ�X�٣E{���l����ҳ�b{�]�;(=��-x���cp�Tf:u�~*�\\U�����??\v��dj����y���n����d���������s����X�<�;���`�{�C_X��f�h�(X�A�I�I�|���� �`zF�OP�OY{��^*H�{(A�2�<WX��\n~r*�Toe<AnҩR3��\tͨ�gPgj�׮�ڏ9o��E)J�X�)@)JP\nR�ohm��_R&m0�S����Y$\v��HGƷ>�[n� )А�i:\t��p��6��ˮm^\'�mε5�S�����d�.�.\v�ʞb*��pٰ�\\BM�::�-���Χ�=�\f!�����5ھ�]n��`F�u3�ּ�N�r����\0���I���f�0���w�鎴 ��ӟ�Ep��=�V�;���Q�I@\'q�jK��W,�H{l��=�� 5���\"�quk+�n�]��/����`1�����Hr�f�i��F��V�T��Rnr*�묃����\'}���Ė�:�`HQ:�7>��r������xg�º�Zޟ?�Z��}��+�+��]{ƾ��8K�\vW�I���h1�Y/A;\n��gt�7�s\r5y�?����u�����J�\'�hx�ҋ]>��m������w#�ʼ8N1\fzn|�^f�1�,A�#���Xxf\n���� Bk�ԭ�n �Q��b��Ek\"�[�6?��:�q�����(�*HNR�G04��u8�a�36F��cR\"*�}�\"�Ę�u����ܪ7>�6�݌�2���n9鼊���!r�Q�BƱ3����^��S�?*�j��|�s��G�$�?�0W��Rw\f)�9�[��ϳW78�a��9h������nj��v�i����V��)J���()JJW��0O��\"�\\��d[$`��~5��8p��M�D��5�;E����0����*�L��\"B���k]_%�üA�hk^��mi_�X�f�:�DDi�ˋ�[6���Dv�$�\r\t�:�^�>[Փ\r���El��m���=�yxt���d�٨�|�Ͱ옦Kg+[���\f\v\t��I�\f�J��\te�U��Ҳ8�\rKZ�i����� �N�v?\n��p�lE�\f2�Ē5\\��z�wUj��Yηc��F&/ \n3�`H�`0oHԍj;\v��r��f�*3{��N���\n���?H���Is$�R���w=)�m����u�׻�\t,�\fC\t@�\07J����G���\0m�$�\\0�.0�ā$t\0G�Pݶ�PJ�@�� ?��荞��Ŋ����7op/#eT\'�\vT��aÀNṔs3+ fMsWm��ItxV�C���9I�\\�\vŮ�Jh1�F2A��<����P�亱*�3�v3�Rd�UdkW�1�������2�&$�H\fF�=j_�a\v6{��\ngE�4%O5�\"��*<�Œo�[1����`fS�S�,$r`D�\'�R��[����am�ӞsƄ�k�x��~It%\t:��V\v���N3�6��gK�sg�X�ڬt��鿃ʶ+�V�)��#����rۙ0����q�\\�r�Uz��r�ua�2=��#ZK�n�ǉaL4��01�C\\Ե�����Ǉ:���4?:�u���j�q����u��ۑ����Ć \0�r�|�x}Mm��^�x���r�Ц� �ݧ(A&!N�x�i-�����\"9O�L��]j� �m�3d�)J��R���()J��|ۖ[�|�T��9��5q�m�j\fj��������l����#4���� �*��\0���K�aX�Wdkf\n�@\f�C�VU=��(ٱ��Yʙs��X�O���|��\t:�\n4�&���g9��$�.f.�A5ƒy���X�4�8uF*T����H1��Ā`t/�8͋6����2~��o�����c���r�d�w�íٳmH\fŎb��g6�j��4�����f-�h�����L.2�/��;ȸ�3�1��ė(l���<��Q�10�E�k@��`1bt�\t����y�^�����;4oQ�Ԛ\\�!A��@H�~S^��Ҽ5�9�y{��c����ű�pf�M�sibIb��u!t�\n��w��Uf(uDb\t01�g�J˳g�rI���(�MI=5�<���a�+%�I�:����%�cb�5�\vz�.��Y�����Y�}<U�;?��$���,��K�f�Xض�߇���o��#��&�\\�\0[\v\0��_$�W�m��[�$/\"3l�]D\n�c��*�k�J��\0ch��Ҥ1��8��o�t�:I��\0�V6\v�;���4!���׭0F��)\vpaC,u���X�3���h��1��j�fF�m��FU2XT��b�8�[G7\r�)�WQ��U����\f�Fqr����\'6��i;N�]���p������J�\n�qoZ�ڿކ������ta\"#�}�>�l�w-̲�M�4���M��&�W�ݻN�\0\r�T�yh�\0s����>K/\'4�+$E)JJR�R��8\"�wo�����}�5���k?j4���ݍ:�j/Z��bd&�+GN_���\0z��?�����X����c�b�5�+��zƠ��>\\�vģf�S]�pވ<X��X?J����_�v�5#�S�1�f4����?�^�*w�rt�\0��&�̆����u�f8����p\\&���f�;y\ty�#IߥN�%�8�m��<w=�|��e\n��Ͳv����ָ�\0�q�sl�4?�X[��,@8�c�\n�U&30}:ǻٮIQ���`���\0��6Q����\0��%�^�_hX�2�h�\'���]_�m\r��\0� ݁7D��V1<��r9���:�[���b�m�0�0�6�wߕeUS�s�3���ڜC��������8���&��\0;�+�������S������umOS���N���N���8s^cm��?)=dqL�ʄ����_���p��I�>��q{\r�B�\r�Ǌ��\'�m��j�u��q����-�?:��\t<�͔)JTL�R���\0�)@*��6U�����U��{Yg6�B??ZÖ�>��,{���[��g�~�)�8B��(C,{�B6��5�;<-��i���s\'Pco9>��|��4�a�]D*��j��(��$��2�LF�m\'��k?���-r��o�u�i�(�߿:���j.5�H��Vs�L���k3��l\"-�A��ee��\0��+޴@1ˑ�5ճP�����O;���wi��p+�X���.\0\v1gm�bzo�F��=��7���f�n��p�f �Ȉ��w\v������Cp����\0�����\f6\'\r������\"�ܸr�!F�����(��%z�ǸP�K�е�|�X3�І�g_ti\\�b�\r��(���Y�[&���bb\f�\r\"��\03E��hm+�anD��xN�}�8^>�!;�7m2�a�,��/��ҫw�/1X�ɪף5m���E�j������FeP�\0�]����IU��L��T\\���u��`����o��x�����\r�w�������<�J�q����GÜ�Ҍ�*���-��\tb\'Hڧ�O�;Z1{I�N�P���j����� Z���Z�&����V���f$hG�nyq�zU���L%��T�mn1�xu;�X�\n�������\v�_�8]�6P�tH,w�9jExp�s��2���]�K�e�gS�կ����!�Q��&>��7���Yϋ^�ط�[Or��0B�&�0��r_jz]�F>�M�m\0\0\r���^��L�R���()JJR�V\'�۩榲룬Ȭ5�S��@{�0y&zmi�fc�+�l����^X�G%�&\r��O��\"G�Jcp����Y���Ҵu۹8�:gSO>�[��w�Mi�(a�?z��TA�0��O������7������\\Y�j#�b���m��U?��&�:�i����ch�� ���Z�� �?�F�x}_��&?��J�<?�a��^ҨX��3<����vV݋M�]�C\\� �\v��O>�~;q��<�*�rP�e�@�lA�4�\0�����Y���YgU�����a�$u�5!��-b���/v�#$��Y�ޠ��e/�t�{��ݦ��XF[0\"HEE�\v8�j/��8ť�Y�cH� �HH0�/�O��2_�.����GձP\"\0_t�N��{ݔ��k����G��$�6�@��E����u�o��ւ�\\������\r�\0��Y=�rq��6�na�-�B��tow�;V�W�L�#�\t$3(09�ӭD�19SY�yn�w�uk�)����\"�f��\0�0�\vj���LF[�Jյy�l<y<-2Yê��[(Fbdjr�0&u�v��c�o������g�}�вf�1p�\0��u�H�����wXi;�E�~3Z��B��bw�~\v=)J�R���\0�)@)JP\n��5��(�v�71+�T���2�\vxH��U�}P�,�nF\\�K+,)hCD�j��8bF�ۘ#_�TO�V�\"��Ru\0��;r11�W���H��\t�ɼ̌2���& Sݶ�AACȜ^)��9\\N$��J,���2��\'���d���e�����=���u�\"�;wÖ��y-\0�\twU�������CjO����c<z26I�d���@������i�;�P�\0�kR�~3o2Yf\vp��ۑ��3�+^�_��\n��e�E��\f$�n5:��%W����\t�%�]��:��bX|z��f���+�;����\r� �w�b��^�q��ݼ�E�<�I�����V�\"�K ���h�g4�$�Ҩ�_�k�:�C��m�o*�a�`����?�����)KY�{�*H�M�C\r���j����o�`(7n6��G���QZO��j��烩�i:`�\':��ԛ�+�xF���%�u��ؒ��)\049�C��K�?.�j�k��Ι��_�L��yp\\am��#8ݺD��pC��,/ʥ��g�J����u�O]�����Ee��ҏ\0���]$�����p�ՋI��H����\\���Fa:r�\t��*��(�JR�$)JP\nR���\0�)@)JP�Y}�>����������A �2\fS\\Xx�����y�Ƭ�\"ʮ:��X�mܑg�(�L���_���MM[�6��KƢ ���YW�]J0��~����\r��*~C�����<ܴ���~���$J��w�H�Aң0x��dax��9\n���2�䤓�u���ð=�\r�GȎzMT8���\':��:������U�]ɬH�U����p��aΞ0��\'�S�F��T�����d�e�i\f�aY������|�r5f�����c:�2\f���|�r��Ah$EU8�cm\\���p��ԛ��X�r����ձ<O�C3݌Įq�}۷��i�YQ��HU� �c;A�Y��\f\vq�6�����x�r�ҥ�;c�\0��Mç}s��<d�T��Xܹ%κ�=k6Z���#9fw��i��RN��M�z�Ǽf�KOn��͉S�T��?:��O�V��?)\n?3�U���&W��Dȥ)@)JP\nR���\0�)@aqtci�{�:�>u��+��lA�c�*�ެ\fW\rK��C}������)����J�5���n.̬<�ڼ��]��\0\n�Ih��Q\\C�3���*MH][���!>����&��\rTA����&���=�^\r�S����d��0�쉊��#��I̯�x��f�I�P���X\\C�O w=?�f��x���I�q���\t�\'eCb�#P�e���[���Pܑ��n��};�dA�\0~0O���ׅ��U�/$�)JJR�R���()JJR����]�\"��s\\�s@u\"�����{R��8;g�5�\0H����_�i����.���0�6E���@t�L��)@tQ�zW�\0�)@)JP\nR���\0�)@)JP\nR���\0�)@)JP\nR���\0�)@)JP\nR�����","botalon","activada","bebida"),
(8,4003,"refresco botella","refresco cocacola","bebidas","mibotalon",4,"$","����\0JFIF\0\0\0\0\0\0��\0�\0\t( &\"1!%)+...383-7(-.+\n\n\n\r-% &-----/-----/--------------------------------------��\0\0�\0�\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0F\0\0\t\0\0\0!1Q\"Aaq�2���#BRb�r������$3CSs���T�4U�%��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\02\0\0\0\0\0\0!1Q\"Aq#2a3����R��B�����\0\f\0\0?\0�P\0@*P\0@\"P\0@@*\0@\0�\0�@*\n�D� \0 \0�\0@\0 \0�\0@\0 \0�\0@\0 \0 \0�\0@*\0@\0 \0�\n�D\0�\n�D�\0 \0�T\0�D\0�\n�\0@@*\0@\0 \0��T\0�D�\0�\0@\0 \0�\0@\0 \0�D\0�\n�D�\0�3km��ŢG1���{[Õ�:�6a��G�ҸZ,9��;Gu�nF�,���Kl���L{�VF�98hVI�@@@l��=��26��Z�?\vZ�5R��{xA���s�.�ht��Tr��D�[\n�D�\0 <Qpc�k0i��u�� 3����R4��||���,4�{����8>�w.��6��C��\r�����j�΄���W��/S}�k�w[����,�o�@�@xf.7p{O�կ�@*\0@g=l��?\vmL�i Yq���(s]ps~!�4�zso�(�b1���f�� �2(_���k�(Mc��G~��V2l��m7;�\0���׹\\�{y:�/¬�Kbܶ\0 �Xظ��q8�u��vwZ�5��j�6r�V(�1;ڰ{&����M�z�̀|���y��o͊�G4P��i�N���vt��R�-BX\"����h�zB�|x�F�8�M\n9��z֦m����ny��F������v�=�ڔ������Qm#��)�����\f�\\�ִҴ[����~��=�6��y`.��`�Dg���93����{-�}Ӯ�x�e=��T�\f7E�\fx,k�7��q#��౽��\vE]+c{��w��4\n�e;��,Kcp@R����\fn\0�� ��#����}v�\\ƿ�\n��2�\fm#��_�\r�୺Ip��B$� e�o��\0g��O�Q>�-�P\0@Z��.�gc��b�F���\"p�9���c�w��O��]\rg���]m��D���D{e���de�n������A�zY�Ms]A�FM\r}������v�ւl�<,�@t@pƿ,o<�~H�J�����Yd��wh���\0r6xg���nԑ���.���EѠo�@Hz0�ϳ.�s@@Bt�\r�Mw���o�Q��$�D3 ��u�WI�v�5եP�M�z��rQ\n���sb��-��U,������#ex��mt\"}\v7@���ϼ�+�V4��E�Y/�\0@\0 m[`�I]�69�ɢ�\0�z�y�I\'s����;5�W/Q��)m�\'C�J��:C҉��t��~��h�u�E1j����L�\0�4��.}�_�l�\'��方��c�����ҏC�%N���4ا�(�QH�1�p3��Mfa��� %6n K\fr��������\":S6\\+�i��_��]d��l������r���@���ARt�h�}tixis���M�/Qi3��Sh�0@�^&&��H�\0R֏�Q��4}F���uh��Y\\�����i:�����\'�\"Y>�%�>~�6Вm�(3�ev�p�O*��\t�]Ӷ�̜Ԕ�H��Xq��e6���H������yy-1�c��r��{jiQ7��?�\v��!�Ӄ@ia��Rh�޴�������O8x���1x\0@\"\0@g�vm�ɶk�o�;�y1�3��7���z�M�!��]ІGc�;S�\\<�ߑ��i�\fm�9�&\n`�Zƻ�%�r�q|u���wG����N��0N͐��q���]Vk��}�|�<�H����#<� kK�h4|������r�t29ҟ9\tuz�w��D����QH}��g�����K>@ ,\n�Lm�dm��O���~�.qPE�FNl���i#����pT#�u���Б;\t�fV9��#1\'ަ����O����f`�m����WGJ�R�b��VWD��W3���A���p9֌���\r$iߛ���IdڋZ}*���D��,@�!�}���n�#�عm�Y�ҳ.60�0-��ηn?�3?DΣ�\fw�Vk!\\(\r��۸���X���k9m�f]��FF!�\"��A+@{����js|��ZA(���M�;�J���H<{����\rGtm�i���A<�Wz�7����:����Q�e�3��7Y�z�F;����(N3J�>�\nc�*\0@\"P��:�ǜf�l؉�C]��,��V�ܢ���\'�x�&C���������e�R�͞�7Ӳ!6Sw�|l`jp���&f#�JE�#:�������#�p�����#��m1���\0����gU�(���Vo��.�mC���7�lB��W��;E��Vͣ\'H��� 2���\t���K�.o����#��\0���Az���7������dm�h��S9���\vO��x�aәY�XO�vG<S�ԋr�������>�v7H�@�g��U�:ZX�������11a�$Dek�-��h��\0lf���y�*��4��TE�Q�8ݮ��,;%�����(<J-�..&V�A:q� *��-���\0=��wO�^z).h�#������#�����/r]_X����p\0��V[�U0~���ν\\��\t�ͼ�}���s�~K:�o��s�rQ������k����^RLR��>�����h�o�rz�RT�������H�#x=��ȋW��g�j�5�&\n]@.��f�i���r},����2vg\f��H�\f෻$g��I43�<O%^I�)BY#�Iv:I�H�>�����5\v_��[�\0���\0ddP<�y�m{I�O��3H�^�q�,SM���7�`��W��g�� ��G����@K���������.9G5J�WQl�iq����ݦF ��\\�\0�\t׽T�m�����s#�W����[Z]������ �~%kj�0�vs�#���3z�jx+1��8��n�d�#�N��>\r+���|��.�}֞8ɴp������>��+�4��Uu��u�����ة�1�Jw��g�^�zzx�����v��|2q����5�1\\9�e�T��M�3=7mn%������1��o�\n=\vۖ��~)��N]��.���ڜ�q�9i��J�f�Rr��v�E�q���GH���Q�DQ�]�wn9@2K���ǟz�i�䶹}�~W�ݳ�Il\'|^X�I$v#���^oZ׊��Ȧ�z/ГO���w�� ���c�o�����S�d����v��?u�-�JC���5o<�%\fq�*0N�Lr7=v��E���t#O%����(�5�8_uEN��RLs�]��5Q�%�S�^�нR�S�٬ىΏ��7�8r��s��xͯ^H�f,;FĎl\v\r4�*Tp�#�*>We<��Vy܎\v���y�P�-��}�e�?2�rl�\v�c�a�s\0c�����n��4Y|LJ����ܶ\0 m\\H�\td?R7��ZO����g���$��h�����2��\\��ـ��Oa��s��}�%|E����) 5āw�T���FP���ߡ�9]��X��=���꯴H�>��eM^X��[�\vkl,+�\ff$�$��?�s�졎sI-�`\"�\n��nv]�W�ݟNp.�n�Db�\',z\'�ʶ�=����y}}1���,\0�K�A�T��Ri%��|&P�)6�l��R5z�{��:&�f��|>Ѝ�I\t��KyA�i�Q�2��[k�����\"��,��e�6���e�X�}��D�����>#�B�|�)�U���u��Iq3���������[�^�=�����Nj��C$o�t�2�$���6v�\t�|{�[$oap��&]�Z��d�6Ej�ͭ�(��-,�=��^�f/~�1�НI�k���⦢������JD��P��ѽ�����(�yb���r���a������Z�I$�8���s��\v���=����0U�d=-�ye�������Ԃ�@E�p�,b��䳗$eI2\t�Isi\f���)H�+��e�\\Inc|��Q�6M�$c&�5���\'�a�70e��9����j��[�2��jRL���m9{vZ����/Шf�g����[�\"C8kǂ���9;�7\'��u��\\7u�V�E�z�T_z�4�Zvƺ���S��;?\rr��j��)ΰ�@*����<����A�-����eu1=�� w�,n��}���:�r�>K j���kB&R�E�<���}����a�\f��\v�,dmnW2W:F�$��@�\f\\�7TiR�両)J�x���:/��z�&1��2R�C�nV�����]4�ނ��7�#�2G��1�󕪻�;/܈�b�ٝ8��#ck΁؇�ѕ�M����0\'H��R�Rs�\v�Uq�X��.���ք�߫�E4i��m���1Oʤ���8�?3��i\\hyZ����-�a��R��\0~�F�2���q>d�Y�G%�O��G-��I-�z�4~�ډp��%nN+����3��K\\���kiuD�gj9.��W;D�`��N�I\t��\\����Vrα�Rŏ�(��H�(����\\�Z�(�u�i������p\f \v=�����Y��e���B9q��M�<1���+�[�,q^TR�C$�64�U��KZ��H\r�P����Qf�(��$����\']]1��9�,q����K���\0��\"�\f^$��\\��l������e�ea���Q&��Dx�J�Yɤn������k����s�����9�th�υw���h�m6�./�����:~&h��g!��\f��7���\n7}Ǌô����*P��\0:��)ư�@��R��E[^��R)�x���t��F��X��(�]q�j�����wX����W�˔T��Qkn\t++���rh�UFڔ�.�8w[�T�o����d٠9�\0 k�y͙�|d��2F���5��%��5|�:�v����<Fs�-lB�\0PM�u�P��*�%v��������U�7J�[CC�ro��X1��Tp����#ev ��ZZ챃l�K���>���; xq�-W��\rҼsL���v߼v�6����t츊)Y�Q�o�S�wi�6hO3�Hi�ugv��h��+d�3�(pj\v���o�̒����:�<c�*��=?����h�25�\v:�hy\r8������(cy\"���W����rkc��2����p�5����Vc�+1�ar�6�%ÿ����7yu-��x���~�=�f�x}R]Z����՚U����f�h�Yw0;����6����Q��#��\\����JG/@���$�V\'�5]���×�+f��3�:�H>?��ɱ��#��t��`et~а~���\\h�F��&y��X���9m-���m1�40ށ����-w�\t�f�%����u�����g\tK^\\��ؘ��9ٚ���E�1�5#V<<.��Z�ݷ}:��\0�p͐�\ve��0�,=�I�g�<;��<)?RU�į�W�EǠ�cB�´딼_�c��S%J�n\\�$ܻ�k1�p�D�|@q#�j�GSo6�өT;(䣢���ղ8��(��Ə\"bI��V�o,qQT�?�V4�3����ǃs�����t������\0@\n�X�}��ĶȨ�X�2�lz-f�Y�9�G�q���}��� ��������?k�;�uҴ�(��t��6��%{i��G�ޤ�ʐ��lm��3�\\�]���\n�[�TP�=���T��\0���;��|]�s��pRġ�����!�Yfy��@�=�����K�8�擾�C,4�d֋&���6.�&C!��˟&��dk�0������:\v��\"�!z\\�7��|��f}�p�{�owY�[��-\f�w�0헌���c����_U[U,L���fTI������ll;���C��V����g)[�Q��EoFn��;���1��=��dg��`�9R��G�����hɁ�GoD8U�c����ZnF|)v+��P���M4U�2�\v&��|�,����\f.\"���I��u�$��{���m�K��D~\vd�᛹,�]V���$�\0Ecu��-��[0���е��f%E?��j�̯̪���g6n;�:��RԆR��py�t�U���RF��k��=����W�8������u�JiIO�~R��\0 ���ᦏ��#}���N��,�ߤ����A��>��iN/�h��c�OM�/�\t\r�;?�5�ԆA�\f&�0\r�����r�(���כ���uU�t{#t&Ig-�2F>-r�=^O���1��o�k��j�9��w1�ׂ�I�C\tK���S&��%�\t�����<�+6ߩ������\t,x�Zy��e,;[�h�R��^4��3��畾����e=3R�T=+Ξ��6�dy�#��H�) C�rry��M��i����/����Y8�p�OC��c��(�hO�?�]��G�Į-��\fa:b�ofi@���JN�jl�����\0�g��_�P�E#�o�(�1���נr�L�oеuf�%��|Ҽ�/u��v�3���\vX;�6�\n8�\0?غ������\0(����\'<��%S^�=�4�g\ny9��~KF�ܯ��qVj����o\f�R�P��\r��ZK���F��ݧr��pzv��|��!p\0@#��.�a�Ƹ\v�#��3w{�<w-��C$q�a@,5�1������\\\\w瓖��?�Q�5��`\f�R�lx�IdQh�<[����:\t�l[68�$?��gҎ6j��+g����8{��\\�O���z��>�\r��3�VwR(G��r�E� -�+D9��JG��9\vG��M�͞)J.1�F�՜6��o��-o౩�&QҪΑ��Q�Y���}@���ԋ!��F����/q/�~̌�\f(>����vo�#���)A�SC��U��c�q�QL���i�I����M;0JO���6��XƼ�Y+�ž��ZzԌ�7�G����X��<Ť�Wb���*ێ��{lb�6�99b!4h� ��G�-�ј�%}Q��[.ѷg��\t��]�[x=V��⸪L��\v��\n����\n�\0���<Ulj�H��⍕���:�X���5r:�I��/��f?���B�ֹ:�h�x�\'�!����-�ah�#���U������{�@tp��!����x�<�o���Hbˋ�2����p$@���\"��C���6��V���G�z\'Sbe�]��,&�M�7e%��a`��uy�����KmGw�iØ�9�����K��J֣�Y���(�+���VL����~+x�d9f�V��_h-�����O����=was6��x�?\v���gS�8Z>c8���äo�)�4�cwj�#c��|�і�m�E�Ӿ��o��~Ai��Hβ^XG�&:��\riN]��C�|aqe�\n�G,������R�_5���<z�W1����1�;�\n�/��:xS�Х.�\n��+�Aq�\'� >i�<~%�9��I���t�y�=�93�\f7Y\t\fW}���AK?�,��.���n0EB������Ȯ$�r(�P�l8��;q=���-u��i:���R�l��i�Q������9���z����9y�Y�.���c��C��0��x\\�V���\0��;\n�S2��#�\0H�i�K2��g�Y���j���K����\f#��cq�_����M/�6����4�NA���\r@��H\'�WSP�K<֓�B)V����l:��?��V�\"�S��w��6�)0s�{�����_Z�3.��!�iǴ����_��h�ݟ<��u<k�)I�3�j���d\n㢕�EXGt�����\0=V����U����\v���#�@�)�p���r�Ŋ��c_N�\\G6�T}%>�/X��m��\n42;�Vh��p�]�ҵ�Uh�,���[$O����լ�v���b~S��d�$��!p\0@Dt��`1E�\'���n�2��q8ׇ[Hչ\r�\"�pU�:R��U�&+7�����˒*;l����^� �O�[J\r���Wr&��׍�Hݤ��x�:�\\���C�Xy�|�Q���Se`\n\'��s:z\0�bT�����M�u z�����C\r�\\EC�y��r���_?�\n+tyQ%�:��jB|ĒSQ���jTR����2�珹\\�p��6\r��iّ���u��\n���&���t� +�zD�üI�[ErE��5�Ჴ�@�|��R��ѮNq�����\0a�&Ǹq���~Dy�*����F���+h�K��q�;�<�*�RL��G�~(����7R��l��A��r[ER+K�X�\"R�{þ�cG�_�T��k$�w�W���;ؔ��N�����ou4��#�S`�;��f���@@2ۘ/�0�Cu���Y�E�0��v��8i\v1�������}�Q�ބ�X�\0�3�\r\t��WWg�K]�6O\v�c�\f\vnW]�`�\0xqZ�9U�,�b�\r�C��C@��[$��Y�\\�Q�\"X0RI(#} sZEְ6��7襊+NI��M���c�o��|CR}�).K�e���Uf�v�J�Ӱv\'�aB��;��آA��.&���]͛cc�7��x��9!�q�2��\0Z�>?qd�r�+p�X�<W)�r/C�\rv���8^�e�>Ac�l��\'����2��m#�,�>d����w�G8��Kh�����+:��i2]ȯ�_�mG��Z�f-�����!4�S=U�����sp���d�n&F�������P��-�}�1$)�=��x<�?M����N�\f{ۼo�;+�b#I�z���38���猡���1p~^$Q�9,��ԉ�Ǔ�4e��V��D�-7�\n��Oԩ/��}=?�p%��W\0C���@�T���F%նx�ob�x�˜x5�/w�Y�U��x=M�����p�g?*i�Im�X�;-5��M-�K�b8�PT]�M�\0  8τ�ARF�Nhp��#��}����k��:׎��HGC�g�\0_��\0b?����\t��p��\t\t�1���w�2n������=�%d3�l43a�s3�>��֯����O��Ɣ0W�m<�(�\\.�X�Se�9����kU��C�l]H<4b���J���\0�9nVU�c�4\\q]��6!���,�4h�QQ�y��xx�2IG�}HYJ�8�!�N�ܓ;�O��1�;dÇh��\v%�y�܆R��n�v��i⃇���4T��⣮l�\v�S�{�l�[S8�f�-K3Th�Rm7jB��c��*3�m��},���%\rͥ��\'\\F\tO9\"c��4�,!�\"�����\07A�=8 �ogl�6VC�Q���@C��\0�\0@\0 8����?Y�o�\n@|����0S>\'[\fNs\r���X=�k��guCN!�\\�k��%������\0�Ǌ{߆�~���l�mK�Cu�fH�4ؙZF��k/BY��Y��Y�R\\���;f��\"\0�B��:��$�$�9�JK��\rq$���-�iD�]�)�^���}H��5+,ݸ9dk��D��Q��a}Ɯ�\\.\"�\0�B�Mјj0�V�e�,�� �ݙ��,�H˃I�~W�|ꃠ���ߕbc\r�&;%�jGP�8�_�Dn{��\0�\0@\0  \0��\'��F���Z�@2=��88?�g�@���8?�g�@v�ca[��Q0~�RP\0@�l$o��c��f��b��ظPla��6�Q@��-h�\0|�$uC\" \0 \0�\0�@@@@\0 �\0�\0@\0 \0�\0@@*\0@\0 \0�\0 \0�\0@\0 \0�\0@\0 \0�\0@\0  \0 \0�\0@\0 \0�\0@\0 \0�\0@\0 \0�D\0�T \0�\0@*\0@\"\0@*\0@\0�@\0 \0�\0@��","botalon","activada","bebida"),
(9,4003,"refresco lata","cocacola lata","bebidas","mibotalon",5,"$","����\0JFIF\0\0\0\0\0\0��\0�\0\t)!*!7#%*7../393,7(-2+\n\n\n\r-%&/6--56----//-70-501/----05-------5--7/-----//--7--��\0\0�\0�\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0E\0\n\t\0\0\0\0!1AQa\"q2���#$3BRb���4Ss������Ccr����%��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0;\0\v\0\0\0\0!1AQ\"2aq�������3BRbr�#$4�C�%��\0\f\0\0?\0�P\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@�Z�.{Z��#�PM�;\"`\\R\'�����=�\0խ�\0X=�s���B���zxy��tY�><���ˋ?����o��%�폦m�C�z_��̥Ŏ�TB�^�H\0� \0� \0� \0� \0� ��q��m\r��o���夆9�$��9v\"\\2L�K-�cCA�c�_Y���U���n겦@s��@)�FS�R��Ę�F\vR�~��dm�X^èϽ������U�bO�o{�oFP��N�Q�\0�IV{�)h���\'܊��ڨd���9�Եr��X�A娼����@{�6�g�G�9��\'+>&��]^tn~Ɨc���m��_�ŋ�p7Ŕ�%16��}�Rt����su��|nf߭Z���X�E0Av`���\0rZ�֔�i4���F��J���WAR�0� \0� \0� \0� \0� ��.�pc,h���s1��x�O\0`� �KEy�jGk.4N:�W�\f�^�󫉝�`e�ޛ˚i5� z9��\0c�g��R\n�:M7���%lݮ��#�z6s���\"��\"�]�X֒y�Ě�O�G��jo��۱��nyX��yk)��8�8r�g׎i��ʭZpNRy#��fb�C�v&��B�wFP�9Y�e�qm\vGSqo�@si�� 5��ϖaxՉj��l�n��^���5�ː�W��=G��6�v��l�wfXd�߯�O�/\r+�T���N�������,j[��eR��6D8�FG̭S����XajƵ7N�FK灤l=�˫zu�rx�q9��2�II]�\'<=WJ{W����#@@\0@\0@\0@\0@Oi��h^Wyq�����)��/iC@t��Jҫ)3���iS[l�kW��G¹�Z���*\\<��ϑ/�3L�&A���\' �E�JZ�^��a^�(a��o�Ip�K>�|��}�6%�`�٦XHoǆ\t���k��CP��:�ߙp�\0��V�OU�}�����Y���;w*�5Z�7\v�2�\vg\"� ;����4i(%$K5�;j�N���0\f�w\"��FY2���Q�SwEOklJ���ui��ދ*��V��&M)չ��a T�y�4[P�R�8KR{ZyF]�x?��Z����cX������:���e\vL�Ԭ���Ԣ�A��������i>��c��Q����������e��F�+O�ܖ���vШG�{�DH�\rԃ�C�y[��kъ/��Ֆ�j���h}Q��q���0{�3͢���:u7滶�sBR�t \0� \0� \0� \0� !��M����w�u��P�ɼ�o��gcR3j��*��+�n}k�m�q\\Y��\0��\\A���<����ն�Uiad�\v���S�����ǧ���B���ɯp�A��93���uKyEO<�޵t^��z�����S�\v.X\0k���������o{=��B������g��X�(Ӽa��eP\"c��:j�՞Ҷ�Z��%j��ұ��5�>���\n�員g��yzb�Sv�h��G���R��E��n��T{Q�s�����[�p{��F���RD�i^V&�jJ��������ݹ�@� �h$H�n��b�4XC)\"F.��i�o�?bϼDڃ�{�ޚ�k}�5hܰp��e���ӫ~����݇�2��\0��2�sa\0@\0@\0@\0@\0@�L�������xUc�]��#��oʽ����W�2mD��%�u\rl~��Bɹ=ƿ�IJ4���\'�^oȯ���/�t���ii$��\n`h�3M�)kko,\'��O\f�>�Y��=\\M[d��\f�hmA���N�=�K�E5im9F�NT���o��x�=GR�L�=��2\"02Ŭ,�l�0��)�y\'�����͕������tH�A�*7��^ѩZ���e�+B�����m�~�\n�i;PV�k{�Su��$��p�XO,��\"��-iZ�\tZ\'\r�RoYIK<�7���T-��9�`�x3��C���\"�UJ���x���w�uЏ�i�+}�+�j��?7�����uc�\0D���\0�݇�2��A~��h�ä́\0@\0@\0@\0@\0@b���\0������ɓ\0�j���gn���o������]�}B�K��L4\0���xA�K#�+�]�Q]Fx�N�6�Z��)x�����UiV�R����\f�~k[�ZN�:���$�~ݛsQ�`�>�\0��\vu5wc���B.L���9�cYX8\0[Q�o�s�sϐ%HR��e=ZJQr�m����F�]��档yD��9w���`��&�x���My�h�^������+>ǻ̠����n�S4N,-!�H�����{V��Rw�m��x�=9r�]���p*�Ë���Q�85�Qes�b�jc�M�N*T��δ�Lǣ�%c7y_��Ԥ��R^oĴvu�}�3��)~�+t���������\0� \0� \0� \0� \0��.�܉=�b��33�H��ֶ�������C�s�Y^H%��L���sj6[Տ\"���YG���~Ϧ��%<E+mi��f����.oy�R�*���&���Ѭ ��?�Q�,9p�V7�R�|�Q�\n�up�ɮ�w>�.<=��>޸\ti�9��:}�dV�+�J5���wp�\0Eƥ�kRu[v���b�\v��`e%x�)T�Jj�p����Uu:�����M��JD��I�Ig���Ȩmۛ?��SN*px�$����T����aY�\r�R���jA#6���tp�\"\n���ْ�bኢ���>{C��Fq���y�ly�E��[�2���K<Ѧ*΢�O�?r��۾][O�`��u�OU\'�}�F��\r��\r!K9�� \0� \0� \0� \0� \fU�7�����������Y�/��l}�[]����Y�Vt��\t��W��,�t�U��Δy˻��Lm���[��ֳ���m����k2ʃ<�D���=�]\'m�,%j8�z�ƪY�������\t-��\\�S\v�7&��n@9\'��(=vE�%��&�����p%�)Qt��Z.i�E��˃����V��y;�\t�V�T�뷃g�����o��C]�u�|e�/��}�\'%�/n��F\vDJ�g�kl_6Kٮ�>�o��U��b!���-\"q��X}�UI����E�ka!>W}��\v�fU�:\f�����4�:�ϒ�N���Y�n�����?�X=��>�d]{;i�usø`�����Iþs)����\v�?CFSl \0� \0� \0� \0� ��#^���w#��\0���.�w�J�\0�>����]�D�Ϩ�8>��W/5[H�w\vy(�[���!���4h\'�F�:��eJ�5%�������ڰ�-���2:�7r��@�eϦ-p���ˏ9���pwF�c቎��\rϰ�?�h�pU�A\0�p�!����=�H\v�¾nq��4e�F⭍�J\f5(��jfp�nQQ���p�E86��R�\feբ�5�{������z6Cmk�6]L�>���8xNC���/\\\\]�pا��������4�.@�X\00�ש��7g�Zm��P?��g�XKg�����R�.]�~�_�\f�EI�t�Q�?Ƈ�~����@\0@\0@\0@\0@1[K�r�������.2\"\'�W~n�v��\0�\'�^��|�E���X\fv\"ٸV�*���LporqAA���}Y��(�V�M��W�J1�],�|�b�\0�{���$�B��|��R)V�#����ӣ��W�\n�餃��Gݘ[eN3 ��V���̩_�k�����0f5\r8�NY�\r\n��;�kO�A���RI���2\v��Sg�����Z���H��BV��FzN\\�Io~y��:�q�)\0� FC>=�˺R�Ķڏ��<�<j8����:/���\0��\0���+�E����u~]�?n\"��L���4?s4e0��\0� \0� \0� \0� \0� 1���{�&���j�����.�v��F�\0�z\"��A$3t�A��\'��_<춖��6}\n�+��x&C��%�\f>|$Μsm�ɵ-�>��V� �mm��,��[n7f��À5i\rH���j4�}�c������W��2���y߾�����bx�}Z����ܒn9�ʒ�YruV6?��m\r��-�����\r,Q�����Z�[KZz5���l���To�ժ_Y��=���e�d$�Dd�$,WMԧM*q�K��r�8x➑|�����.�yl�g/�#>��ے�gy_��?�-}���W�g�<���зa�O���?q\f��ESp \0� \0� \0� \0� y�މ���c�?��V�nӵ��/�/DS.�@�\'\f��LL��2:ִ^RI�kfOv}��Q��U�Ю�:g�q���L�[i�\'�Ǔ i|4��U)t����I�V\riבֿ��A����T��Ofh���o�S_v�\0^�fƕ�|o`p�o6�xÆ�涥f�Ue^��-����1]����kD��L,3:��F��Ȩ.6���w\\RX>^�Y]�;w;�A�+�֟�B�G�G�����}�pY�j�U����*ԝy�~\v$��+ͦc <��8��=DȾu���aO�\0�?�g��1�m�>�r�\0�m�;wܰ�m�m�S���ه�2��\0��B�sA\0@\0@\0@\0@\0@�ON�_�����5X�\0k;��Ə폢)�N\\}#�!��L{�;����,[��)Vu�W�shS�K\':Np\\M×�(GZ��V�UJQ��9;]���i6[E�e���^ڣf��^��\f�s�ϔ)Q����b��Nz��σ\'�v]�&�\0����9�P[��mP��WO]-I=��w�����LەX��I�\v\f�Hkc�c-�(��[-�E��9��Y957�k�]��\"�\"ڭ\r\"`�kp��}c5�x�W�y�q�9�}�y�g6e�c�����j.���i\f�����\0���,���yI9_J���\\����ۏ�S�Ee��3V��\0��:�sA\0@\0@\0@\0@\0@�h�/`�[��ᤪǶ]��!}J7���)��b��֎2#\'F�<9��\\�g��$�7m>��[�>���Σ� GP�OQ���8�;�۵>\fӮ�m�\0�� �x��H燀��#Ԥ:I�h�<t��G�o���rX�s�|�\\P��L|�ߪF@�\"ecw���d�^\r]x5���HMϦm���?\'�Ά0�@�O�XQN5,��3JK��ʬv]?U�b���C������c\0��Zљ2�2r+��ɶM���,#�]���zot�\"Z2�4EybB�����6#\t9�Mǩ}P�n����RwҲ�Z�V�:�6?-����0�&g��������Ú\0� \0� \0� \0� \0��k8w��kU�_�<��\n��}���!~N��^����R���A{)��\\���G4��\t%��\re#f���y�q���ХG&Ԟj��I�v�i5o����.D�)��+�c*\\�:\f��IoMds��&��ە�S�5�a���&����ȴn��ch<�׍�ʯ�L���Z���H��SZ�܊�~N�Uy�<ҳ��d��k��HZ�F<j�\t�D���Kj\"CFN���5�e���;Y���Y�$d�\f?�ǜ�����u_d_��\f�z�{}H\r�O��]>��r.\r���6���w����#����f�@Ø��/��\\�7����\r1�E��.`���V�nÓѓu1��~��L���>q\0���ԉ􎱐�\v\f7I�t���N�\0��B�sA\0@\0@\0@\0@\0@��G{{⟏� b�)9a�^U���Y�A�(��c��y����T�ZΩn���\r*��0�\0�\":����q{����\np�Cm7~�#ms�v�m�Q�2���Ne�hOC�X�ӗZ%MQ���wMw������o�2��\\12̀��H���k*c\\�֋9\nu��Z7���ux��6-z��Wc�\r&�\\�-�@�~�E���5�%��M�Ԟך�7>�(��J��<C��x�1�^$���3��N5)����G���U��~��:�1����\0�i>��Y��̃���T$��ד9�Z߽��N��7��z5\"�$a�����>�x��j[��\0�����)ϮJF#��kC/�c�<{4���>Z���azL���� �٣��4\0@\0@\0@\0@�V?{�jܵ�>����k;�}��B�J���c�-{^�\rAi��̸t��<�V}��mm�ݛ+�e�O�:3,:��g�SU�}��V�8�I�渮���2�bn��a3M�Q�\\��9��hZ��aUP�Ӿ�濂����ό�.����\'\t����\0h��U��.d���>�mswR�l�@�\0h��ޣJZͳ���i����[n��\0�XT<�?�j7��{VV�E���*/�W��/��ؑ��kT�D�7�.vg8:\0?�m���]��Z�i-��<�F�ՋV�Y��ן����� �(�\'�>�������g�T�p�Oy}�\f/I�����7��!M9�� \0� \0� \0� \0� \fm���[���@�N�L����U��r�gh�jB�y�+�x���kRީc� �z.�1�B��̻�R5ᬺ>\t��/��*Pq\"\"�H��}R\'(�����\'(;�q�X�8�]�W_���l/춍(�����q��ON5�գ����:�?�}����h��׏�o�Z����M�������*�����f�Zlg��\\��b\v@��[�9�\0ȨƝ�ŷ�d�Y��Uj,�=�G��K��@ C[L�9%v���4,jMԯ-�v��\'�;g��i�K�9��Էҍ�S�,G-��[K��y���U��dė:L�5�ݐZq/b,�3�>��w�dG��#?����Ğ?�a�L�Mߐ�~,�Ú\0� \0� \0� \0� \0�ǭ�2���A�ES �p���\fg����״�~,�Nr�FPyj�;��Y�p�����\r9���>��I��x�%fL��4���j�><^����[��p��>&�Ki�܄��@8��+�D��U�Ԋ�S{:�\0����k��\f��̑��YAזP�Y3\\Ҕml��\v7����m��ǽm��Z�U\n�z����H�-pe:t�c\rs�\'��g�/&Oa.��\n�s�}Y/��v���K�q�T�<B\"3K�u�4�?Sn��\f%�����nY���N|}s��S�(�o��u���\"~��O��Pq�u���[�6��{2��{���\0�N��������<.�DәQ����%M9�� \0� \0� \0� \0� \n���u+����=������\"|���S�;���F������^&y�w:�K�.����m�3��2����/\r��T�\0�t��?f���;.�1\f�mS��\'�H��%��˨�-=���(�x?tu��]��m#����5�!P=+�kl�>��]��� Pi���<�:5�t�=��\"�7J��}6�g�۬e��/��$H�\0��Eeݺ����9���Tt�.������T�P�]g5��k���+%��n��]��Ay�-�q�Kum�9���<D��g��\v��.�O ��e�-3R�5N�VJ������4,�RlI�;��Rs>���VEv\'W-j���Ī̎\0@\0@\0@\0@\0@s�ٱ����\"cבh\n���z�2;���>�H��nG���Nڋ����g�K\v�L�j@gb�׿w�!,.r��\'���:���\nX\\�n���U���X\\��ݚ����\f��Lh8K�����ʹ���ϟ����@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@��","botalon","activada","bebida"),
(10,4005,"refresco grande","cococola de 2lts","bebidas","mibotalon",7,"$","����\0JFIF\0\0\0\0\0\0��\0�\0\t( %!1!&)+...383,7*-.-\n\n\n\r-%&-//-/---------/---/--------//---------------------��\0\0�\0�\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0A\0\0\0\0\0\0!1A\"Qaq�2R�#B����r�����3bc�St������\0\0\0\0\0\0\0\0\0\0\0\0\0��\05\0\0\0\0\0!1AQaq\"��2���#Rr��B�3b�$��\0\f\0\0?\0� \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�����r�<6��yU�{6�(��򝸼N\"�\t�H����g�����A��\t�n8��N��\04uN\'����դf/����|�8���5ЍH�k�$����Y��e�z�-5���� \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0k�֝J��*����nN.���]�3�����#�4�����tO����NTkS��RnP���%tfj��5\"c�c��\v�Ύ\rJ�jt�BO��.��e�F!��h���GH�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 p���Z����.�TxS�Q�s�w���]g���,�J2�uZ�r�\t-��g�{����#)-2ijW��sW�;p�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>2�J׵���6y/a\\aee����+SRV�����zX�¢�䔪�\"���mV����^\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*�x��h��z�G�ӏ���o���R�i�ES�i����V�f�S���o�IY�pߺ�\rn&+�6�O\f��fc�W3į{���|Uu����H#_R����z��Ӻ�L��c1i�\0���\0��5o�S���b���g��>��-;�ά���OԳ���̮#��f���˧0̨ZV�*��^����|/���ϛ*�����N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��c�I��)6���|���^�g��q�k��i757�b�Ւ��d��\"���\r�\r�ص�z���-��2q�}5qXCc+n˴�ȵ����c�����Vc�+L����`q4�wiŻ��Rާ/��6��f�ţ=�7���3\rOE�*���\tp���i�\"rŘ��$z�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�ۇH,0�ݪc���\vu�����#�Kb8]/��֙5=���~V[/��}y�>�Fya!:n���CK7����]�UԻWH�\0*$�\"����nK��ۢ<IJ/���6A��=��7H],M\\���V�V�߻Z\v��PW�\0��h��,n/O�\r�J�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0u���x��>�4�G��Y7窣_�����5|:�e^[J�+ʕ5�+�����y�n����|�\r�\t4�[{^�9wycw�����D��2��*���̪�mw(�\0*&�l����̺|_3���[0��O�n�\0�\t�Yb����Pī���:��8�}b��שkBvT�5u�e�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\09���j��q����+4�\0�&�W�Z^�>\"cͻ���ΜLWff]E��ў��f���5�������V/.4�����=�n\"�y�u�G��y�9F=C�ܖ��/����\n��>�����?�3��͹�2J[�����N�\t�4��n���������2��oUE��=�y�|�5&\'�M>[���̌*Y^���\0�,$�V?���NQV�vN�~�\ttq����ˎW[e�j�5\'y(A7����X��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�]$�ʦi��8�S�i(�*���h���>׀�t�J�ӈ���e�_\f����j���3��I���--��C3j|�\tk���L�V��Ӧ��{��Э�՚�j�*N�K���o�n�V|n����͵m?�ߚJpZt���Ӟޓ��\0�t��ቚ�ueS�������R�\\\\�5ْk~i�[��]I�̕�����8��l�x�������K����ӽ�7&��}��u�/<��G9߷(����1�ʲ��R��g9i�N6�޹�V�PW���𷵛��u�8]:�um;��ߤDz��_1V6p���P��8jp���i��]�;���u�y�a�<%-��;���fz��ۤ}�W��SZ]�9����߁�D�k^�9�zz��\r�G�W�_|l�\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�9�eK��Sx�v\"t���С)���)m~��5s�Y�G��ub��\0�s>Si��������ujU�B��6��ERR�)�N�\\���M�>w�+^�i�Ƿ��է������V�������~c�h�ϓ��GV�*�gV.q�T��Jm���5��r8�戮����RW��i���5��|L��6��c��uѭaZ8�2��u4��I��&�-�+7����#K�9�t�C�Rt�Nbb3=\'�:w�.��g-�]IʭxK\vCz�`ڍF��#.��K�o���[�;B��V�V��ƥ�D��Y�\0���3J����OErT���N�KT�5y^1�W�7}��kM�N��\\W����\06ٴ�m=�V�����b1�v��t��R��zj0�=�KJ�n��-Ri�Vg�0�]�SK�o�����G�+�L�F���qx��M+L:�h�+;�Lo&�v�d�6�X݅��ͦ>�L�3���yfv�]��ꇻ%���<\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0WfJr�1�)&���F��٩Y��W�4���kܭ|ͭ1�#�np�J��U�ڶ�ͽ������=u\tT����ʥ:iJ�\"��˲��R5-�ޛ!���m�v���iiW���m�lL�8�o�11𐣓V�\n8hJR��QX���\f$�υ�+%͹>w]|;r�c���(�En/J��ִb��5���y��g��w�xw��Q�A8Y�jV�UA/��M=֥�<\\aw�_�G5�����j|\r\v�[�Z|�ڱ���q�s=�*����,6\n�&|t����=���ߖ�^3�GH���ugN\'�Ԏk�qX�~��.�=���y�IՍ\n�u*��}\\aRpS������7O{n��sN+�ի~2t)kk�M�q��b\'��}���YfSC�Ub�XuRu:�GyBn�얄��r��)Z�=�O��~��&��G.zLfc�����Qy��:�\\��\t׋��}�Ƥ�ܽ��K��q3�����K��H�D�g�H��lu���\'BR�W��\vL\tV\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��[�����өЯ%�֧N/JQt�I���rv�E-z�&f:O��|3[Fti[�m\\�i��|�!^U�7��oN�97x*ue\r��RJ\t\'�j�܆�9y��e�m�><p�kG|�~����/K��s\n:,�\'h�7Q����b�S{+7��-��k�����<O��}\t�L�gy��v��H�<�D��a����F�~���gm��եH����|�W�^\"x���t鏧l፟a�Q��Ue��jՕJ�n�V���(��oJ�����&�Z&s�L��=��4�mH�DW�{������g�(_+���i֔z�JM�xh�0���V�V��JS�������\0D:w�1h�Z�8����H�w�P�M�#:�i��ƛS�rT`�aI;�6��|�#����{���\0��S�\\ڴ��6��3��{D\"ze(*umR��I�*1w�\nPq�<�i�I����菅�ͫ��DF�����k|C��,1�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r�:q���ԛ[%�v�}������K��+S�B+��UjG��{}��m앒���Dbv�变�oKrm�Y��6�g�˸�R\"&0���\'7z�\'6�9�Si~�v&��T5�i�b#�\"��*-�)��ݢ���%�V7��֦�_�#�vY�1S��\nj=ZQ��UIT��J���\t$�m�/i�\"���8�K�1;Vq�?��ȑ��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04�H�g��\n����i\'��z�RO����ݦ��z��\'���:�],��fz��q���<Ԕ�mIo��N���S����\nz��T�U���nuXy~�\f�Z_Wǰ�gP�ϙ��(���88�)��$�ଚIo%ݫ=\\v.SV9=_+�p�3�\0��m���$̐\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0r�v�sLj���V!ﻳ�\'�������\tSI\'�.��n���g�oշ���V�C�LW���Ob-����;���b��o)2֕|����H����v+(J����)o�|�k0���jVz��L*R��/���/i��h�S��b�����{OYFgv��&���O�?W`�ME\'�$����e`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��wKNu�_�B_�J����8��\rޤܽ忣3��v����=�sj��lY�U֍�Y��O�S���n���v�ni�g$F�?Y��M��ԧ��N1�ɴ����e�%�(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\09�ڥ9�G��\0ء�\0�W�m�d��cAl����.z����QU|�k%�Σ�-i)kFȬ�=�z~��u�y\\˖���i3R�H���^�������Fjo�cIO���]N[c\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D�i�l���ԟ�U+/�ȭ���Β����_��̙��OH�UX��?W<���l���撎�l��\"�+ߕ�߷�%�E]h����oSˣ�l�_��J{6��:®�N_�F��\"΋?����$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0GۣK�wWt$�GoŐk��O\f�-0������1�;��N>X\\��;_�]����qo\t:�(L�tg*|Eq��=���MN��ѹ�]�t1ё��p�S~�Zy�+�P�o>��M��c�/���t�a�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0w����NqR+x��O�^�&�\0��_�V׶!��Y���%˲{��տ�c�۾�N\"��]|#[���|�����z<�v�ڷ�4t:eW^�(��]��\\6&�EMkn��E����r�Wz��.m���޶0��D�I�k��kJvf�u���4\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��w�q�^�ұM���(q]�E�x������+�\'o�ʴ|��f�8�ͽv�ߋ8�fgw3H��系~F��]~���y�̛O�®�o*0W�G�G\rlp�QY�x>{�iJ���4$�b��~v.1�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<{A�~��VIZ�bao��������������$qK��JG�ƦT���U�\"P��ꕶW�w���Y�b�ni`Ͻ^�o��I��o�U���Ye����]Xu��P�ޤ�I~�䢿Εgg�7�v\nE�[�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����(a��[Щ�T��Kio�q���C���xu���غwZ�Fm\'|>�[N&��S�-�i[�ɾ.u1��q�-�v�n�B٬:Ҙ��bi[c��SޫTl����L#��J�U�����?�kX����O,m��C��NmB������o��~}d��,�\f�\"-��N�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����ЩB��V.�7�%❚�G��:�斋Gg6f�P�\\5zN5p��=�\f�|c$�^u�y����p�-[�_���Q��ڳ[�o��5khA�j��x�J�OJ��Z*΍5z�!NR�4��I+%�K}<�?��#N�\07D�\"��R���X��ٴLe�)TT���J�\0\n�>7|��I;W��F��h�g�;}L��<e��I�������<�n�KNm�>�o�9�V��Uџ�Q�\"�4��ivj�c~�-rn�_���h�VkM�\r����&t�\0\fm��D��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�6�q��f��u)VIAԤ�Ȯ�d�v��~\'�.�i�FE�w+õ*��bf�N��ExuqJ-xI3�<�L�{�������S��V��45g<-g�<h��ؖ9U��b�<5ۧ��Ӌw��\t\'n���㒹�׉լb,؞�=���a�O�ׯY�W���]��J:���x�ݗ�,c�%���9�M��3U#����vvMpzx]yF�\"s�~?��9-�i�yM�*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��","piscinaplayita","activada","bebida"),
(11,4006,"agua mineral","mineral fr 500ml","bebidas","mibotalon",6,"$","����\0JFIF\0\0H\0H\0\0��\0C\0\t\n\n\t\t\t\n\f\f\n\v\v\t\t\r\r\n\f��\0C\v\t\v��\0l�\0��\0\0\0\0\0\0\0\0\0\0\0\0\t��\0Z\0\0\n\r\0�!1DQd���A�\"5ac�2q�#��BCR�\t$3br�4�%Ts��S�&67Ut����������\0\0\0\0\0\0\0\0\0\0\0\0\0��\0<\0\0\0!1A\"2Qa��Bq���R���#3S�$%4C5b��\0\f\0\0?\0���\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�&Z;G\'������9�XXV����5�V�]g���l��R7�i�%qVoy�!�W}��!p6ϴ�a���D�tY�IWIo�?��Ɲ�L�f:�Q��;w�U�٫�E&����\"I5�6H�iQ��^���J��V�!|���o��\'yA�3��ruk&Q�qFk��5�N�}�т��cŬ�ݖTk�E��������u�o�6p�J�&�}\v%Tz��������9��m�¢�M9C-:�A�Dm��۷�Oj��IP�r��̖�r�!�t֍g��i3�z,��j��{Ryk3���G�H2�+u���M!���ˊ�^��G~����o±���]u�߫�\f�{hd�,��)8��g\nn�BF<����{��������j8~Lc�.a�S\'I�/�H뤅ę�ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\0\0\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0kLȊ�t �Ue��J���\t�%p�v�Q�)�*i2?-��z�\r�����8���=L}�w���}[�DG�$�A?��Z�6�n~�^V\"/����#R���_��G��Y��F�\'E��7�kY_:(���G��2��ް��޴�>�[z��RTDZ�DE���B��u�B�g�Vf�35^���&&[D��C���#��P�=_!�݇�g\n�.�E(�GJV���h��DC�SL�Z(Z��_=�1��͟���\"�C����\vmT22�\f�|�;Z+��>��}��6N\"����Օ�;*�q�\tdھ�U�������0^-^���NJ�g��<�g��s�R\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0\0F~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��6�֜���&\t�Q<\"�F��#\"�1cK^l����s�\v��_�l�EFL\"_���56��%���S��F��mXx\nŧ��zp��2�m�$Ћ�;�G�H�b{�n��B\f\\;�j%Q3���46U�L���h=B;o1�b��Ĺ.2_�0�~�ө&�Mth��+N;~�\0>�5�r��f�K��%%yn�IT�+�k�1�\'6��P��愪��3s�Q�נ\'va�Ja�\tB���2Q�%�j���!?a�Sp��&Άz\te_x�nL���T���$��\tt�zw\r�7��ӳ�����,�5���R�h��Tsm�Z_{�.Ѧ\n�ډy4K8��UB2A��{�\0?�8�j�Z�·\f�5�����>+���<�f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���~���\0�\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0�|��:���ൢ�\0���mo�\0^�\0�����r�?�M��G�ȩ�}\"����\t�:��s0r)Ť�z�R��m����:$)�7]6�IJ����C�i�t��^m�6MH�����L-\vj\rDI%�*:��=_3�V�̬Rk3�C�Sk,�m��--҇-7Rdz|��;Y3��C!�׆�4d�*�M4���8���ܾ���+�UE��3=E�!�G�~&��eD�h�u�KN��m�R�jZ���2������OQ&�\r$��~du/�oN�<����;���\0gD�,NB��E,qp��RQ���7��m�&�]�&%�M��z�(�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0\0\0\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0u>S��+Ccc�2ȶ�}Kqk4�QC����Z�^��[[ީ���Oh��_�;wdst{͸�֥�t�����A�;e�u���]�K\'�7��3hf[JIFd�Z<��;�b�ã��Ӵ�:v\"\n�D<GT�i&�U3%�����/�L��szS�\'�e�K�*��\'������FtLZ\'m�Z\'ɕ��1��¹\fƥ6����e�oZ��K3.kٳ�-O�b��u23�Q$�_��111=�ݚt�T�]\\*��I�\rZk���1>�vrRVmh6��è�C&�i��DXq�K(q)��[�2�^+�_j�ڑ����h��eJu7�\v�ZH�֘��V&;���+�)N\\�\vhԄ�C$��U\'�����\'O=�f���D�h��x��W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0G6�CNe�2�ԙ�ٶ�-t1�;�;E�4�H�I�����-_��7�(oQ���駚�/�Z9-��Y���p���l|�fkYI�eOAy�L�����Wh��\0��9o�q����ȏȨĭ�$��T|�qG�+�fkn���∋=��P�A�2W/J\fңu�;�iR�Z�ɼ������7��ٮݴf�L�T�#�����!$Vm姥c��\t����ɤ�MGʢ�kwݡ����ciݭ��;L#D��B&�L@����\n1����� L2U�n=f�Q 襵U���cOj�K�x�՞vO6�yE%��4�����!��-�-\'��r��ڔuQ!D~�J�&�i��P�Do���8���6��T=ɋT[e��i�~·�4�=�p�x�����>�����Z�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\0\0\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0\f��[�i$�*\0��c�6��B��IЈ��I\v�M%�v��%]V��j���3�y���Q֖>W,���Qq͚TڮԪ�(�?q�\'S�c�y��<M�1�6�a�����[6�t�\ne�E,ѧA��TO�i^b��6�=�&Z��9k��j22\r���N�u��X����|�K��H]���zao劇��6�j�r������,�ZVzVUgmftdZ�L^B�C�Ff��9u��$�T��1b�&vk��l�C�Q%FDe��?������t�v/�����y�s�e�ݥ����K����\0�X����m(�1ۮ�u���&&\n����fl<��EMU:��5�i�χ]��X�x�y�hd��ْT⠜R���J\r�4��\'yI˴\"H(y����O�JFF���\f�:oٝ�l�$ȆR��Qc��[N���0�\f���(ȯ���:�3�sK�\0X���3�f6\n.d��I�\n/2:1��/S�n�0�\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\03���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��e���ZI�4�m+(�ahi.)�4�2נ��6�qD�ޣ��x�^;�h��Ԋ)RU��E��\0� �&��D�}�:T�I����5+�&eG.\f�\r�#g��]v&��\"�O���E:���6�d����x��^I���wr�LFL~�o��>nڒ\r�\\j����\0���Y�WH��\n�!R�lq�����a%���Y��Hmg�̌�_�f����5�k^���Q�nj���w\r&HA�L�V���ا$��^��)�I�:q��ܢnҿ��9�d��3\f�t$,�D�D��7S���ђ��E���.\"��°�D$�5�m:������#z�LD�4��ҹ��/K��9��\"q��Eu:\f��y\v���d<����v2Z�6�G0��n/Ǹ�UmDJ:w�\01>j�i��-m��G���T��<��&]����t����I���h�H�x��1�����q��D�v},�m�t<����m-�J��eO=_�i��wf#h���<g\'q�L��rw\0��?`\f����\0����q^���\f��rw\0�<g\'p\f����\0��?`����n\0�<g\'p\f��rw\0��?`\f����\0����q^���\f��rw\0�<g\'p\f����\0��?`����n\0�<g\'p\f��rw\0��?`\f����\0����q^���\f��rw\0�<g\'p\f����\0��?`����n\0�<g\'p\f��rw\0��?`\f����\0����q^���\f��rw\0�<g\'p\f����\0��?`����n\0�<g\'p\f��rw\0��?`\f����\0����q^���\f��rw\0�<g\'p\f����\0��?`\f���� \0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0���m�~��A=\vg���D8i�ғM4�3RhZw�tX\'=��;(��FsY�|<��۹,�e*���&]z!�h��n,�W�UiY��[I�i^���K��_w`�[)dekJm��a�,��>��/^�BOV�Ї>����s:o�:��e�\'���e*�D-H��hݥjZ�e�M�f#nYk�O7�w/�:�8S�,��ܻu+Zt��GB�c6��m,���ve&�{���!ȅ�e�kpΟ�3���\0Q�;Z��Z��V��)̰���#��_�h;棡�������Bi�X�%̂�-�(h�ಓf\"�d]�֧Ri����t��E�F��+�O�c�\\c��3��&1�țL<JH�C#��*�X�h��l����Ji.�LK򳁈o¼����\"Q�:L���l��ѯ5k0��Y���R��z\vMөR����ג��c�=\"Z�ч����\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0\0\0\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0�m7����$G���[-�z�٩4%̏H���\\b��\nz�=�8�]\"���p�Ŧ�LC���(ȌκL����ۏO4�k����ґ�=��ɄA��Ll]�&G\rwMtIb�N5�%��q��c��*�\0�e{9B�M�J��ƥ-ĝN�Ƚ���E<W,�&�\rc���\0�k&й]��e��}&�]l�P�ҭ��׉g��=[II��S��^�Q���2m���(����~IN������k�����\0��٢t��\te\n\0��I\\3Y��t�̾BJq<��ե�t�iٛ��\0�� �Src1�Y�i�z���\\���G�B��[gfM��vU��d�ٛJ#-;�{�])5x���\f�#kJ��l�ā�FAF@ڢd�\"R�IuM���#I�򗞱���W���Xru<����/���2�Ť��Y9���5��2�<T\fA�FDWIi?:�?�y�!��+�H�Y�.�SL���\0;�C�a�9���\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�7e:��A��\f�In.V�u�5��U䨛2*Ԍ�O�c��ɏU�ѯ������\'�R7���b��[�4���S*6�a�UM.�:y^�Mm.I���=Uux��TV��\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0\0\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���=N�&�Mu�7���G9ioZ�m��\v�6��v��8�Y��)���&�/$�Z�P^��;�\\��Y���ߛ�-$�s8Q;L5t�kZ��h��_\na�R:�:�^ME�䞌t3ɳ���������6�Ҷ�U:|�QcQ�58f��䯣�Η<^����w\\�m9�Dt\v�Z�Ȏ���{�I#��ۖ��xsS=y�;Ø#J�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0\0�����\0��?`����n\0�<g\'p\f��rw\0��?`\f����\0����q^���\f��rw\0�<g\'p\f����\0��?`����n\0�<g\'p\f��rw\0��?`\f����\0����q^���\f��rw\0�<g\'p\f����\0��?`����n\0�<g\'p\f��rw\0��?`\f����\0����q^���\f��rw\0�<g\'p\f����\0��?`����n\0�<g\'p\f��rw\0��?`\f����\0����q^���\f��rw\0�<g\'p\f����\0��?`����n\0�<g\'p\f��rw\0��?`\f����\0����q^���\f��rw\0�<g\'p\f�����i]3�Tt�����\0u��{��L��JVv��#��ܛ�N�NPl�!�乳�U�᷁��g�,x��\0�>���.�\n�EVV$�p��e�� ̿q-tZ�F�YG:�1;M���=�a�Kw*����e���\"=�x���t�KY����l���BD��HS#�d���\0�m�f�}�%��n���_�A���m�_�6������Ԓx��;�����4�s(0,dwj��*�΅MC5�z�NܒŸ��#~x{!r���$�eP�du|��~��\\��k.U���r��=��:B��Z��\0��G�o�ټ����^�-��ZM\fZyI�~�$�Z*��jSOzN����E�Q[�j%?\r�FB�4���U�C��v&��:1sr!�%&�[#��U*N�?������G%b������\0ٹ�mľe.�Yx��䮊�������W�:|\'��=���\n]\t1�n6\nf��y7��H��yKVi<���kK�%y�;�ߟ�>~�V�~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���~���\0�\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�#�\v)+-TDtR?��L��f2-$]��&�&��V:(�u��u�������C*s)������FM%�t����7O���^\v���ӿ�gx�kۧO�oݔy��Z6o6�7\tE�-0�Mw\nO��KM����P��y�zL����O�ͩ���K=���TA��4��\t9q⎈\'U�,�s�}� �_��L�·F��$���gm�b��墁�d�p�iB��\'�O�Y2?�����M��b�y�rǚ�/�m�$�OJ��V�X(s�\0�\"���JX��ci����VQ���H��$1�O�v�ں(�֎�\fW�\r�})?�Yy��z\fS����Fo��m4�Vfm�\r\f�,�2ǌ���c^��+��o���mJ�zU��d����Vma�M\t;ĸxv��*�H��W����O.�UN�!˲��2)\fZ+���ql��j*�\"Y\r�c�,�;+����/�vD-�%,�����%���ʷ���8�n�M�/o���4�5]qN���(�\0f�!ʢ��uDj+Ჹ�M��\\��\'kO�=?(I�ἱ�ma��$��`�W-r*10��=��FjS��R��uqjih��so���5v�ɦT,��T��bt��S�2B�:WBI?��Mı���vu<*iH�!K!^Ғi$��D��i�[�\"&]Q�4��I���I��=§ᶿ�����\\B����Og�m:��!�\\J�q$�)\'RQ�21��6�/I�Xy\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0\0\0\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0=q�Yf���~��#m�\"5(�e��^�4�k�-X詪����f����v�&*�͢\"�eO��F�֞Z5��=~������urj�M��X���g���\0u)//\"��[7�I�hݺ�X[���+�e[�\0��9�5���O��yZ)]���#+�ЪT�_�Sˮ�5�<2rW}���� �K��6�\f�J$�u�(�W{K�N��۫BP0��/�A�\t$�е\n����M�v{|���C�nX�2w�R�\r��qq�/@�NX�+H�m_��i?ˬ�P�NX�)?\tٴ�;jI�Hf��gx���K�ֆ��N�ZV��\0\0�,Mo�&�����mF\t�9Z�\v��#iu�y:�66$�l�QĶ�h���R�q���M����6r>���m���y��v���{X��J��ê5�T�h%V������v�i�.���Z=}5�f�or����휹�x�fV�?���?��i����R2�Q-Lפ�ˤ�֣�b�3����pHS�FL�dJ\'٥δ�[��\'�Zmp���8�~����=��C�;4�tD�r�u�!�x�r4)+��*SEGw���_\n��Cm.O����lg�2�,���8�!�7ũf�8� ��D�y�N�G�p������:+�x��2|��}<��+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\f娵�H�SL ��4(���!T�]��\v�]%�׳����F���sFfv�m����T��S#�Jֺ<ǣ�������&�/=�y=�m-%ˈn�4���9��^����tSzm��D<,im7QR��������<?>�ݳa�C��ZV�EkZm;��)����C��0��7�i��kZ΄��*fc13�13�X4�*�E-h�D��;��\tx�{��*�����~h}\"��\'������b�8w~�ƛN]ӥH���笃���x�\'�W�,Qi\'ڝI`MFuePf�Ү��T������yL��i��\\<��D�y��4WL�����^e���GJ�ɖg��Y���D�G���%&^e���rW~�m��d��2C;}n�*����J�֬N;�Y�b~�C{\r�(��ٽyT�Zt\rk4�7����F�ѷaP�<�Ax�x��4*�7OξcVw���Ѵm��f$�x����[�I]NZ��(m��{sMz�\'i$&%Z�a��Q1֦!�dO%į�KL�I\'�D�I=��i��,��iW�b�h�U�8��O��\'�KE�\nI��r21sM3�˻����b�{�]i������b.I��4��Ԅ�mЩ�Q�UNM^>Ku��o94���������Ρ����i9ѯ\nY�/����EQ��zx�y�|��A���Z�k��AI�H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\0\0\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\f�]�(�����z�Фy�����^��Í�^Nm6��sY,��d5�t�5҂����2�]6*��W(J\n�J�B9���)�X�m[�p�8��}���n �W�M��Y���#�Ö�L�?�b��*\tFG��&̩�A���\\��\n��`�{0������:)��L�BM�2�5v��x��P[�\v�d�\"�+_�����o�21�!���ۍ�y�눈RT���=\n���3�5�m�*��o׬��P�1I$B�ۢH�T�\vEi�S�\r��v����K�~h�4�e\v\\ѿR��_��?���M\'��j���3�iQ�ҕ����J�W�j-�[�ik;n�FZ,B�J9�fU�j*����Ly1sI>oَP��w�\t�SML�AV�����+�4��ߌO$�?�fp�=%t�MJ�*�-��I�k?E�j�d�j�>�q(�GR�x���� \t�@\0``l��\'��&�Y���+����ˍ�<i$������i=>zE����x�Qɏ��=|�)��n~��I|3����\f)����zH��-&����g\']��Uv�뻱,���Bd�\f��!X(�\"�dm��#\"Qh2/��g�FMM��.��O8�է�-Y�e\tn촶\n��y\r���x�&�tԪB��\f��4���=\"��S\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0\0$g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��K֦�4�OY�x�O֤$�+d�a\\�����e^�@4�EZRV���7KQ}�Z����o=+?EqLT���n��^Թ:�B��G�0�iFT�F��V�t��j1p-Vi������V9g�]q0��Jq0P0fܼٙ�/WEN�*:4�5�ok(_�\r��Whcf~��q1(�cH7�JCN-&^L�̓���:�t��\\��9yx��\'I��d\"-5��<�I���T蚞�\v���J¯���m/5�29\r��9{�u��oZ�{5�=��v�R���=e�n�ԉ�s[}ƕ[ʡ(G�5�J���1ME�&��\"�M&~�����o�?�Q�7��^5��cN�;�3;�k(&T㨈TI�x��Mfm�F�˾��C���r��Qi�nPCi�wX�,�E�(R�w�scEU�Ҳ23���cx�a�Zbv��2q�\\<�&���Q���g�_s�2i�d�Z�ks�V{6�Kek!��,F4fDir���C-\"�]Wj���`⺊�{���A[D�T��L��C��̺�㫱��c�<�(��G�X�W�p��Ӊ���x�N����6��$�J\"Q(��FGR={�f&k;�X�m/L4t*�e�\"Z�j��S3����ͭ6�,V�H���DWJ\n�����uu���VB�;����3��Z[{M�%B*�I��|�S>Lz�o�F�]6�ԟb{;K0��-�3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3���?p|��H\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��$�c\r)�za�CL��o����X�G�$b��ݡ���_fO�\\9|s�|gTp�4�SAn��д�7,q�9�y3�O��f9K�MQ�cͨ�������W�Bſ]�I˱�6�_uj^����6����#iS�DZ�M%w�^�N�*n�����v�N��ڞW�I#:j\"����+<͋p��J��ȼ��F��w���E�E<�a�]�@�tz�},�7�ES���h��\rEMm���B_�i;�6iؔ�6H��J32?����g�vVnR�\"�\0wF�#�����9MJ�R�.0�%Z\n��x�f��Y���+�mD�h=G��\v��51͗�0�J##Z�nY�LAmG,uO]<۳G(�p\r��N)$U/��QC>��=WOK��,��ѤfU�\t\te7J�5���U�yo�]�|?>�V�ϥ((�IP������u؈���0�\"\0�/���2�1fD�(������m5��V-J�\n��~�Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0\0\0\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0�*��]��h�Tu#�`-�v�=@W��\0�=�]�ɹ�A����<HB�t�D���z��\0��/��o=�����1a�q�_�[I�h��IQ$��N������5���ip%���E����R���5�y�ݽ�����j���?yF�O���}D��hAx掭Ċ^���-�z��f��\r=N��A%HI��*I�t��\r��R�gD�+��`�b:�L����������Ri5UZ�\0A�q}�K��X��������\fOHm�wfؙ3�i*nSM>U�O]�f-�F��O�Իv��x�klڳ2�$�A���E|�{d�X�\"е\"`�Bm�N�:TCl�\'��\t#OD!\r���GJ\']\n�\\�����\f��ղ��v�$-� �B�E�~��/.�m��>)���\"���3��.�DV6�a�yч�\n�\02 \0+�v�=@V%$�Ȍ����D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0\0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0��m�-\0$N�i�2Tu/z��h������*V�\n�I�K\'��}J3�^�P�S��e�&��\'��1���\0O��)�5���dʊJ�cZ�FZt�ǫ�y�8��o��l�պ���H�]�H��Xf�5��Kdw=�.�ɞ��z���6�7�Ķ�y;f�xL ЃХ�a�v�i��:]a$�;����9�RGN�D>I25)k3�FcN��n�3^+���H��jm�O~��1����cY�D���v��Yx��I�PkE�EEl��\f�9���Y��߈�j��Z��3.m�u�x��Dܕm�)�Y�\"!O��]�x�uY�CSU=fI�\0Z��\t)�{B�<��JjT\"=\t��2j\"p�-~Т�)l��O:y���l���ç��^��\\\0D�g���\0�\0\'�>.�02\t��j�rU�m�1$�UH��r��W�:�;�j���p\0\t�@\0x�iAT�j��j���@�\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0\0\0\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0$�^T��@�A�QԏQ���+R�M;�qM���m�!��Bt�z�twt����5��\0=��vU-L\r��Q����BQ�):����֔�x�%�+��u����Is�[�jK(?:WH�~X�Z��;r���M�I�Ѱ�B\t/.%u\'_\"�T�O1[ķ����:K]!�Lc�A����_��Dud�r���f�K�M4u�S� A:���F��T��M&JT�Ū�Bҍg�\"��Җ�k�b\v&Hg�}��iB[U}�%���;�C`l�*%x*U�Dt�rjrO�f�_)�@�FJ��K���J�>\t�ԟ�A^f��b\"��VRpmŒ�\rW(��U���z/i�rzݚf��y7�m\n*�R��wuk�o\t���a��I%U\v�5�߻x���C\f�5�\0$O�|]\0H\0�\0\"}�����p���Jn�25?)��3-�u�ӓ�onl5���^\\���!Ya�\0\"}���:�HI��zR�<����@6�DZ�~��>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\03���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7��W���R\"���G�\0\'p-{UX���i���S���H/\t�(���3/|�z\t*/�T�z^�\"k�g��sZb���t&M-$4���/4��fG\r\0�Ԍ����}/O�������mR��Nֲy ����2\n����JI%�T�\fs��;[�o�߽v�����\n�Fʐ��pQ�]�ZRI��\"3נ�e��:��n�N�$��i-�x��d��r�E�\0\r�}5�\0��[q޽)\v5�9M���.@�\0�Y�:��8f_�I��n[����$���G{˔Ղ��IDF̏ݻ�X��:b����+H\\��K�ּ�ê���\'\t��~꒲\'b�B2�\0�$5��Uh�b~����Vw���,&_df�@���W���������~)�=�\0����a`Wq�G*e�T���%G砯�9�3��3�u�������r!���f��C��(��cWȆ�c?�}�a��ڦʅ:h�K��\0waXY����)�RTL\v��\r���>+����x�N�������>~��������_M������x�N�������>~�2v�{i��i��5(��\f��32�zJ��c4�1�׶��N]59�]�\0fW%\rN�E��3ɛ�!ZfX��#4�H3r��=D�~���M<W?4/>MT[.O~���<g\'q�u�����\0��?`+Zf鼯��8�W�pJd\nyW�d�\"����EB����?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��3����\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+WA������M,8���I�(��������[r��-0ך���Ԟ�D��;(�_mF�u�BE�U����<\v&H�%�|\f�wf#z�Ӯ&^ܓ8�b^������,�Rt�+�2=T�b||K��e����m��?���-+n#(�4�\0}0r�\r:�̚3�{��p�69޵���^#���o�G.�&U�Z����S���D�N�ЯW�K���!R��OX���}*��2CkE��).��G�DS�$��ʑ�+[S������0rUL�\'Q:��4��g��d*�\\s���bm|���~��v1դ��D��3� ͬŎ;B}>�>Y�7ld99�y.����O�t��ݣ�sr�H��b����ꢜ��UE���r&��n(�_�TV�%�{D.ׄ��fZH[)%�a,)$�RQ���+[U�g}֫��X�ctd2��֧�F�El��u�b�?e�4H�!�0�\\��؇I-���L�F�~�1=������Y]�\09B߭.�ɭwR�<��1�_{�Sz���p�I*��C���9��u�$D;jy�m*Y���(����/Q���hVLT:���o6�R�]$G��\0`�v��7��\\��ũ�4��j�z��Fy-��s�#v�U\"�I�i�*��_��7�}�x��g&&q\v.T�n�P�M��mJ3/Њ���c�͙ۗ�Z�m����\\���]��������Y��馤��u�5������W���O�b�b����ȴ����<2��qƳ�}�9|�tȈ�e�E���m�_4��ݽ\r1S\fx]��Qm���%\t5(�\n��>��Wh^�/�\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0\0\0\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\f\r�����kօ�$�Q��ju�������e��}Y�>�d�u1z�d|�N�\t\f6���g�����\\T���0��ј�d*|n��<�,Т\"I�\f��-����A�68��ж\f�&&<�i&J��/g��#m�Z�F��yi��An!��Ɗt�On�?�VT��Ւ��I]M�v+]�C�Dv�i�m��i3�v��M�V[j�0s��p�F��C/�w�_{��GmN�??5�r��ǲ�\t|ד��$P��f���4}�7.�I~�gG���El��E�8���\v�5��eã�^y��X��]����U�Zܰ%J8{\rdg�B�\r�Z�g����z/����(�������nN_M�_Z*t3#���_!���:�#7����Ǻ�5��lB�d��B���#2�^���},t�?�E��u���\v����1h\'�W�ő�Bi�մ�3�\0��6��oW\'�)��Q�����c��ڋLW�8�Ds\nܤ��\0���h�cx�>M\'�DO/%�O�gml�~1-o6��I)S+ӯq|Ɨ�d���~i1�q�7���%��R�\n��V�C/� �f���V�x懮:]2h���KͥD�J�Wx�m5���,vF�5QMʙ\'H�J���7�o�k�S��r��]�\\��z���R2:Դ���-��s¤��\r�Y�z+SN%��\0uu=?�\rb�rD�뉅�DB���\t夐��I�yTcy�fv��~�<9�M�\r�VuRn�\f�a��C��+_�C�U|4�\0@�y��s&���\n�i��\r6F����@�-��X���޸i7�t|���,����/�X�\f��ĥ�dT֒3*u~���ZL��������h�6���\t7���C3rn�\\S�Zd�T$7�v\f���r~��-Uy|��.���O;�O��G�d��&��z���В�@/H�Q_��`\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t [E\fܶ%�@6��2R�ER3Ӥ����W���fz9�F��Z#��\f�{B[\f�N\\��ɥkG��!B�E�=f>���yJ�i����g��r���!�R�R5]��,��zHC���&=k/b�>�V���r��E>r�AV�Џ�K�����3ե��-�GG��G*�/)��422\"-4��Q��:^����DvQ^\\r�����Hop�$޳3������ܺH��ߚ���;��Z3mq��)���iݺ�j��?f_�ko�vP���Dq��ݨ�)�gMH�A�ZjѫX���\\��F���NX��fZ�T_yCL�nz(棩SMT��.\r.ֈm�Y�y�be~+n�\\T���:�,̎�bm��ף�]G�o��/�/,�66�UFF�}�D9#��7�����I�f#��f\f�S�\0�5W��A�����|�|.\'�q��9mJm�h$�t��y�k��s�I�)#�=QR�B����!��r�(�Q?-�+����T���={�~4�SFe��e�ZN�����o-�ҙ��۹�O|􈭶�כoY��\0H�l��\0�\0\\���u\nm�%hQQIQT��d;u�&\"ciuvW25b���c$Ќ<�N6��a)R\fȊ�B�\0T-å���v�;ǹ��p���m����eK-2����S5�����\'�_}*a�-��B��]]鞾u���m.;a�����u)(I�GB!�v�T�Q\v���\vQ\0�$��\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0\0\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t _�W+\\��H�%����H��j�ЋI�ȴz��\r�d�d����\'��i�Mm�g���\0�%�s(Sȉ� ]�8�\r\t��u$���/�=�_rwy\vxw�g��X�����^���M}P��Zs��ン��:kf吐�ڕN�e�����X�lq��7I]Ecj��\t`d͝fY@�BN��<)5�����mz��L��^w�٨���K��kވqI��u$^^Zw\rm�KNzO�k*���\f�\t:m�#\"Q�����A|y��սrb��f�\ng�Q��դ���L��O�[ǗzsCG\th�*e���pԣ;�I�7}�/>\rN�E]�&�G�5���\0�)j\\D9��I$�=�\v`��:��c�oI����T�֕*V�I�0޹+nͨ� D�g���\0�\0\'�>.�$\0\0�\0\0��;S(���Q���Ԫ{�#2�g�\t+���풴���>�N�\\�*K8��j���í&D��HȌ���\vz�[*E�e=%��o1;��\0\r��5hIj!A�mH�%B�D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0\0F~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3������}��R�B\"���f)�*�^Jv�U���y���U��y㤸�[�N�\"i�ͽ�-L�h⣭�\\��j��SL�t�\"R�R�==8�+u����߅�x�Z�9��3q)��l|Z*D����U�\0�&�!G?�~X��\\�©1���\'��a�����q�Җ��Sde��;?��H����q\rԿ�\'%��%-�bL�E�i:n�D)O�m�t_���L�?O���dO&��4\vj/3$�Q�u6�iM-4N�XY���2�MP�h�DFj�K�δ�&l�D�1�Ž�g)�.G�8HJ����χ������w揫���D�$Iq�rgr�W��-�ot��i�\0�>�j%�4�q�2?2Mz�&����&�eP���q��s��k1ݽo[�2�g���չ��>~��>+����x�N�������>~�����Ųrt�:�l��\"�*���go&#}�����a�0��3���?�����efın�f�򶮨�z-\'�;���k�����zk�z*_SH��&�8�m=1��A�J-\v���J(�DI�J��E�c\\�/;c��L4�[���)�䒡Frwӿs���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��3����\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+��[�T͎�*u�M�%�P�$���Rt�\v\\���U��=�|-m����6�.�d�>� Ͳ��*�J2=╤�S�]�\f��H�ۻ�N%:�sEv��NT����*_g�rHt���T+\n�_�Z��\0���MN���u�m=����ɴ>-�w\r\0ۚT�SrL��h�f{�\0O�ri1LsWy���<l�bf����ڸl�{M̠����u�IZ.%(�Q�Jk��c<�(��O�-gҦb\"�1���r��o�뭖v��FT�̙/{�e��i�%g���ӥ����~�LO��e\\*&֕�t�^a�2Ӡ�4��U�,�D­����ڳ��\0M�_m�T�vo<qJ\"�~���NJZ=��\0>h�;Vzb���V�c�P�Z֕�m��~��⽢���x��\0�zͯ1X�?�~��\f�ݲ١r)�{���c��m�oI\\�9����c���Z��L�bl�s�^�����C�SRtP�v�S$s�𖚼�m�ls���x�Mc���%}�R���?�j+F����^:�\'�{N>8��R�Ъ�����\fxT���Y������$�G ������n���y�xT���x�?�~��ZV�jm+R\reS#=B)X��7y^O���a�J���*[�i\t��ƒ��P���S���4iB.��/O����D�ݚLN��Y���\r(��\vBW��v5S��Jo!4_~�K�\0S\rh�lq�M��~�RQ�a:7{�O���-�ß��-���d��Ýk�-C9��ͺIE��%$J���}�X��;r����N�\"7����n�5���Vr-���B�Rj&�\t7\'B������P�ꡞ���4�r�����qY���6����}죕XL�dɷ����Sꄉj���RUsY��N�=ËĴ����>nփQ�[úG=y�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0\0\0\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\f�T���6Q��a��\\I�\n�=B��]���版�����L�����[�� �6X`l��*%�,�ĺzh�KD�u���I�Sz�MqLϿ�;<��O�?�\'��{,L\"Z���$�5+��LfI3U4QE��QϮ}O,�7�:�ǆ/����;6Q�g@������J���:���S�D�>[������b�c�[K��E������</�Py@����N\"OMjE��\0�uZ�i�]�#cf,4+-����|33��ֺ����i�i��`��\0Y�|�6�������h�撪yT�#�9o����\0�,g�_�\0o���m͑#5�ֲ�$�iZI>���/��h�1�ޚ�5��.�\0��zA�+~7�\0�P�j4������/�����\0L���7��D�af׌��!���9��-f5�l�����;sstx�\0l,��\0�a�O�\f�.o�k��l��GB�0fz)x=7��������C)mf�L(z(HMt��6=��+���;V�;�xB%*\n��C���4�\f��\0́7�O�+z|m�\0S��K��~d���o��mZԘv�{��\n�����z܈o�����c�YG,�����+AQ�l�^g�\tbb��|K^:^^rk\n�l��f�GYmJ܋R�Jѭ&��C�M���ѵ#$��y��f�$��W��h�T�f��V�c�³Ly��n�\t-�/�_�i�25$�e������rR:MSW^�w��>*2 ��4x���DC�I�������zEHK藷�6����1��ql���2�n��[��}�f5Q_����e�<�Y/~1/�J:���L�N�P�8�J�=>�������# >\t�s��N��3\"�u5/��6��Q���\0f��t����\'�?e��ع$l�\nS�k,�h5>뗌��GU�p�)��h���~Q�~+�ǂ7�w��\0��`3�j��9^l��:�֢I�Q��/�i����Rc�k���z�-��LyW�d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�%��&���KI�p�n�ȫu$G��!������k7����k�\nn��c��4k�C5��ZǹÓ,o���J�ѻ�l�z��Q(S�%�U3I�7�>�[7��ү�r��ȭ���!�%��ƃҵ���A��^���6��i�t��Y�a-�B��ndڔ~O+�Eu��:6˂\'kL*�I���m��$B��G��:�v��4�ӧж\f���@��)qWD�&�W��K^���oF���6�h%�)�S�4�3JQF�4\r/���^�4�fzL�Ҝ��\f̔����\0�B�$U�%�ۤ\'�k{ڹVD�J.�.cg��D��irq<;�0�\f�j���3�\vDN��fP�e����#�)�?\nH����{ZJ���M��M�\\��[�a����Y���f$s�$�\"5\v2�V�u/A�l^UI\v?�9��h�\n���H�\0��x�f{\'�\tz�yrS`���?�S�>���2E�����L��C\"N��_]��|2���P�u�TJ[h�y]��[SZ����*L�8��Il�\'�@��wY��!A��ٙ�Du=5&w[�v��k�CV��? WΞ@<Ȓ�t�Ph�|$�����i��FF���J/���-�w��ˆ�ck��e%VO��CI�C,�I�ShMԥF�A�Z��G]���9��s�v��{޴�r�S��\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0\0\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�Է�T���>��t ��yb+*bHŴjL��?\tE�E��^�o#�����oxp8����� f������بff�j7\t��\'�W�q�һ����3�Gվ:�y�\n��@=ѷ*��G��e�%|�(�^�!\fW\r\'x�f��z�;J\\�:�B)����7����Cz|��t�\0F(ͱ�$�Y��[r�/�Y/��Jz>`��U�\'���O���\t��G�}�%[�JLx��\rR2�C}����cI��ipm��-=�C�rǜ��+w\"Su����$�iCD�#�!�׬�2�5=|ڸh��I7b&�UtA�����l���z�-C�w\n������R�����(��W-�;~�\fZ��H�bc\r���A�R\'������9һ]hVo9d�h��#3?�\0\tPE|���=5��M�Ul捑-�<��]�Q����SN�Ս��-�c꺩B��_�#��ϧL�9��7�^�Bk�nv��4��M�m�H�d�4\t�����7���\'�\\�Mۡ�JIV�eZ�c�g�cw���.��:5j#[�Jf��w��L�I\rye/4<��k�$�\0A���-�=A���W�ǘ�?\f�a��\f����ڟ�mY������GIcb�-��:V����\tS��#ÿ�V��bc��h�$�BH�PIR���yIN���g]e�,�E[��W����3љ�,�sir�j�l�V�SD0ӊ���Ө��w�߈b�8�����=�wv�K��\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0\0���>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�=���~.�MW������8~n�?S9��������_G��z���3��\')��9Z��Wk��B_��\n�)M5�,�y4�椫�4��F�|�8�U��O�ad�J9����]Kd�&��p�GZ��;8���^i�w6���$J���F����x�B(g����G�����>m)���wb�ra��3\n�x&,�eG�Q�ԯi�O�U��%�����F�Y� ��dL�(�ͣN�e������M�NiX���3�G�9�h��R����I�O1׳��Pl����2a�:M+N��3]>Kt�MN*F��W�i�P�G%n*�HI�L��t9|����6���Pl�RF��2�Kx��(4�<�����E��D�ͅ�����\'Kz���kih�{l!L�WIkO��t��>��H�2�uU�\'\"�6�\f����q)�}�7�=��,��zV:��ż�_�SҒx�~�M����Ni�/\t\\,ٵD*1�73�J$�E\n����3l���\\R�MG��3H�F�hM�tтvﳐ�\fQ�R��V��Zf��b0��a�n&�ّR��CI�|�SM����V�ÇU)���brDCh�3=^�K�EV~)�$��I�\t<y�M2���O�u�f�ڴ�\\����Y4Wx�$�S&\r^8TMa�t�$�O�O�TI^�H�OvBؽo/~[\'D�ʿ�3���ȿQ68���T7��3N��|�Ybe���%�_❡�A�M!��RR̔D^��OI��\'jY���ǯ\v��sW-Ū�M��!aQ�,#߸D�ծ���׍�\\�=��+E�}�B�3���=��>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~�������>~�$\0\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+��/�\0:��P�\0d;F�+��n��V��g��\'�52O���GC#?=F%������ϒ0�ϓ���ܯ���FNbbI鄔A�ˤ����Uѿ�{<ZM=)���x캜���;��&�C��J2co\'�*Y\r���d�h��:i߼P�=4L�rD/�&���}�/�QV��A��\0\fZ��5U~\"(�$g��J%�W^�|�/>�E�L��ڌ�>O��Ox?�f҄޸�u�H�t:~&�z���m�����\0M�Q��>-\\���\nj�ɽ�a436���)���s�\0F4��\'��ж�7�~�d�v�%����\\��8�T���BR���3t�\0ь_=km�����f�I�w�w�{�Ǡ�o�Iy��uMY#/�\0�3�s�\0w��\0M~��F/����p�Qz�d�.���8��wF�\0u�c�ii��O��3�<��1��\0��r��e��gll5OIN*�������������m]%�:�g�vw�!����$+)����4����|l?��\'������Eɽ�_#�=��0�:{ȕD�?J�1]F��Y���[I�cմD�ڳ�sSMFP�u.���,��}�Z�=+I�\0n~��W���L����*.!oe6RL7O\f�^��z���ޙ��\0����_���p�~Z�[K8qG�\'��\'A��ic�9��<;Sn���qbd�l��x�K�\\J�JCL�%��*��yϣ��C]�����s����y�ң҃mĖ�:�b����zB�pj�6�e\\u�Rs+�SQ!IQ�_�~E��Z�7��1jv�-�bڈ&Jm�5�S|���M*E�Ak�~���M��z�&*�R�������B>����f�7\r��g�Ijg��/\\CYQR\v����w�W�pʛ�87�\0��Q�jw����ܸO_z_��`�E�P�-�!T�xާ��\t�e�Rw��\0ϒ<�u���繥���ɬ�$��̭D��&ҳmE���R����u�-���\'}�ʴk��k5ݚ��u�d�ڄ^N&K�_��,݄Ķ��C�l�2�z�-i��9�q�&~��\0*ڌ�/X����>���,Z�MlTĉR�m�u)�%����S����5���gu����z6D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0\0\0\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\�>Ox��\'T�:�\0d�H���v���ND���iMH�L�3����=@S���~�yaE�jL�l�Nx�C��Ҫ4Ծ~C��=g��g����т����Ӆ�8H,98���\vm��f���&�o7�&8���H�cA{ME��a�c�BY�t�3��jD(���sD�+X>�_�1���T!eVq�HL���S}WH��Dt3=��\v���lQ=���Jqa�Y�i�F_l��%p���p��M\rf&����vA����H���{@Kᒦ�3c�q4\"A����_!<pY��*�ǧο�*-Vy��`߅Jd�&��%娌\'�L����q��~��xG^��i���CQ2�>�4��?�H�W�����*������tW���e���3<2��x�W&ioݘ��(�0���6�6gM�Q�\0A�p��f[G��Nz2����{=45��e>#��2Ѥ����t�\r���\vQ���ZD�lک�J��$ff�J\'��E_?~���o�8��̡�)��X�*&�����W���8��,��1���h�jj3D��-�����\"Ym*q�+���i���)��J���G����CT+.�\tTg�KK_��]23�_����������\f�ճ��z�iч�\n�?\f�$\0i�T4Կ@�yL�.-�GH���4��i�4\tq��h��f�Y�1��)\\�*V���X4*�0�#M��Ο�z��ڔ��/�G/<|]�9�$Zu\0j���ȿ_;�@X\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�=1?������k@\0|��Ae$�Y��};f�_BRj��g�V��?g����o/���x���;L�<s��t�\tm�V��t��G��h�:�Zx���Օ�)��\v\rLf�RY(�\f��^��qN�+���fo3�>��6����Ae,�����\n\'Vᲄ��j�~-t�=$<��|M�^{����|t��a�rM/?eۅ�N��DKz�Q��mn�32�][u�F��.C3���/8\v2��.���S���x��\fZg��|���j&6���&��D�\f4�l�+��^8sv�:y��B��3>ϛl\\7Q�o�ɤbKM�,C�\"RL��74��\0,E:�|[�\r�ܧ/�����g0�x�R�/��N���񢿜�%���W�9h\\tʪ��e��x�b6�b�6f��l�\taI��d�Nk:x����)_�ͣnWN�);�5��\t�R��RT�*%�G�����Z�\r�u�TL��tߺ��!�����GJ�xMm���В#��\"ӨC32���\tF<�(��G��FV�t���{�J\0�������*t�A��J�:j[,����ԡ�V��@<�U�ewP\rM]4���u�\f�E��#+y18H�z��5W�m��n8D�2��Ѥ�bv�����A\n���9y-��2�����G�.�rNLT�P�b�9oXl�U��2�KBL�\0�b��ѓqN$�&�+�I��R���T��#�ڌ��L:��J�FG�x\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\0\0\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0����LR��#N�%�&v�ਝ-7�\0�N���K��/m�\r;��J�<<�2�3Zb\"c���\"�*P��և�Z\v��\r��S4���/���Z!��i/�L���Rfdg.CgB2*�E�z+�ڻ��p��ghw��Y�R(x�cm\"�tR�f5l�~T���\0!Fk[�<���°�2��1���i�r��qq�xȋ}RzEK�L|V�9�����й����f��%���2�M��fzY�^�׿�BC\t5��Ja�S/�Ki������}�rr�{H�3�7�\v�\f\\jư�e�-��4��[�(��y*y�#|����S�=����(�3L��Nۈ8�!�6�t�A>u#�\0�Ch�=wOO�%��v��5��#�t�3�(�c��b�$N�=���?oɮ�r����ki���]fI�?��ZM��_]�:�z�^�O�R������#�B��2��ε3F�&v����7�p���F=�G4HԖ�I�h��#ɥ�;&ï�H��K�sXVP���^Iz>OrK��p����ɒ-�����6H�k�gͧ+o#ER�=_?t��F�$���n|���fn�0�U�&���z�/���%5�N՗\nՕ���m��~�$�#��y�9&.��Z��BD1ϋ�\\ML��u�Z�fcn�D��em�~&U��esHf��hF&NB�喋�4�>t16(�������������̵{h��y(�H&��`�����A���E��aݮ�I}�6r�4o���l�̭4��CZ\ve\0�<�!N�7uF���gB���}lR�91�H_�sZ���?ٽl�0̤��#1Mq��eR2����\t�%���\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\0#?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��zNKv ��fdM����x���&�D�:�ԩ��\05\f���J[�|�z�}7\0��ͳ�\0�\'�\0����Wk%6)��hM�\'OI�X�f����;E:��}���\\WW1�7�*�%�d�g��$��I9��d��.8�%5RȈ���.\\٧4��eq�Xla���(U�9LIJ���STм�@�&\\���p���s%��E���L�R�\f:��JA6_*����U��&yb\'wB�\\q�g���\0��l���u�Aj:�3��f+��jOљ�������L��_�r�&t�֒LSFE����-L��?Ib���l��8�~�t��b\"дᑙU��dfZʤ5��=��R�|�y�W���J��Kp3u<�����6�=Du٬�pv�Qm��H c��ruo��a7�fdT:P�\0��������X�����C�R�+B�Rt3L�g���\r}\v<���=\'\r|�D�=��S3b��jt�\0���I�n5�Y\tc���{Z#�+kq~\n����{OX\";�A��N�\\bQO���3>���F����O��=������A��\tFd~4�S^�H�S3�C��8�M��΁�L��/7>��<��10i��\0�(1�K��m]����Gy����VU�yn�s$�DTԒI��Qi����.��0�\v�9�D���](-?P�:�t��)���X��g!�q��_��ߪJOQ�:�W�œUX�M�=�\t\\�O)W�͘G0U#2C��5��6N����㘚�o�_vu�5�&���~���(K�����3�sV��DG����o\f�&Q.�/��ĩ-�(�Ei���kju�k�����3;�����a,T2Q\"�/�*Eҡ�4�e���!.Y���⭩�]W0nMk�����:��[~)�\'�B���FnT���c��4�-��_\'#Q��.�����F�O%M�u���Ld:V��E^y*��T�����J�-��ti��8�}�\f��\r��YH��Ĵ��Qp���U�U(B�t�H����7]��.M����5��v�$��PeB4Խ����?p|��3�����G�����W�pFa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0g���\t\0\0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�8��\0̟�\0\f\\\0���!�0�\\�[ہ��˗�Mf�is5d�EB�r���!�+�I9?�7��j���,��B&�}�y�k�ϰ�ۆ5��\"Ӭ��R�)�y}V�s[�����A�-�xp\'�� �̞�̡f��D�?ŕ]e�u�x�j�КtX��6%V�Y��\v/�6Rt�]��yFfu33��R_Q���ꖸ)J�Dtsa�3��wR�V*^�%��J�����f��\'O�Ѵ�q6R��\\ipR6��&�l���2۽����X�\"��$�&KzY\f����^cZ��N������>�X�UسЈQt$����|��<\f~��=g�Pn<�<�\n*�Fzk�5�l�=�f�1��#e֥����?�\0)?�i���i�$$6�$��J2B[JL�o�ڳ3;L����:�����tɣ��,-ş�q\tI�餫��e�\'-eʷ�{�+�E��\r3wƘYx�^kj��j�׵���L�a�$�M�v\"%6V��I�Zu{���=��4���=��m�����V\r�Ɲh�GXJ̐�5#=>E�̄��e����ņ��vU�{`ٟ3+�X�ygv�\\:\'Q��1bpj&��n�џK���Z�CF�.�D@��\02Zz��X�d�H��\'E���1��(L\r��_�jI�z$k�7��3�8��\\��Tu�)J%]�������7��c(�Cͻf��3B\tnL�����|[���I�ra%2�S�n]�������5��~��i���j�\'3Dd4�(�mռ���]M4:��Yy��������\'5cԄ9�O��]\t#��\r)�,�h�5�6�4�(�����,fɎf�=�xT�E&;:�.R���y�u��N\t/4��/��B?���:ki�G��%��b��|�g?��/��M�4!MĪbM�ٹx�� �y���h=��N���o��,*�\0��:տqD<��\0\0���hv��R��\0�\v�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0\0\0\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\g��e��f\0\0S��i���w�\n�����i�����\r���b�ah�eZ��\0�&=�������y���&�8vң�ԑG�����=��\\�JC��4�ߔ���?�Ҷ�A�����K�4�\f����dR��\v���ּ���?����C�=�@*��o��u���x�E�Î�@�oED6�\v�-�R_s�����Gv�e~���E-be�����ô����2M�ѸżZ�6����3\nyu�q��}�.�����������>��-m҄���̌�㽏�������y��Ϩ�6�:��gj�gl�Pݦl�\']�+E\vF������g��S>:m�z��W�Q?�6��R��E�Y����M�]���=7����}ě���|�����$�;�v�il���e��Q�\f�(ӆ�M#�����TzX[\f�*-�$����\0��h��������#��_:��.���ۃ��C�P�Bh4���驤�f9Z��k����i�%iˑ�L\\1��F�|����:���Q\tm�%t�j������yjDI2���M@3��\0S�*����lW�|O\t��ZN�u�D:�#-�����q�5�>\'���%�=\0�g4\\�����&t:�i�^~d.}��2R\"|��?����Zf:n�]�\\a�}��2w�8�,�b�Q�4e�d��U�XR�V�@(Y�Z�u���dE��Ѐ\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g������q��:+��YP�Z�Pf����<��D���{E�&�ޅ6b!�򨃻�G_�������m�m�?�᜼F�!�}���ȝ�q�=����W�QT��*_���7�K���J�6L�b9//L��D�g�V��#2�M9��Fm�Ͽ�SU�m����h<�͉���m�H3%0�Zꑬ��G�oJ�>oC�d��EN�gJ�p�\0�F����Ϥ���\tʵ�RII����K����\0�1��=ǤS��\',V\rFDS�3Ѧ\t��\0����Ϥc���ʕ��kn\"%�+��i�ݠںL��\0�;�1�=�\0$ؼ��髈j�L����-5���\r��o�#�}\"v�y��A;�T�>1�u�̛J�S�H���t�1zմn��U�,�m[L}?wWc�H����RN���K�C3:����֍�\fi�OK�V�>����ڹT4B�j[v�:��\"2��[ѭ1���YH��Y�?\'V��y\"G�����5]G���CŦ��_��qZ�\0���E6��m~khc\"���J\t��4�������6�X�;�?v�o:���?.�+�:��ų&e�حչU�2�SӬ�~����%<i1E���ʴ,�_/~�JJ�M�I��M�n�+Z���*�Dfz~cV�*�&}���@\0\rp\0\fո�T�ZPH��:���-H�O���d����x=\'\r���ɵ�r�ʢ�Kiqإ<d�i�)\"�B���U��+���K�io��lw����6�]R҃#6Ά^c��5���Ũ��:�I��A�#Q��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0\0\0\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0~)$�4��FG�T���g�̿@���X��\\�)�����{�����Ƴ�\0���@>(��v�cj�P\f�jm��W��J4���jՠ����k|S�;��k�c�挶��u/�-��Z\f�&���\'0�2�j�B�$���|�S�S�7�E�S��ƚ�������F���\0٩k�iF�$K��FeJ�i�7k��=&~�����A���������G�F�n�d闔ё,�M�����x��y����~�w����<�OG�������iL�@��Ad�(Y���P��2N��I�\0���\'�A�\0�0G�\0��ߵ��pvZ �^�#�Jn��W�b~�e�3i1��r�Ƕ���)��$DU����j�\0�#�O�jG�\0��О׭F�M�罾0�r�-�v��>���JO�\0���A�\'�4Y��a��ѽS�����o�\"+���,�ޭ:<\\���蕔<M�G����1�6���V\'���>�CYD�/>���Z\f��F��ZG�f>�Z��YO��-݃Bhw�����Ȫz�#���3ǲ�t�ra���y�LI$̈������w`�$S�u31�Q��]Ů/�$�T��i1M��>%���}܄Mf%�I�ݡݡSW�u~��T�6^��﷭^�z��)�8�%t�)fg��U�,t����g˖7���鶄v1z\"XB4TW�B+Ec����}�r��\'�>.�$\0\0�\0\0�|��Nep-F�#�҇\f�]�t��ë�pc�L�$8�_U�I�9�w\'nZ��4E�}NF�SY�S��\0[�*k#e���E9m�-���9\n�p��]�\v��*��w��C���j0����(Kdz�ZLv�Ba�_�t(\0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0\0���>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������ɜ��I\\��_J�g}�W�,�Ȏ����g�����9�SQ^[��Yl򍐜��\tO�z���i׿�ft��:��k:oL�\\��u�SO3�����B%)r\'�yFk4֧x��jZ�=\'���y����6}(�4�䶋�y7��W�OX�K%-�F��DV�J�R�M\r)QUZ5�6���;S���LO��Zi�U��Z�(��t�h[J�R�H֒h*h^��15�3���m\"/�^5�I+��q�rfg�Y,��NP���\07�C4���Z�`f1�:Kp�H-\n2:��\"�]j>(�V�pʔO�z6�KO�eh8ؓ&�(R�:(G��h��b��E�Gb�O5p����y|��E�ᬒ��Z��-���j�]_��j-]��iu���5�#xTb!*+��Ѣ�y4�*�\"��V����\\��I��O���ѫW�Q�r����y*g������������_M������x�N�������>~�8s\td=�������*�JM�\0�Yy�M�=���=��lz��$o��ݝCH&ۊ���\"$w���S�m�Y����\f�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~�����@\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0|Ŗ_g��[��Zy��eI32�y\r��MN���f����!�\r|8��ϋ��4x�oϫ�y�F��8vI��\0nfdNh7bRh=ߖ�Z7�ݳ[z׏���Ƕ_eٖS���7\0�t���d�멪��h�J���Zy�S��F�ɲ�h-�w��\r$~F���*��͖dɚ)�M�V�iMGU���\0AF����_$��\fzKDr�>�d� �b+�=�̝�ڷ\"�i�CO.\r�D�d�5�#�!�����գEKY�c�ny�����Яߖ7z!�]��j�-�(wTFFY����^���1Dm?ϓI᷵��!2e��\"/&���P�nI�h�\0�O�i[_�n�?ϓz��߬C�*�W��A�?��`��z�6R,�u�*g{��_I�3��\0I��{�����.���Z�{wu]�Q?�\0�5��s޳��\0L�{���s!���%$Yy�-k6���_X�M����\0Lz�L}�ɟ����s-h�6d�C���x����f5�g�f>���;L}�L�+�sH��òxW]�\f3M��+���i?��a��Y�Q��6�ՇlYVj�C�$��M+�s�^/nj�Xq�:r�P��K��CJ�d�n$�ҊjUL�u5n�A�sMchi}5rN����ڄE�g�h��2�]��6�\f�O�fP/Ԓ�3�}�{!�a�ÌI&�V�8�\\O�]I��H�^q?_�l��p�әp�>�L��NY3G��gaJ�t�����bO���M���4���1���&O3��\'fҿ�?Z^2]�B�T��� �DOI�5ff:���Pו�[i�*θd�:��ř���/ �h��\"l��o�C�sG��n�v��Y�^$�l=�}���F�Y��D���:X�p̑��\'��s�g�8��\"c���e��\'�̜�`N�Vdk��yI4�L�W��7�坩}�\09�����:�q���˵����3���~�C\n��N�\fD*��hQ.�IFfGR_���s8����JN�.�\n�γ����(亀\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\0\0\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�~(̒fES\"�@?��z����z�;.�j5�����iim(���G��=���1��x�vi�i��ᄎ�������qQNI\fA�DT�3/���>��>���rm���_\'?��L�9pQ�xU(��B�Y���4���kô�=��3���Y�j�Oٷ/�I9��2��~�ۂ��;�?���ζ\'m���;]�\\�0��0�%��� ��D�����N����o^5����9��G���[����\0FdFz\v��g��)mS�mu�������8e�@��C#eE�����㵿XX���Oz��¤��ڔ6dM��gE�]Ouh1:m,v����f�gy��%���-K�\vm(�J�WV�$��^�=�/1O6-5/�]>}m���_���|�����zjjQ�ʠ�z���fV��U��7�|RQw�ċ���w_�M1yL����:����!��F~+fU�dz�Ch���4�����&G���z�[�\0��n�T�m�j�N���i��KJ�ff<�ѫuyч�\n�0^��%5L��qs��xL2�$�N�7\f�$�^�#��Y�[�x�U�j}��X��εN�<⬴��j�R�uEt^Re]_�v���:o�>�5���:c���f��S��&r�JZA�tW�_r���Q���!sO��c�[�����˂y�c��G�1���]�����\v�rF�j�\\U���b��JR����������No�߫���^��\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0����NAڸ�3�R�}j�y�\f��ZL���C�s噚o����)H��:��-,�R��\rfd�m�#n���Lzi��y��-vJ�����bU�r�!��}&ܚ\f̾�؎�7�+�&��Be�)g��:i�T��ܦ\r*I�h*�u�������>�o?��m]��O�������Fv�8�$I��e҃i�Xc���,G���o*9Of�Ŵ�*��\0�DFg��1+4sDI<V���;9\fZL�MT�a��Y,��e��u}ߣ�^X��/�53�ͧ�H�Z|�B��zh��*�រ���~�7�\r���>��o�ў�Z���%MNm2ܭTm���O\r��\0D>m���O��?�\v��.��8�GlQ���9O��5��K�O��$k�o��8��k+���yE�M��G��X���.��m�]��۟��P�e�,\fK�L���U��[��5�޻�F��p�%��#��uژ����ʽ�2�D���9���N�ì�����F�&�����Z�D���-?�e���DY@�m)�O�C�����f:S��?�$qmlN�~����9�I�)����^\vF���*&�~��Ӂ����7��\\�kW_fߤ?��%���BqQ�q�٫Ƅ��y�T\"����K\r0f�R6z~�.�_,�.|��-���YI �ɏ�8eD$�5��B:nl~-�&�j�<����6�Z��Sye�e.�̢[[�hD�ʕR�MV�0���hI|т6���Z��N��\\��B��i�Z��2#���:�]&ެ��p��G>Z��B��P6�����X�X�O�a�~\nl�$��\"4��V��<?�iqt��+�β|,�e��7��m��)$=L�W%�{��:�rk��;����۾\nZ6�m�˖�%�:��x9�D��C�T�p�l��U���l�u{lլ_w���d�+Zq��mO�M��L\f}�&[f�r[�r5[�M�\f�$H=$_�ҏ�I��gC��w�>��X�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\0\0\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@�)(*��33ى��Yu�V�D��D�\t�oAKYS�6ʫuJ��w~M嬇��Ƀy��/3��c��r���mVE�ʹ�+G*j[�R^�:�H�FdDEx����ǩ�X��}�7h�v�\v�f�G���P٨�����BN�>�r��>˰�����0��ZN�\t��-4\n�8�\nO2x��2��;C�g��.G4�Ʋ+ͭ&FE��/?���Hu0}��;[$�|�fr�\v0�\n�K�YUOC�u2����8�x��/{�~N�.��ג&~=�Z՗��2Hȵ]�ASЅi�g�����ƇM�����!e�l�vvZk]��8F�z��3�Dt���X�\r/���!=vB�Q�4K�Xt@��G���O@��\0ۯ�x�;d�+�iY��?�*}�#W���d���~���#�mZ��Q�*Q����6��kI�:,�R23�Up�5�m�L��faW6�G��Z�\"}���,o�\\�c8zuhY����W\0��I�UZ4��I��q��\"+^�?<6OZm����g�E�eM��C��$� ��?c4�S6n����c��ӳ܂�ڟ����y�f�Ro�U\"Ѽ����Lz�ۭ�e\v�W�y\"#&v����q�#RQx���w�&�H�KE�:���w���\t�$v���?\n�2X�D-եjM�I�)I�D~�<����ω�cw��j�c�7guEZn�|��Y\vN�,ݶɘ��% �YQ�����F[�Y�?G�iq�2�y]���5�\"��͕��lN&�KO(�i��\n����ʯ0jM�(�Ȋ���z�(c�8�����Y1Fh�����d0�F\r���FG�ȩQg�S��~���X�,빞J������UL�t�x�E��B�TI��5k󠷗�WQ_bz�i�=���7����8��d���R��/&�5����sk�W��9kL|���r�od�G�f�Ӷ�h��hz6��*֔Q��^^C���.[S�4���x�~�\fe���n��Q���}-�\f��lZ�:Q�K#R.ք��Q���A�.�qW�*�Me�f����==���hI��-�q�����lv�ۻ�c�d�5TF���\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\03���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��u�SgҩD�._i�ۜ�٩����h�}��3�>�����g���z�u��m�<�yD�u��`�L�0�㊿��5~c=\n�B��G��y�x��9$�S�\vR���Q�\'����ϖ��\"w�I��U9��-�Ȉ�Ξ��K\"\"?3��+e�`߬�\\ǥ�1�פ��CڹzS\f���R��n]��3�B��7��*j4߇u�)c�e*�(����:��R�#Vz:4�i�sD��9q���u�DB�i���_�^�����ݜ�g\ry�ݛFZlñ\t�e����HM)E�BxVX��a̎5�gnYjs�@�.��/%MU��9��,������g-NK�#��=��JL�p���O�dJ*��^��,R6�i|si�y�]F�\"�g-�E��G7B�tڋtփ�GS#Q��.S�ڞ�b����i���c��DA�*a2�b\f��D49�멑��:�����0�<.���ϲ���gd����0î���呺�*i*�-z+��#��bty&9v��{?H�\f��f�0��*�������5�=�,O�Y��e������t�ߡ��ʔ��#3���\\�m/�����ɦ�o��6�|#dS}\v/�,�DziC��,�S���?Ϛ��Z����\0L\\��e> жl���%��a�:�SQ�#P�]N�#۟��*����m��m�����\"`����&45)��\0Z���s�4�]������������2�\\d+pLÿ.&�%�P�g�M���c�3�n�Y�͆#���$B\n��\"�Ҏ������:W��ȴT�^�o��ع�0�\\<d�3jRʤzRI-:7�X�WD��Rϊ��w�����\f��R�#�v�v�)0��������a�s�޴C����$m^�\0GCZ/b�a/i��Z�F�bjR�a��+�c5�Jq�Z\'hS�jMy���%���3��塃�?)|�a�e�I0��i������p8�8��s;�+?=g���DeR���9��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3���?p|��H\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a���8e#4�m�Km�8Ip�f�������=_\r�SM�\\^���b�-#��l�J�Q�5yu\'ftآg��7\f�7P�������&l�1�K�i0Egy�y;���Jt�ݡz����-S�^�=`=�2 ?\t)-��bC�a��\0\f�\0\n�f���5)$��L�t2��C1;N�Lo(K%��4@Ͷ�CY����Χ������斸��*�ÒeR2�4n�:Fz�T�U\vG�g\'>=��Q�1f�߻��Q\vQ�ѼG��km)��:��/<���]�٫��Қ�w��f������z�C��f����)���&Z���i�s]7�H��p�����3�6�<�L����ۇmGSJ\vYҕ�^ם�.�)ZFՆVb�� \"�K�mDٙT�T�ۚ7-��̆GamĞ̸մ�\0}���2mEᶣUI��H���c���8|6sW����-[iZml�k\f���TKHQĻC���=��O�n!���ۺ�!Б�9_�%�\n)*Z�J��h��_�r�G�?�F�#n��e\v���Ǔ{F\\���@\0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0\0\0\0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@Tu\tq����T�#/�GF\'��W2���+7�T[�6�i�Ѭ���U#�hf��E��}Ģ��������x��^A&��{�u#]\\�k����rd���焒N�W�p���TF��F�h�.Ѿ̂:h�֔C4���I�#�$ǎ/�vi��NѻKgm*g��#`�Kd�&!����U~C���R��Kb4��\0�))zW1�M��E>�c�q�4�m&��_#�=bI�<Ebr�L�e���i�*�F>�U�iJ�Mz\vN��-��6���S6�1t�fg���m$�s�9\"���S~\'��]��:��/!�l�-����/�z�b>.��\0�!�0�\\\0Ah%��Q���ڼ�Ť�#�ZH�in[n�%9�5u���Ξ�3+�D�M�Ւ[5оf_q鴺�6��h���h55���2�d�w\fɷ0i֛I(�8��Zw���y0����[��ϊ&2���C��̦.����DJ�m�n�wFu35P�Qj�&�V\"&PE�31^3w�X��$��~�8p�|%i��%Wq��K�c-��t:��-�\'�V6K�+5m�O�&C)�$������\f���J��yꮢkp��/����OŚ�uM���3<����q�I�y\n�[�VU2�UѬY⼔��bz��y�����C��}�����*�l�N�KW�at�\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0u~Xl��1�u��1���x+K�w�V�22�_t�g�jf�8���\\gI\\������ܬ�,t�0�fi.9ڌ���MD�yP���������>�tr4��G��.���#�6~���;u!#q��\vl�4��4Q�F^�C?v���m�j8�l���r�>�����z.��)���k/\ne�����OAԼ�\0Qg�X޵��Cn�2�d���+6Q\f�ڸ���0��hԣ2\"*���B�Dyx>�&��ޜG=v��_AX����I��کr��$��Z5�V���������~�V#��>���������l��q�Q�[Y)5�3�O-�N��=k���8���\0�����\"�X外�K.2QT���B��r�O{#n�œ�?q�+D߃\n�)�4ˎ��Ww��U1c�fے��[/�b�[����//S�D�rsaN*̉���I�9�I\"�,�^����\t�慨����j8�)m��xq�{GZ�{߁�2��:�,0ۉI��m����F�C�bgyW��Y�x��ElrA�r�9�Wzf�3Q�Ӊo�O���Cp��5U��_�L��K��*6Y���]��V~d��\0���V_��^�\v��h�u�X�kq-dw��2�e3�^���mk�T5�hɻ]�B#ݣ�s�\r�kz����j�x��,���R�7n�i2�Jt,؇3?���w�}�+�7���W��sV�1����ڋ%��F�K�i�&&ʟ��#!����T��\")�N�_Mh�go���9cɜ�d�}��R��D�Sox�H��C��ޫ8��|�奺�m쑑ܴN+u���\0B-\"�y��M9��7�yN�K�¸��U�*�7\r&6�\'x�b�p����4B�Z���m�n�[}�^�D�*o�æ:R�y+[�R���]$Z\t�Kȷ�=,iz͢\\}m�Q1�g�9�f��ΰ���J�%�]L��ߢ��Qώ)n��-6I�H�w�f��i��l��0��#B�c\n�i�����w�����\\Ѽt�U�jm�ܶ���*R�&���;g�f��Q1$�n�RSjmJ5jV�3�Z���3d����/\'��b�^|>�`{�ak\'֊oIA�%�НS\"+�_����<ұ1�#�v�>Z��s�>�i�ڵ��KXZVh=Z<�N��C��{�\t \05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0\0\0\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t�H�ʞS�rjvj\0�C-8iuI�jYh-Zi��a�x^�+_�}�W��\v^|\f~S�*�����\'�1�H���Ų�~�zK�:9f�������P�/�1���DIH�L�&��yP�뢦(�S��K�L4���q�{+i��K&�LĶ�\tǛ\'I*P������Q�˂�=?\fǨ�<�_ʧ�L�?�/Y(�f���ۄdUѤ�G�������W�,us5:L�K�Rw�P����\f�ҡ�]#L�ZGWQ��:(�����a��Rv�?\'�.���@:�<�\'i��;���0���*3:��O6n���o�f}Y��ǖ�k�zC.�RD��D2��$�_N�wKm�Ĵ���J!�LD��x�B�må�K=�\vA��B�N�$�����S�sr��qJ�!��;G�m����\"�T2�i�Y�)�٫<���lx����jY4~VȒT�EAZԝ�����g�ݸd|�3��gkn��K;\"��C���q��hiy��G܅�>[��i�ճ��ggN����56T�%6�&B�J�Y�(�\0詤�hH�Ϊ�+�h�?W>1޶ڝ��ձ�l��m��������)k*����;�5�i��6,�]�\0���O˂9rR\'o繌��E���J� ���m\\Z+O$�Ȩ7��4v�ѷ��\'�;+;������L[_�T��p�RgR��U3!^��2u��&>+�������J��&Ma�.\'�i\n^��n�W�6��Wl��l�R\"��o|Co+�4�!�DL����+R�P�$_:\n��^.��Vp���7��M�L�P�D�·��u!�3S��5�\'�����E���n�K�UP��M�\0��,�{�ECƻ3���̤eRI��ֹĲ-�Y��\fK�BLҳ%~e$��~bƗG�[�OXW��1覵�t�<��a�՞�J`��0#z��MۥRR�S#���~{���\'�:GtB��mI���f��[��0�D�YZ�o�u�*�KJ4�F��E^=����g�ܺ��^h���W�w��̘�7\'r���*ODE�����U=�n�!�����n�\tx]\'�+>�}r<�ֵ�=kEt�Xӳ4~���U-ڀNפ�\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\0\t������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����8�.[�U�[ekm75��̼�k�D�n�/���Qӛt��b�[�q$�CU�kV�2/־��:lu����8��m���Yv����#�hB���U�m˹�~}��\nm���32Q�s-_7N��j�\rs%\fn]$�FZ+�G�9�z��A�2o^G*k!��S��]3\"-%Ji����f��mn�y�:�>� ���f:�i����#�����JjM�=�\")^DJ3$��j^�c]�gy���$.�f6�n�m���5;Vʵ-�r�C3���M.$���2l�RH�S%Tckn�f���$&�M_!69��{�L%C$��MQT2��E�N�;*V��8v�JE뮙�-g��k��(�q���DL��um��\'��g��B1ҊE����1=^1v��\r�r��t�Mz�+�n�,����vM�A��7n�����\"yߓ�/=ݗcd(�m������DWSS\"-z�/Y��9���hpNk�<�]�\tf��n���l�DH������i�}8�H�|����rw$tO����Y9C���.h��):��Օ<�����o��㝨���F�l�ĉ�w�C_�����5�eJ|���jx�o���e�pR>\r�4�28�\0�ל���^!��R�Ђ��\"���w���>+��\0������LY�����b)�OA�(̓�Vפ�Lz=g�\0ʟ�-\fm�#��9����<�ԙ������>~�<����|޽_M�<$��,����_�iH�ʥ����?s���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3���?p|��H\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0JP�4���3�B߬1�G\"�#25�ڒ��*��gi�kh޳��&��[�4�D����ZQ��DZ~�!�4y&�X��;�ӗUj�{ۋ�\n�O�\"�J������X���FO�I���k�9׶�t�u��Ϥ�D,��3\"�9ڙޮ��&�!�|�Å�\0)�\0!͎�ݻK��!IMEO/��������sȆ�dfF�����X��k�54ּ��rYޔ����^ڙ�+���{���L<g���\0r��o������\fS��;1\0gS�zUϻ�?J�@\'IT=*�������i��$�Y�oM]�w�<�:��ԝ��Q��w?�ݨ�N!I��e\v���t��c����u)F�2QҴ#�ǖ�×}&l9l�Z��[/V�BRD��Դ���#�ҡ��;İk�Tb�[m�J�\f�fC�������TT\t%�&�y&�ԏW��T#k�Yh\vQH�&���i?D�҆g��\t�M���)��yw�G�-E�T�6�&�:��T��jw�S���z/������w���l\0���QPN��l�Ų˱�Q�Ot�J*�k��v8M�&��q��)�4���DʥS��M�o¥P�\r��JR�#/Ԍ�UÞ�f�۪ƧM��&z;�C4#��Y�q(I�����/�^o�]ŏ���>c�ܽ�kԸ�W�f�To+II���\0)O���*8��oG��1�O���yW�d@\0W��z���y�*���p\f��$\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0\0\0\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@x:�ZMOI�����d�q�u?w��/tȷ\0�o,�1p6�6�g�d����?v陙��A�xN��0xq��kI|Z��w���٘Ժ�$I�T;�24��\n��MqD͒h�s��E~r��m��GK$��L\"\"&���M�\'Bj�#R֔�P��L�dT��L��oy��ULx��R���������L�%�L��v������HQ����<V��_o���|��\0�M�y\f�s\0��Agܖ���KA8N�=D���eǎ���m�&KW�Z�/l��Y�Ӫ���d�P�Z�Mǒ�:��QDU��Խ;���~�$DEB*�\'d�夐Y�_��\t���\0��y-���2��|ӵ#tYs����6+�&Y9L��27n\\#�C���W�gM�:r��Hϊc~h���Ol��=����1�6L�0O!����c�S��üD��ߟF\'%9�b~�Z\nfJ�Z����U���~ Ԅ���_�����.Tt�S3�\0�@��iѣ�7�k��eL��q�,vN��J&�z�*[�����������M�:Wiu��$���f)�\r\nѤ��ݨ_��/I�]����r���i��;�~͈R�v\nh��⯙����b�}��:��ٞ�E�����Y����!u���H̖G��FZu�����S��e���h2x����̛�J�/SM5Tq���Kf�Xi�Bq$eQ������ǔCFC@���n7RI2�$%>DDfg��6����k�&+�93EN�g�k��B�R�͒��h�!.���c��Y��x=�2�=ͭ���)��4�\"Pp����HMˎN��}�yI��hf����<�\v��2&���كɽc\"\0��h��p���$&ߝ@ �;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0R�m5?�o�e�:��=@8S�E�\07@@unZ��P��ZV\"��bwb[��hR)��ʷ��_1��Ym<8�q��_=��d�^m�#(v�H��9$����҅E*�[�s/�O��������0��ʼRۇ�X���Z�L�\fWkB=$�2�F���5�K~!l�ן��9�̓ڹ����Iݚ��\"�&5\ne��D���2լ̵�2鯎�ұ?(O�<�bf�?4�go}�}�`�j��_�,�6umO�\f���UL�eqj2Q�y��M��t�r���WS���N��X���d�p���E\'TZ\t��L+����\0�JU���\'\n�^��u�k+=/����7���BNQ�F\rf���QM��_��!B�;QO����[�|�(��d�}M�O��쨪H}�p��\"/5\'�L7��o�gv����J$iT=�>�KM�H��K�����O��/�]�d˥���gO�om;\t#�.Q�k\rhbI��(D���WB�6�ȫ���^��59c|���N-��;UԶ�ڧ��z��flD�J¿�s�[�I�S�Rk��:8�+;���ߏRw�OWT�<��b�ĲV���K\n:�\n$DfZ�\r��y�^��0c�eW/�Z�����d�-���MC�y�H#�m\"c����JT�RK�Y��&^����{�c�筷�wܒ��XJ!S3���d���h�3�e�����Dc��C����]?��v����=�m��D5���SK�D�i-�ާ�����b��,�b�d���v\v9[�4��8��K�e�)P�q)��J#gI}�,WUI���*6z�\0�喁.�t[�DDt=+I�pd�xK��H���Zy7�q\vN���&;����>��teGu&�j*�u\'�%h!-�d͡��0�PdF�6ZB�Ҧ���ε?#�!v��Z�h�.}�e�瓴;\"A>��B�О1�iu� ���-?a[&9�=W1䌑њ��٫��Y����2$>�:�eE�_\r*Q�V���m?�z���WW��^ggN��lK\t*����\\D3j���J_r�\t&��L���t)������_}�}~��d�]���Tf1��HHtC�P�0�SB\"Z��I���Mb��ƏG��ީ���N�\')�}f<��5�\0$O�|]\0H\0�JI5�� \'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0\0\0\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0���R�jz��x\r3M)�x���\'V�&}���3�%���̐�Q��3����ѻ�ܽ��Kh��j�r6Rj�9��S�(gMz/k׃�k��=��x�+�m��%7�����(�T�%�uk#l�A]/��{=��ھNlDDuh�_��44��ʤU�,GF�ͿYA�96���9ܲ#��N�e}?2=z+y�XK�|�g+o\t.~_d���JL�2�F;�~b���7���O4DD���N��\f]��PV}�H[Sa]9��-��f�mDD_���v�W��|�ɞf����;���d\rn��\\�F�G�R$��~�Q��ʎ�\"o�ga�ګ7�lvL�����m�f~FjZ�iݨGI�[��o��N�,բ��V�>\r��3+h��46�-%|Ȓg�P��<=k�e�M�h��J�d��L�R�:S_y\t\"��&f\'��7�~k�z˙�\0�WP����\0�t�?!��Qֵ�l�O��*u(J]3W��\"-;����I�Xa�p��I1m)h\"����E�!\'*z�ݷS��*:�L��Zؓa�T�]S̬�ʋ�*T-B�}\f�/\t��ˎ#��\v)���hLQ�]��F���ӕ�fJ4�������������Eyr����we���ȝ�i2���xۋa$�\0���*�V^��<��W��G+�=,�:�D�-l��U���B=�dt�A�)���J�I�K���\rݚ�5�fQg��0Z���:��t�i���Wɡ�m�_�|Vq��1S֙�5��%�t�]$\t�S�u�mM�iՠ�Y}��K�6��w�g�m�m;�\0?G�gj��[�u���i�M$�D�&��h����c_7�\"�����;Kі���\0��nM��F�����2\'UEQ$dZ\f��W�7�Zk�9Z�\nE���-��-�L$$�\"�u��SdG�Fw��w���Y�g��çU���d���2g�d��^˝5 ���müu�\v��v��f������tѧ�rǖ�\0����/J�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0\0���>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+�����:4Frw�+4�,��i�#���?h(>~�?s����G��z���p�RCnO��S��\0)��������|l��-,�V�Ra҆�[�Q��$ҿ��>��.g��M�,�ל�\r�$�����I���i1<ҏ~h��KZ~�2mU:Ov�B��tK^���͠ԢI��Et��b&b:�����LE�j��U*\f��K�.Su&N2ڐ��JI���f<�o�pY�:ԯ�Rd�H�m6�3��i~N\"#�6�Ĺ�:����Ӿ�#���t�BR��?]:LΥ碾�I����s�܍P3��JP���_���4L6�Od{G.}�8��gB�^z���&�1�VY��Ľ�#�e\t\"�s_�Pߧt�h��7���Ǹix�x�&�����+;�^���a\v\nN��ZIk&΃���4W��Dd4�ق|G�FWU#�������ͽY�d�Xhu��M_a�M�\rZ���:��>H㗾�\r�#�J^(f[%�)\"l���b\v[y�o8���}���-�EL^����ٞ�󩖏�y�Yg���W��3�-ϖ��~������q^����^��r\"-\'��[g�\ti�Lc�7�$�4%5:i��d�����V���؛s7J�ՌQª���-:(P������(�Oo���L�ƪ���\0\vYK��c&�V3f��,��i�b\r=��#e�Eb��%�aeE)�W�L���I����|ĺ��o����M�_��3S��Ƃa.��[�v��7tR�\"\vG�\0���Z��\0�O���na�9;��g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0g���\t\0\0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@r�H7$�ͦ�T;�*��cj{P��̾\n�K^f0��LU(jJhE��}\v\r�)���^�\'�F��\fY�Ũ�Z�k�̅��Y��k3��ۗ��l�RL�����\f�ޛ�u{�]1}œp�L�U�z�Q�LDF����yH�\r�t���)Z\'�\"�F�6��{J��\t����R-h:i����`��-��ͨ뎻�����9�#�#?t�u���x�=X������;50������UDdi�\t&_}?!Ϳ�1�z:���ୢo;��YNI,DQ;���\0�H����|����z꿩o�m���dJ���Vou�IYP�\0`��U�L�ϣ��+ V%\nICD$̩��O��U������ϴ�\'��:Wf�\0g�\f��ln+I(�Z��A��)�5��?�Ջ��!Hb�[������d���]�?��b}j�k�x�}[u�|X�����n%�$Rc����4\"2\"�)���騈tp���x�\0�6�;?��E\'l[L}?ˬ&y/��z1p�)tY�Z\r7�F��=M3W���_�[��h)I�~g\0��bHȖ�UM��*�>BY�4o�F՟����BJ]&�quQU7ΩYyW�1y�ki�v���\v�M�&�_���wIT�U�S��mh���K�wYLv�w�~�v�=G�{\'�c�s�9s�Hg�3:����t�A�/Q5+�&���[l����X��\f�B��%���(MTd[�E��gh��ś��[S��m�/�ɋ�\0g���}Ҿfz��sE<���m$`�V��kO_˫��[���Ec�;�@DϤɂ��ٷ���?y&ё���~C���q���ɏjwil�+r�_/�,��dFWH�7��?�g>H�1G��l13y�C�5���\\ú�z\"r��̗x�!���j��|/n���\vCy��fw߿�}V<�Բ \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0\0\0\0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@yZ�S�d� �y�!�#2J���W�7�nKő�=&��-}���=f]=a��C�j}�Е�:��{>i�Q����qN<֎�W�9,�̚aľ��\r*B�ȍ�]>B�^!:}���:us�z��kg�(�i7��f��*��j<��ڎ����zn���g�1�ө��9>O�5f��AD%��|���pҘ�ѽ��{�坫]ݝ&I�%0�S\tJ`��l��9��r��̴j��kMm�V+X�zÞ�,<:.2�P[����۬��+Hڰ�{aj���Lı\"�M}�\f���[Ɵ��пZ\r�c����G��.I��n�2�YMr�C`��V����]?�*G��x���}{t�(��ޱ�k����ay@�����\'Vr1^4ŕJ���~b�ht�v���W�,�Qϛ��S=�#\f��X�;iQ�G��I%�&!\'�G��h�Q��?�Ȟ!��>nL�E�=2b>:g����(V%��x0�)D���⪒\"Q��N�d��M���1��f�㳍�L�e�hs\\�e�.)���0M6���)FJ׸�*fϦ�lT���瞹,�Ħ�I7�T*T���3��FѲ��&��KR\rDEy4�~m%Q��Lo!�2nQ�q�Y�ię�᭢?:�PJ=��:8�����6r���Y�������d�=�x�I{1p��!�3=^h+�����.%KG}������}^������ő��\'N�U�$�E�����A����=4�.�k�zÖ��Y\\\'U\0hQ?������|�F�,�łz�g��ᩲvQ�c�8\t�ɖYR�rq��]\n�+��d)e��n��:84���մ�&����Dt�+�l��z����;>*������#1�Za���7��$͘X�\\d�Ȓ����R)�ukQ���Y�S]�gtQ�Ŷ����H�n�;5����f�VM���袭\f�̴�;$a��tV�t�M=�N�}��oj�w��\"�|�-��A�).�җ�Ӊ�H�D{ǡ⚊��LV|���x�-\\~R��x��d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0��-��K�GJ��F���wU�y%���>j��<Uę��|�wRDu?�y�zGE�Z9j���杷�HC{\\K�\v�&$fTUP�L�AR�O�u�ꜽl�W[8}�xiITd[nNa�r֟�\\x�(�o4�yZ*z�W�Wm�|�Fl���~��s������ɵ?$�г���iR�y�?Ȣ%��������ͱ�5\'x��=��*N{)��I)�\0QO���MK�kJ���B�L���n�`�d�[J<N]��)\v�+\'h%�t�S9�m���>U�S�&:o��\0é]e��?�6���YdN|�a\"�QJ�%p�P�[Q衽s�=>d�/��^Ѻ�ux��vn\v(�1�l�E��ΡZII�5��J���g��ra�y����̅�����mw�~�eJ�l�e��jsz���K�{N���+^ܹ-�1�d��A�$dۈj�y*��H�a�Z���Mv����D�]+:�\0h�S�ZL\f����z�m\n7RD~�{�4���]����̠����h��,�v�Bp���\\k(n�km�$�{��>^Bx�ث��:�ۉ�Zg���m�8[m�L��E<�-N4�\"*Q�+�I��G\f�OZ�0�+��WlH�\\%����a\tJ\'�K*I�O�h~C��E�#�O��M�����o����D�)ҘQ��\0�:�?��:Jm��q����Q�e�F��2I�,��0�����k�+HSg�\0p��Kǳ1)몥���ɔZ�>q��D���$\"���*����-d\"�rV6�I[c��D�B$��@ۥ�N!FڒDMШ��ZTgx�f6��G��G�0;C���J҂$�\rGS#?1kk~����-��Y�֞\"{.TT�d�i�F۞+jBТ3#*&���\r�c���\\�^�,ŭʅ��(7��ÓVO�P\nI<J*Tԕ��y�Q6<�m��6�&�x|��_kOd�#-$����e6��F��Y\"#23\"4������E�nh��n)������������g�b�k��cV��I!)BXQ�ԑ����=���M?�W����d�����_w��p\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\0\0\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@髫bY�df��Z�E��f6��\ro���\\��٥���GM}�!�ҙ:��D�=�U�1���:����Z��]^�l��J�^ev�u�7�����g�C,��t�eHJ�EB=��oH����6�{3��b��8֦�Ji*���Q��JVE����y��|yckBLyrVw�^���>��t��*�H�\tjB�DF�A�/$i�dT2\"=c���[���t1jk~��?W��+��v[9��3JBH��n����jU��g���4-<֞��sl��Dr����X~�{7N�Ż�[e�0�I~�-Ğ�m������#�c��6;*�Ζe�95�n>$����Ȕ���MFH�{+x�Zf������jm\n��!���\n�\r�:e�\0Q$�N�׼oM,c�Jn}�<ӻ��B�����<�^S�嚷�������+����a�DQ�05<�)��G��=�nh�V���:K�⤐I[IQ{�+_Ѓx�f%�A\"�cHv樤8��j*|�u��v�c���A�K�|�BC�2y�bWU��#p�����s�\\7��IM�Ul3�w�6�v��Æ�n*=�3KjB\r)�|�C��8fL��:ص���=��̼������j(����34���V/��r#�2��3�\\27��\f���p�^��50�������\'��\rT�>\t�g\t���Y&�(��k��_�U�z�}X�w\r/H��)j�R�mJ�ظ��4^�Zқ�\0�������o���q���c��Ɇ\'\f��8�,��Qh!Ͼ�i厎�(�R9�yu�H�$}�z��_�qL�rp�^\"�P�hA�~W�~�:9��V#�9�O/y��<�NJ*�����hDR3�i�T�N���ƿ\fF\n^#��K���j����+K%��&2�D2�BXuM-M�\tQ��I2?-U��o�NΦ����k���r1`m�\\�<N��U%��Ĺ�)$eZ�.����o�φ�5���Ep��4)5�����Il`����!e���56�$�Lʣ:�_7�Ͼ\'t�(�-dm�գ˽;\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0\0F~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0f3��a�9;�g���~���\0|o��8�W�pa�9;�f3��~���\0g���������}7\0�O�\t9$��T�+�+�����������7m���H��ʤ��}��zI����f�\0�,e�aqM%�I�պ���y=�u�L�\r��e�%�2�B!���65QNk:{׫���oI�7��W�x��(�VȖdu��FiX�lZw��6���\rL[\'I��D���U*���sO�!�(w|#��KY��[%ڡ���_�v�51���`�Tn�\"23��m�\f�����VHm4k�S28�\vq�fG���|~rڷ��?��PiH��Qi*�2n����ſ�\r���슬�[�K�;0�D�:��}Fbi=wm���I&�!Dp.���)Z(6�w��NX��f+�y���_�W��F�_s^x߫�\v\r��j%�����^��X��\'iT�v�6�\r�H�jiF���J-?-c�>ֆ\'��f�ej՝��Jc�Lܡ�f�!qnUB2*���(j�8\'ۖ>���QL�E��/�,�Ѻ���~�d���zTE��z^�������,�v{�I˂��}���SɿHAy����:Rr[����*����R(i����9y���\rF�4�F���u6�çHTã�7������-�+�V.Ѱ~���Z�Cm4�����T�k�1Zz<������Ǌz��2A��&O���厑6�8�����\\R�jR��3��ڄ3|��f斑��M<��y5je�{M7����\0�w7���2��#���4�����\\�j�1�i���,����̡�N��ԣQT�IV�#����\'Gw]x�8�u��5K��|\v�\'\"��*�\r%���H�wy̙f3�c͇�\'\n~��@����y�5��▇�_2�K�3x߆�7�>��k��3��yw�3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��>7�|W��0��3��?p|��3����G��z���3��0��3���?p|��3����\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�9�8u��b�[:)�V�Wy��f��ıh�&�l���J�\tcp���NĤ�e&t�ȨTE��)lq1>P�ƫ���1�e��y<�0q)y�=0$^/x��B���c�8�}�8L�ڸx��.A�/M�<$�=\"�%���ޙ�N-��\r�4�J�F�\'�m�GV��vR��=[髨K0m����p΂�G/jRSK�7ZC[%�\'�GF\\�v�t-\'x�Ƴ��B�n?���#����g��hv-��%���\'fqgfdzY\"��c���Y�+�>۞]�#�fO�t9������$�NM~�<��O\f�`�۹��K\t.Y��e�)?ݾ����=����c��pf[Ʉ����\\���!��1|�ٿ����G�@d�fL��gK�n�!.�7��=t��~���駯*\f~Y2ggvo�\fȩ.�Q4i�8��~�g>�,r���!r_j�u\nȄ��WT���W�C��4�j1m<���ɼm�\t>�k�S���&�Y�V��O�|2�������mko��Բ�x�;�֓�e����AU9&_�eZ�/�u���b�X�1��U��sb��!#��]��h�q�_}���jW��Y��/H�\\�c�N���y�;\"b�Xc������Q����i�������9��o����8�M?�J�����Rl���\\�m-��!ԙ(��|-dzL�\0QÝ��Rbv�N��\0�l��m�|6�5�m�k�m�a��l��:�Ҥ��Zi�+j)�13JΟ\'6��&+�7r{k&Q�u�9\'�9�\f�p�]��Z\f��4P�Q�]O����z�1i�\f�j~.�u��\"kpˊ&It*�����i�x6��v5zI�&�:�%6V��\'�˓8�x�C�fi#2\"=���z�J���T��\'G;�ͥ�$��C-��x��W�$���Z�:[�)���5��\"{:*~�9*ȕ�L�s*�;4�n�%�[Y�+N���;:m>]^;Mf6q�r��Wx��ϝ,[��Y�������\n�͖�p�i+�k��Q_��k4у��#�\rI��7OǇ{&D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0\0\0\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�||J ���qhBZl�f��j�1�+6�D5����K��lt�ݚBC�˞3�I\"2$��f���M1\\qI�<��9��<�V�y9���X�R\n�N�é\nS�]�:SF��\r6��>�=��������Dx֞�A��С��l���zL�9s�>8�g�.�p�N�/XL���7,y�[9c�ӆ�w\\_�Ѕ#~�#je��oy��Kã�mY���̞E/�B�]+Se���\'zu�N�\\�2O-�t�t�qG68��&3�����Ρ��EUI�E�E�2E+Koh[���mYu��Io/)�Al�m�T+Ќ�m|�j%W�tqS�&�}\\�����k;{���!/&�NL��$��G���4S��S�[����b?����^�;Vd��ݓ�eOG؉Zm4S�.�B=ffdCnnn�f�{ǒk1����5da������/_�%΃����3?O�%2��LD)@[Fݘ1(��Vy2E��!UE��H2?Ң+���;%���.ـ���q�5�᤽�G�SV���s��f{�����.dD�?ì����=�\0_1䈝�0M�j�9)�nЮ��kB�Q����%��Lm;��.������X%�I�!��[I{�e*B�M+?���1ཽY�vsg�}j��9�|�KuV�O �=��̡���c\"IWȆ2�mN�����e2��m?�� n*%p��D,�i���%�J�����A\fRmGu��Vw��D���$��4�&����:���Y҄g����5�/}�M�z�h�4��<�B��EXٌ��P�َ�R�΅?1-m�ѵ�Qڹk;��\vn��(*�<��2#Sh�,qM�5(�Z��V�u�D6�Xm��o͏-}���\t��]i�sE6��\t�=-�TQ|�b�o8�ySM\"�ν�d��M�?��b!���j$���~fDU-T��4�Xu+�;)�0⷟W`�*\n��j�\tI%k$�P�P��{o3�b���Xu~_�w+�|��?\rm����x�Ԋ�I�ѿG��\n�F�\'<�r��+g��N�l^DZ���%��~x¦\t�è�YZhMx��\0�CЭB�]��y�Q����g�D�Q�uJ��{fD\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0\0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\fe��z2��!��6��&�/��df~�\'�ۓ-l������u�d�[g?�D:��&�R2[��w����zL5��x�Nէ+%)��E�k�y���&�*�t�`���e56�m\v�T�����2���U_s��\"�{7���-�<�!FW�M+x�C<������<۬˧�t�Éq�FJ��X�}-&w�o�$F�;-��Y�˖��P��\rt�_�E�Pˤ���:�}uk�cyh୬�b�Z�3�e��K�3#?��Q��.)�Zj�f�,��%����fHl�J�i�F<L��3�`�eoal���)�g���*����!f����/��fcg����2P��r^�{�q4\"��*����.N����0c�Z��T\"���v\n)-QS�t�i�ZwIY����iFM�?ŉY�y\\O�\t�?s͞:o�?2q���}�iRI\'O�k�S�$���;[�C�E�\'\'�س-)n1�^:y���C��>I#Qh�qS��K#�بh�~e��!U��|C1���ӲH��~�T��$�n��Ml�R\rI���u��i����3����W�����q�:���uW�ʔѨ��������ԙ����?,��E���3�r�f�U1p��LҲQާ�ԿQiZ_ն���ǽ��\f�qAA¿��%8���\0��/AzR\'x��4�2[��1�W[z\'���jg��������GxCz�fb!�rA_����(ꦖT?��[�������}[O=o����a�h���Q��_r?�-R�2�IQ�mVu��Qe��Ml���GX8Y�w�2��Rn(�t2���]š�����Fbv�>Uȼ�����c&�9sy�O?��V�����^^C��f\'Eh��=ǥ��(��\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\0\0\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�3�$x���h�ҩR��q�Sچ��e��yi&M���L8M�m��~�R��n&�E����q��8�����1i���M�t�*7�D\'Y�.��\"�TF���R�m�̖[�S1��%�;3y�K|�z{��Dz�K]��\r���\0���ɘ��_+�A�����*�??���iOg��*���m�i��J���4~)\'�zG�%Uըgħ��œ���$i�SD�ܤ������[F<��4J�+�8�\tV�Ԉ�6ɇ�7O��g��e��BK����w#B�\0����%�/P�~�����yyz:x�v[�4��P�/i�cq1�Z+0yN�ǂ��\r�$��*�7��괹&\"bc������sF��x��oj�D�a셖�RH���E�?R/��9�s�m�D~�Ss�kw4��;:�t��#_���Q�&�\'����KY�ٮю\"~_�*i�f��rC*(c;�¢bɨʥ����|Ŀ����?I�\0��������wY��8X��S�~!7�����=*Fe�sgS���r�z����9\0�}�&���u!%uT��P�A�����B��R���Š���\\��\nw����p���m\t�JU�m\"�1ǚ֟y����R���dBL��JJR�}�)�^v�:Xq[oiz\'.��]En��eR2ݼC1��N�`8�\tr#�Sf��I��\v2�y~�\\Y��\f�#7y�rd�Zdn]f��⠔�u1�Z\tFfw�:�?�\r�e�i�m?��_\fr�w��\\�!�\t?ԅ}�6�fg�~P�u0\f�fg��ty\v�f�mU��O{sMz�ij[ߵ�<Rތs5��F�h&�4���I\"�Zh=l���s�b->��v�e���P�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0\0���>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M�83�QBI�\"N!Փl�̛l�Z����7��!�Iڳ/��|SmH�D�o�FCF�r��Y��i���}�b<��|�F[O�]���>D��*u�+�#\nI��J�^d+m��[m-圛˦П��v�IT���Ak�䥩;Y&;V�ѩ�SkEj���=\"�X�_�5���߸IQ��yfV#��)\"$�#��6��V�BBiR/��fӺ�R6��%�:��\f��RN�#N����ff|�R�Y�R5DL��m�)h�DE���T�kR��W����b��kSd�\"����&���3��k��^y����0ɟ�>~��������_M������x�N�������>~��>+����x�N������OT%i�\0?`7~I#R�(E��}�~-Y�\n]�o�*н�]}7ubgh��OT��������,L�^�h�Ev����?��=F�a�1J��^_I�sqNi�)}?�x�N�˽I��>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~��������_M������x�N�������>~��>+����x�N�������>~�������>~�$\0\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�͚|6+�\0���6��\ro�����hũ4U��\f����U��_ֹ>/Dl\\�P�.Q���Q���i�N���\0�\f���嘬�v��ٹ�SI���p�)t+��/���!_,y�SR���d�W�svH�M埼��i�E�;�]�n�*W��5�M�JO�RZ~�\v��t��y)s���$��#�D��/k\v���5��3�CY�>͢�;�%3�RKq��)\t�o0��EM��T3�����1��gm�S&j��+0�ض�Kn��Ru�?��m=fw��k�Z�hr���M��BN�#�%u���J��f�ʚ\rI$���H�͖z�\t7Η���\fO\'�1���rC�a�#L�\0\"\0�ڧ�#�MC,�E�x�]�tҚ��o^_���߅�E�~�����4l,�HRR��ddG�^H,�H�\0�L�r)弳qGD��gD��д�re�6�r,x���ʄj�S�L\r��f�v�M>u�ұm�V���me���o5|�J��w�V�N۳�o�笖���j�K��\r+e*2:�UO�����Exe+=�^W����V�v��\0����ޭ�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0\0\0\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��4�lW�\0�mOj�ٗ�S�H��u\f�N�O)+\"U̏I���6��>g�\0�m�*�ZfP�-��\f�^�j/?:�\t-]܇��e�O�L�;ɩ���1�ֶ��-i��q����\f�Ã��wIxn!F�?�\r�������X\f�*F�)�����Zw�-�i׸Tˡ��%{�\'�v��ʅ��B1>���%�j��rri�VzçL���Z6\'2x�O��Β��iy\']>ZEks�]�4V�p�Q4[/�đ�Q(��I�X���s�h�%Q&��O�����b����)g�Ri�����\'�D���r�=�OG�$1\f,���c2!��Y�~�j�IpT\"-�*�Ytb6���U�;F�+�\0Ȁ\0�!�0�\\�C<fC-~9���Rȷ���a���}N��jsY��������E��K7�A+C\"Q��\r�8|\f��is�F8�FP���Id�G��t��MFH#EO��ZE������C戤wn��b%��i�CD�\r��-tI(����޹��m.+i������_fx���<��P�%��0h�])R�z���q�xx0���p;��s_n��hyףd@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0��9\n�h*�HQ�A�gi����0�V��6�c.~�P��j33���A�j_�OK�����Ѩ�/���\t<T��p���f��ГwF��Q��3\ty\'�u��ϵ\fҌ�HY詖��/X���ŋ���<ۦ�ȴ�hQy��\t<X�i������B�⣖��\nl��iR�N�\"x�QټVg�e�b��v�C0�OD��u?�%dI#2�n�z\v�k�+h�!=-j���r8������ΙNb\']eJ#�Sf����R?�R?�_}/H噏$������m�Z-��������;,S�4��#8���T%�-D���E�G�C�?K���5Yh�X�l9��m~\"Fkp�W�{���~\t�1��ϛ�%^�JfE��\n����P�J����B��96����b?Xv#��i���������r}�fMu1JQ�ڿ!�p)���v������{uH��,h�i+�D�2?���!��?�����$��&�6����/n��J7��.4�i#4�������m�E;q̵��T���*��I�4l�~��:����]���:��{Zw�kҖ�,�k��Q\n2��P��\v@�x&���8ƣ�3Oa��-Įm\fͨy��%�Z\t��G��+�8\v�|q�6.7��>��}�b-������RX�_C�%)(Y^I����Ӽx�N��\\�K���uT�c��W֕)���fZ\f��xY�Z�;\v)J�o\"�uO<�iu$�����z�5\tb\"֎D36�g����6��X��hz{dI���\'ň��yTAUh*ВfUUO@�)\\ѷkt\\��;��G9��\'�\"2s\'�n\"\"աĞ�]=e�deC#�FFCm$[x����2��С�y��]\'5�7�{�Fj���5�^2g���s�\fD�­�ݯr(�R��m�����Ԣ�Ddt��y��L�J�/�c���A�v�=������[N��I��\f���d,��<���W�Z�Æc�]W�)}�\t2��I�ͦkx��4m�5k#��_�QZ�h��T�\r\"�-1������5�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0\0\0\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H=F�h)aY�����(�\r~g���ԵkA�9}#GX�t�C�K�k/��~��K$�m�d��i�x҅ ��&t�i�ȅ\\��7���\fE��aٮ�Me��[�[fu%&�S\"�k�)xߢ|���&D�v���g�VzK�X��geVa61�4Ð�\0��q�2�i�j���bz��w]�d\\�Ĵ��I��ǈ~�Vw���4Ѭ�O{ţh��fw�Q\n��4P$���)}�Z�Zȍ��y�-u�\v�=1��1�Ϛj��#�l����Y�Ij%�&1I�D��#z����#�Zy�1oM���O�Z���\f�7��^in�\"�����;��F�C��d�TB����l�F��~t-�^X�$����?�)8bp�h�������MJ�5�cy���!�S���x�i#�S����[/!�8��&�\']\f�mC%��� ]��7(5��4[����5��\ri4�T��+ABi�����D^/-z����uiX���(CJ�rW7\"mm��=�K�c^h��&&{�� YC�d��9�ȓ�����kIH��~F9WAM^)��0�p�}��b\f�}�*��� ������\ti22=U&9�i����b�\\ԋ״�6��<�-8�RKJ�eR2:hGD��R�[�a��;��lZ̒�(�l�T2=��|��r�)X���s�m��1y�\'�u�W䖇\'�;kc�\0� ���r�W�5�$�j���B�De�GC3t9���_����i�I�{;�#3|nJ��d�f�s���32?���=�>��&H�����59����\"�����\0�FfE���F3�kX�k��okM|�6{C�w�|r�!�5K�<HYrH��=R���I{����K��y��\0�F�V{n�̐��콁�ʍ$J$��whfg��\0��p5ټ|���h�x8+Il�E��\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0\0�����\0��?`����n\0�<g\'p\f��rw\0��?`\f����\0����q^���\f��rw\0�<g\'p\f����\0��?`����n\0�<g\'p\f��rw\0��?`\f����\0����q^���\f��rw\0�<g\'p\f����\0��?`����n\0�<g\'p\f��rw\0��?`\f����\0����q^���\f��rw\0�<g\'p\f����\0��?`����n\0�<g\'p\f��rw\0��?`\f����\0����q^���\f��rw\0�<g\'p\f����\0��?`����n\0�<g\'p){bX*[7�\"+�Q<�5�\n�J��{�y�i|s����i��b;����%�ɴe��}-E��\fn&�O\'Q�WQ�K�̅�#��OCoS���qJc��mCC�dFIY�����+A}��;�\\��˔�*`�rf�]t���Ur�󄷤\r�������i�UףP���W���D��mŲ�<SW���.T�ȷ�I6��Օ���a�+���D������H�Q��Y����M+�I�t���:��l-��ɤ�qг���b#J��m�S�Q���\f���4y����j\"#�]b�Mgl0���-HQ �L��}�Z3V�!͋r��v2Ϲ,��d�׮�Q�iM*g���m��i���v�rZ��ϋ 2mDJBTg���3R-��V�K��J,�_��;$���޼ޏB0�����k\\9/l���\rH��B\vE�4T����rS�K�}�h%R���d�fE�Gp����rV{KY�x�ޙ���~ ��3�]kv�O�o��Qy�m*r�\\��ɢW�M�\f����Ɲ�xm{L{]��L\v�IT�����*��Ӥ-1efc�_J{=�gҬ�ђ}�\\6��g���C�G��Z\n�x�z�ĭi�{�O/���7�|W��y��qfVI���NG��P��iI�#->GC��8��yqW5&�ff6~*�N �+��3É5�I>�+S��\":n�k����=m���\0�V)|X-K��}�1���l���)-�b�H�%J��/&YJ5�ʯ�Kad��P��*^�B��,�{�G쩢��)�������d������G-�3B��|ң#32�BI�:��Զ�.ו��]6)䍙yM�\0��ykql�Pr� �U\f�P��B���5u�a��=e�z[�\rG6X�]�śj���U� ��$j/Q�&w���\"6����<g\'q�L����\0��?`����n\0�<g\'p\f��rw\0��?`\f����\0����q^���\f��rw\0�<g\'p\f����\0��?`����n\0�<g\'p\f��rw\0��?`\f����\0����q^���\f��rw\0�<g\'p\f����\0��?`����n\0�<g\'p\f��rw\0��?`\f����\0����q^���\f��rw\0�<g\'p\f����\0��?`����n\0�<g\'p\f��rw\0��?`\f����\0����q^���\f��rw\0�<g\'p\f����\0��?`\f���� \0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�:��>�39�/>��K�YM\r��U#�]t!�����#����>&�m����cd�f-|-�ͳH��Q�l��4�q��9��-涞����{ҝ#��$k���j*�ԓ��iR2��<�y�w0�%Upj*RGR2�JTV�O9Z�(�\rP����J�k��\'���۫N-�Æ��*A��R��S$D�(2c��zme�qj�;�+�5$�fE��x���U2a��1�+6����l���r��]�Z��J��:L�K,t�k1D\fb\"����Q\'��3j냬������]�c�e�𩌵2�y�]L�/2KBt��N���x�L���K��=0��4u���2��>C�Lg�\t\n(M��hxΞJ*ƋmE�X�o��4��<�9h��rOf�!#�g1JN���3/��Zu���/y�rk��=������\0�$;�z_\"u��jҨ�|�夓R׼Y�%p��m��Ϛ�ևd�&e�g��� ��6�o�qj2Yxd�>U�F+ꢸ1���I\\6˓�}+7���Z���xg��(U!ʰ���P�^N�;�*S�eɋ�9�\f[��×�GQ�L�N,�Z��}s\t\v���#%ä�F�k���:�.#\\�ɗ��5�+V&q���4�\f����aU�u���ái���Ǭz�y���%�DՖTӨ�z�]2�̅=F֎KvX�k�={���񈎃q���d��#�Q�c�w���82�lqxhDI�,����&��\r�[�%��j2�E��\0G�O��.Z����ح��s����)�I��u�%q�y�4�┣�+�?�\\�z�ϩ�JO�?O��ð��x�����kM`��Z�L�5�\\$��<8e�T��xӪ�p�3�uT��ѷY5�\\��V+>��s �$��!�eԩk}:\t\n/#*k>���9#�ҷLu�1ZWhi�I�\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0\0\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+��Ne�Neq2��in%�mFZȌo�����-<ZM=�-�L݂�ڻ�5��\\�M?ْ�K�u���{�����,����xmf�&��|���پ̹J��6^���%yi�Z���fZ����U�^Y޽���N���HH�SiBt���yى�����?f�R�ԗܼ�q��Z��ͫ��\n!���-!-�uWǇz�W���\f��/!������x��e������ n������2��5�ڻ��(�ofR+�#�8�\'��9�K�u�bdѬ��ꯑ\ro�Q�����=�vV=�lm����H����񌤠��&�)d�32���b��ܖ��n�/d�8枯Y��i{+ԓ59flLDT�������#żEK�hdU2\"�C���}y.�j4ٳ[��̰����1��:�Zw�d����dt��%�~���|�\\iqp�M������y�J�16�Sܺ�.UD�\0�fG��s-��7Y�\\v�tz��M엳M��eA/T�VĢ���I�]u�V���z��k�,��>���8f-/�r�5�����O��a�4��!fWH��Dfe��B��*�-�f���.��0�^��,~_�l�f0�,�8�N�W�\t��%8�4��Df_/=c��tT�#=:Luy�>l����;�Qb�[�bܞL��\f���\n3Z�*i�p���-ZGx��fbά�Z6�~�C0�;/CT�|�=���Rғ�Z��Izy��γ=���v����MI��c�f��ۋ\f�\"mT���%(�}\r�EOQ�|�-De�ni����<�ne�Yd���1�FC�̉�%���!R՚�ҽ�u��m�l�Ͷ��!m����i-_q&��G�}M����\t\f����IJ�%B�����-�^Z�9V���P�\0d@\0W��z��\0\"\0��h��p\0\0�;F�+�\0Ȁ\0�!�0�\\\0D\0yч�\n�\02 \0+�v�=@W\0�\0^C�a��\0\f�\0\n��P�\0d@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0���vfՒ3쩨��J&�:��ZV�_�z\t1�)ޒ�&e���y��AJ��%��Ϳ�K��K���<�=�\"�2�k�1ׯ��4�X��O�˷�u�i�:��쇓Ld��Q�\f>����Pi*�+�κ�+j)��D��d�֓���\'b2p��N+�>ʌ���ʧ�E�-��m�O��QM]��8�����.T}���G��Oa�Y�;,�:���WީP�Z�V��^w��+E5��^��>�����X2�k�h3��E%0���ٯ�/d���=�u\r�Żvo�O�0�Y��s�6�(y�o>��&dJ�|预4��#yE�.i���_�;#����\r��MI�MěI�u�&Ѓ\"*�3��k!6|�S�f�{^*��_�F�Y�vM�+\f*Vܕ1����CQO(�f�3п̺n�G��:k^��u1c�j\"/>O�%0rd: e����{���*z�����-��vu���R��e��#%HFq��&��E�*:�\n��^x��\nSS�اn�Jr�#�1/�8�w�}�f\t:8ꩬʧ]e�:��5������<��|�ɤ�n�}i\"%���.Z%�⌼5��&㉩�+ίI�=�˭�%y�m����Rf��v�d�M7�J؝N&q��IS҈����\tf�A*�U&ZL��>}�3H�6�0�X����/�/�\'�F�3��Ta����3.u�[Q]RTd�4=e�эm�*�7�:z�I����L���fVf��6���ij(�D�$DN��ʊ/{�8��+y���&oO��U���\r��N`��&K}�5����П���a�\r��F�`Z��3U�T���ZUJ�$�Q�q���m��L��݁���3(�h�D�+\0��N��(ʿ�*�A�\0ԃ�Śk)������Ӣɚ�������7 f�ȡ$H���D\"M$�b��W�Ϊ4�$z騴nL���y黧�c�R<��#H\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0\0\0\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H��,������i#/�f&a��\\��L2{?x�&�BY�t͒#�*\t#6H��ZxT�앐���vH�\\Z�\\4K�4��ʥ��G��^!��j���xu5��\0g�HMo�Y��ĩ���K�b�d�FT�%P��!b�c4F��m�q�Z��zr��sl,e��J��t,���\t;]��xF��︋�O��҅�0�Kc�Dǫ>L����,�x{d�?l�0Ժ2Cn��ha�\"�/#Y��%>BOH���}����ΓQ�y��^�od=�2�/�yF�30А�i�Dl�mJhȌ�d��΄~D,�z=�����?�_Q�����v�&�_����ypR�\\B݈��m�V���h�3$�-&�#�T=bMO��8ꯥ�6���N�W&�Y�T�M)�K��Rm:�U!�i��K�ұH�jseX�D�c/�AQ/î��#�OF�S5������iu���c��A�EZ+Sif�1Q�6˞�i&�%Z��������_yi����5��2��7�y]��BHJo1���e�xt��/\r��II{��!Z��^�m��zikX�Y��M��\'*K����n������b9�{y��W�=�x(8b�(xVZ��\\A��9���D\'\f2\0�\0\0�>��t \0�\0��ϋ�\t\0\05�\0$O�|]\0H\0�\0\"}���@\0\rp\0\t�@\0\0k�\0H�l��\0�\0\\\0D�g���\0�\0\'�>.�$\0\0�\0\0�>��t \0�\0\0�\vp\vp\t3��U����$}���~�5�-�-�$���W��\0��?P����з\0P�\0�=�\0\v�_���G��@>��[B�B�L��/�~���\ts�\0���\rm\vp\vp\t3��U����$}���~�5�-�-�$���W��\0��?P����з\0P�\0�=�\0\v�_���G��@>��[B�B�L��/�~���\ts�\0���\rm\vp\vp\t3��U����$}���~�5�-�-�$���W��\0��?P����з\0P�\0�=�\0\v�_���G��@>��[B�B�L��/�~���\ts�\0���\rm\vp\vp\t3��U����$}���~�5�-�-�$���W��\0��?P����з\0P�\0�=�\0\v�_���G��@>��[B�B�L��/�~���\ts�\0���\rm\vp\vp\t3��U����$}���~�5�-�-�$���W��\0��?P����з\0P�\0�=�\0\v�_���G��@>��[B�B�L��/�~���\ts�\0���\rm\vp\vp\t3��U����$}���~�5�-�-�$���W��\0��?P����з\0P�\0P�\0��","piscinaplayita","activada","bebida");


DROP TABLE IF EXISTS `restmesas`;

CREATE TABLE `restmesas` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ubicacion` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `cliente` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `cedula` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `codigomesonero` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `mesonero` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `menu` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `estatus` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `restmesas` VALUES (1,1,"mesa 01","ubicacon 01","alfredo tiapa",9294677,100,"luis marquez","menu no.1","aperturada"),
(2,2,"mesa 02","ubicacion 02","luis filepe",11223333,100,"luis marquez","menu no. 2","aperturada"),
(3,3,"mesa 3","ubicacion 01 mesa 3","","",100,"luis marquez","menu no.1","cerrada"),
(4,4,"mesa 4","mesa5 ubicacion","","",101,"feliz perez","menu no.1","cerrada"),
(5,5,"mesa 5","ubim6","alfredo tiapa",9294677,101,"feliz perez","menu no.1","aperturada"),
(6,6,"mesa 6","mibotalon","","",103,"carlos febres","menu no.1","cerrada"),
(7,7,"Mesa 7","mibotalon","","",100,"luis marquez","menu no.1","cerrada");


DROP TABLE IF EXISTS `restmesonero`;

CREATE TABLE `restmesonero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `nombres` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `ubicacion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `restmesonero` VALUES (1,100,"luis marquez","ubirestaurant1"),
(2,101,"feliz perez","ubirestaurant1"),
(3,103,"carlos febres","ubirestaurant2");


DROP TABLE IF EXISTS `restpedidos`;

CREATE TABLE `restpedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producto` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `precio` int(13) NOT NULL,
  `ctd` int(2) NOT NULL,
  `comentario` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `mesonero` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `mesa` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `pedido` int(4) NOT NULL,
  `fecha` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estatus` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `estatusmesonero` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `estatusQ` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `menu` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ubicacion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `restpedidos` VALUES (1,"parrilla mar y tierra",123,1,"","luis marquez","mesa 01",103,"2021-3-27","b-preparadolisto","b-preparadolisto","ind","botalon","comida","mibotalon"),
(2,"pasta corta",10,1,"","luis marquez","mesa 01",103,"2021-3-27","pedido","pedido","todos","botalon","comida","mibotalon"),
(3,"pasta larga",12,1,"","luis marquez","mesa 01",103,"2021-3-27","pedido","pedido","todos","botalon","comida","mibotalon"),
(4,"carne roja",100,1,"","luis marquez","mesa 01",103,"2021-3-27","pedido","pedido","todos","botalon","comida","mibotalon"),
(5,"carne roja2",100,1,"","luis marquez","mesa 01",103,"2021-3-27","pedido","pedido","todos","botalon","comida","mibotalon"),
(6,"parrilla mar y tierra",123,1,"","luis marquez","mesa 01",202,"2021-3-27","pedido","pedido","todos","botalon","comida","piscinaplayita"),
(7,"pasta corta",10,1,"","luis marquez","mesa 01",202,"2021-3-27","pedido","pedido","todos","botalon","comida","piscinaplayita"),
(8,"pasta larga",12,1,"","luis marquez","mesa 01",202,"2021-3-27","pedido","pedido","todos","botalon","comida","piscinaplayita"),
(9,"carne roja",100,1,"","luis marquez","mesa 01",202,"2021-3-27","pedido","pedido","todos","botalon","comida","piscinaplayita"),
(10,"carne roja2",100,1,"","luis marquez","mesa 01",202,"2021-3-27","pedido","pedido","todos","botalon","comida","piscinaplayita"),
(11,"cerveza",4,1,"","luis marquez","mesa 01",104,"2021-3-27","pedido","pedido","todos","botalon","bebida","mibotalon"),
(12,"cerveza pool",5,1,"","luis marquez","mesa 01",104,"2021-3-27","pedido","pedido","todos","botalon","bebida","mibotalon"),
(13,"refresco botella",4,1,"","luis marquez","mesa 01",104,"2021-3-27","pedido","pedido","todos","botalon","bebida","mibotalon"),
(14,"carne roja",100,1,"","luis marquez","mesa 01",104,"2021-3-27","pedido","pedido","todos","botalon","comida","mibotalon"),
(15,"carne roja2",100,1,"","luis marquez","mesa 01",104,"2021-3-27","pedido","pedido","todos","botalon","comida","mibotalon"),
(16,"parrilla mar y tierra",123,1,"","luis marquez","mesa 01",203,"2021-3-27","pedido","pedido","todos","botalon","comida","piscinaplayita"),
(17,"cerveza",4,1,"","luis marquez","mesa 01",203,"2021-3-27","pedido","pedido","todos","botalon","bebida","piscinaplayita"),
(18,"cerveza pool",5,1,"","luis marquez","mesa 01",203,"2021-3-27","pedido","pedido","todos","botalon","bebida","piscinaplayita"),
(19,"refresco botella",4,1,"","luis marquez","mesa 01",203,"2021-3-27","pedido","pedido","todos","botalon","bebida","piscinaplayita");


DROP TABLE IF EXISTS `resttipomenu`;

CREATE TABLE `resttipomenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `detalles` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `resttipomenu` VALUES (1,"menu no.1","DESCRIPCION MENU NO. 1","DETALLES ADICONALES"),
(2,"menu no. 2","descripcion menu 2","detalles adicionales");


DROP TABLE IF EXISTS `restubicacion`;

CREATE TABLE `restubicacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contadorcontrol` int(6) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `detalles` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `menu` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `impcocina` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `impbar` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `pantallacocina` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `pantallabar` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `restubicacion` VALUES (1,104,"mibotalon","mi botalon rest principal","botalon","ticketcocina1","ticketbar1","pantalla1cocina","pantalla1bar"),
(2,203,"piscinaplayita","Restaurant piscina playita","piscinaplayita","ticketcocina2","ticketbar2","pantalla2cocina","pantalla2bar");


DROP TABLE IF EXISTS `trasladoreporte`;

CREATE TABLE `trasladoreporte` (
  `id` int(255) NOT NULL,
  `numerodeAjuste` int(10) NOT NULL,
  `nombreArchivo` varchar(255) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  PRIMARY KEY (`numerodeAjuste`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `trasladoreporte` VALUES (0,0,"NO BORRAR","NO BORRAR","NO BORRAR");


DROP TABLE IF EXISTS `usuarioauditor`;

CREATE TABLE `usuarioauditor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fechahora` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `usuarioauditor` VALUES (1,"at","2020-02-21 21:34:55"),
(2,"mber","2020-02-21 21:35:16"),
(3,"at","2020-02-21 21:35:32"),
(4,"at","2020-02-21 21:37:09"),
(5,"at","2020-02-21 21:38:18"),
(6,"at","2020-02-22 08:15:45"),
(7,"at","2020-02-22 08:16:02"),
(8,"at","2020-02-22 08:16:57"),
(9,"at","2020-02-22 08:17:36"),
(10,"at","2020-02-22 08:18:22"),
(11,"at","2020-02-22 08:19:24"),
(12,"at","2020-02-22 08:23:02"),
(13,"at","2020-02-22 08:23:14"),
(14,"at","2020-02-22 08:32:11"),
(15,"at","2020-02-22 08:32:14"),
(16,"at","2020-02-22 08:33:00"),
(17,"at","2020-02-22 08:33:15"),
(18,"at","2020-02-22 08:33:40"),
(19,"at","2020-02-24 11:16:14"),
(20,"at","2020-02-24 11:29:59"),
(21,"at","2020-02-26 09:32:27"),
(22,"at","2020-02-27 08:20:01"),
(23,"at","2020-02-27 08:22:07"),
(24,"at","2020-02-27 08:22:25"),
(25,"at","2020-02-27 08:35:36"),
(26,"at","2020-03-14 21:35:51"),
(27,"at","2020-03-15 09:16:53"),
(28,"at","2020-03-15 09:17:46"),
(29,"at","2020-03-15 09:45:59"),
(30,"at","2020-03-15 09:46:08"),
(31,"at","2020-03-15 10:03:04"),
(32,"lp","2020-03-15 10:03:57"),
(33,"lp","2020-03-15 10:04:58"),
(34,"lp","2020-03-15 10:05:35"),
(35,"aa","2020-03-15 10:29:24"),
(36,"aa","2020-03-15 10:35:22"),
(37,"at","2020-03-15 10:35:43"),
(38,"at","2020-03-15 13:41:27"),
(39,"at","2020-03-15 14:09:37"),
(40,"lp","2020-03-15 14:16:15"),
(41,"aa","2020-03-15 14:17:01"),
(42,"at","2020-03-15 16:04:14"),
(43,"aa","2020-03-15 18:49:45"),
(44,"aa","2020-03-15 18:51:45"),
(45,"lp","2020-03-15 18:59:57"),
(46,"lp","2020-03-15 19:01:01"),
(47,"at","2020-03-15 21:21:29"),
(48,"aa","2020-03-15 21:21:51"),
(49,"at","2020-03-15 21:22:49"),
(50,"aa","2020-03-15 22:21:14"),
(51,"at","2020-03-15 22:29:40"),
(52,"at","2020-03-15 22:30:21"),
(53,"aa","2020-03-15 22:31:07"),
(54,"at","2020-03-15 22:31:34"),
(55,"at","2020-03-15 22:55:55"),
(56,"at","2020-03-15 22:57:06"),
(57,"aa","2020-03-15 22:58:03"),
(58,"at","2020-03-15 22:59:33"),
(59,"at","2020-03-15 23:00:01"),
(60,"aa","2020-03-15 23:28:15"),
(61,"at","2020-03-15 23:39:51"),
(62,"at","2020-03-15 23:48:53"),
(63,"at","2020-03-15 23:53:55"),
(64,"at","2020-03-15 23:54:41"),
(65,"at","2020-03-15 23:56:15"),
(66,"at","2020-03-15 23:57:48"),
(67,"at","2020-03-15 23:58:16"),
(68,"at","2020-03-15 23:59:04"),
(69,"at","2020-03-16 00:00:13");


DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nombres` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `admin` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `nivel1` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `nivel2` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `nivel3` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `nivel4` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `nivel5` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `ubicacion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `caja` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `mesonero` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `bar` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `cocina` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `pedido` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `usuarios` VALUES (1,"","RlFsSTg3b0ZoMTZpQTZ2MmRFT0srZz09","","","","no","","","","","","","","","","",""),
(3,"at","M2NRYnRGNHpYYVhtQWUyMlExV0pzZz09","alfredo ramon","tiapa gascon","alfredotiapa@gmail.com","no",1,1,1,1,1,"mibotalon",1,1,1,1,1),
(4,"aa","WVc3YTJrL2pBT3NUSktSeXJJb1Erdz09","aa","aa","aa","no",0,0,1,0,0,"piscinaplayita",0,0,1,1,1),
(2,"ajtb",30037872,"Alfredo","Tiapa","alfrestroya@gmail.com","si",1,1,1,1,1,"","","","","","");


DROP TABLE IF EXISTS `utilerias`;

CREATE TABLE `utilerias` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `resourceId` int(11) NOT NULL,
  `title` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `start` date NOT NULL,
  `cedula` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `utilerias` VALUES (1,4,"ALFREDO TIAPA","2020-02-03",11223344);


SET foreign_key_checks = 1;
