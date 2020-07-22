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

INSERT INTO `calendar` VALUES (23,9,"Alfredo Tiapa","2020-02-25","2020-02-26",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","hh",1,0,0,"Maturin","AnzoÃƒÂ¡tegui, Barcelona",90,"EFECTIVO","ZELLE CD",1111,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Checking","green","10:57:00","00:00:00",13,0,"at","at",0,"",0,"",0,"",0,0),
(22,5,"Alfredo Tiapa","2020-02-25","2020-02-26",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","ff",1,0,0,"Maturin","Vargas, La Guaira",90,"BANESCO","BANESCO",11,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Checking","green","10:56:46","00:00:00",12,0,"at","at",0,"",0,"",0,"",0,0),
(21,2,"mariela bermudez","2020-02-25","2020-02-26",04148972972,11338898,"Venezuela","1971-09-17","anzoategui","doctoras","agracia@gmail.com","anaco","yy",1,0,0,"Barcelona/Anzoategui","Yaracuy, San Felipe",90,"BANESCO","ZELLE CD",222,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Femenino","consultori",04267883333,"Checking","green","10:56:31","00:00:00",12,0,"at","at",0,"",0,"",0,"",0,0),
(20,10,"mariela bermudez","2020-02-25","2020-02-26",04148972972,11338898,"Venezuela","1971-09-17","anzoategui","doctoras","agracia@gmail.com","anaco","dd",1,0,0,"Barcelona/Anzoategui","AnzoÃƒÂ¡tegui, Barcelona",90,"EFECTIVO","ZELLE CD",12121,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Femenino","consultori",04267883333,"Checking","green","10:55:23","00:00:00",33,0,"at","at",0,"",0,"",0,"",0,0),
(19,8,"Alfredo Tiapa","2020-02-25","2020-02-26",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","ff",1,0,0,"Maturin","Vargas, La Guaira",90,"EFECTIVO","ZELLE CD",12121,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Checking","green","10:54:49","00:00:00",12,0,"at","at",0,"",0,"",0,"",0,0),
(18,7,"Alfredo Tiapa","2020-02-25","2020-02-26",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","kkk",1,0,0,"Maturin","AnzoÃƒÂ¡tegui, Barcelona",90,"EFECTIVO","ZELLE CD",11,"USD","alfredo tiapa11","2020-02-25",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Checking","green","10:10:17","00:00:00",120,0,"at","at",0,"",0,"",0,"",0,0),
(17,6,"mariela bermudez","2020-02-25","2020-02-26",04148972972,11338898,"Venezuela","1971-09-17","anzoategui","doctoras","agracia@gmail.com","anaco","hhh",1,0,0,"Barcelona/Anzoategui","AnzoÃƒÂ¡tegui, Barcelona",120,"EFECTIVO","ZELLE CD",12121,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Femenino","consultori",04267883333,"Checkout","magenta","08:56:23","20:23:22",2000,0,"at","at",0,"",0,"",0,"",0,2320),
(16,4,"Alfredo Tiapa","2020-02-24","2020-02-25",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","fff",2,2,2,"Maturin","AnzoÃƒÂ¡tegui, Barcelona",150,"EFECTIVO","ZELLE CD",12121,"USD","alfredo tiapa","2020-02-22",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Reservada","brown","00:00:00","00:00:00",0,0,"at","",1,"",0,"",0,"",0,0),
(14,6,"Alfredo Tiapa","2020-02-21","2020-02-22",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","fgfgfg",2,2,2,"Maturin","AnzoÃƒÂ¡tegui, Barcelona",150,"EFECTIVO","ZELLE CD",111,"USD","alfredo tiapa","2020-02-27",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Checking","green","11:16:14","00:00:00",0,0,"at","at",6,"",0,"",0,"",0,0),
(13,4,"mariela bermudez","2020-02-21","2020-02-22",04148972972,11338898,"Venezuela","1971-09-17","anzoategui","doctoras","agracia@gmail.com","anaco","DD",2,2,2,"Barcelona/Anzoategui","AnzoÃƒÂ¡tegui, Barcelona",150,"EFECTIVO","EFECTIVO $",222,"USD","alfredo tiapa","2020-02-21",90,30,80000,"Femenino","consultori",04267883333,"Checkout","magenta","11:17:54","16:50:25",1500,0,"at","at",2,"",0,"",0,"",0,0),
(15,7,"Alfredo Tiapa","2020-02-21","2020-02-22",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","fff",2,2,0,"Maturin","AnzoÃƒÂ¡tegui, Barcelona",90,"EFECTIVO","ZELLE CD",2222,"USD","alfredo tiapa","2020-02-21",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Reservada","brown","00:00:00","00:00:00",0,0,"at","",0,"",0,"",0,"",0,0),
(12,3,"Alfredo Tiapa","2020-02-21","2020-02-22",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","XXX",2,1,1,"Maturin","AnzoÃƒÂ¡tegui, Barcelona",120,"EFECTIVO","EFECTIVO $",0,"USD","alfredo tiapa","2020-02-01",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Reservada","green","11:03:51","00:00:00",0,0,"at","at",4,"",0,"",0,"",0,0),
(24,11,"Alfredo Tiapa","2020-02-25","2020-02-26",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","ss",1,0,0,"Vargas, La Guaira","Vargas, La Guaira",90,"EFECTIVO","ZELLE CD",12121,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Checking","green","10:57:12","00:00:00",13,0,"at","at",0,"",0,"",0,"",0,0),
(25,12,"Alfredo Tiapa","2020-02-25","2020-02-26",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","jujj",1,0,0,"Maturin","AnzoÃƒÂ¡tegui, Barcelona",90,"EFECTIVO","ZELLE CD",1111,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Checkout","magenta","10:57:24","16:51:44",11,0,"at","at",0,"",0,"",0,"",0,0),
(26,14,"mariela bermudez","2020-02-25","2020-02-26",04148972972,11338898,"Venezuela","1971-09-17","anzoategui","doctoras","agracia@gmail.com","anaco","jj",1,0,0,"Barcelona/Anzoategui","Vargas, La Guaira",90,"BANESCO","ZELLE CD",12121,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Femenino","consultori",04267883333,"Checking","green","10:57:41","00:00:00",44,0,"at","at",0,"",0,"",0,"",0,0),
(27,15,"Alfredo Tiapa","2020-02-25","2020-02-26",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin","aa",1,0,0,"Maturin","AnzoÃƒÂ¡tegui, Barcelona",90,"EFECTIVO","ZELLE CD",12121,"USD","alfredo tiapa","2020-02-25",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Reservada","brown","00:00:00","00:00:00",11,0,"at","",0,"",0,"",0,"",0,0),
(28,14,"Alfredo Tiapa","2020-02-26","2020-02-27",04265910071,9294677,"venezolano","1970-02-08","casado","ingeniero","alfredotiapa@gmail.com","La caracoal 4 maturin",11,1,0,0,"Maturin","AnzoÃƒÂ¡tegui, Barcelona",90,"EFECTIVO","ZELLE CD",12121,"USD","alfredo tiapa","2020-02-26",90,30,80000,"Masculino","digsby construcciopnes",04267883333,"Checkout","magenta","08:27:43","09:06:39",123,0,"at","at",0,"",0,"",0,"",0,5800),
(29,15,"mariela bermudez","2020-02-26","2020-02-27",04148972972,11338898,"Venezuela","1971-09-17","anzoategui","doctoras","agracia@gmail.com","anaco","ss",1,1,0,"Barcelona/Anzoategui","AnzoÃƒÂ¡tegui, Barcelona",90,"EFECTIVO","ZELLE CD",2222,"USD","alfredo tiapa","2020-02-26",90,30,80000,"Femenino","consultori",04267883333,"Reservada","brown","00:00:00","00:00:00",11,11,"at","at",0,"",0,"",0,"",0,0),
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

INSERT INTO `restmenu` VALUES (1,1001,"pasta corta","desc pasta corta","pasta","mibotalon",10,"$","ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0\t( %!1!%)+...383-7(-.+\n\n\n\r5& %/---.0----0------//--/--//------------------------ÿÀ\0\0¨,\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0?\0\n\0\0\0\0!1AQaq\"2‘¡±ÁÑBRð#á3CSbr‚’ñ$ÂÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\02\0\0\0\0\0\0\0!1\"AQaq‘¡ð2±Ñ#ÁáB$3ñÿÚ\0\f\0\0?\0ùSBã¤rÁ\"q „‚Lð‚­\' „ð‚­&y …Oe‚DöX˜Oeˆ„óA\tè!$™Dè\tô‚†NÊÝ,‚ìBIÓ]\"»Ô¶ÛæLÜöw°«–>~\\×=ÁX\t*{QƒY©¥*½Åez xßb&L˜¥R ±UÐ|!/wJˆûÅ4ÚûZœf$v‰žÄ;/W$´É\vÇˆQhÞ¹ñ·FY”¯p_ü=Gø3?âa²²\'\vœ?º_üOÚJÕE0k-ñ?h!*T•\rRG¡‚-\'N™æ‚D‰‰„ôž0Bq „ëA\tâ\"$Î!;\'„‚L”L¬ôžh!8ÐBu „èIž\"\tÉIú\\\"|Ï$¥ŸöŸ™ˆ„sIØZÕÿ\0w—ýGíFFáRþT<À:¼NÓ+¼FÔß…Hyª>Â\'d2‘øiF\\õ&\'d¯ˆc\t=†¡O÷I>ó‰Ø$o0é]›¤N’“ì\"v‰Œ.^ i,{AB`ø¬™IAÍÆ<÷âùÐ8Úáê&Ý>åfv¶¾h)=Þ`À–,uçöÞ0.Ll»œ÷3>¼2,Æø$ó5GÂÀ\r\tvŒç6B£ªöÝNÈ¤A}Æs¤©@¡Ž‘ŸjQöŽD‡Êe2¤ÌE—-\"À‡qÕÅãÓaüI…Üç5õ/\t– ¿(êâÏ\'é™ß\'r¹ÒäP=¡Ô\"î@QIPs,{DP“fS3¦V²“ì Ú!¸Àçv>‰ZÊO°ƒ`“¼À\'þQ+D·BDFÁ\'y‹ª?\v¤,ÅWùÄl“âEU_…“?$×ê>Ñ\fâ&«ü<¬F*èZ\"ŒÂ&ªìåT¿4•úùDKE³%)>`GPGÎH´D\'ˆ‚L‹A\tâ œ0BHAÌ™½ÿ\0ó‰Ÿâ|!»\fVù\\ÏÃ™ÃIƒÛùÄl0Ü 3û\vT2ŸqÃ\'p‹ª;5TeÒñ]¦M‰\n.ÏUM,‰*êCs.jpßÃ•±˜ Êçã´™ÄÓáÿ\0†ÈþÑEg™ú’§$ÑQvf’W–R}„NÑ*\\Æ’å!>Té©[–f‚Ž`„èA;!$)•ÂIŠ5A\t\\Ü9zçdïMs\n¸†»îÜ0˜êÜyG7â–Þ/œÜšP«¹á\v«\n”&Mya^Tƒâ<™úÆ\f»7îcî97®¦N²b¥¨³ã³_n|Z7!º™•QqŒ–oïÖN–dÕ)åYZl×ö÷…ªÊKþmÉ\0‰ª›W6\\ •Ï[]IH\0s7éh×Ve¹cÝ–v!Tµ4µ’SæHH¢‚¢¬-Ÿû­›IÕâ52V3Ët«@/}í´\'Ä8ˆ*~sPbWÎ>RÊìyI,°N`Ë.\\6£®â:ø¿><´Å›\fhqövhŸ(°V\t\nÐt-Á£¥ƒ/ˆ–{ˆŒã„UŽU¦™¢\n‘<”+6eÄ¶d$hqÍ@ZA¾¢Îâ3~ hÜrag[´^â5&Eqje\nš3Æ/+9œÄÂALu\0ÄI‚Tátó.ZO ˆ*$î1!Ø\n)ŽBr ´T “¾f+¿\fÕs\"naÁCê\"»\f¸È&j»²’ËDóe¬AGgjÂ?(ÂÄñìåOøGáXOfª¿Ã?š27O¸f©s x.©T\v:Ú+p„§–5¼¹r”ùRD\'JŒ‘K$ „µ4œL—\"™1–¦Xá™`Bz&DXœ€r™¨P(2§W-±½Zúä,d–´«‹z\vzÇ;ñ,ÄãØ‡¹§Jž{oH†°Ëu$Ý`;7Î8‹‹`³ÜÛâ†m¢‹L3%™@:?Ê¦·Æ#Åä6ÛÄË˜äW(\t…QË#ÿ\0bbÖµìU’úúúEÆl\\’oÝÿ\0c2iÝRÔp=ÿ\0ê?\t˜W‘!\t’}BñgÏm·WºW&>fõUR”!É\0o2RÆìæakq•‹™%.€<WgxHC»xš%dðÉ¢eàÌ©”U$€¤±b\\ØúE‰Þ+×³ýNvM6Lg†““ˆ©*þ4°”“”oÏˆŒá€zùË®¯Ÿ0ãÛï©ieÙRÀe¥#Vq¬kÇ“\"ÀÍQÅˆTÌg»P\nñ=˜X¾ÑÐÃø§š²zÌï¤±åŠ;f•L\0%%JÔ³p{F-F©òçuþ¥Æ™|\"îd¤\"zVeLÍgÃ8Ü‹4WP\tã£¥R­Dq5ò«Ì”%S‹)^’nm¤;ðü¼ÑÚÒ›eøjæ,¥LF¢;:|ŽäÜåƒ.™\'h×&Pº>\t2…Ó*@²ß!In;D{¤Kå#(aBQ^”­2ÈÌ£·°¶Ê¡‚zÂå«¥AÙ¡’n\r3?•ŒL Ê”¡ù~\\#¹8XYô‚äC„§Ê\"ÄÁ\tÆ‚BI0\\%‰ “,\0ˆI\"t!<¥°x«$\v5—ˆË%œF|z¬nhæÀê.§$âÒˆr .F¼!¾2{bÂ1èE¸Ž!2i2å„~i…OnI(æëµ”6,Ñ‡]˜‚¿¤BGx\fÂ7YséÃÒ8¿™QúfÁ‡Š1$ÄKZ:ÊA „…œ†ÊKD¨ÁWG¸zkò4Ï1Z€oÌovØïV9A¡Qi‹ÂqÍÜ¾]Ne;2‰p~eÀúÆVÆ¨7]úÎšâ-ú„m,\t©r\nU¹¯QÊ1¹¾Âä2òßž%IáIk‘¯R\"qãÈáE}Ó)U^,ß¾vº¦\\°êN`t`çBM½#PaÔ[6ÑfgñLfB¢‰.£aà`_Òà?¼7aBQµ;¯&„JP”\'ùä¨\veÊNwmž!6Qš}ÅNþÌmD™5\'.d…êR.1Â3®5g±Áúû)›J;EA„K”Quy‰.ñÐ€çÖ)§\v(ªÁÒf\t®mµ™øÂÎÝâæ”ËÆÙÉÈì3xC¹^„jÐ%ÌSÚÂ9í›;¹\0Ð€@ñ,\fN“Þ3å7ø|#­£ò¨³w0j±‡?šUJÀAJòårÛŽ ÇQò2´Î[)XmkŠLË§uoí\fMp›ç+ºji±9S\0RV<ãråR,p¤õ\nHeƒ\n2º…€Ä3a÷JS¬œ£hÏ‰™‰s×¤’\"Œ\n™2dÀì\tåÂ)ƒÌìò€Gh’F¦ñ¶L± „îh!‚ÐBI2øÁp“\f4ˆ„öh! \'g¼’\v\\%55ˆ@u£dUÆ&6cB «ír.¬fmZúMcDÞ±-Ohªœ$ËY\nÐûhÊù÷‚7F&%SÔ”Ì˜¥8\')bÄk<˜ùQÌiÈ^Öpá®b—ãh©®H•Ç‹oPõ!R©–”•x|Çó1g#Ñã3äñšº®%ÝJ¯Æe\'%Ud\tJ!\rd\\°áž¬Ëî\nBˆ½T\t\n–æä•Þ[[–¶å\f\fìJ°öL™µ!kd{ÙÅH§°e‰¦ûyXŸWŠêŽÅÓ³ÌÑ¤É½¼Fôš\t˜jewYRëY!øZçÑ¡kh^;›<r÷ìS%J\'Â€Iâlç®‘˜Í›ëŸ¶Qˆ=³;MÚi‹þ$´dHÜ—\nXk1ÂÃiý¥Æ5aM×bH™!ªÔÉ@«¸<¬oÒÏK¹{õ˜sbÿ\0ÁõêŒA\tKM(Q¾ØZ×ßœ/ó6(‹ý¥ñéÙE*ù*%)Qés¯81;æF:ßR®ÊË+PµKX Œ‡*mÀ5ž^×Š•Æ\nnf·\rÄO’o›c±ëÎ+ƒUÏ‡—ƒé)›Oÿ\0¤‡Ô\0Eô9Xs„ƒÄ^©Yô$ñûFRê‰\0}f Å ³»•PV‚\vÜ3}bøÓabIfaC‰”Ä{aPä&X–6]¾QrÖxš±éR¹7LTÕ+¾\\µ\0­HI\0ÃCåºˆÔþ™?Csìž–;0B‡ \rOÞ.Ä4ã6÷ìnÄ_I_2[áÀ±öŠQ¼xòß”MT$&k±s‡ãÔ>1ÁlzmÊ<Hb±\t³SãQ$hAfô…¶«&N\tšGzùù™Dµ’R÷;‘Â,5Í³iæ#.€3Xâjp¬VK’Ö³·é\"¦GÒ2Ž#|ÀÇE‘–¤+„^å*VÑ2#\f¼`„öng3A\tÌRÑ€îHRz‚NÅd§Ux§ŒžÙý“/Úzùe—*a\vÌuŒÙóÔ¸Ó1Ü5\vL°¥¬•(:‹ü£—]•í\f:DÛÏp:é)˜•j%¸ïÒ(5ŒÑçÑÄ2—“,$§Ä­ÉŒzÌ¦¼¤žzô©lw\\Åý¦Z‘:^CçÃ~—†y™eŒá–”¯½‹\\$³ž*ã\\àzÙ¸àÊTÚ”¤’@užA:vLK¸oiw}´ MN¥L”1,¢à§ü¯óh†cú‡§ñ–ËM2xÔ¹”Ë*JÈ^M’‚\v¿ÔîÜ\0»Æì~@/¹…±äÆNÏY^(L(HW‡r¬ú“ª¹ÚíOú¹‚i˜Öå¯Þjp<5R‡17Ô“Æì7Æ„Ü«B„g\\FT¬~Uèl~)•ü¡‡¡ŒÄ9*}D»§`P£›0:µß‹iScöÅåb@15‡&M0B,ùŸœSP)—ã‰¬˜g0¤Î’™s^Ó3¥‹\\;…â¸òÿ\0ò\nQRšŒa”1ô7¢ì£$™ŠÎ¯Ò,nN¤ÃÊÒ¼™9uþ‘\0™h\tB€Úk×Ö2fÕ:(U¿ß¶F<{±Š«15Ë/·\n2îî<*ÏSãò–AI<ƒcwŠ¦×ÈÊ• ñ¢¸e\0gYo`Ã©‰:€ª-ì”ð¬ß]KS²¬b¸r–;Or¹1ú¬Ÿ(º­xj!ÙŽÃ´˜cÄì,Ž®LŒ¤LQ ~ Ä6ñ×«æXoCbXš¹©îÒ§“”(h’4w»éhÝâæÎ6ÅFb|+ç®e^Pbœ©7Ù@ìDfó¨öJê<<Ÿ\fo³†oñGx<í`£ÓcL¼WcøˆÛ\\Ä\nJ“—6Åˆæ6†´ƒ#¤9*x\"5¡¬FBHe¥þq,Ø”XîjÅ“Ä<¥ê\tP\rujÁ­ï\fM¬\0Ë±¨®eQÌîCoÁ¡‰*Ò§®&§³øögÖ-¦Ö6Úç‰—>œ8±ÜÕÊ¨Jƒ‚ñè1æW\fä¶2½É¼:.^U\"p˜‰1\'±.UÔKtŽf«\\Q¶§ÎoÁ¤\f7<¢RÃ©k¶xåäÖ±o7SV<aGgê;54“•i^ì¨”p­¹{ŒbSû/Rµj‘ë\f9,înâX\n¥â:_v”‰ /wxÎØU˜±—L»Wl¾‹\0š\n›®¤¼$¢ßFx¦£T\t`$’ ‘æ?XFJÝ~’VÈŠ1‰_ÒI•˜%_ÂP,y—Ø|Ú5cÌ1¯}ÄºàE4”Så–Xðl\\iõ…æLfŠ÷®ÕFip©\tŠÑr÷ãh«.Ü|@ncTå;ÁÛDÿ\0Ü)™“Ó®ãñr¾Ña)©É,u‚¹ÒB‡^¢(î£>i&¨ÓÍÈ°RÅ”80Ì˜|Dâ]ZŒúHRwxÇ°:Ñô–º7\nMHKƒtÄ~õ…ÑÂO¨=Éý_qRÒ©~4lÅÔ:ƒ¯¥ùo@%C)ø}ýûý²¤©4Â{@žƒ—EZ\r”9‡Þ\'!9<ËÁõ×ß2làþÆg¤TM“–T»¬–\nm:ƒ¡´dEóœ¾ÏæSU”ŠÆ½™¯Ãe¬%ÊŸ5ÉãÇÒ7`Ü¶×wT(É×Ð¥Ió±=\'Q§ÆËÉ£‡3ÔÅvšHHD©Î©,\0ôÞ1âPAÔj(µ<Ìî\t‡Ïï†YŽBŠTu\0Û[ð¯—p¼ü¢°å.Obo)±%€A•1@B@àöQÒë•’9FïÒa©–´\0²SÃP}GÎ ãÆ¦ŒlA°$(°9JHX*c§N>ºÃ¿.w-ùÖ»WŽÑÊ2ò(>É;ûÅìWŸgß²ÛŽæ•…ží)BJˆHH<ÀÕá”³Š¸ñÙ—SU/ LÓtêDemQ/±ºG¾%”Š»B‰²QßÊ%Có[›pØ‡Ìì×Ø™¬\\º™ëTàöv›=¢Ùò60\tëÖBâF\'ŽcjþÎ*RT¹`ÌHÑ¼ÍÓx\nï^%–û&g¿+ JI$ìmq¬0aU 1ƒgb-aŸ£UFd•d Ý;ž‘P!òò;•\\Å‡\"Œr¾Î†¾c¹ûF/Î¨4éQ…IèÀiqeRLîÔû‹ŸhèáÄëY¸öLÎÈ|¤Mm:• )´nÇø‚MÜÎúBOúÖÉhë’s\0õcXÈÊD²çr#›­Îûk~Ù»K„n·‰{/VœêRîI`7úGò°Zu7uÆ»A\"Y)R¯ÀB‘úUhEjíPÌ\f¤‚Ö4aÓ¹{ê¥r/xŽ:’\vß‹ErbÈO›ˆ.0µ¡:TRÚïíØ÷(q\0·4ø·},·6x€LR¯¬12X©6(zIõ‚ÉZVY:\'[4fÌ¡ò‹ôŽUˆ1%™ÓÌ´…5ƒ§–¼„YWsnácdNŒ’Óé©s¹;˜œ™T0Y›»”ªw˜Í|Ìé¸ÊÐÔl~m×~“J© ©}*ê¾U)\fÏvŒŒêŽJŽ§¤[b,=þØ³Âiê&¥såñú€üŠâ»7Òš†\nF3B¾ês3oS·ÔýüàÔâbf­Ó’Y#+[N\rÍýáyXR±<úÍXP…£ÐÐÌZ¥¯U2r†\fÜ\t?±\f,®€ÁISF-ŸCQ,ºf©µ±)6{8ýÚ/‚p¦£‰Dv=.®†ãó’J\' ¨\0è˜C:wèHmFºÅ²d` bñJ’GÇïÒ0¤Å$LWxA_Œ$êÂ2ü¤ãOÌ=8Œ&bà\tQø|¡gñôXñ¦\'ÖF—ï4k¹b;“ÀùKA}ggÌ$Y’“ RyD#æÈh}dŠ,ÅÄšq—2NG‚@e¸ýíu82i†æ½Ñxs&SµI…ÒÍ$9,FÃ¤a:ª x?ÄÐ1Mób43”Ós/Ìl4euf³ÍF2ù(\n†àõU(FYå*abìz¡îö*øŠ(·À‡ªX™ú\0oM‡‹E‘‘(‚3[¦ž‘p65õ µŽ\"ìVˆÛ*Èk‘oõŠªcVëŸ¾d‡,%Ô“S•Ü”¨²¾±DÊ£Ì=¼Ë2ÄÉãª¡œU(<™ÆÁ¼¤j—á¸õïŒêSh=D\fƒ&4¡íJ²Ü4{¨¶€FuÅ™\rq§.3V~œU³ÒÜÂ[;å:î¼hñëø•8Á=Ì±œ™s\tÌÅ%‰Fí¸ã£yç©SKPöÁÁ\n»Y%™úÆ]F‘÷yO˜ÙHbó•8…å¸òíñ:ôú\fká<Ågnh©1\"\\´”%\' $XF|á•©:–DÜ,ÉöŠyTÜ¡l:ðÖ¬ÕïÎ@èT®›ÔÌòæËBÍÃùlïÆ“#7]M^/P9s@£3¨µ‹jZæ‡O— ç¨¼™Q~0:ÚPB“~9³z’#IÓ2p\'ó7é%\"b¥‘ÝK)Œ-Kcj&4ä\rÔmIM=G½d1p3%Á[ëòë<\'ócUwŠ1£ì©˜sÍXH×*Cz9…¦*-òàFŠªB£„”\r8D.›#d.GÂdmN06Ü6ŸDïá¦ZÁ½ìÃ©xÐyH Æ*“È6\'hhP”(!E “™Dºº„n/!àFlðü½Î¡2¥$¦HgÔê¢y˜[å%i8’“m(ZJÁm}¯LH,%·Ø53¥\'Ï%’X\vé´jGE²{–Rh43pö‰NIHóñ#[ÆFrZëˆÔ=™Ÿ¦™X•gG ±–m»YM¯¼nÆ¸«ƒÏß¶#(7Kžì©žZìÄðá6<££éýH÷™£•M•#áÆ+(D†æ-Ä“‘\nQÐb¸ÍÞæO\vÄÔi¦)r—ÑŽÄòshv@¶Û+šÂ–ßd&-2¼Z(¸lÃhË“Sá¹\t×¯¬VŸ\tðí£KJJR—QñonàÉ‘wlJgÈØ™Vû?HTº¤Ëñk¸1›1y”F3áŒ¥]¤¤Í•jc¾d”õb Ñ¥]; ü¹“á9ý&\"Å„©ó„ÉEE6$“âsröÖÃhN¯V\\•_¯?~ïdn\r(O1î¹SÕi!)ã›ä8G7Ÿ$_ß¾jw\v+¤•R¤©)AåýI†¶5C]Bû…ÊgÓÔt¿\vÀ;€‘Ã*‰^Rà‚ÄsvŠ>=¦‘5š “lÖÐo\rÆí\\ó3ºH¾]ZT¢«§ÂÁ*\rÇRüàd¯:õQxõ(|‡ƒïˆ\fÙÒÒ ¤Ø¸cÂ-³Ëî3H<Ë{E8ÌÃT½Â’ßò\0ßÔÆ­åj¿oÖgÔ€A™\f7@KÌ@,®$“Ï¤ol,I2bÆ*Þ?–hf¥FX!bÍ›xÎÛ±yÀ?¼Ö<Ü\\ÏWRBQ,¤ž%Ò«›‚tÐV½Ó;&Øe°«óÃã>m1*kÒ;M§ãÓbZf#ÊslÇëÔ9°‚±õškIãÁ3æç”¤„å‰ãö\"ÎáÍ!ÑF.I6b”V°]íaÌü!ØÖüÛhüdm#‹ƒœ3d)/aå\vy£Mq#Œa]É(1€Fb•ù\\h}#­‹\"¸ j½³žêG5qlé‰ûÂ |yrƒâÑÜñ€Vç1eùÚiÙNÌ4É¡M™Ò\rœsÎÖj#q©m*ÎA Ê ÁÊÞûšÐ€&f»Zí-È¶‚6iqm`ÎbµÈBŽgªDÄŸ! ~¡þñÓÉªTàs9¸´ŒÝš›\f!º*Ju\f=#îÈ¦ª3¸ý<ä,OC®Qb¬ŽKpCß¬JãVë™§Oqý,ÉjBgKb•\v³·¿ˆ¾ü¦_‰Dâwb/¨d@˜ËÄÏH¹‹²Ë§óe*Êû‘¸¶¢4¡ˆ«œõwÚ­^ù£ÂS2iPQ²†·íÁÜÆÌT\tÔÔ­‰n+SÒ„ VX%\tÖûžœjÅ‰ªýŸ¼Ak<Åµzæó,«¢wÓÚÌ“Ýkˆû\\à\0GæÃÊMý¡k`XèúQY]@û\\µÿ\0GPH.O‹Ý¸Å’•Qì‹pü<\ny))s0fRNùüLG ÞÑ:‹\f*JÓ\fc.cYš8äY¹¯l•Upfm7hÔšœ¸Ð-q÷ëýÌ:2ekèÆ*š2²ˆ%¯\f°xnþŸOd¸ÅÔaÈZƒ„–.€P†Èý\'‰Çžb,›Ë âÃa\vÔ>AÈ¢%Ño¸·ú¾ó¼3f(³‘È\0ßxÐ™S`Eÿ\0w,\ró®y³-¼\tú’ÿ\0(®`X\\•ã¹\njõÜ’BB²æClMîúB“ )÷Å¾u\0’8ºûýîBŠ…sg÷¡l†ŠŸsÂú”©î7pÀñ5Ò¤å\0;Þ–øñ…(<‰”±$ŸIJ©SÞ:ÃÛqcéÃ•éºï©U¼ã¾¢¬MiQîÀw³FwÈÞ%\t±ËfS‰t+–lo}ŒiF+™­Å8[á>KJ¥Ÿ~QèZ§=.0Ãé–àê®4ÍÇ”Š\\båñÏÄniê\n–¥(X—=·ècñ6þž#B7¯0ü6pÎTÎùÜh5±ÜÚ(5í}ü#1\\B{@$•f“›F¬‘sÁËéÆí§swW\'Fg• ?ˆw´XR6´g6¤§BÍgêúÇ9òò…âhU±æ.+v7}Ú˜UFö–l¤ùDµSÖ§Enw¼Qœòe¬®ž…è*`‘¸]´c\fL§o´Èdæ:¤í2RJ;Å/ôæ\tKßHV]æ<×1k˜/`Øæ?>bD¼ ƒá’Nö1³á\0RÒ‡QÍÔD¬B`ZP]Dh.\\³CN”x{H•ñNë¹ô:„Ì›+ømâHgqvÕÄqsðàzM\05`Š2éÂf•%ó^Ýbæ_l’HšvŠœfR‘1Ð¢|\"à+v=bv|}ñâsÄjD„¨\0<fÂÌxž¢4cdê+6M€î„a³y÷MÊR.n×åéÆrcÆ6\"ßÖ{1ŒE –¹Néð¨jyxF,åñü}Þÿ\0‡ûŽÄ€ŒþÐÉŠJ€+BIEÇCêÍs*pÑˆëpŠ5¯:å+6ä)Oó‰òEsô’1©Çd \fÙÏD¿»D\0¹#ßé!­Ë)qùFbe§1QÇO[…ôHë¹r¶*àÕ½ª¦Y\\µgIK‚âÏÈˆÔPÜ~øµB\rF˜jDÅ¡Bèîü<\våcìþñ%\v1¾ªQŽÑD@Õ¿| \\h9©OQV<Œ¤)\vmõãõlªTdÓ¥¶‰x„Â•T4ÜôŒ`Bnêl+´@‚§”•æ \0IØ†V0j¥.YÙLIkA\\Å¸*Ê,îNÃ(x{é€É³æ¢²fP ´a[•@äQWú¿Bt1Ÿørm,|é¸Lä‰Â‚”+óuo3tµ=E­Æ«ÁÙ}âTH%ÊOGÖ2®ª–ª#ò`äÜO~‘ÇgåY¯©qÈzóxXÎÑÇNˆ´¢6›X”\fÊ-õˆCêeW\v9¡ENs™nN×ÐrŠm1f»ëà#ÁµbüZh”ÆZn\"÷êv‹®K\"…z™Zr\"¾×J2žRe¹*9TÉ³üÄiÑ•,÷#0<\0Â¿–¤ƒ=Y?È–$¨èü„vp‚ýf:¿„3ì–B•HÚÛ¾®7»i¤eÏ­fˆüæBuâ<E@€Ü÷ãó¬;‰›¶¥@×‡©%Ô–Oüàl»…3j@+€ÕÖ,œ®œ»q\rÅÇÊ¸-úÈÆîG˜s)™+1%D9çß²OÁ“â_yá\fÀ³–éÔÃ°ç±µzˆË‚Ûs¦Ud´(»1m[XëdÓ“Œm™S/˜Ü.IQþ\n-p/nqÏlIý3Hu²©Õ(p­îR]ô·ýEñéÙyiGÊ=°ÚnÎÊ?ÚwÔCk¸Œ™õ¬§É7bÐ)[iF#IO%mšd³fg»èÅŒ7O«ÎâÀù™3iôøÜÙ ýÐÉÍÃCçJ¦*`.’¢Iã«81žw9¡Ú˜íy>Î¦³³8¨XRxÎsjxì!:‹v\'¿|V?Ò\tî…ö3\nBRÌ÷õ- Ò+§qÎÝÌÚ²ì6¨âG\tž%IJÈwÚä¹´eÕåÈõ›4ø4\0Ê\'WæQŽÉÑîäÛÚÙtä“0ëFìÁ\"¦¢hð¦|¤)@,ù™¶?ÈÂÔØ$ÿ\0É½@»ì@°¡6^eæ*´À¢å\'©Û‡X£‹^â®£¹k*-–9Û<Ô%½,Å•³gwÝ¨lÄx}ñ¤iÊ­“ùhXŠê*ŠTeÈÎþ‘©0±]Ê\":ŸÔ@ýãJ*@œJYI\nA§Q\f.üNcíÂ…J¯º0/¸X0Ò`O1K@c¿>±sÊÝGþ¡\nìLã-KAQl¶IØ¸%¸F¡”òG²-Òø1ôüJúÇ/6¡Û¨äÀ*\vŠâI–”ŒÊZò[PMß˜`cN2sc£Üœh1’Lºv\n‘c¯ýÂ³¦DP}!R\t Ë¥S¥WPÖÊm¥Í»¸¼–:‡&˜$X\094ibÃ˜öj%¬Æe&a–¢®H·GÒ3‘‘»M*´.-E¹É\n)ZF ”ò71!rcæìE¦eÉFªU‹ŠVDåf\'Ê\0ñ«x¾>/™GIæ_‡bê˜\n“%i\09*)Ó‹~qfÑ\"›^kŸ¾£1®ï×Ç²SˆOuù³8pK€[¨x^La[ƒc¿Ÿ¤ßƒ“ªÿ\0r\"¶j|ª6èG´$\"“dKÛ±]Jæ …,\rÈðê\túídfBË÷ßôf?U¶¯cýˆ|ŒBZ%’’¤]Ö{zÅ4¥Ñn¹¹‡-3í“ÚGSüÁõTà>’KÇå’ÒÒ¥XrX°$.êfwí!“˜Øiî\"˜ñ»›<K³.>\0¸‰u\\’zÃv¨—\fHº“™,å|£‘ÜDW *Bßãb¹Žq$M2À›ß^\rõ„áÂÀ_²4¸n$„¡,÷Ï•Ò\\­{~b#«‹Tå|§ž¦s¦BMˆ¯£HYpê:¨;+×qh[fÎîiaƒ,·ÃOy’é>ÑøúB³ålid÷¥À¯šàzÍ4àRÀ¤‚Û½ÞîÇAÒ9Y‹\f+ïï©ÖÆý\'‰Ä¤q&` sÒƒs°á|Ÿ¤DçÔbÂ?Èjâz©’¤ÌÙEW(e¾¡Î7à,Êq™ÏÔã\vçNA›ÞÆci«B•”¥Id¨¹v èÅ¢2b\tw1–5ìŒgaÈ–Í:zotÒ¹‰\rÿ\0»Þ8Ès\'qà`y‡hÖ´x\")Ð~¿ZÄð‰3¦(¨‚¢Ð‹kÄ4gÄÙéz–ñeÜÃ\'K=òÒ©E!(X.V\\Á×ã¾±·&À„¯Qrn\"¦šŽšhJ]½ÃˆÆ4ÎyÛÜŒ™¼ô~9_>X%%:Þ+õ³Æ;-ì`oé3jŽD[R+ë2Ò—wk›“÷1ÓR—Üä•nã<¹×™[fmÙï»°×„bÕ>×Y×Ðc-ˆýþòìo´‰H*B’Ú¹ãÃ}xÂ1á9›‘^É­ÉÄ·*ÃÖ™éÅ+írÅ¸~ö‰É±†J>ñºU>•iP+XÊt)»òn0¯@¿I¡r_MŠÉ–Y*u;Ev>PKßÜoG‰æÐÞ¹¹Š|+,¬ÄP†ÌRž$4l$-{bÕ=òkÄÓ6Y”\tk]œ2íõ´ªâÚÖf^ºš@/Q=.•¸’ÿ\0!»ï“/føê„âèÂÌFŽJˆû\rxEÔîÛ,-¸¸»´òU5R–™jQK¥Àb]ÎnÓ«ÏQˆ@=Åôë›,1\n@6oÕÔBžÅÑîtqm~½!òh&*_x\0)»Ý˜\v9~,}ºAùg)¼uu¯ážçe%ÅÈ-ú×Ú(È,Á\'jª%äçÒãëï9ðü8cÆMæ\f„…”íp«;#žþÑ4/ÊeÝ@qßÿ\0’€ƒ-N†vÑIpz_íJ‚LÁ—Lçÿ\0®¿{—Ñâ&Z•3 J•b-mHhœ‚Ç”ÜÊŠÜ«­ò?-™‹÷€¦b ÌähúßQü¡[]I’È‡¹\n\\B™ÙÉ–U¡*rz—&N,Døcÿ\0&âä\nRÜQûÒ%²rO^éFaÒ*d¦ºÛÔˆrÔ§‹‡Õ¾³SWJR³1‚’n\\ÜÃõˆp±5å<ÿ\0Ã-¥qW¬IPáy»½ïÎãxË%5‰¸¯(©«\n* æb@÷c×HÚ2î»Ä•ªæ6Á–D¤“¨.GËéõ&…B&¬\vå¯h›JÌZZïQ)\tFe‚nâÖM·Ž“ë1¹ÿ\0ä p\'øês±i2\'ÿ\0K“Ï>‚¾}Ìím`˜²B-,\0J@Û˜×¬põ™L–(ö¾g[(±cí0\\rL™…å¤¤`î]˜—æ!çR«’ðŠ_a™ŸKãcÙŸ“íê¦Sò’„þ ÞücF›%ä,aŸ®-£Òk$®\\© 6lÉØè\t7Þ-÷r³”Ì®Ã×U-$’~1&C}q\'\"¼“fgðü]ªVÇ]}\"ÞVá`Š1ÝlÙk”©É¶_8¿Ö,äÜ?ÄçæÄ¯Ò€P‰ŠJ‰VG\v\t$ù¶%øB¯~M‡¿XüI±\vSi2xB\t<FçÌ1c,~)P»Ð˜<r~uu³sáÌrÞ§¹·>™B´ÍÔ²u*¶ß±TÔäª#™€þŽø&¿ieN\'&d°”Ë(R@”ÁµÂÈ7ft1c6Ž¥˜«L¦%)H°#Êzj}Ì[fß@u\rF?,ç`&,Ïk(¥þ‘My%ü¿½=›ÙtÈ˜)\0‘¨±ŒIdÑïÛÎW‘ÔËÍ“*TÒ îÖØï²!#Ó¿¾c|TR=ÇX~Ç8Ð†a`A¿¡×Þ3ŽWH;(2Úü\\Ô±@ÒÖ\f\t›\'q[ÄA?±òÆªR_‚·èÖCRP[Ôný2ÚÇÒ¤¹uK«çÖoYO\fƒq¬ºy|¨J[{Bqæ˜ñÔaVAb}¢ÊHÃHb®F<%¨@Vf\0I»ï‘ˆ`A=*…_Œßvb\\©´‰A\0¶d©ÀpTîÇk½Ç“Nâï9:öË‹RXèÛþÌÜÉIÊ·Ž€omý~‘ÄÉŒã½­×÷÷ýNÊäÞáÜ„¹!a‰c±>_V¸ëÆ€‹<Ìå\rŽ™LŸ8 ,ÛêðÕø7‘ÉàJ%IJ®BÔ¡å\t¿ê7°à×}¢ø€ ðIö\tlŒÊ{\0{þÿ\0üö]r’Xâé:¤ð;ûÄ£DD±µäþñ«6=XÝºoð‹‰ÌÍ™qeÔéBÔB\t$Ý®4¹gˆ*õÌJæÂÆ•¥”´· ©ô›uhÕ(’pòI1Õ6%®‡<žÜ££‹HÌ¶äßº`Ê1à\t¸¬Ãr†êÚ:ù´áÁþ&\\Z‚½Ìv5ƒ—$â>£ˆ;ªÒe}ý\'g§Äà˜ŽF¿3»è=¡8³ûzŽe®eÔs•*YÊ-æ`y…C²Ú‘~¢;nhˆÎr”å›Žtˆ0†Ò?g¯ˆþã—:_ü0:|^\\©’Ô´’œÃNG^€Ã±hrc¨Õ¦ÒŠy–bØÔ™ÓTJŒÅLX$;—Õ‹i¤N]9UÜVÏßß²#O¨¥Ú}\"ºÙÂæzÏIhZÀùSë›:¸¢Õû¢ÁÝ ‰j,²î\0ôçÂ1çÔ¹òÕIÅ¤\\kÁ¸]n•%×1\\Ý@4]i”f¯tN;<\tZmšóø—¸†\fìÂ½%‚¨äÇòptJG„œÇU›æÒÙIb-¡‰9ŠÞ’…AFd®•RÒTŠteI\0«ÄCðq¤t?$Ø<|?ÜA{a}¾\\ÀÓd·•}\f\'*×ØùrøÒùâõ]à)Bò§ÑÏ\'Œ˜1œDÌÓ†ñ)aˆÔÈ$zs*¤µ±¡Ù¼¿â~ŸÌê§ r1éÂ,¸· s¾n%ôl»„(©Sy[n°¼§gGã]G`%Å‘ûŸ_Ú$€IkppŒç3ŸY­tê¶e’±q%v^Ro”«Í¶„·Æ&A}×¬£¶òµcº¬6MfYå]ÚÀéªXØð»FŒ.ÛHYƒQ¦Å÷é\v¨ÇQ,dGŒ€Ù‡ÃXÎÊËÜ×‹JÙ9cQlìfj…ÖÖü¡‡´)™˜Iµt¸Ñn®&¨ÆgV®NÞ ¼jðqº\rÆe`U!ñiÌR ‚\vY·¹D¦Ÿ4OÖQš3›2ÊÌžW{ö€áD^à\t0*útµœ¾ºúëÖ¶j ª!2t##w:x¸„Š…€BT  ê°½ì €x*¤‚GRÔ˜S%¡Iž œ¯áwn8Ÿ‚l¾;Š8Ô¶êç¨<õ‚®ñ\0ñŠA»€O©Z¨\rÒ\tØF¬.ÀP3>¡—wQ]J-cR œü¹š&œ¨æ²ºY›þáç.ÁC‰ÈÏ…ò›SsI†P-KÒHô<¡\nrfò¯&SîËÅuÌÛáØóM7øûíéM7áã™ù23jËp½GrÒ!‡(éS7xd\\ŒÙiPeŠ²†d«6&{ìÖkÊ7àmìtxãçü\vnÆkÝ:ÿ\0uZ\"e1\nir<3$Í~9Kz)òûFwÂ‡÷õ•Lº–6¦%Äê\nR—FmÕ«>‰?½cFhy¨àù¹Òõ`3\"Tå¶Yž@÷öá`ÝDke!nB°-R4¸\fÉÊ\t»³µ.Î}>0°¥¸ŒÁE˜bŒ·\nt”¸\0²À!ÃEômšø—w1n\tXÊ´sÈI!†dÜ] †ØjÑÏ]–.>³HÎv…?I}4ÙÙÂ¦(e*O¥ˆûkÊ%ñÐã¾£o¹ª—^–\npA°.Ý½cÖ3E%_‰¬$d@]±{’Á_œhü£Q~È¡BÌÍ+d9JFuæîÓ£°.S`\0$úƒ³ÅŽ‹qéÇ?¼^c#^Þ~2á@”A}³\"9Ù¿VáSzãsTå:m…„[B.â5:uaFNTÖ½Îþ¼½á»]þ2*â@©«þ¨I[(­eC˜oøñŠ\fäp£¯ÎK\"ŸÔ%UxY”‚êv%ýS¤fÁQßó7á+ëÄ[6rPCGÀÄl;¸æh%kž%séÐ²U”ßV+2ØO‚D‹0\fD1—”°KÙË.C³íp›¼Ê¥ø&!-s@žW”ÛÂC‚t7‡&5Ýçº÷A‹ÿ\0_¾\\ª¤‚Î×ßë¼+<u4‡âP©È*Í˜k}£Cé™‰ÌÜnÅOß6´\tÈ”\r’ÃhÈì.ªWo¬OÚÊœ¢[€nXZß¿hÕƒ\'$r‘2uÕz\'(’Îç“ðe¹àUÈ\f\0»êJ…(:Cø_‹©[SÊñ˜â-dM¸ó-m9ÌÌÝ4ùÆo\t›©¨d¸R-¬g`A¨ÐnXñHAjª›žôÄÆU²…YŸ¨©TìÁ$_N^±Ñ\\~Î&LÇ-Æxg&Ìa—7=½ô.Sþ%þ¾r¬øÑ|æjpÎÈ±š¯ö§ï\f_…ß9Oì?¹‡&¿ÓšZjtK\f„€9}NñÔÇ‰1¨(N{»9¶2×‹ÊHÀo.¤)<Ä^Vq3“‚P@v!ÄU”0¢$‚A±WvbBÁÊèw°$¡Îù_¡˜é\nN>|¦ªýs25ýŽ«–æYLÐî2œ§þ*-í›K•I¸åÕ)ýQ5IR‚Ó6Yÿ\0r/ÇüÛÆ\\Ï“äÔ~ñéâšBN®IÔëïbÓW‡Q½IDŒ·7{p‡¤\f]’ã‘erQ±,.\0\0hŸS¦ñ)ª†Îa•5Á%¦¸Ì[$ÞäZÚ\\Ã2ÝõØ‹lËŒ€#yUhJ$Ü(Ù˜r?»^/*\0èÆ$îî\rSZ™…C1 K>¹ÒBY÷°:®‘\\¬2Øô¯¨â3”¯Òrb’5ý)6\t>N£^{Â_)ùz¹û±ªÌGßßÆ6Â¥>Q±w%Æ–äxlbW\rzÌ«½šPÓk)\0ßüÄ·ÀÚr•Pô˜—–\'ß5XF&°\n&¤0{;qúG/6› ½£øâ]2+ž¾pi•s¾WÊI©$ÇƒûD®ˆ\0ÇÆnO\v\"žAJDÅ©Ák\0jl÷%öh¸8ø\fß(Â™\v~ñœÚÚ|Ú”\0S:R›Îu*:pÒ\'6|!v ¿óí?H&\fÛ·5½§ú¯¬Çb5MˆH^w+­` Rf¥Éó\t`‘xè.Œæ~dˆ<êÅ’Á\rkC“D£¸¶Õ¹ê¡1G(!$ÛP—6Ýþ/W\0#5›3Ù*Ô*M>r0’’ìç-‡A”xàë4ÿ\0å5ñ|œÂ»O†ê@JÒ”©Îp\v“æ:phÓ¦Ò8°\0{âsdSÅ™‘\vRA*\t,H.÷ó\v±~†—ExÄ\nÇÉ÷Ã\'U”e`×J‡…C}ºëÈBv¹ñì—ÓêÁ°Ã¤äì]JUîw`Ç©yóˆ`Ì\tcºðÜJL>Dóú\\–k·Ò1ÒÈçã:£)ô‡QPÕ(ø_‰Haê«C°érß‘>ö/.³fûý£\t]ŽZï6`«x½„oÇøfBwdo÷9¹¿J¤ô0ÞËRÉÑÏø¾|#¤ºLC±ËmKžG@l,#LEÎ°Hï_Ê\t‚ÙtKW˜°à\".MC%á¨H‹“R¹5€a‘rÒ”ªJÕLF‡ÞJÉPÔD\\™À±Šx˜H© † ÀÞî\0‘ÔWUÙÊY…Ì ‚KÌúL,(¨]NU7pYý—%(š¦;,fg}.WŒ­øpÚB±ýùþ¦´üDÝ²ü¸ŠÙòÕ™\nB¹;|ôÚ27á™VŠf‘ø†&îÄíN¶eÉXV¢bFp\v›‹µÎŽÏàe\vµ”xçè?ì<\\Dî\f>æ)­’B’•%Zá%DnJ¹»Z3¾:`¤PýÏõ4.K\fV”ÃK½ÛVŠ63²ý#—(\rPžü&×°oßUŽª?tºml³™ŠŽo6k—ÖÍ¹ ^¹Ðõˆ Åi¬YWy•Ð’KÙÚÃØC9K”P»áøäÅ”‚‚BXãA³p#&äó·0ðY^ÕxøËMJˆŸXÀY›‚gY6¬¿%M‡âŠ†Ò¥JNd‚Ãó$7ù¢F™Ø]E>¥³3¸·‰GÄäŸÛÆÌOÚr5yƒšŒ0Z‘N‚òP·\fä‡w7“f`ÜÚšÅ“\vàcëŸß,2–r;„ƒá\f2vV× 0zÂh¤KHpT…åe8*JÚãwMÛb-´TÃþ!à°êW•kU×Aö>*æXÑa\nX!R¦©Ã§*ñ=ƒ©¬ÛóÞ9è—÷”‚(‘ó“þ©UÌQ&X–A.±°a¡$Û”Wòù›Ò¾1#&4º=ÆtƒPóÍH\n›Ô·Êù&\'“3®VSÁâ: ì•4²ç2ÕÅGè!‰¡Æ¢?~éooè\0}ûã™t²Óp„¿¿¹\v‡ô%[6FìËÉ†EH•$ÔŽ~\0˜.$™\v<¢.•‡\rïÂ¡Òé‚F€­É›T„jb.X\nñ övŠÜ¶ÙóäÌ›(ÿ\0\rDrÔ{F™žKÚâ›MAêŸ±‚LÐáý¢•3È°yh}â$F²ëPu´—w(V„„EI•L¢#GT.Td¬s‚7ÜAp©ÌðX…IAÄŠÍ\tâb*+þ‹,—È—ã”?¼P öFol«§™ç”“ðùB›O‰»XÁ¨Ê½4gdèÏ÷mÑJûÂÎ‡ÿ\0ÏÖ3óÙ½¿I]7diå—–V‡\fY@‚8 AbË¥E6.AÕä=Ô¾of©Ô¤`$mÈ°>—\n\"15ÙW£Gcå$‚&Ìq§ü\nc>?Ã±¡°OÓúoÅ2D¯÷#;±Ò”²µM˜Tu>ÿ\0Ì3&‰Ù1Cñ\f Pêtö6A\f¥Í#!½š+ùõcÏä>‚vWb©Spî>Ð~GîþqcTã >Rÿ\0ê!ÖY=TbË¢Â½©ƒj²7Ä¹¥ÜW?X¸Òáù”:œ§Ö/\n§O–L±þÑ\f\\8ÇJ>Qg+žØÂ‘-#@@Êu*O¶t˜´¬á0BG8ˆ¹4gRç@baRbJÏ(9‡ÄÑ“©ˆ“»Ý—‡ò÷‚¤Y—wHN¤—‚*«–õˆ¹j‹êûB„ÙÇAx¡i`±Tünbü¡ºÜÅn_l¡9•uzÁP…¢M¢jURF©–(ª¢å\"jª.\"!;O‹ÔÊÑdŽ\nñà“QöÔ‹L–z¤¿Àýâ!ÐöÆQÒn^Jðüí#¹8èWéPão˜‚”bRŽ¡º$KBå+E{ˆ!<i’t)>±&äMíà¨\\¬Òž0T.G¹WFNjå2x‘(W9‘Äà\ný0s\t×?¤ÄQ–±<Iý&q8êý&q:ôÁÌ8ž!_¦\n2IÁ*á\'{¥ò‚Œ,NŠuq‚Œ,I\nSÆ\n‘rBnL\rÆM4©‰¡\v2ÔÊ@üÉBxÍ”5Sôx.MJ•‰Ëêb.„î”ûD\\°X²§µ\týE]\"…Ä°CNí\fÅyRÜÍâ¥Ï¤¶ÁTù‹ó(ôÐDre¸ù4ñ!d\\a\"DX,‹‡K•©[—‚ÿÙ","botalon","activada","comida"),
(2,1002,"pasta larga","descripcon pasdta larga","pasta","mibotalon",12,"$","ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0\t( %!1!%)+...383-7(-.+\n\n\n\r-% &---/----------------------------------------------ÿÀ\0\0Â\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0>\0\0\0\0!1AQa\"q2‘¡BR±ÁÑð#ábñ3rSc’¢ÂDÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\02\0\0\0\0!1A\"Qaq2‘#¡áð±ÑRÁñB3ÿÚ\0\f\0\0?\0gðª¡eÉjªTŸƒW$±¶j¤–¥ª’Kƒu$–„Ô’X„Ô’Y¢¤© Š’IÔ’XRI\"š’N¤’@T’|R&®I\0ÉRI¡\r(ò©&dÆ]*bLÏ£\nª˜•‘>ý•U1&Dï²ª¦$Ì‰aC•LI‘>B¹¤ÔÄ¼ÊÄÆàüªbQ3³”ƒ{fwÏŠÎG*½²o”¯‰‹Õm“|­ìðòéSl­ó#¹²çÜV‚ÊÝ3«¹cÎ¯93àÍÜ0&¦%î›‰T\tULJmªdËRÝT©`E\\’ARKŠ’KRŠ’K<:¹Rij¤’Àš˜’tŠ©\'À±RI{m(ì*åfhF\fó©‰3,Ns«•™rpÉªI™0ØéRT•I\'MI\'j$5$5$ŸjI:¤“ªI>ƒÊ¤’‡p-«t•^ebb!i[\r>•3+hñ*¡ð*}jó+lËV‘tž_J¼É2†v÷5¬JV¿*˜•$Ö\fI3Ú¦$—:˜’o\vM3$—Ö HœZgz˜•‘\"¬zE^%nµf©©¶MÂAyÀ6™[Ä‚³º›eoö3¯áI>Õ­²·ÂXl\vëßÊ*`KÉ„ØÊ\0ø‰5ž$ÌÜÞ)Ø\n’I•RIø©/!ùØT“b€11Þ—:…\r¶lVHÌÌþ-I7 =ÍËÝ$b*\rÔ\\Í8°›5Æ¿ñ+­öÓÇÖv4ÿ\0…2Óæ‹5é±é;Íj¿Åo\\+¼«¿\tÛžcKNj\0ŽuèÒÀêN!VÁ—%5¹‰0*I%RIôT’}©$ê’Oµ$RIÕ$‘RÜT’\vÇäm®cÊ{V·DEÌnNãfâS;Š¼Ì‰›™«Ì©\\ÔÁ’N=}jm[Œšqnu0$ÜdBÔyš˜™Ì¸ƒV™•¶Â”| “RT;€á·W¿”U,,cÀðÃIº¼Ç½g3{a¦pè@€*¦€’SÀUI‰J±]*KV^&¤¹\vÔ’ZÛ3½Q’X@™`x’ÂÝ%É*H˜F×õç\\½=mõI$x>]k1ƒó2æØU¨©ilæ$ÀHŽf·ªÓ=žìâJµ•UÁ‰8Ö°í«RÉ_áD÷\rò×ò¥SO]Cža.ürö]µûG÷˜±|Hâ¡(†6\týMi­ÝÄå5¶1É&É¸©ÔùJÉé?¡¬›,\v„8„ªÑ¸oäFœ³ˆTê‚`ª}£™ª§]s¸­çZÝ*¨w‹oZ’yÛõ®–“SS1\0ÎuÕ>ÐÄq\nWF+:¤“ªI:¤“íI\'T’uI\'T’uI\'Å$êIfYL©±ò«dˆ°î@R~TL‰Œa…kMIm Uq$¿ƒ+>TÍN%Æ\r{t¬––Âe¶,‘X&kJJj‰—)sÒ±¼JÌ¡OÈ™öªõ%æS‡Ä…Èèb²·êMÒX‡ønjÙÏ‰[¤ÄÈd6en3\'úÐ-#ëÿ\0;ÐÍø8“|/ÌRèòØÇíD[w‰ D³””ù«6Ô¶.m\\¡Ìöä!\0ZO27>Õ„\vZ`u3e¦Ã“¸Ÿ;TéMÈ‚„‘dÿ\0î,sYä9zì¥ö’`¢S‰T’²I7$ó¥IîI‰ÜDI±5°®`Ñ6I=‡Éð¥Å 1`yÏÎ…a!MiË\'b‚ÅAnJðx•¶â´)\n¼¨‚l®-7 Q]”„cë:V¥n”‚>#WŸ LZÿ\0™®¦—^qµˆ<q9z#ˆ[™xƒá ‚AõÐ«S¼u·O°÷$þ,Ü‡v¬\0@82’®‰‚¾Úð*•HúÒ”ê. în£¾D;–e\\F•‡<ªäfÇö¦tºïPaÆ\fÆ£ðöA¹9ø5ÑœÙö¤“ªI:¤“ªI:¤’µ0“rI\'•àð«Y„‚h™‚§-á‹Ÿ*¢Óac†Ä$YÌ¼I/T¼LêxšZ«ÁØlrV5\0’x ­¡ù‚2ObÙ™W¡1ëkU—LâTÍ[ê>Àó$P^Åù•™ŽtØoÌ\nXKñy‘ ”«ÐƒDk8âV`ì6=IR3ÓÞ†®D¬Á8¼V—H?3ÚÚ€Ç™PÇb.U¨Ì{j-}JÎdøãˆ~ÎÒ[\n:Öw›ÅÊ¿AD¶Â‹·Ì»qÌÊ3§…¨Y5.é®ÒG§ZÁq´}&DÅæ.©J$¨I˜$Ÿ¯Ö“,I—(l©RIõ& É*\fw­mÇSJD·*IR‚~}‡3Aµ¶)&1§¤Û`QðYŠõ’‚I‹ÆÀt+˜†Õ;×¹ê”Ø†ÑŒâï\f\r`¯,u¶Þ”Ýz‹ÜœuŸ‡+~Ÿã9Û@GöÔ™Ò¯Üs¡³|®>1ÔÛi­Nù0ä¹±*\0›ž^Ü©&©ƒícÜçê´ÃMlc\t\v7ùtU¸û‰¾ÏÄ\vR21â3òÞµ-#@ÚÔªjíÜÅG#«¢W\næaÿ\0©X\\Py|ûUþfÂ=ËŸ¬7ä,LšØÆÜƒ2ÕmzÁˆÛËÛ½ut:ÍþÒrgY§ÛÎ1+­9³ªI:¤“ªI:¤“ªI0a0HlB@êó(\t\'q UK™\\ÄR^&|Ká±*5Ê×þ\"ºqŽÌjŠ\vž\'Ü#Ä 4Ü‘ÔrëAÒêïÿ\0$\fy„¾­ƒ“3T­„\r$€7äk;½“©Ï#,’•«qs\'­\vÌÎÙzšÃ2Ý\t¹ïµ(òeM?À¶›’6¡ÿ\0Pj\t2q3«?iÉ\t!3ü¼þuß¤XÅi^¥\'kÈ09¥LxÌF¥)syœó!„¸2\tNµ)Ä¤wûß¥¶\n¹?2ÇPGâN#™¸\0|çaô—9l™PöxÐi€\\V$ÄÝJ rö\0t\0u¦\\/3Q\tìÈ•H\0vÞƒ¶XhÌÉ±H­jLNV$óªÝ™¤FfÚ7a”ZYIJJ¶Y¸;ØÒ/JÝ^÷ºÒhëM\"Ü±îÊKL¨)@¨jZd‚O/Q•díÉÄ5ö›luñ0fo †Ûð¼M@Á\n`üFþ^µu ‚8†¬°$ç&j†ÜÑötÃˆÔ—T.¤óþtRàCiíuÏ¨x=Iä9Þ¿)>`-;ú÷¤µ}¾8…º 9ÉŒi(HIDÌÅ jÊ»\"þþóœk‰#‰,|bq+¸QPƒ÷Lò5WDwMÔ¬NÍW‰¡`‹«¡­\'‰ÑªÐ«‘æá¼Ù`ù-¤Ý>”\v**Û—ƒz#Œ4õnÏÍ’¢$¥uÿ\0Ök>§byvŒÔøXm·\r«¢¶) Tƒƒ$6šÐu\'\0ÊÁ’­JRIÕ$ÞÄ“µI¬Jˆ\0J-~©*Â¥eºŸYx¶ïHy~zÆ³#‡Zˆ [Ö¹ôŸV×µ‡]F\ruª0naÅH@\'üRïø…Ì1\\nŸÂÙùi—KéN¢4¹½ú^DQ4öÚoé»‹êtˆU‡‘ø‘ Â´ßTî6ôšiÙIÚ§©Æzl¬dˆ!ÇÂ„’~uY3LŽ´ÆüäÔÉ‰ÒRw·±­™Ä!†ÍR•¤ÁæþÓ³ƒ+euFe¹…\r•ò±çpELbLfÊÖ\\l!$ø`ØT\t“±›tŠË.pø„A•\"|áöü7”§\"[$e\tìE?¥F;[B\tâLÉÇÞÔµ(€!3ÓÐZŠ{æk$Áö\0“óü«xš\0Í\f#Ž’\t)žÀnMQâºËõ\rà2æ–*QJ¤½âÅ3µ&oÚÜõ;4é½W¿˜kÂÚB´‰B¬tªbEÌ^&æj»ÉÌ(9#=Í8|B<\r\nBüI²OÂ¨Óç[\v€ÌÈÎýÇÄ§†ðT¤TÁ•ìBæ¢Õ’X#ZBãny¸—àâ’âÈÒå´ðè„ù‡½ij.ŸQ6–\r»f~m¸—’…©©¤Ü\tïDE0ÐË~FÜór7P´x„­ƒd‘ÊHótÚ¹÷T¨\'í-¬bvà`ÆL$)À\n„¬ò&×\tý*ª.-üÅ,ÁÂæbÍp‹})q”‚bm)ˆÍ1NYIñ(0Cµ¿i,§‡ÂEÄ¸gxƒ(FàÔ;%·\r¸Ä9’¸ÙR”\0H’@õ­éÈ±â+ªW\0,/‘â|râA&=©ªhçœDuH)\nHî82ÙÕ®‰ù1§;Õ¹‹\v½N17`q:Ç¥ttÖú‰˜µµì3Q¦ ¤f¤(z\rÖ„\\˜d]Æ\rÇâJàF¼ž§Vo93«EA;ŸTÊŠ’“°}j=[b©<þòoP¤‰•L>‘É±ähÚsè[é±àÂ¶Û©ÊŽVeÇd\rø«:5¥c™ˆ=ÏÊ›:UGã‘\tV¾ÃXÁœ+ÌáJQR¯LIÞ.Ú•¯Zië³RåŸó¸]RS{QÚ€ûƒgÉ‡>™¯h}flVFÝ ”•BÛtõ¦}Ã\0ó8·iëbv\fLƒ…±\nM¤,øMþFŒµ³\f9ïYS‰˜ðÞ+ÿ\0EFmÊ¯cõˆ=­7ä\\‰Ä8¤¬€OÄc{E¹Šf9cƒÄ­¦5eÿ\0ÒæÛ%O>¥:BF“ênyÓ?•QÉ2ÂdâmÅNT:âå•HºfT6Üº@©ùTñ6=²Œ\'ôÝ\r¥zŸR‡Ü\"¼üS òÿ\0ƒ£NX™™15áGZp¡Õ\t(*N›‚m¹;7\"iVÅg\rý£\v¦vK²ÞÄ²|p \n) Ù]\'Óå5¬àgíýæÒ¦^%ncTËN–›ÝgRÔ˜ƒ¨ê‰¹W3Pnó©Wt_ÂT¥@ƒ“n^â°èBtÕù—å\\TY7 ‹ÈúHùUþXƒ¹fœ£ŒÅ‚âÆÞPÕá:R%$ÉNÔ\'õƒeºúAšW²“¤0­@™´§Umÿ\0:ÃÜÃLÒKˆE%Aq6JV„“h²Hæ\tÛ½h½¸$Ÿˆ2pAãé6`²ÇJ›-”$/a#¯j\t¨´m~–Ý]D2œ˜‹8W¥%Xs© \rE$‚å3}¹S±ãÜ!ôúºÀÅœ¯ŽÏJCI\\þ5FÝ½h)PÇ=|FÂ¡lâá\\y»k!@ò’,yP˜lã‰/\\Ã¸71aAýJ‡˜À&mÊ¶c˜ýz‘éä˜Õ{ÂoI;\tQ¬yúNe§{fs™²°íø€éRŒÛ¡ë[Vuý\'–•¹¶žD}ËqÌ¸€°çŠ¢=ŒWJ¤«õ3n?YÄ¾«QˆÛ´BùsSÜ×Bµ\0qv,yšb|Š’E¼Éâ\0Jw5ÁüNÖcé¤êi+˜‰!,©¯;¼¢íèæu+¬ç©vI‹Zµ¸«g9E®ZÇ0:º•v¢Êqojx!wöåÐÕW^o÷ó˜JÓm[—ƒ\t¿‹m0\\¸Y¹¦+¶öÖŒ\vý¢\"§lìûÅœÏÎÿ\0Š!Z”\'ðŽ£¤W>ÇÝnåçüN^Ú¶3ãr¤AÄ \rei;|«£ez«Þ:œÅ¼çÒn³13†:R_m3:mp~%v˜­V­€l0v•ÜB!ÌŸ\fåÑ¥7Ó?zn±Ž1~yÄ©Àu*\0H*“ÖÝ7ªf†DÒ¡ ‘\t`™)&áQ:ˆÜXŽñFPDeØ‚­I\t÷ŸçòÕlN@.0IŠŸa°ï)‡V¥8žhØ7 G¨¥ZÒ‡õê;^‘¬]Ë€!Ì61·¬’BAP~óTí»ŽþŸ0%\n\fõõ‹Ïð“Ï8²]–õ´Çp-q~Tºi\rœ“ŽzŽb Æ9Çq­Ì:HÑ¦‡š DmMYX³ú~xñV+îøê.q.JÛÍ‘ªàÊÿ\0Ü#ÈV6®Ý¹Ì2;Î\'˜g£\n´„¶¨™$ ŽP:u¥Êç…3 …ˆËA‹ð’¯;ZIÀLoúV¨|Ã\f\t^%ü(‚–ÄTÐÕ…´ž\f±3Ñ8{\"\róˆmHmHLù“ªII\"é\"Ì^Ô+Úº†çæ\0Øö‹²ôa¢ ’\nfT¢è¢I¹‘ô¬Õe7eŠãêf-KëÏ~&ÌNhÛi€D›Ä›út+uAÔi™ÎLŽ/e)Ô’lŸ„û‹]å‰Ð?†»œg÷›ðû¥¡ÔCJpN ”¢o*‰°Þõ„xÏûÌYéq3Œ‡ÒÒYÒò€ÔØ:»ùý\t¬m­ÁPs«P§õŒ}æÕ>—ˆ\nÒ\"{Rªí¸›ÛŽPc8²êÂD”$ÊãW :Å3·\v&6óþˆ_6ÊÜ,­N”ÂSÌt‘Y@û±‰ŠîTaƒÔÑÀù+¬ùÜT$‹$Ÿ’U¬Uð1Ÿ¼½^¨\\¸ÄtÁq-(\'{VtŸ‹[ê³í9vè2…ÖcHØ‹ôêbsž’£3LÓ ˆ(±˜ªè;^¼ýÙ,¬gbÁg2rRI±¸®6®¼ZZvtëý Gp†tXB–¾òI÷<éH­v èóÓfÝFçñðË8ÊëG•Iê®ôåuûHÆ²ÅG5Á†‹IXB“¥J°‘n¢õ¦°¹ØËŒÄ…D.å9ÄNÌ\nØS‹\0tj²·\"—ÓÖWï×í:’Ån|Æ|Ÿý–Ú„»«QñS)¥ I žâºM„AXoÞrm]Ö3•ÇÒ3eì¬…’  vµ4¬*_yÏÖsì÷7´bk8„\0hc]KtÓ>“ÔÌŒJI*Y¹åôïXüõ5sBzaÀçúÓ~m$¼|¦´?©*zšüƒ‘g<BãLzòž`ƒ^Ž2$m§ê‹ëá¼Ø•b]AZ•b•S`\0T\röçÖƒV¾—å‡?Ì1õÑv¬!„á¦úÃ¨´‚„¥0¤€H©$\'pGÖM¤åbíkØüÌy®=äIˆdÏ$ˆÞÂÝëi·{lttõRÛU‡\'û@¹‡½tÆü¤À÷&ô.½Æ\tí«AH9Î`luâ,•ªçh\"Aë}ýëuLäç\'Ì&£N6€¾R€´.Ê\"GrÈÚœÒ {3/µ6˜’•ºâT­gHF\'k&ü«£´\"äôc÷ô÷!m¦Æ1ý*Z€-d\0I…‘VÒÇÑf¨§µ;›­\v÷q8¥bm\t*Sd¹\0¤%\"ÆWÎM„|·¤\rK·{só˜ÚMIèø˜sœçÁ#mÎñþåu;RÕ!´ç¡ñ:iÃûìŠx®(P‘0¹?°§“B3“.Æ@qâå(Íæœô‚ŒC¥üOL^3ÃÃ0GJ-1°’+˜G»éDßkqp¶dÎ!¢%(“i±±ôåÒ˜Dã‘‚9óÖÓeN\vƒæWƒáöÁ.²¨EüFÌŸþ=*«T¹E‹Áýf^÷_cþÆ\vÊÙÃaÖ\n ’S®Û“té[µV)_æ6iwS“üBxœý¦üæ˜“2{ñ@[îfÊfBÍÁ”7ÇU’&ÿ\0„ÛÞšÍÜQÜÙü*åûÆc˜}P‚?†i†º›,ÙŽºœãMÔ®L­ÂqkÓ:C~nçW—õ¬­¹½ÜuŒMµ@i—=çˆw\f±¤I¼WJ“”™Î³† \t‘„!%IšQ\v=jqÍµÎ\fçòÖÔ$¶›s¢=*Ë’¢DÔØ§Œ‰m\nXlØiÒ¹;k³S´üG+gTÞ>gÏ³”6Ì€n\fXÆ÷®˜¤Œ%ÌÉ°8/d£ˆ^@ò¼ !I\'Ö±ª;Ndý&´jÇ”<|A8<;n²_uz´*Á0&6+üT\0û)ÞÇž€Œ>áo¦ƒdx@_wJB@âæç¾ÕT|’eëÇ£XòcF\'T’6øG¨¬omFNp½}ç9+\n}ßx=d¨è°¿IµÍ!éXV žþ3\0 ßæ]ŠÊW „()PnI\0zn›šéÂ•W\tÉù?úñ^­K‚ãé<ã3ÌT‘¼ÝI¥© Ôôµ¢·»AXn }Êå»\0~”÷ ˜êfÄ¥»›/â%¬y”’z›G°¤, øˆÙRÓ.Í¸•æÛI2£æÒ®Ô¨ÛÛ”Ó\"¶p©ÔS^ãí˜°lóÈSIm@rR\0ësÍSwG®½¥†>ÊÓA³v3>7·wJIŒÄÏ4Úâ{ó¥ë@ƒqŒ‹1Äç²ÖÙen}ât }ïFx‚6±p°Va†…)’m¡&zD’cœI£éýœ¬WPÂ!Ã¡¸%Y\n&TG”“´›Ømzuíòg<&8Œ›¬·;@@¸\0Z\0‰ô®]›M»”d˜ýJÛqãæhÀãFZbú”F˜)¼i<æyRÚœ…y„­\vÛžÅát©.AT¨ÏQ¶ÛÕÓëÒ¼G.ç¼~O‡Ä©·RÂ•#Ê\' ½©•ÕX¤‚;ù‹ŠÀìbaÁ5†€Úˆ«6HU¹”“Ô3`q\ræ¥—CM„˜AÕ\"mo•ard¨*¦ö?hÁ‘å6¢óiÒ…!_ˆn4™2n&cnæ]¥¼b\'m¶X61ÉÌÑ…Ä¤Õç¾ô–˜cV a††S.µ¡2A$I@è+ —%™Þ1+b\fg“ñC«R•ª\t½£”~T\nX`*OACûF`<*–IRG¥6Àc¯OCàœ3¾R‚|É\tˆƒxü©P¸r?~g7Wr–Ø9YƒéC„£QŸù?:ÕÖ€ûG^g>”,›Ž¤Ž%Å]($röµoúïîE8˜ÅKÃfÌ07«Ä0»|êô:V}CÄÅ´›1°s4°àX¸SFAïûÓÈEœ§)ÈúÀ²”$?\rfYšX„Ó²‡µs¬uG|c£:TiÙÓ“ÿ\0PöY™kF¢‚”òûÏJéÕ«;rÃ›~ŸcíÎLKã<{‹$2’â\t n\fÆß*AÜj_5ž\'cERÖ™³‚&ŒJÁ% B\t•ÁÜ’6õ©ªÓ—\n\tÁÀVo/ŒŽ¡\\Ÿ,8l2a$©Ed]FfÓÚÂµ©¬×Bî8ùÇq[oÜHçâ^·’±\"\"\"I‹Ï¹¥ýEnŒwõÏï V6sÜÀ´C*@)[•ùÇéjUÿ\0@(ÀÏ$Ÿ?HÎìÛ¸äãâvy‹XBšB öX´Ün:E7ª¹ÃlŒt&4•!\"Æb7pÎ !*W†T@ ù ßr\01ë5µO@\rçì\'Nj¹+^qóâ\n\f÷‚ÐR€!¨®IP\tòÚLö¦”ƒÉa}P\fT;\"á\'ô9ö‡<\tðÌ…uyµ$*öåûV,·N80bër6ó±©iÂÓ:Ô›BPP€RG9ëÖ’-êV°©º±—nþften®ßt… *üˆöÇ¯ZÈL\fžOü}æýUöõó5æz\t*€6åkÿ\0ØìÀcŸ¤ª×9ŠÁÿ\0·<\n†¾êýÅ’Oißõ®šR8É€f\0ägNa–©‡èu;rž‚óÚ>T4 ™”Ì\\gÎD­Më0’A& ó•7H*ü«v?@˜\r¿š[.b1žyXð–Û§ÌD˜Û˜;Õ¦1‘Égv+¯¸“V<?†p6eBdD^u\vMéCê†o0á}\'žZö-EGWÅ&zÍw°Cª9Æ!nÍ\n‰€w­+ª£+˜Å7\v81ç\tm¢_2V«ïsøDnv÷¤Ë{ŽæY±rl°4ÚžxùÖeI¼\0t¢Fû™÷eiƒüLYav\n¥ªÌ<Hl*ºÏáHý‡ÔÒlÆÁƒ×“\n*ôýçÇPhÄve\"Äu>ª—\0ñW5û¡,^nÒ!–7Ž`(×XBå@Ï˜¥Tz“æ¹ Ä2V\'Æ`)I7 u½RÌ-¶µmÖ%Ü=Ã‰‰]’>¿µ:ØQ“k‰8Æ*›SˆBvoáµ€MÉîI®j8ºÏ·öæmÑ«¬“æAÔxïhIóH9\rÏ½êèÓþbÒS\rg¡X1ã\v†J”`\"½B E\n:‚ÌXäÅ’>!Y6¯§;i÷tg¡#6{<A¹v1Ü:ƒwRuëÐóô£×uÕ‘·¯xÝôÕ¨]þqÌìW\fCÞ\'Œ´’ea@Xv;ziØI~ü˜®ô+ÚÐ†ÜÌ›Ã„´ØÔ “Î×$õ ?âµG_x¢i^òl~3*ÁäÌ¬¡ô¨êä™˜êZèèôôíWI›õV®j`1á™\nTÄ)‚7Ûjè…\frg9˜¨/ûk‚6Û´Þ#\'¯9©”×ûûÂiGõ`)>W´Ï36®(¯mA3Ïüft[w©»ægÊPJ!A·n«\\Aé\'ò¦)Á¯gþ9?\\öoSý7q>Ñ^¼R‡‹¥@”“åŸ÷gµ\n”^OüÇNR¡íÈ—f™~#JQ\v\t%)ÒA#Lcë´©†ÓØ 6ìø‚«QNJŒòyaÊul¡iº‚Ê”‘*€@@ü==æ¡¡Š†}Ï˜#¨DbŽAøÀœÏ\rq+´¡+›óÔE¾´½­]#œô›üÑl\n‡ï‰cNá°À˜JDy$öÞM/F¦ÒÄ,ÓQeØv3W @‚$ØG§:m=lòß°›ü…kú¢C¸Åã_Ó}ÛaéÖŸ®¥¡sæS°>ÕèC,´ÎIÓæ\0‹ÁÞ,:Ý íÌÐæs…™Zò&=\nÄ)Eåè@)NýŒÄtš\"šëûÁ¸~€Ÿ8#0N¤¸BÂ\\Rdò½•Þdš=Ä[1Æ\"¨ŒèËžs=\t~í©AkP0\"u@IØ¶×½d\\@ëé2ƒç2Œ×/:…¤éN\'I(a¦ö(wº3s\vFå]°K¼&â4¤¥\reMÕ\tZ†Ä_sÌV«wVÛÎ~&˜©]ücæ[€à¶Ò©JP,\fjU­p,z¦±ñ1êÎ!æša€IÒ²&¤‰½¾”©Õ\"ä/?Ya,³>‚cÌŸSÌØ•­p”è\tûÊ=6ùŠ¿OznsÉ?À…¯ÚCtógX–ðm„jqæ®çð¤^fÊwa¯?XzÚÛ›¯>Pé\tÖ“÷‰ù’Oæhvä6cnpc.{”ÚY`7\nT(­íw9Ôê0ÅÍ—c:¡HPŸ”)\'Öiz¿¥f\fbÁ~¢Ì³ˆ!’ ”Ï!x¹*Ÿ íî\\l=E¨ÓŒz€s%€O„Ö¾k²D\\É·ÌÒÉ[(x&]ö\vƒâ3ðÆMá\'Zÿ\0î.çÞõètšaJ}Lâêõ«`t#QNf\'˜ŠÂ ´„¸±)É<ù×Œ·ÒT\0·\\`OGU®,%ƒóaÛA`ýÀ’*Ätýé´±+…çïÿ\0¨­ŒââGø•g8ðÚtƒæVÿ\0Î”¶²Ý©é)É=ÿ\0Ô&“NlmÇ¡àÜ•<a#”ïÜžT­\tZœÙüG®gÆÚ¡œ§Õ¼v˜W;ÌžU×§PÉZ`Nn¢—<Úds\fËEDîH$—*çê¿v}µ\fö<ÍQ¦ßËAÂ§ñ¶–UãE)´Ü‹DþTÃÖm³h<|ÇªÛ§¤½ƒöó\n}•\0§[Jˆr>÷dÿ\0ÍUÖiÕ€/“ÓqßÐD½G í\\I§•2Î¥¡KSbG1x´©¤®ªÇ¨3¬º›nÂ0v/€ÔV¦[Q&åBLŽr~jŸÓ¨Â\fˆd¶Üd_âP˜i\01\0\r÷‰ý(M®8ö\fB\'áîÇ.`‡³÷I…( wRllmŒcË¤©FTdÌ8Œä“\t%]ïÊƒùmÇé\nµ*Œ˜9ÆÕj BGO–þõÑ­[D%l«ƒkî:P´éH0dÀ÷¦×j;¶ÐW‰»8Å5‚Hn°tÀ€@0H<Çz¯Mï9=½E€ã1Y8—ßQ)B”L@¦6¦=ë^L!·ÀŽ­p\vÏéÅ%\t­¾°“<¿ncªÊG¹ºŠêl±}¾drßéâÒt¯Ñ ¨D‰±˜¹ëA³_S±QâUa‘C`Í‰ÊñØCåJ]jgRTILNé€H¿CCÊ7¹\f8²»8y¥XüRY`¯BA°I„Í”‘¹¿J±]®wpH|M…¥}»±™‡þ¾…J‚Ê…¶•h%äîÈûÍc©/úîlSë µaê´ðNf(ƒ™C™ãêqe},~‰Ú†´‰£¼p8“óŽyN-¨ýÑÙ;Vý?˜€rÑk8_ˆ²„’¨»‹ÞOI¦Pl0ªÐ†BAÃ7\n#müÜÏ]©}JùŒzžásLYÿ\0OÔ<Å!*¡M°šWKím¹îsÙ?­™æ90qO$…/Îà‘øŒÎÕÕ·qŽ£€àè+ÁøØá«àB¥üÌÞ–\n\t%¢âí”`vc®KƒñTThM›–˜ü©Ý&Æõ[öœM»¦?sÛMug8ÍW* 3’•\'[ä¤o£™úWŠM©7ÛÁøž•õ¸;*úÂn)>UHøÒ9ÓLÃÒ0ãÀø‰¨>¡çÉˆ¹îasÏýM!R—93Ðéê\nÏ•¤8SâˆHéÔÓ!Nf/´®BODÊ°m Æ«Ü“Šv‚½Ê@Ï<äý§žÔZîønq)8vuk>!33pI3aË¥!êS]‡ÇûGæ.ÆÞ’3@´Ú\0ô†öÝµ°þ%)­²y?|ÌŒb›d«HÖ¡¹;A÷h©jiÿ\0BçêaÚ«.wâÆg®®~ïA×Ôò¬5¦ßÔÆ0š:«Ç˜­Š¥l“½È>ÛÑê¦¬w:;ªP9• Ì\'­Çù­úuÀ³ 8&#\'S¯RÍ0=/S\n1&Þ%nBLM‹ü¿z¢€~¨\"|±9±¡*Ä<K·&âó°½„zVžÔUÆp~\"ª°Ÿ`âYžðN)H*Ã¾•¤Ø‚&\fÅ†ÔE¬ßú ×V¹ÚÃnw‚F+\fÚe7$Žhí0&®”µÆàßõ1fª´|cï-Ê8uÔJHHŸ…JngIózRO¥¸rq÷0ök«#ja,ÇµŠ’¤\tH JFÀþó¦²Æ.ÙÆ~ßÀ›©ôÀ\0Ýÿ\0½˜Ú„ñA±ôžG±\'Óìâ9U¡†S~×¦d|H;Ž±V++ÊðDY¶ZØ>|Ï¹Ž`I@ZçcûÑkÔ’p&O–ØÐn+)cØ%\tK¿u`XÆÀÍ4š†Æ1#î¥»â(ºFÒÚØ…¤Á3Ð÷(¥\\ó˜nr\f¹¼½.­N¸<$‘Ê&@\0‰­ÀÁ0ûx^dßÄðšòƒÏš»žµ@ã™3ÉƒñŒQ F¥Š±–lž¡kÁæ}ÈÞeh&áSóƒRÿ\0w3]´bÊ³#æA2àóq\\æa\tb3#ÊÙK¡m(™´í;&ÛšoÔ,9‹³01·\0ÄØø–u8G -sô¦‹Rú„ óÉ‰ZûFïŽ£¾°\0JDWu(ÀœvbNL „ÅnDºI\"©HreEI“aíÖ¼—¢–{œ“÷ãø¼šú0Of©i£x\0t¬ÞÞ¡¯ññÐéË>Lól7)+!-‡CÒ›¯JÜg[PŠÃÄiá_)çV-8!Ä™‘¦.Èï5¡`¥I9œÍHGÚ€ò<Í\vÌTRÛ¢T`i\\\0yÎµ\r.?¶!Ö”8÷í-l„\v:!%vµÁ¡×§el“,²®@8ýäñ)†ï3Éù$Š!Aw~Ê7»#¯˜8ðÒä<§Ùè\f•\vùTž\\·¦ŠªW‡Ç3íA™Z°kÐ·J¡RlTDü\'žÕE{ÿ\0‰fð\\VOfc\vˆZ‡˜%„ÜÈsëÖ¢\n±Ì–:Ìy®Jä:tA½°‘h›u£#VJÊF$r\"ÞbûB4HTy¥B&~ì\r½iäø–_1…²ìgÙY.*u¨ÊEÚ½B\0â˜uà@Ž+Žv5~°”ç½2¢ª?ý1V.Ãô8lÜeÌ¡*Ä-k)$ªm°å½r¶Ù¨·uch°ÿ\01¡RÃŒÆü»ˆÖR}*@\\˜´XÅˆô5‚öÓn,;Š\"¸Å~!uâõ\tB‚Ó¼oÿ\04v°¿ÿ\0Ìç\fXW°ûÆ\f\rÄb5JT)…G;Ro]–ÛŒz¥£nA9æ+S±\nMÒ®·¸ÿ\0ªÑ‚ín~°ô.,Âõña3ÏzA2GåWuNFaŸOé.f<~4„¸ÇR@<…úòŠ”Óï\f&Ÿ}IfKÅ\r8ÚP€±Dî>ñ“wÚ˜ÔÖõö\0ø1TQo¼6~f.*âä))>\t.‚AQ¶Ü§r9Ñè¥¬ýf“Òëø‹mc±ƒcÞQL2W_s\\bÀ„³\"<E˜%DÜ{ÁÚ—{2zâVÜ÷æ”Ü‹¨î¯Ñ#ø(ˆ™îa¬Ç.zÒ¥i;Öœô•‡0kc)‡²618ƒå\0|KY°«×X8Žzä&HŽ™\r¶¥(þë›ªLL™\fÐB›ŠÛqÇ\'Ð²ŒD­)ÒU$ŸkŸZêÑ§JÎåuÌÜ0ìéé¨±2ÜPBg\\©æ¹Ÿõ\r„:´IV“6ïYÝ5¶iÌ3Ôl“¥´~œ«Ç½æÖ„ôõhØ\f·f$fÎ[²µ+ÃMô§æ£Þš çžÌ|b”Â÷\tåü>–Ý„­³\".¢vôåzÕ®Aàæ,×îOpÁž†ëa–L¯Ì¯‰CéV®À”àžOÇûÔãW›làp:‰–nèQÐI=·®ui¼sÇï=Z¶ÐßbTâVã©T$Ç˜öØ}>uÓÒ©K·3™ø’*°JÏr\\c˜·„BRUÐÉÚ`ó­ê”9\vPÁïöƒÐV×ä‹›g)½z ¨J@ï´ŸJNªü~s;•%kÀi³¡A°QQ\0&IÔ®V›šê\r8uìb)mÊ×ï=-ÈhâÐEô Ìä¢#Ú+Ÿ`Jž,úW„.{‹i\t)i¹ñ7Q$êû×\'çjÝ[ŸŽ¦‚°åQS¯‚¡ M¬bÀzê½‚ºø€5ï|™«ˆ1@{XÎƒ§RÜÍZá£\tœ-¤C~RyþÕ¶Ó‡l´\'¨6õ8\'†Ä\fn/Í>fÛUÊŽáÅöè9ÒºjP6/\'âï°í_æ]ÅØòéQ¹˜ôëHi‹3iÔÒ «Ä¿(ÍVÚRâ—ï\rÅ·ô5(çˆ;k[Ö,b‘‰@u³*w=ëF<ŸÔ\'5Õ©mÑ‹øµ‡‚ÚPS¢…èUØwsÓ!Ä\\á¼9ÄM…öÜ#z›$ÅÄ®)ŒYN¢DAÿ\0q3ùQèMõdŽbªá„ÛÃX©kt@_ó4+Ùœ\nÌ¦\v_ r`Da%å(’THy{OëNôÔ(î\nÎyšW™¡#CB9Žt3SàMŠ&4cŠÉJLgõ<è¢ƒ&cÔ/ÄÔÞ\\£©T¹L·9ò6ªõ>Ø«Œ˜G/á¤37ÿ\0ž´¹›‰~Õë˜S/Æ\radÈâå=`ü^¦©4ìÍœÌYh\vîŽÜ/èóD¬îbæ*ëSNÑ97ß»÷…\téŒDä±X€&®IäßÔ2:¼•æ3©CîŽƒ½`œËêy³mÈž³ùÕ‰Q­|;‹ÄùS>ƒü×› UýÌ÷6jª¯£e(†Lâ.<Ó:Dm\"ªÇf8â\"ú­Ã\'ýæŒ‘ÍYƒHYj´„˜“Î¦—–ÜÞ&uK·LHó\fñ;ŠV¥a\"GÔMsî-mÅü\tÃÂ®ó<×ŒYYŒ“\0u&ÛÓµÔOLRµLã=;6h°Ë\f$É%\t*êIJüëZÄÚÉX<O+¥\"ë,µ¾¦ã<{>*úu1 Àä.>éukÆu9Ç½-é¼@ùŽDÛÈ–ÒcÊ, =Ç*2\\ªrG~!¶/µ‡ï*à¼¹æžYqèB›¦º‚¹t¼}kz†bG¡ûÁÚêÉïŒ|K‡Ñ‡ó«SÊÞ6ýÑè9õ¡Xˆ»Aå¼ÀéŸu‡hÂˆ•Å$4–.R=É4Õ+–†S»,fL¹€ÊÙJÍ×¿b«Çó¥ã»Ÿ‰…äL¼AÃ¤©ÅÍÇ™Ð@‚¡3¾õ­6¤clÅµä%ÀÙÄ:—Ô –ÙqIŸ1±Rc´¤z.¢áMdù‚,XíŽÆn]uÔ‹! \'ýË7>À@õž•Åôƒ(µ¿SÄsN¥81.8o`zá®šRD7­ƒˆk…’BA¸&ÞÉù•SÈL»r\f#ÃX³‡aj?uÅêbâ\v)^Ì«+66\f)œyÂ1LÁI‰î\r§´lheHc‘O­ œ’ÎÇÎ³\'¬Lû\no´àu\fXy‹¼BÙuðDyW@ ~ñ]®²\fdbËÈ(S-Ÿ»ŽSI¹*Þ£y‡ny˜8uFM‚Ä€Fâ6>²\r3\f¬\"¼AF\\‡€–”@T¨Úü¡DÞ(«s.I0mRž!LÏÜ…%)m0J@¹ë@{Øó7J(âKúZ„Þ.£kU•-‰§Ãs9jñe\0,©&IÓ°\0ÀŸ•1§¯/¶/}‚´Ìô|!JR% \r«°ˆN-––&6á0½K‹J“RIåyÇ­¦U+‹ŸÃØw¬eõ<ÐÌ’L›žæ¤©4ØW$ôlnfòÈBU„sô¯1fsƒ=JWXŒgFMeçÃ:\0•žj<ëoX}0)ÇÏÚ(–«jÆÿ\0Óâ\fàü0Bëe˜O)“G¯nÔ*ÊÔC<üEË±©zÃ˜ô)2±æÞFò“Ê­êj˜¸9ÿ\0¨…$?´ñõúÅ5äxWÝK6´¨/H¸ò¢\nMÆÜUzœ’¡gU¯ÔSY[9f5câ¶ÚÅÖÑ’Þ€G1üŠ5¬¨0`9ÿ\0¹É¯únÉÐhÄ9Š<xq:@A¼ÈïIiêb™^gMS\nø3FVÆ(8R­C`âgÖ\rèë¨aë˜½ëqàìÛšQ%bÂ úž:»leNFÐz•³sà˜£›c‚ÖVO‘~ô*Ìs:j›hìÄ”8¬N$¹0¡§çoçzë’)¬&B01XÀáÞÖãÁKRT\0R’¤ÞiW¾Úÿ\0O™KY$ÚÉ\\q(\'Ã IÞÜ£§z\"«¶08ù‚{ª\\÷™ðr°¾*ðÅ+\nR\rŽçkWYu`@§P„á†\"¦$Å4.‚¥,•™Ví·~UVY[¨:â7Yln-žb–\\Ë‰qeCOÄ. ü¹WBæ]€½!…P†CŠWŒ\06ó[ØÐ/Og¶aækÆc?´à\"ò@”Ð°\\4)~±\tp~k[\v²bS\'¬Í^¥xÏÌZÕÜCŽà†3Ðñ!^`£rIØ÷­ìÚ>%ðx–bpeZ”…(“&\0¬\v‡„×¤G1‡†²q‡en¼t’&A×¹šì.8þ ì· \"þN˜Å¸u¥EGP\"gnQ$M7z‚€¦G3^)Ï\tj\nsH\'á‘¼w \"’8^Ì!‡ËÝq\t[m\r*\"³&\fù´ï9Ç*i4ÌDUõ k(àÂµj}ZàÙ;\'åÏçMÓ§\0ò\"ÖêÎ0±ÿ\0(ÊR‘\tHÒ)µ@¼ˆ‹Ø[³°ÀHµn\ndÌóD4\f‘5DâA<{Œ¸è¸¢Ó\nÜÁWæg“5ÔCDžª«™—ïÜÅT“”“5rOaË2ô£Ö¨°Tðmòšá[µu!OÁ½ìÔ>“žÎ’Óá­D¤ÂNÛ“ Ž»Å#¼Ú§+Ñÿ\0åÑ5´z˜ç¹ñ×‡ÚYh˜IP\t¯øÞ‡]fË±Ÿ •·v>aN)IZš<¶¹LÑ…Ï[ÛÇûÌY+\f¢Á2åL bƒ¥•%Dmq÷£Óz-¡òzêoPÎhØf<ÁOa]*HRš;;+¥\tÕê}ËœFiê«ÚØ\r!Œ\fXäB¿”Ÿšw÷¢&ª¾ÈÁ™\t«£„<O˜p\fyšF¥\r¤©Â;Feµj@æS®ªÎàqš­É*:Ès4³+ZÙ1ŠªJ†&$æ¹ŠžW„‹$oßö®†žLni¶ s/Ë0°’E «ôV±<ÌðF#žA„AÃëI\0«âIæo\n•°ähb®÷†ræµ¡Ó\'t,>—]2+/ê9úÀÞûO+û‰Ÿu\n*K‰@ü êÕ*§T\'-ûBWr8ÁR`Gs—Â¿¸…étÜ|è¯Œ†ŽŠ*Ûíî_‰|8Ÿ3ac¢‘<¹¢z¶ô\0?™K\r(:–“Èj:L‹‘¿Z!ÔXF(Üq™‰l¶I)Ã’IêMê-ÖfÚ£–—±—u}›Oá¨âÂ1˜¹(8ÌÒ”6ÿ\0±ÏáLÏïY6]Œf`\"w™õy²P$5ïµcÓ-Á„\v“ËAyÖhâÚ*WHJ.RiŠ*]à\t‹H¬L|—Òö JF’\r¦E­Úñò§o;WŽâ;÷÷pÜ<Û«ñL©DÁkXA«ÒVvs¨·:e¸øyFÝ9}k¢ˆç;æ1àrØ¹¢â˜DÂG@*J‹\\EÅm²’u\0:¢eâx¿q‹˜• ”¶dž¤V@Ïróñ°­›zó­5²Ñ\0{š¬K—!³Üæ¦%K“‡1ZÄ¹ëØöaÄ™)oëoÖ¼–½Êê½Ùâz\r6\r8Ì<A“¡N!dè4žãoS GÇJzèõnµ•üÁXô<ŒN¸‚4¬(+t›üBÜ«uÖô6ö‡SU”²¡ìc g˜7U$¥N:LÈåtÑšô>ö\\“9#K©¬mJ3êS\r¢\rÿ\0ÚvØR·Øö&\0ÀÃQ¤\nÙsÌ…Ï”º·é#ö©]Ö*á¹Y¤¨ò8?ÚfÍó4¥JÂŸYHúÖöƒÃq™*¬ç‡‹ªÏ‚gHþß\"`U¦˜©É‡n|ÁXÇÞ{ªAæw>ü‡¥4»S‰€@•dÍ$;¤&SÔIÿ\0Gb™ƒÊæ3æCCkƒå\0ô¼ÇÊ•É<L¡æfálBÐÚR¯4ÜzØôíCÔ`¹â0Èn¬bÊ­ë·ÔXÖlˆ™Ï\vÄcŒÿ\0ÜP²„ýi}„¶cjƒLãÕ:\rB™îQG‰WÛ×Ð=ù¬úCë4‰bŠ…ÊmÔÕŠ¥oÛÔæñoâ¶=ÅjaÔ¸ožÎæñ=€ý…Q¢å~þ¯©D4Ù=ÕûÖ½<rLÖ9•¼þ˜[¦TgHåmàT\0·RÉK\fÂœ:—åO~~ÔzÊÔ3æ+`k8ñ2l)TxIÒžjæ}(•£ÜÙè|ÀXËXÁî<äù!\0@€uk@¢rì³qŒLaR…èRŒ~h†‡˜‰éYÌ˜žiÆ?ÔT¢R“©[Ö«9—ÔòÌÇ9sµ$òl\'µhcÌ¢e*]ãH°¯\"T Êý\0¨L’ð£ô©¸ÊÌ³QŸAU¸É™zSW&g¸g˜2´„ˆÜÞ¸¿ˆéÎ£ÆgOGp¯$ÀØœ;Êi(”©M›ò$\v‚$úü©MNžÀªªsˆõ6Ô,/ÈjÃa^Jt•$ýÅ(§z%hõ®8 øÌ\r–TÍ‘œüÅœóZSž;«ç8ó¤ûH#çmuJ¸ câ1^¶Þ2iÃ­±æp(ì«iÔ=®xbÝp#!ìE¾-á¤¥AæÒTÚû‚)”µ«ög”ÞÝˆ¾æj[N…‡Tžš‰4«¿D§‰QÎ›\v`w&´i\'³»ÊÄb1§°Ò>u=•òÒ†OQƒ†²pÈñIž†9›yGÒikîkÇSxÀÛ™Wâôµ¦|Ê2{u2î|Êspî;IKZµ\'TùIè®C¶ÔÆª½ãv9™Ó¶ÌŒÇ\'ñ¸¦´†¼PE¼û\\©%U\fp!FÇäw0à0nÉRÂ·#I1ØZ¶vB½£>&,Cƒ%GŸ•Bk ©ì˜Q`Æ3)*‚B°êõúÑ6\r2OÖ}BL\f:½È­ä0MŸü¥ëÀ(‹4”ú‘VXø€Ü<™ÆØoÌêÁì?ÅD\fÇS‰C¹šÝ0ÍèG5¨G¸À­Gê0=s6áu)-²¼¦þ¤ZzŸÞ«–ö ”p2Ír^\vqÒöÜ†À{nªn­—‰Y­\vÂOAË²fÚÒœ©åP:œçrÇ™³ŠCbT@­LD¾&ãÆ™ùÖIšxÿ\0ñË¸ƒ%)$ß™X“1a©Q“Ì“W35a›“êf¤©­¦å^õr¡‘åõ5\f¹jSõ5R¥Å>µbIj…êäŸ 1LÈ·}úR×Õ¼q­Àî(bñe²u$ûÈô&¼ûÙb±W\\‰Û®µ±AVæ\vwûˆQaàþ ‘íJª¾wc#â3²•8qñ9Þ!KÀ¬uŸð~•±J?\"6”!å0&•<H˜X&=è˜QÄóˆdÿ\0wçAW¸a:ÍçÚ¼ó˜°o8èÅ£ñ73¶Õ¤,½˜ãç¹¬©èa ÆçMs¡o“+V\t2òÄ\v„Ê(j3Ü!~0‚^æ.Þ\"Æ„äL|”AZ/ƒ0{~9ùžÄ8‡ü]fT”óçÏ½t´É^Ï¯˜µö8o§‰O>Ê]¶£!\\ïÚ·¨@Ëí•C09ž…•—ŠÉDm3ÜuÇu4è’¤eG0àÌœNËlŽâ½ëkcŠ5Jy Á¸ìíÁ÷½-ùÕ÷Ù›Z–/âóg\t´$ô²ÐU­+ÞaOXcqXÅ‹)@‰ôý5ìLñ1¯\0¢¿ˆW¦¢?ZØ¸d+Ž¦Ì»(ñÃ*põ ÇÌÕª]aƒ{¸Çœ›útêáO«@·Suh|¹œû\\a}Ê8uŒ8´\vs\"ŸJÕF\0œë.w>ã\t?ŠCbT +DÁE. ãÆ™y¬æ^\'“q\'õ×Jƒsÿ\0‘ýNä‰XœBÜQRÔTcŸz‚LÈ¶ ©*ja½ý*J3vAW*jÂ#Ÿj¹FoB,Ÿf\\µ¶î>u$—4½jÄ’ï®Iú¤ÔÅŽm$\\íX áxˆÙ»a+ $ÎàGå\\Ý@u´ä•æbÏ~Q‘®]½Çô½˜\'/YÐ.“@·¸Ów`Œ Ïójªú1[{‚s¶Ç„é 1µ]?ª\tÈŠ8|BãâWÌÓ„\fÍ¸3fT_\'Öõ\tÿ\0LÙÆj2‘&<ßJµãWQ]£*½ãi¼SÔõ»¸KÂN“å!D³©ŠOºSƒp¦4’.v1ÌW>ÙÕ^££GÊ8 âæ\vÆ(’dÿ\0\"¨˜d˜Hôª=Í3.hò‚\f(sF«¸#pÎ\vZŠÒ•Q@±ë]@Ì_PÄ\'Û2f–Æ”¥6ä\0ü«¦:œ$žfãRbW‹0ƒ©$óN*yP|ÇŸ3X3SÄ³—T§\f¨Ÿ72MA(ÌƒŸ­\\©ryúÔ’\\Žur¦¶¶5RMl|*«¦ì0±ô«Íªý+2K“ÿ\0æ®Is½*åË€©*ÿÙ","botalon","activada","comida"),
(3,2001,"carne roja","pariila carne roja","carneroja","mibotalon",100,"$","ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0\t   (\" %!1!%)+...383,7(-.+\n\n\n\r0% %---72//52//-/--/-/2/-/-/--------55-----------/----ÿÀ\0\0¨+\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0C\0\0!\01AQ\"aq2‘¡BR±ÁÑð#bá3rñ’¢²CS‚Ò4cÂ$ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\02\0\0\0\0\0\0!1Q\"Aa2q‘ðB¡±ÁÑ#áñR3ÿÚ\0\f\0\0?\0_Îghåÿ\0—L\n„üe¯?ßÒïj8m,ã˜6R9\tòè1¦l­*\0$Áóç¹ôÁ…Jì’,±.ú€H¶*¼luRôºv4m4:6G†CšµÅ\0UPM€ž sÄYìeA`ÄF‹™¾,„Vq*V\fà›É;žvëˆ3¢‹xuh?¡2\f‹\t‹Hœ{ƒ­X|1˜È9#æ·¢„ÙF,ÒÈjÝ¯ÑDálU¨JÔ§QÅÆ¸)ÎÀžw%[=™Ð{Ú€ˆ™Ô¢G¢›âÑ•ÕmiY04=ÎlžõU;OfEB˜‚Wbb77<°XÖË ûz‚çå°Ç>9åïMj— +0|Íú®ðÜõ=Ý!QØÞ (œ’OÐbçÕµF˜Âçÿ\0d^¥L³TR9@PO#¦âG¦.5D\"Èã”3\0°¦=£‘Tñ\f\"Ûþr9tÇá6d}mÏtŽ\"–´:Hã$V…ç¥K\n¿uoó¼à>g†8˜ªÁRâpv²–¾“ÎúßdxcÖnQö›§÷òÀ‰Jà†‹„­AªëÂ1s²ªÉ>‘ËÏ\f>Î×•jÔÔ e.;ÕÖRF¡·1†ü†M2ëáÏÄçŸè<±¶|ê\v´^ãœáû°²3xº\'¾ïåÊ»Å¨åšå©ÒJ,ÝmiÞyò&\fàYì\\W0ß+}Ô®ÈPt›Oã;à¿ãjêCN o?L§60´¤, }ëø%mO´\vB’es}J¢;ÅƒÌøÔM˜[Þ}q™Œ†[0Z§Æ\t±+¿-þwÅ¬ÞF`QîÝG;L¼m†%Ú—–íK1ŽºHüK³ùuBÔ€‘ËQü\'\v4sT\t ÷ŠA ÜoiÇTÍe‡HÂgìý7bcC›†[_¡`9Ä>Ä8µ¬êÃHúœT=ª÷J”ê¤þ¢03ˆpê”OŒJýáùôÄ4f‹-îÎkõT¤‘×NE?åúë½åá‚íÅ‘–e%¨»Xê‹tkb,ž~²Ùj5º1–Ø/•ãµ†äþ#ñ\0ql~¨£ôC¿‚¶o}—å +Yo¬Ì[þ£|Ìv~Õo?îÚ±øžYÇŽƒ¯\"TÏÿ\0Ò¦ DïÊåX‰ªÊ™ê¶<á§ñÞ—ntÏMÿ\0Äí‚©Ã²•~¨ŸëSù)÷bÆW³\n6¨[Ìüúa¡²uýRÚ|¾þˆø’D°Ž^ ËøŒn¹ÊfÀí¸\f-ƒÕ8$u\0nXú¼bµn¬,5Îö\f>˜íÒ„îìˆxuêG´ãmCïyôð \r”-bE¶åˆ+áêwø§ÿ\0 q\"w(0žŠq~`úŒÏHô¾*>F¥È{†VÀú‚1¡£]l’\'UÊü¬pCQè„ÇJô`ûþþ˜Ø?CòÀ¦âUT‘¤Úyƒ=-\"øÛülÄ²‘ê¤þ\0à†¥¨\vGTIïßç/Ôü†)Ž5NtÚzXß¨ÄÃˆÓ<¿î8!;:®ÙÑ2­P4…›\\‰3Öçê‰¸â#á3{tØaQ3¨«¨\0ZÀj3î`ŒkC>Òu\"$)6ÛåŒ’âNW¡icE5£Å«2r\t,A°¸ÒI¸ôÀ^![IpL@`Þ„È÷ƒŠÙî$Ô©+ ™f1“±-´¯‚<$äÂS­›¬Px´³‚ªy\0«¹Ûâ´ò`C\tÊ[õ\r½ƒ<+¹NÊÑjj+;BB7ø¹Ÿ<áýœ ´Šw!iƒ±7};3‘OCåŠ5âIvf>J§ó\0c2¶šÖ^‹‹TeUP#Äw´‘°\'\r\ru$÷º`êm_×öEÓ…P¤šTÆ­Æ€Kz›ü°¹ËRwjt‘XiV)¥É‰6ÛÈ‹¼o#œªŒ)WJf#ü¶’O äÈz\'ø?`ÙElË72ˆ‚=ÙÍãÓ´Ö·€à6ã®?êö— ÂÚ-\"ÌuõßåŠ\\K=IDØO3ùuÁú=Ë«j†cc$é uÁOðJ\0OuD‘ÿ\0ëß26÷Çl>hŒ†±ÊHìóÿ\0XR¥¬\v³±m#H\"ð9ÜæFª0¨!G×Ìžgä«SïÝhÑ|n(7ø`Zgo q§©¡\vr/\t<-ÂK%Ï|¢ÃñÒïß§ûR¦wº:‰•Ž£§®#â¹êA˜!\n@òe\f~¤Øa79ÚaðT˜¹å>]01Æ>Áz\'Û¦>ðµõXZžÖ3L×éã (ç}@¾^{‰¤[}ý?~x£Áø“N\r™ Û‘ßÎÖÂµ,ú=â¹Yä×ò¼GÓ‰i(ÔQQ”8&gTŸ\r \\¿\\5šzä¥»W©š@ù_X]is ‰œËñ°çŽeÁûDZEIVŽ–\'¨Ã>K>Õ°V!weÞdy`£Em²A#l\'{8À.1GÂc÷Ç§‹h¤.¥I‰þþX›ãé¦K@å×Ûlèp…ÓG^à=ÖíM^Ç(>øX~B“±-¤ &<cSÚ*€¤‡b¦ß¦æx‰¨²Èþ•\'o1iÁ7w’ÊŸ´ûÊîYg×ËØ+ùª”GÀ‡VÒ?#¹¾ V7¦q¿\náõó%ŠhäO·û`ºöKr+4É&TÄÏ`â*a[ Üî>@ :À‰¯<_¡Ä€X‰ü=0j‡g”*èÆüâÿ\0ôòÄy®Ã°ª<…þ±‡‚0œÝ$±ç\n•<å9\\¥œ+œa{1ÙjËð2¸ò!Hö&þÓŠ5²YŠeãÒßß8SÞÈÃOi]†z ‹þýqµN\"Çâ½@oüÂfK9œ\n€?ªßŒŸ¦\vesõƒTPÀ\\­àù{`\fÍoš²Çoü¿PŽˆ¯1ì>ŠÀ}1«çÐ`ûÿ\0ê×8\n…{Ê\"’uBdl%ŸÝºÏePÔaM‹§Ù*w>`€cØbÔ˜±ÂÝøÍ3 –E`|æ§Î1ãÔ?Ô1Î4°½î[FçøS!Hiòƒò¿ÏÕ+\'ÙóÜ~“\'‘Vñ›W³¹6¨dTØþ@®+\f•]†’zR~@ÏÓ7¨ÞMl\t!Rð7\'ËÒÎ“bÖõ‘òÄx:!»<¨sz‰ÐU#ñªE/ý¥>p?L­]˜4êxö*_pT‰ô1ˆ—Šcê9?\\c:¡p!3f;:¦¡îó#•„ú7¼òÂisô©ÊSv«RbfBî$nOAóÃVk†g3b,³skÕ¨<À>zH?†\fð\tËZ!\reûmwÚäI>X¯±·ej½ò<ÇÇ_ô¹çìN{4³Q»šLAþdÉµˆA~|ã/ø{‘¦€5>ñ¢ììdû\0öÃ]zè¶f\0ùŸ×\vÝ§íN[(’ÅÝÈð„æ|Ú4ÇË\f=q‚÷gÔåH½˜ÊS”i)Út}/~X‰85ež…%BDJ yäÞ-é…þÀñFÎVÌfk¸”\n”éê…UbKBÌ“* Ÿöt¸V¯¡\v{É‹ô~˜—„øfeqÓ…ELŠÓçÈß¡õ8°´o·ŸHþØõh`!¤‹ÀåˆsY\nmgPÞPd}AÀÑG$¦¼ýôµqº*Ñ©×ê.öµ\n*°¦Åi”2Nç¬ý1w7ÙtkÒv§×œíÔ’0§Æ{\r˜†+X:Ý´Ü_ÐMüð\rÞ~*¥•ÞkƒŽæ¶½/ù?ÂÎÛZ4rÊ‘QêK’¾rt’ÇúciŒSn%žÎR¨ôÚ*K#LÁ=@h$ÄòŒ-QÈ b*TÒ5‚\téª`{á+Fš¢©“OLÂNò&9ÚN&@Ö›¤zwI0§:€¼\\õ¯åQà}5*2Ô¹D4/©;úb÷ìÊ$~#ïÓ)œZ§Ã{Å¨ë¦ñ#Ö6¿˜ÄÙŠú–)}ÂÄ±êÆld<«CK\vC€®¥SÈpTÖij’n×µ‡ëˆ8—Ë\t¬´×ä“‹_ÅVEUØ·%DzNÖùâÝ\f›ÕbtTQm Ä±¹ç·å×næÑµºw°´÷æ€fx?Š(±RÍÌþý°g‚ç3ÙZdn{½2\t=Z\"ý\fð¾è¬[~‹\r×I,yùcÜ¾{- œÎ¢.V@]Fçy­‚ÜãƒÂªí!s÷°zr~¼}å.q!]”»Qx¼–O q€Uø˜¸[ÛrmõÇPÌäÈ`Rµj{šT©b¤‰Èý0ˆpªoS½e\fÇHVÛÄ\r‰ƒ¶¹Ç\r­ä*§±›vÓõZöK³\f@¯›÷)£ï8çä§ß r©˜Ÿ 9ä0¶üJª@wV‹C}%b>G¿ké#i¬­LîÄ§ÌËÔ\fâ~­\fpiÚqóLµV‘Í«×óÆÙ\\»ijÞQ\'ç¼àNO‰Ò¨%[ÐÎ/¢Ä3Ôcƒˆ9\nÎÀG„¬­—“üÊr90™½q«¶ÔÚ~Mí1#ÿ\0Ýg×5@G‰q6ß,.-xç(nv½4Q¤’Ìv=7ÀLè’Nç‘6?)¶\tæÖ“ÕQª;ncÚØóˆåW¼F•!fØÿ\0¤Ð\f&K\'%ÉQÊåÚTÈ¬“±3±UÅÔlH˜‹õ‘åæ0À^š+&—\rö\0u}Óx Lí¶þ•xß\fd†ø•  [”ì˜ø‰ðyÚ.p1¶Ð¸¸T3\né+óüÅ¹âªÓ+\f‘1q2y`‹eWJLøîT\0\0Þ~×î1æf±`JÈßLÄÎÃútÀm-á§¨‡x½ìKs`1¶s…èX7\'xÛØÇ§<S‡¦fN×_-ðO)Ä€§â2\f™‹›X_b\rÛùi@ÎìšpBª&Ÿ´G+OåŠOJ6+`Åg§2X\\ë29EÇ¿LTÏ53QÍ#ÀR ™3GŸŠ}±#uríeà*,¾ƒ÷éùcQ«§Ð~˜Ñé™˜#ÓÂÄß¾Ðò«8²òœ3|ljÐµ%§pƒŸÈ`=.-—RJÍF[kci¾ØG,åÊ1…jeû@òÃ>C€ %©ÓZ+÷êP},Hù\\EÆJtý¥Q‡ÄÝ×ä/þyùû(Ó€ºŽ”\r´-=úà>q©æÃÐ ±[Æäˆë¾+ðŒHï*w¤ÒbnÄÌßr0LVþQËÓ¤(P‚¬\0±7ñ…c`È‰äF9ÍÛ—%þ#S<®¤ûÐõòôþ®Çä¼ÁÝ¬\0\0\v©‡Þ­ç?ŸEE.ú¦Ê‹ÌùŽxæù.$£¤È{ÍCHQÓÂ\tcµç|ì÷\fu—¤…3p³óè/l6í9)zm,q4\0}ú§Y†jTîÄJ¨|¦/ÙÇ‹H7‹T/Þhè.cç|R¥!S¼v$´iWˆŸH¹õÄªU¯Z¡\0‰Ò·>÷‡îÍ+4*ÕºÊ ‘sòÄnŠ~ÈùãQÅ(¨Ò)j¼ÇðžñŽ0´“¼Ö°d\vÌÏý ZL“¶&—<Õ+Yî–ªKT£L±¬ôk®ø§eèQ–§˜mîßÈZÇ¥Ç¾&«Ä_7dªª£âbÀ(õ Üÿ\0HŸ8¶-¥l¶Y5w†½B`E¹ÚÆÞ¸ü8ùÿ\0JË«£fÖÿ\0éÜûìª9L­Z”ô™`6%{¹õ¿ÔF\fdøp¦²Ôé«5\0ŸCõã®/iæJzVwT3¿¯×2€Wˆfª\0|Hã¦¨‰Ü_\nÛ|«ÐéšÜ½åçÖ±ì§§Ÿ¦ …3þYéÈíq6lEÄi;•\\Ócx¤ž†AŽ$£—\0€ªeˆ\"ð$Úvœ=æÊ$‹coß<IåZ½£Úœ£BTïi²À$ƒ3æ.&|±i²Yi,)£€I\fEÏ?cÐzcÆîª\"ÊxÀøÈô›È¶\"­[¹_ƒZ‘â$@ó?_LKŽ0¹ þec¿b¤#5®\"`\t+¨‹Û‘ßÏO`L)\'‘vƒ;zùb§í^QTŠtË¼[I´ÿ\0Q2>XSÍñªõÈE´Ø-5»M·\"O>¸‘rKõ±Ä0lúh¾gª’\\ƒy\0\\ûƒùà.ŠµU]Iü Í‰&$jˆØ\v\f3vw°Ó™ö¤þl6ô>Xt«—¦ª”Í`h\0\0+Ó~XxcY“Ê­ZH£€¹#džœT|«…€©u  ÞþLøi§ü}:hêõàˆ\t˜MCÈjBXò\vŽ¡N’Ò‰\njsÐs¾gøí8…\0‘ò\'å87Ñâ]‡Å&Òí{Òÿ\0ò²Î£ï$0úÇÊqíÅ©¦’UèM–Ý,Äá±³‡1MÒ Að…2,G9ç3Ž_Ú‹åêi¨ªên­I÷õN½ÛŽj_©‰œØùd#|\'´y1G»u}RßÝ’ÀHõ87Áó´ž +\\:ýÚ¾ $\r®ÆÒ\t#¦9›ª*XºÀy0ü b\njIfyFÿ\0LK¢ªL×=¢ˆ\v¯çëÓ.VE&kÁ¨Åu}íLlOœcÓÁž¨!<5/!\\Zó`„’ ìNðwå¹n/]ñkìÔÇÉ§\fœ/þ :ÞÑb\"“úåk€Ê°5±ž¡¬3Î–/á\'Âü¯_–/TAñ: «)é÷¢þcméÕjr\ve€\"Ñë‹y\fåECã¦\fòOŸ,)íZ…áÇý×™Å;w€³“A$í_»áƒˆvq^š”¡¤Y\"×Ò\tcËÎÛ×5”×­&ÓˆM†ûàÞC´µJJŠx5ˆ¼\0ÆeãL`ZÃÂsˆÇæ•èö\\¢,Ë¼H0cs D\\b¦e)WPXBÁB˜‘¸ uÅþ7Æ+«=`%X(Ü‹I<Éq¼ž¸Fˆ,5«¶­1ª9À;ë†5Ï)lg.æóuÕˆ’£`<¹{ùàq¦æä“ë‡Þ-•Lîf\n,)*®’bB ––;»j&OVä0É•ÿ\0‡Y  Tz•›‡*ÑE‡L>Ñ*‘Î>+\\½@®)årÁªs\0jn—{Áôù\f_nÏ\"|N¨ï\r9z7¨FðBl6¹<±GU­–¥?äš‚úNª¦ö–2›ÙdÁSˆªñg\niÓ=ÚµØ©ÜÚYÜËæçÒq%ô:+{hPÀW*Ôƒ¥VžNŠÜ…ª{`Ô’|ŽØ¡œ4i¨©˜Ö(Ä%2Ç¾­#âéM\f\v\0\'pe*1i¢ªæg½©&šŸéSzýF¦7|£S¨j²=Z†ÍZ¸$ÎÃaéõÂqÊçqgïïùU8Ž~¾zH§I\t9ÏÖzß¤Í¥$T/2ÄŸ@:þí‚¼c9OQe%ö| 6Ì@§?L\rïXÂ™(Ðº¢Ä“XîgØa[ï€²¤í&“¶&’¬fu:¥G¨êÒuÀØk™Õ¼ÚÞx&¼|ÞvëËÇeèŠ`¾¢Ì$´‘!µ±?g¸]$M\0)srÌŸ\"NÞ˜æµ×”ý>YÞo‘ô9 ~Çþ ü†UÎ«Tz®«}4Óv‹éí=¡oáôÓÓ«U±Pó6ÿ\0¸Ãwðõ2íàB¨.ºG¼@ÿ\0lKW‰S«á­J›u•¹ýú`¼7•mÝ“Ù_›­›÷ê¹\'4ÿ\0“]t6­^ F yƒðŸ\"-Ðœ^r©«»}¦ééé‡ð,VR®¨Oùzµ ™’\tóH8[²ÑKå«Ô´À©ÓÔ}}þìäQéçg„‹W¦XSÕCFa\fkÅ@bñ<¼¬q\'¡¤¥Jp4}D˜’¨äF×;òÂ¢?uT1J¨2U„\0=>Òô?L<i)4ÍÍË)Gäcö‘€\"Ž6ò™ªqªAu*z®¦\0úí>¸\vO‰¼15V’ÿ\0Uˆ·õ<§ðÂ×í%J¦´rÁ¾\tÙ5xlÉf¨×)Ég®Ä·Ðyâ6ž\\ˆêŽÛ¿^ÓüoSéÉR©V\0ˆ±h»7I=c×ìÆ4ºëÕ¢ |4õÛ®È{’N:\vÊeTib@]XXŽ@[ç3\\S%\nNäm0>¥¤|°Áµ¹Â§t˜y\'å÷î2€{ÕÑW˜¦\t?3êFð®—Ë’) Õ÷‰$|¢=-ƒüG†¼%JN4˜m1°0wôÂ§F©W»¤ÃÂX÷DÛÞ>Xês\"lpÀ7ŸÕÎçÅ”Õ¾ê‡+n\fk–ÌÖïi¹O…\fÄÄ€LN-pž”Å…ù“¹>¸&@l#÷i‰¬.T¶GÊqÂ²i-PZ£;hW‚+@|Èˆýqã(\'SQÌ˜Âös¶J¬«“¦ÕjM™‰è¨.ßL)À=1ó6JiÏðq@\níR™,Ä(ô¾ûgÚœµz}ÕeÎæ£x@?Ò7>ñ…Î+žÌæk™w5$\0*ÏLxTn`bj“ÌH#C¡ ¦á€¼H8€Æ±gË¬–aLo¢©“àÕª z!ZäBÔMKÊJjÔœaÞ…*ÕŒÅ\nj\"õ(¹K`@ÜúÀ\\‡gªåÜTVöOÙ7æ$™úa…j¹pŽGqÓßÒq^YÉøJ»¡ìÐùA¦U+ös*Â\0‚Þ3<ÍÍïø`>g²\0“Ý»ýB}­†ž ¨]Š’¨\"Ã¬G±œhùrHi7Ø‚uØáBIçùZÐé^2ÁûÑ ñÎV¤vÖ½R\rð)‘”ÅÔô;ã§pòeIRÈ$ZÜçóçýñf¾VU(Ëìw>‡Ó˜Üý^ÝIüË6^ÆcÄêýW.¥ž¨»1ÁÊ}®¨É¢«9´H7‹ùòÃì¶XÍŠ7ôÀ,<;r÷¼õÂoáÝÉ€Ú­¹ß—´{áÑÌÇš\n„ú=N”n&Â=G´ùqw¤ìAðÄmç8Ž¿kZ«ŽîŠ!°ÔÄ±õ;af9VhÚ>í8ƒU¦Cæ»†G†ÒJe©6ªŒ£SnldÄ.ØWŠÔƒ—rG=k|s|§ÍQ0µZ-ákˆå¿/L¶¯Î2zÁIÂ\\Çµâíh[QìÎmÞ\vë2mÏûæps„ö|TSR©Ô‚á0OVŸˆúÛË\nYî\'q@1ë,8ð~3¤i7q„±ÖmÊ§gjª·8U+y~*”ë• °\0\rˆùÜNø¹Å²mR™îHyã˜Œ\tâ-+·yF F;«íóÅ•ÎQ3 9Ó`ß@g—L0“Tr¨ha\f~Êy­RV~^}\t&|¶¿Q‡zô–¥åm¤\0øH°·M°i„T\nÞN ÿ\0|_Êæ™§àoé6úòÄ7„0ið\nQe8‘OåÕYQæ§÷8Ýò”ê£WI&t²ÚGÐ|ñlfYZŠíûLÊPB¢*Ž@Xzá¬ˆ»Í1ÎÛ”¿”£™p?ÔcÎÑ‚)AÍ›Cz¯ìâÖmP¥¤-‰ØOAŠ_Æe2:‰îƒyR\\,\v´:¨ñRPO0 }6ÂŽcUBQÁS´Aò·?ltlË°·œþ“ù®\f*xZyïG| °Z7‡–ø]Gô\\¿>K!5*@ÖJ-™¼Wo¯\nÛÜãQÃ@,Ê[eÌSîƒõÒúŠƒêW}ñ×xOü3Ê@ªÊåxé3þø«Ú>Ç‘L>Šr\'Z@m\0‚bDÛ|Z ´\f,Q£Ü\\K³è¹^K-ÝV••–ú\\`g˜è~XeÉ×¨Úˆoa,vƒ0/~^Ø2Ýˆª¤÷9ŠmL¦•UxQÑ\\Ëí¿9ÀŽ%Ù|å#ª’jêªÁ¾DGÕWÒp/Œ8X9LÓ¾]7…Í5èŠÐâ%j\nuåU€‚<í;þ8`©Á)BT—ÞcT8Ç>|ä”\\Í6£Pm­HVú[Ôc SãT´SÞ\'\0@ƒ~gÚþX@m|KM“6O€ýú«©Lå©6¦×OÐ,\v£—¦¤‘2×¼AÖÛbös6¨ºê\0‚KdÏ;a\v´=¶äÐ]âXío-þX–¹×áA;¢`ÿ\0/ß²}5Rš—¨êŠ¢ä›z\tç„^ÐvèW.²6\fÖÃsôÂ~‰Õ®Ú«9{Ø\0z(°Ã5nÎåó\n•2ú©J‚PcnFfzßØb^àÜ½RlóOmÓŠýÿ\0 ”³¹Ç¨u;>{A¶0Ñ­M×ÃQ*n¶!§Ëž\rÖìmmaQ•”˜“á2:z`÷áÙì»K4\véu$V¹\"ÝÇw¬¬PhuqÜÏìåCÙ~5Zª?~ÅÊR@\f:É±òÁÊù’÷\v.I¹>ƒ®5®Æ©š¤\n‘\fÈ4ÈÞçv¿&œRd#TW°åúb“Ü\v°½&–#A§ê¬Awæ\'÷Ó7¸äz·±IsÝ2—QpwùŸÏøUu©}w<ˆò]R³ºÀkÁgpzò=}6ÆWvdð0|ùßž.ñz4 3¿îå3¾°tÔÔÉe`n<Æ;Ï\v·[rÊ£J“ ÀûÞÜŒE[:ˆ‚bÇ¬Xý¦a¬¸\fÍah#ÎÜð»šÏ»îLbÃ4îqÊÌÔv¬Q¶™’ñnÒ_ù}-Ð{c(vs:ôÓ0)&%\tÒv:IØŒàœ7¿¬¨Í¥O‰ŽçHÞ<ÎØì´«Se³*åolZ\r\nÎ¼Ö’éI¯*\\â¯\r \nu²Õ©ÞfçÔˆp~kÕ;<ùuÐŸ»Pwmõ%>l1ÕªÔaài7µ¼ù^Ìðãm*@‰‰ü à›=òÛMe3/¯Ø\\tå+ÑP*SvÅ£‰SéŠåS>FßŽ:à¤‘¡Dî4éùÄ[_„e’h,â\0ùiÁ~%¾inì‡þWZä\t˜\rU\fBê™ç7åÐXå†/ãÙæ:à~o%Mª´„\"Ÿ>kçv~XÎô¨„¯#ˆ‘´U\r3‹8Ln=çƒ2¤üQ\\(eéÑ{Ì{Æ\nåx-2A5_OA¿Î-ŠûEálÃ4„ySŽÐ5œ5ŠúºäÄò\"ÿ\0±‰²ËÝ.Z˜îß ä1­lê,R¤4¨ñÉ=$ñY¤Î€O6ŽdH$ââqVf»Ÿ ÀCVLtß2ù½°æy“†íSVš²|žk8`\f…ÕNäõÅ§s`†FÀƒôË\n´s­6b}w8¿œÍ2\0‡+rv1{em`%:\']—)«…–©6/_,ã9×FîíçˆÜiEÈ:ÍÈ ÜîgögûBÎ¯ÓQÔ\" ƒÎF+“æšpZàµ¨#4]AÅn5V{´Uf,I·(ëóÀþÎq€ÙJcš€&N$ËøL,üSþØ¸H,Ê¢ØÜ$&º¡üG/¡Õ@bO!=F,6IÐø—÷ëŠY|õI$“¤å‹¹wÔ`³ms#Öø¦I°¯»{E[?”¥U{º¨®§ì°ýüñÊû[ÙjÙ9«AÜÐ¤Í9µÿ\0§–¯Ÿ\\vÎjŠx\tzŒ\'ÄÞžX®)Ôª;À7æUçõÄB­,M™¶p|Šà9ŠÆ¡ñ;9˜Ÿ”œ@rÕ\n3÷o¡N’ÚL¼{wÙZ4ª©¦Â‡zº•i¦XY‚¿Ø;h_ãlÊæëåªi%¨´\táaèlÊyDŒ7a«\v\nF¼‡£€SÍSJµiŠDò¦J«‹\0Ú~Éßá ðb§\rJ»*ˆ½¢×åë|?´šd0T1@ðéËÛå‚3êÃÆªR9›ííÓ³_‰z}áû±ÝVêÏU{/šV0ŽWÜÞ1åRI$\vŽWˆ ôùÇž+·\nGÕ\n±\n‰òü±°J”Ö1\fbzAëü°UÂÏe3gÖ¥¼ßH7ó>XÁA.LNæ÷ýÏå\rQb¢Öò÷žXš#Ç¤u¬c¨ŒðˆQðœ¡4x}Evj •ßI¿ûóÇµX–²<[Mù÷8¹S‰RÒL…#ïZ=ç®3üy˜÷yu5\tÛÃ&¤;`ØÇ¿„™µ0éÇˆüºû-øív_ˆ;dû\f/ÕâÕ …b\'s7<¾X-ÿ\0%ñ*¾3—kówE?&`qS7Ù,í!©òÕ nTkÔ¤Ç¾.Ç\vZ)yÝ^®y\\\\tËvJ™È²f¨Ó.ÎIm`0°\vâÄ^Þ½qUÿ\0áÖUfjÖ1Ð§ã§û#Ú\n”)f¡ƒ\vˆ·?.X|ËéÌ j×±°oˆyuáhiôúw±¥Ãëü¥ÞØº4Y™*TbÂ é${¬`î_\'M~Œ§©øƒÜC2š¥ÃÔ#ñüp5rlOÙ\'¡0~»ãwŒ«²6·j—¸ô¶×Z:úc\\Îqié\"J›ºÏåÓ©äõ=âä5ø_f2/LÉª€ïbAö¶\"Í]&ìmÖå~J•\f#!ClÀ{Ófó!\\¨¢\fZ@7ù[Râw¿së ¡Åjôé³5H›À¯Øb\v±‚¤2ŽFoi¸#ÿ\0ÓBÎ¸Ì9˜éÔaw)™BÊ>bYñ!žG˜èqÐòyÍ@«,¦Í\0í¨ ©æfüð¡ÚŽ¡ÅjbÁedƒ?#ûåY£‚òÙaÜÕ^šŠ¸‡7\f¦s˜Ø¢-3¶\tÑ^í‘ðˆ¿–\fÈe|6\"7R6#÷å¶,¶sÀR¡†Ây0òý9zF*Ë«\nÞš`\r^´–l¡Vðm…ü­_åŸS‰xeVzš˜ø@·¦*«¬—Õ2÷Þw8Ø<`e‡|\\\rkíøù|,›*ûj•ÚUê\vÒÜ¤€<îm¶1xŽªš+TPó\0*÷<ÉÀú™“ÊÃð¬•©¸c«P.Ûh=9\f¢‚zr‰q~\"i€±\0ý}ú`wÌ\tÀ›zß³ˆÇÀà&Óq¸=A¾V}H\vkXrÁ¥É|&ŽÍ©4Q†×ÛTâTÖ¶–BLÄuÏ—Ïð|Ò¦Q\'úœ©ÇiµB®\t\t…ÛÞ-‡ÐÐ-@.ÉGóYÊ\n|\fËän>x†·§¢Í$ÀçÏ\08žf™*Ô™j`¬ø¾_¦¸ª®¡¦½X>p/!¹\v˜ò|\'”Ë˜âu2Ñ3°.OÏ×¦\vvŠè}LÃJ\'ˆ–Üò÷Âžk‰ÓEP1áQÏ¤FêgªT¶Ì~~¸Q”Ø!1ÍcZAó]?\'ÚâƒÓ¨K’@\"mÓ\0U¥ÜšT(+§»P¤t ÀÞÉe¨ŠAž«Ï¡\'xÇJh{³~mËÛõÃ-á»‹’ö±ÎÚ¹Ïh;ÒÏ“$­ÏtÇáòWéÓTzá5žµ(êÈÃuaë¸úc©ð®ÐÕwec(l`\f]âœ+¬0V`ÂVòSæ¤]±\r•®Ã•9û6¼pš+›ŽÒ³¬4N¸vm+Ó³\r[@ëÓß\t9þÏ.¶JM¢¢˜4j°ßú*ÙX@m\'×ªŠÔ«k¤ë¸º°ýõÀ¿H9\tqv´ñâ_îº=\\ÊS&YJˆ˜;O‘¼‹ÈÀž#ÚJTlž3aäOé…õ‹SÕÞ317§yý7Åu£÷·éúâ¦’¦~Ù{¿ù¶½ySq#R»jcè€ýõ8èÿ\0ð¿,´òÍYc¼g`O8A1kOî1Ìœã¨v6_-L»BT˜@?%~„Ï\rp¦ÐUôÉ9sòkÍ<wÃT¨åT.}<¼†*–Ò|\fÑ×iùbÎW4ÄL÷‹Ór< òóÆ™¬°@$ý’ûáDbÂÝiÍ`¡¯Ý¿†ª÷©ÑÔìwÇÑáH³¨QS2\fswç‰QÜJ­9ÄòU–Æ™=\nßðÄÛ‡#\n6°œ*\\åsv(¬³’T­÷:LÄõ/¢ÔÐÑƒ1Ï/,ON…\'_ç¸9´Byú\0ã\\¥lè;úrÓr#Ë¦ ß!HÚÓ÷ý£œ/+—ª$)ƒöY…Äïn^ø\tÚžÒÕ¤æ•4PRÓ½¢Fø\rÂÚÀÒÜÈ7Y1;–)ö¡ª=PÆ¤Ú\tˆœåÆç]Ý­k+›ÀŸôÓ·k+t_‘ýp12\"KÓ—ãˆŽA¾ÿ\0ýÃõÀÒQ’T×ü5J5t5J6«J\f¬w¦LL9`Òê4K)N dº4Ïˆr\'qé†ÎÐpâ)x VKÓ6ßx’­\0õ‹8@¤Î¤’Ž€¸•i™Z‚tÔPhÆnM€>Dcjè¬~0ñ–!Xõ$zÛoïuÉ+•¿Ó|Z„‚ÑA`&JˆHçÆFøÕEºÖC|am¨Hº˜0HŸC„JÐÜ6å¥X+>\"vòÅÜ…mùm†J\t}Z©¸šO÷×˜òu>^GÈƒˆ8p\fúc{ï²þ¸Ï{hÒ¹\v´Ú?•\'é‹9z£Âò»GO×³™°‹¨X\vO/÷ÅŽÎq0lf}$G¦D¨&nàÂVÝ¢¤i\tY+ÏÈuÀL¿néJ†·#¯´aÓ!Šuh ‚$Zó\\\'æiÒPB,IŽž“ýðd\0‘9x~\nbÈq&¬„«iVÝ&Á­>Ç–+T•ñöÂîK2i1‹ƒûœ^¥Ä°-¿ž\0£f 8\0îSmG^áX4\v‚>DÇÏø=0b\fˆ<ð´kŠŒü=Ïé†<¥HP£˜’|ÎßOÇçjë¸RµÜ˜ª™ŠZWX\vP(€lcÌ~óºÝX–Pvé‚<XP€üR¬>Æ0+9­FšU$ºAð‘º_ëq&Scðù)òü:\0i†;“|yÊw%X.¡0cëíÆPn\röýFvj§zI3ÐÏñaKVs´”(BgÅ\r`\"À®)¿«™`—U´ò÷Ða·´ôrÍ\'½Nñ\0P $ƒ9œ+%%\'N£\rq¿±¿ËæQÚ7Ž‰‚…z9p 33tX38#_J¤n-#åË\nÇ!RúÏœ}c\0xÀÎ1ÐÊÄ7*`c¬\t1çŽÍZ‰¦1³wvJ­Æ¸‰|ÍZ„êÚñ}!Až€‰Žqˆiñ×Ò™~¨5÷bÄ„V%ÂúIéÓ;ÁkÒ\0Ô¦`ì@‘ôÛ$lZkñ‚¼ÔÍ{^KÅY´R¿Ì0‡}k3¥Ñùi·´bju6\"›t$è>‡u÷‘æ1®K…W®&2V~-‡Ìâ|ß\0¯Fî’:©Ô¬mêq=èà•Â\tœ7†šëI£°¹,˜}ªg¿Ý\rC4Èå¤lO™y`þo;Nfï\vV%P\v‰=\'M£ls9¦Q¤C\'Üa+=G0|Ôƒç‚¼:²3¡\fDÒ¨Ö?è¨HYØCiõlˆ{CG’~š~ëÊuàœ0+iR‚MÃŸ°Ã7øÅ•»¶ª¡É¦=\vO˜1Ž]œã5ÔÂT$XˆU,o,|S·¶$\\çxá‘ˆ&X‘;m;ÿ\0¾+Qn\nÓn©Žã•Õ³|rŽX“<…ðþo Òu24ù‘ÀáS=R¿vYè±Räk<ŒòN8kM8œsœQ‰+k£?Aä‡_Bþ HœR™€® ïá$\tù‘ôÇ6\täÃÛ¨èØTÁ©®Zº˜4jŸ¤t¨\"þDúaw‰e2õ*éVG)þ›í…Fâ5i#T;ƒÓ¨À\fÇ£Ä‹<ºá‘“»!UÕjb\ró¾ˆÿ\0hó™*\'»¥I*<øÛp½bl[éG³uL0\"0D‰ÀÁÁ¾Îöl V¯MYÈ$)o„D@<ï8?ü #”\\L³YÂ«—¼¤ú.¿—K\tç„Þßvhs”)©hŠë¥˜›bGk@ E¯Ë;5ÆÍ*§Æ–\'‘û¬<˜_ÖpÌ./¶4ýÂÒ$e.5“Bº)ß»y4£§cM€ ¡w“&Ç\0;EÃ T&ÄAV÷åøŒ5öÇ³ô²ŽATJÍiÂÑ©x>&ˆ°ºÈÜ`b¸ª\r+ß¨â¤;ä‹S(%vc|†áIDX¤ƒO;R€jL‰R›E*WVÁ”‚Z-*DçÑâ…wiM\tç\fÇþöaôÃáÁ Õ°·ŸáíLßn½F*¹¤$ÍáV¯˜z.ÅŸä9LàlåJ…0²ur½àùàbæ ¤ DÏ…F¦>mˆŽS¦plÆš:|\'˜ƒ´ùáRp¥&Jè*F®Q¾ÀÚw=pƒÄòNµ™[‘ß–:eê•»D€}dÈÀØeN zï…¥¹4eì\'´LN.d2ª|O _lU|™˜rÙ½ÀÚ§dœ¦^O*™‡Bß\fôŒHõôÖ—`ý¡¶Ÿ(¶Ø¼>¡¬ó™‡pæ™X*J´žcòÀ’O’Ò\fílø©\\\ns mª&ûœ:ðÚÀQñ\0ÂOå„Œ†\\\"ë¨@!×ÓOh‚«ðßÖ|ðq?k­t™fUNÕRË#Ó¤Ï/žØŸ„qšfžš>A\füýºaKT«š®)ÒVvTPI$ï\0bn#ÂŽEtÕÌ\'ñ&?‘OÆi“ÿ\0¸ß\nŸ!\'ñÃvwšu¤¶°¯qg¦µ$N¢£á0LÛÐŒ\rÈUz•i€¯Ý–™AÛý[|¾x;ÃSR@—€XŸ‰ýå‚k˜5¯ðþúÎ*™š\vIš7¹­.}y×ûýÖ•óR]†–SÖÛÓ­mH*jÒ¶ØòõóüñGˆSW¹`ê [¤òóÀ¬Åj•H¤“\0°p¢/hw…–J7ÿ\00S>}vôÄ8MÕ5•F‚<Éþ¡Î<ü°.®B’-!¹“¾\nå²ôÖë6Ú¹Þþ¶ÀñÁ\\\t“4WÕ9`¤E±Yrú[T¼ÌúGLWÔäÇ1¼ybÂU]\0NÓûŒAO.1ÙÚUµ\tP@PHäFÞøA®¬ŒUÔ‚7c¨åóAAƒÍ°Û*lk\n‘á`\0>bçñÅ˜I¢°»cHÀÎõ‚p©åx±\nÀ«L}‡Ÿúx“ØÇPp[&ªà>Z¯óTˆ¡RÈç¡Ç‚¥ùBŸ#…}8öqrïyæÈAµÑ8Oi{ÊO“ÌE&f>\'ð•cx“ÎzâøìS|BµO# Â0ƒCŒ1k¨¬ @,b¢é©sî¶¥òÁ«TUgÊfBÌ7E’š¡€ûÉ>`a¬ÙY¬\rCÄšjö^¿*“þ¥ÿ\0ëÆ²Í–Pk„†ø@>&ö#o9Å|¿l3ˆ?Í?­Aúˆ?\\\tâÜJ¦b±«V%†‘ÂÂf7Ÿ|\vÛGø¢„”;7›j¬\0J£÷¾øO§–¤•kª­æ\\.¯†Äóùâ¶Q2Ùt¥Ru¿Âj\0@N­ìLœXíZ´\0—a2~îÃñÅRl†ŽbŒ4^AwDS´X&–F\rpH\0­· â`b¢qÚdOv}šß†è÷ˆ O„ý–¾Ã—¨#zlô¸iR~gÝ´ð~¨Æ®Ni=öSŠ³(¦o_.-Ö®_§›//o<u~Ä–¥0TÌcc1cNãºº¥òÌ«\\G&•©µ7. •0G˜<ˆëŽKŸÈU¥[øWwTê â­s¬ 3¹ƒ#ž<Æbè«8Õ-Y?ˆV¨Uƒþ`ÑRÎcÄ5ÄS\0\\±¾UÈ«ƒF°ºÜÐò#ËéŒÆc‹iMX€fxI¦eWùÔFª”È‘Qþªºòtås´éßpòiŒT#“¤\rÁ˜Üì-mñ˜ÌQÕ ×úOÐÄÓ)¿ OëIÃ%™&£H°¼t¥±>qµBÔ[ÀÜ|½£ŒÅy[ÿ\0‘§ª¡S\"¢â?LIJšü¹ã1˜‚T…3¬\0ž§\v}¤®¶¸†uV<¯OáŒÆ`Ú-VÕ<µ¶/âœ1\"\\“Ê\0Üá·†ð\vÞgk\fµ1>ñÖsÍUD€Þ²G01˜Ì\\Š&ˆÌ?×ö²Dy¢U-ÛpˆÔ8eá)5ž¦ùŠ¿ê©º%>ü°³üÖmo*€ƒµÏ>|¼ñ˜Ì\"yµ3³´ìšzÉ9¢@\n\f)fäôýùbT§Tƒ¥gW1ÓŒÅ6‹+Óž0 ÍPÒOD1°ƒ¿O©Å¼–M2ëdLßÒÜ±î3¤4òU³<YÅ@Äÿ\0AÚ}zyiü(A ™“ÐŽ˜÷ˆw4¥­hYQ¶p\"žð&Ö±ÅþY\nj+gçÏŒÄ»A‰~Õîc8Ìª@·¡Äs+\\i¨º–}/åyŒÄÕ ‘åÍÚx8K¼O³dÜ7yM?ýEÂÍÿ\0ÆþX1˜Ìiº&¿ªòZ¸›®kx…î%ÊÔ(êÂðE¤‰Ä‹Á1ÈœyŒÀ*÷„s‚ðZ•é±¢ô@Ä\nÂ»-Œ 6kÏ†fÜð\'=V¥64ÝMÑÔ‚šœf3\vÍÁALyÊÕ×.´Ø­Z\f‹¤²‘\"böóÕë€´¯©˜­ô€„Øm9c1˜‰£\0Øèš^p\n3C0UyL=8‘±æŒ±¾¶YåÓéŒÆb¢¼÷ìÍÿÙ","botalon","activada","comida"),
(4,3001,"parrilla mar y tierra","descripcion parrilla","pescado","mibotalon",123,"$","ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0\t( %!1!%)+...383-7(-.+\n\n\n\r-%%---/--------0-------------------------------------ÿÀ\0\0 ;\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0I\0\0\0\0\0!1AQaq‘¡\"Rð2B’±ÁÑÒábSTr‚“²#3¢ÂâñCc£$sƒÓÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0,\0\0\0\0\0\0!1AQ\"a2qÁð#R‘¡ÿÚ\0\f\0\0?\0ô“ÖwðŽž³¼ž?à*H*¨luTAHFøÂ¬è6ˆ“3¼Žçí÷“ìÿ\0º\'Õl„‘ª\r0Z)R•G_\0Þ÷ˆMYz(å\tGWž1I¢.S3»U`S\nh”Õ”p1údÔGn9,œcåK:¢S%£à¢YÏÂ;z:$ïã\tGW8Ãh®‘Â­qj¥lç2¶”É©)O“oŠW0ä—ñƒÕ+~è©r†ØG:š*Ð·f÷Å3­*Ø2ïì¶+Ê»÷©u¶5çð„RÃh‘:lÔ’¹a”e’R´QWJ\nËŒOþy8ØVxj¢H¯ºÛéðŽ\"Ð³WH†VJ)3%žÊƒ`æÐ\\Eª³\"3¼rö\\²ÃÐ´-G×áéUOz´…W´ç-ðìÙ%íåòˆªÈŒ‰T\'r\"¹d\vÎ<bÓ)]ãÆ\f6$wŸèùzÏ¼Vàÿ\0¬nä¨ ÷\t=ãâ`ÏÑÒõŸ>1ÏÑ’õŸ>04HÈ„+¿Î8¥,zÆ\rý‡‰‹<ˆƒÜˆ¼)G×1+êïóûAß€F?øØÑ·„Ü‰Üˆžùâÿ\0ëùãöƒ¿Ÿ-òŽ›:u:;‘º¬xˆâÀïž?h8Y†¥GdIõIñƒ¡“¸…WÍCÓ#ëÿ\00ã\r…‘=ÓÄGbAõ}Ð40÷\"/—72|`;f‘BK\0N³[ta)7<1ŒÜŽ‹ÏR»I¦µ*›ØT˜²O9yC‹=¨Ò¯Kžcë‚•,\0êQ€ƒa”=Bw¼+ˆu¢¹sÕ‹EâtÍœ>ñ|«<¼:¶‚D¤w ¨}ä^ƒSæ‘4ð´X§~Ñÿ\0?8á±Îý ÿ\0-?8ß©ú9úW±§‰Ž¾Ó\n…Žnvƒì&>6)Ÿ´+ØLMoÐt/cGßmð³ð3?h_°”|,S?h_°”MOÑ4¯c 8¤ˆ[øŸ´¯ÙGÊ&,\výzø#å[ô+Øz@òc¤\r\\þð¼hõ~¾g}1Øp´Lú`9?AÒ½ŒXlóãqäýáYÑëý¦o\tDpèõ~Ñ7ÿ\0Ñ\tÜ~†Ð½ŒÔG“÷Öªýþð\t°«õó¸Ëú\"G¨:ùÕ-Œ¼ÿ\0úàk~ƒ¢mŠI¸ÏÆ1úwBÚºÕ-\nIu&¥)*w%©…1©²V@p5vW¤–V•âF5q·Ðp´‘ŠjMžcÑ}&»,î¢iisOf´JÎµ£y1[LbºG \nÅñyÀ$¿xaÆµƒú4Ï»}s/Ë=±x1oDú/Zgrãiªòk„•YwMmJ—$¡+e±­~| >ÛUqRîžÒ‡ºhSž\n÷Ã¾–X‘1*\n!ý_ÞÅÞ0Öb‹=ª[BÖRµ»0[€p)r\vì‡Í(RBã•òzCÄOœ>PŠÝ5\t\n»}E,UÛ`ÖFq^Ò&!Jí&ç¤’²ãVu9ÚÍ½‰iÕ[!ç”}çÍ#/>Þe¯·-Ðpe@;ws*\\µ\0 í+‡­M’x\\y*óäDzß>D»\";§Ájúâ£eŒ×üÅ}PØj™¿Ï„tþ|!qÑòÿ\0?¶¯ª9ú:_çöÕõ@ÖÉ¡\fß˜;øÂ¡£å~om_T}ú>_æöÕõDÖÉ¡\rxñŠ·ñ…_£¥êW¶~qÓ`F£Äüà÷ vÐÁSÞ1½¼ái°#ºx˜è±#¹ÌÀÖÃ 5dk÷|âAcÏüÀÄžç¿åü\"{‰à~P5HÅlå¥C_º&S`”ûhµ2ödü¡–Jlh…\r|ÄN÷æç\nÓgÑÀÅ¢Î;£ƒÜ~Û^Ç•íð}b7ÙŽ‹\fqÄEI-ŒRäÐñ€Â‘x\"+›iJKT‘Ë¤wˆÙ,÷‹œâ-ö,ŒW,º]¥Ûà«¡žÛlè\t¤rÈ”±%†F•Õ\r§z¥VˆÏ´„äü Q¥Ðõ\rÎ/ÒRDeí\"´Š²·±«ÍnlPƒ2ã)bÒ‹Aêï0gk¯¾ô“¥Ë•KÌp¡m¸ŽÈ¯e6ã\\tS“ÙìoU.9g”ëòÑæ6ž¨É\'ÕU_`£¼lú-¦Lë_W–T_\\!©ŒXŸÍ*n’xàåiª5jXH$Óoœám¦Ö¥%Ö²6|ÎÆ‹´Í¨¢RÊ\0*Â¡ÇŒ£,À¤)‚Jê )F!¶P|3ú¼#”¢¹eùAHfÖõÇiØ×„cú=0Ùíå%Â\'–×Ò9+Œm­  Q˜¯§…èÆië+£¬HeËPPþè¾;<ˆöYj‡\'UâHKƒR‘°ÂôŠMÑFphØ¾±dÿ\0x•N™ØKv–äš†H5ÅéC”W§trP;L¥”ú É5Ç=[à1â«c/ í3&KZ”²T¥v‰©$ùD¦•\"rS’èF¶AüDG£Ë¬Ô·¬ü@ûÁºE?ßÉÚ¯zUlŠ¤Ñè±=X¢ÂmÓ\tCLlú3dÿ\0ÚÉ3Ð\fš‚Ù\\c+p]«œzReöR)àÁ¢Î–\tÜŸƒêSqQKÈ¥#º¯hÄ\rš^¥qá~\fš¼sð*×Z_èrÔßû¦É/ó—å\"Ç/Páò‚­q}žÈØ‡ƒE½â\td•~BµØ\rðœAÎ¬ÙÃ$YÂX\0–ÍÃ•ßaêÉbûÃcÙŒÂ<Ò’VR©@äsû£Š³\'º=Ñp@z0Ý).ù|aô¯(MOÃf”‘Ìâ|aADhæ!À~FFËm¾—4PŒ}N”Ñ·¥R’a7wyñŒ½ÜIZ^Y@)04ÚÛ~qZ¥‚(¼Q(¥Ã³Dc\'ù*%Õ\rc‡Ú$%\rc‡Ú)°ZÉY–£“ƒ»(f%ž÷ž0#ÝMÅÓÆ±Ãíº5òûA=Yï&8%«_3\r£è]_do& T 5M%ö˜çâ¬ÐæŠT:£àƒªU¯Ï\"DÅoá4™j“…\"FkaZŸP\fÙ•†º,ÇEÓ­&!:Ó¶[-,ž±}¹Y³8~0Ù–¸$Ñ“éŒœbµ.+:êN¶aã·eÉPŽ×¥n®bÀ{¦âujIðŒü´Ó\tP£æk®€ÁSÅë¨©EUÔK\'“ñƒt,¤)KPªº5/)]T\'ÄE±lm­4ƒìö;‰ìKJS¢ruz°ï rT‹ZÊ±T¦Çó§æ!gãK&ó½F>8ê‹´\r¸¦Ö\tMÑqG\rE\ngÜ•p‡½;•õÕ†Qú=Ûg°®DÃ-wkuX3Q^9{8G¥¤†$3¬_fØ»\"iêGžÆïâÀt´×w8|Ã>”[0\t­4–C†Ý“\r`M…>&[-×’$–ëx–ïK¥g´•.9µkL{#”$¥e±Th:Ô.Í.q1 ¤^«1\"ƒ#µ -#.úˆ%ñs›ò×ô2–Dn]ûÄåá\f-U9båÀ›Ý˜mg)´Í\0b”µ5ÃŒ1dRæËRC‰jsà’x˜‹Z\vŒBÀ©ÔŽ¤ÑIê¥Î¢9œO3œÐÿ\0#;Ý>JÀ©\tm‹\nJš=.WøiýÔÿ\0H*™3¶³³âz­”¼¤~ê¤Ctw¦Wõü™¿V¯…}ÿ\0èÖ¥à\"q½pqY‰å‰C 2¡PÈùi\rÚÀ°Û\\ìŸDE¢\vVÁ,jÍâ¬ªu7EÑòA®)‘2’Ok`×›T7ò{>’a±l?Ý¬»vU_\fcÊz?£„¥­k5Y·Cã:Ä®*OÙÓý>êM/BEiE&Ø¥(›‰£âAÝSZh‘H#¤9Ò\nÊzÅ(õe!ˆOæ}QvŠèH\tS–¦È¥\'€~qVl¥kÇŸãsT} ‰\\Ëù\'ç(Ó™c©rÐ„\thHKe–Äädq†í¨ì™ç‘ÍßÝXŽõ2±ïŽ°Ö8AÒ…ÔÌà¶Oý—ÿ\04¯œ}øÛNVtøÎGÂ…#dH);\"ý?e:„‰´Úÿ\0Q+ù©‚eÛ-³\'ùèùCt,EèPòðÊb¹ýJ˜¢’V›ŠîÞ\nmU…©õ‡ºD°Þ=Ñ“´Ì¬&GTÝ*µeád5Ã-&–Æ\0P¶B¹C ·JNÁ/âÃ?Í\tÖa^•´4¥×Mäñ0ÂzÚ3úM*š:©`—,k >¨ª?’4%fñ€-&¤]/8þaçEîõf bYœ¨¿*³tPÌ¤é \0(™I\tH9º”ïM‘X±¦DÑ-7˜à}*ìa„iOsDqê“4¶T»“E*¾ˆ\f‰\f<k¯dhš%¬,9g¼17H)W‹ÐBª*õu¾E¡]¹Ü¾ýúÌ=†Ž;LõÄN\nBT3\0òxØ—w\0†4?=n(££v³6Í-Gc¼øEö²à†ñ\"û´yw2hÌZå]%¤Tfk¶â‡ÌtªiL‹ºÔ”û‘ÀÐÿ\0líø¶ü˜ƒŽÊsŒ7K&ŽÂHÀ¤¶¦\"ž\rÊ*Kä\\ßÄÕttÙR÷%$ZjÛ<ÒÐjiI£$Ï\\ñ‹ÒbÔ%=-j+¶ÉH×÷n¬žI5¥Aµ0Œ¶‹³(é\tª5J\0÷•_éQ%½}…Ó #›ÔWpítièVdt­¼JI$ÕJa¬ê=ƒD­ånqìö~áÚZÍ~Ñ\'²÷W,9v+KöpÄãÝ¢CKþ%ÿ\0Z¡ºd”my2~¡9JT×\reáŠPªDÞ6\'±Ëh°DÕ¼HªÖŠ¬ê§Š½æJž”¤•\0QÆÿ\0Ô|\voøE/¨„ÔË;R“zPÕi\nbÏ]qm_\nBtiù\'Zw¾^™jTÛÞ$3â|IX¦¹L&Ü¶BÊšíÅoÀ¿(óË°]c»V’¤+¶“ÙVcQ0Ð6KÊzÊOD?—ÉÖG¹(ékþÎ‡@ôFVŸ‚©úP\v`Ô8’cceÓÈ\tÄBÞ–tjR’&!I–RAOÇ|g´^‡žH¼BQÞ©§îã\v“\f±5LÑ°ÏÑ­³:c\'ið‚E}ãÇíY4t¹2‡Voë9ÐêÃtJùÙÄÃ<Z.Lï*“øðJ]Œ·¦¯òý1?ÁŸÖ+—Ó’£³œ[|ìç\f’+rb¡iÈùGSmüð„¢rs¢Iž;Ñ;Œ~Ò\vh×ï‚%Û¸H™ƒ½ÌAHPï+#\'j#KLÄ­.ÚqŒrç&ñQˆÌo‡Rçªeà;7I.]˜gHìí\"o¦—Szc²®#ÅÄXá)îYŽKÂ¤N8.ÝjdJŒTz:O¡>š”šñD¦h‚íÙlx©gÝ\v¦tÕ\fç\vNÌî’ÒCÅ½–/­Ô¯Hæ§AÉŠïžÚéÝõSàl.¶†š¤Þ ¤¤7iTn¡ðÆã»4àÉªT‹Ó4¬Ý@ÉÉÂ·\"R-j=”úDVëƒÚaRÎí¦Z\r×cŽuÚ`)“‰IJ³zm†“7Á6I™AAWjàºv€xR+¶L\nOÇ\t¤[J%’Îš…€îœ6³gð‰¢ÕÖ%Ç£¯^Ã›ì‰v.­›òoú;û‚ŽâÔâ‡5}jÏ=žs©Œ\'B-·\'*QõÒ­5<(ÚZ•CH¾j<çSÈØ—HM.AfÖ|ÔTø(jŒ•¦RgZnX))mÀ“ÎéKC¯å‡ŸÞ££²‚×xþu\nþ`‘óð€*àÓM\0\v 0f×æ‚\0¼ Mr¯„ogÉá\\Ëp“°Ä¿! nÌþöÐ³‰™îHûÃ[TëÉX£µ#&Üd$(Ÿñ\t5Û‡ #ïÓD¤qò¹9¶¸Üô8c|ÒÊ:Äí˜ÁA£Ô4|ÆJ’q\vXÿ\01#‘æIWnVÙ²Gµ11és¥\0¥f¼iÄÚƒÞg_¼Ô~¿äL¤X!z$¨Š\nx‹µ|ÀÆˆÍú9®+Øh˜#ëð#/Ê~ñ$‚q\0©ñ‰­ú„#éBIÿ\0Åÿ\0J£%c•2b‚BÔ\tP\fÎèØô¡\'ðÃÿ\0“ê…}\rÑSzÓ‚¿xçà=ñÉê\"åÔF+Ò:8¤£…ËíŽúI£ÞZ\n)s³ü?ò}kÓý\\ôÉ\\²ê]×\n¦-PcÖçK¼’5ˆñ~•Ékt’Õë«í×<Qy7ògÃ‘è¯AˆÒ†bÔŸED\01-GQÏ=‘¢³„]„Z£“e-S%¤”ª´ÈÄ4,»Lå\\JÖT@ãO¦È§²:óÃG\'t¾‘\"Ñ*QWa‰mUûÆ²E¶UÁ€¤ftßEúÅ“%wæÊ\0LŽõìœ˜˜]`³Z¯ue-Vu) {âü˜rÆ¿a!—×þ›òêJp¡ñÃ›ò¬¾\\à©z©³’HRÔRç¸l®0’¼Ç—„&HÎŸ¡#8M·„»R¶q1hž­œLg$ÐÁ7ì-\"„ÙÞ<¢h±#½6ÞB>IÛÈFí+ÑSö|‹{Æ.E‰Ì[/ÍJr*\0±jÍ¡´/BëwÈ£J‚‚D²\"¤ÕŸ`Î±ÌF\rƒ\f.Œ©”U!j\"é$kÖõ5íe×B‚UÝ`¤¨R„MþC¤Í<*4¨Z‚@¥ím`ä¨’þŒÕ¤‹@iÈP#aSî/ó†6‘\"m%‡SaQ]EÄ>¥ä¯·/tÙ*#!§ÁE Š\\orþ8rY<\0V¤ÔÕ). œË[£+¥ÂÁQR;W¯›z-JÏdB·kƒGJôd¶ì²hºžÍŠ…JXŽÐáx1¼\tgÖÙ×(6œ‰¡-†~ªÁ“\'¥®úI÷déÔb¹+;uB­eTÓ8\0\rÕ9\0`\rE®ÈP²eÐæ’ãã”SÕÌ{òÈ*\tô]i!%$±jx¾JÕxÌX\0¨’Â 9À<OØ©­Á4tó.r&Ô\\)¼!.ÇzX˜õk^\0€î#È´¬ö.“_x8¼zWGmÝ}ŠLÌ{,w¤”ž`Åg­‚Ri¯DOçÎÃô]ä)Z’”¾÷\'Â,é<Û²–v)¼vñç®>þÎíeœ«7=WÇß¾ÌmøAëš¤¨Œ¼òŒî’«„âhûUAHi¤\tHR‰\'cWŽ¨Eaµ…’uWÙ28Bd’Œ.Ã^HÇÛ>é*’PÁ†e„Ñí\týÒV¤•%Èg¨}b\nÓ3ÇV[ O*–Ü!å€„É–5${„r;BŸ“ÐÏs¿@Å\'®³§þüžK=Nh©ßafB¦Û,÷¥%3R¥¨BR3Q1é³ç§pØ`å‰þç®_ç¥á0Í\'ƒû£ë¨ÕÈ„.ý2–p§ç@®•*NÄü“w_¾*6„#Só…Óä¬æÛ /Ã¨.¥Á†qú,†¾d_Ó5Î£tRÊQgKúJñTrh[§e’eIïÏ@þQW cL€Àåwœþ’oN=l™1æÚ=­vuŒ¹gÆðÝœ#ý¦ÈìYæ÷&€wÐþžpeÁ^\'Rt›LªtãgId\"‡iÍà£\0\"„j¡—¤–K™ø™}©sN*Åª¾!`ÓkS% ’hÀ9à#\'P²<›ÿ\0ÁÕéÜ:C­?ÒUËBd¿mEŠó)9×è\tR›µ‹q;a/I:-8ÊDâ\tXr¤\n”¤·YtÌÄöp8m‹sG-GVâbxž¥\r¿cÑ¿ÊÁì¨á9\v)ØþvBŽY&R|çB}Pª›1¤M¾_xDŒ6ù•d’¿ô«!ÙÄü¢ÿ\0ÂcÏ„p[¥÷„X-ò»Ã”:„S”ÙŸ—`OýÃ¾tÏª/üKþlÏ®\f\t‚%¦,H\rÊ±#R¿›3ê‹ÓcGtÿ\02aÿ\0T„GU¿”6”.¡|Û%]!†Ÿyx„ëIdšƒS¨jßH=öÀÖ•9l5ï‹àíS²(’A²h’$§U2Ï|JþQõèz¶Bá­H}Y\f«ÙôRR´©J¼À\0œ$—Ûö‚ŒØšn–®ø†Rg™ô†Ê%ÚfËFK´\0-ø\0[Â~/oœâÎ”é‘3HÍj¥WL{(gö„P›0 Q«¢*òv°ä”±/k`ùvÑ5*Jè,u6\nµAÂg`&ó)…àNÌB¹ã¥¡IPc6ý JEŒIÉ°jbÍ¢ÈK{d4˜°:†8½uÆÛû4B…‘hVS\n“¹u÷¿ÄÈQRÒ”’T)ž5\'Â=;CIêÐ­ |UÝÓ–0÷g?¬ù&Ì‡NBÔYD6x8¢¯ìø™SmËÝRRF«É,yPoI&º¢Ý•Wq|aœ›2R¬0¨¤.|îb¼3$1©AûÒÓ\\–<cÏí]b&´ªël+»hö’ñ®ìw´/ÐV\0Ê§jñ~.9n£&ˆ;DÄž´Ó£¤,³úµnlØãÞŽi‰KP¾‚¤¥7ˆÒ#0\t%¡«D8fÎ³ôih$Ê7T°S€!½,ðôc,±›JKÉ¿»‘6ï‘õ«N©I»$%\tÈ%‡º;£çÞ\fµW:ã4èëL§¼«É|há”^»Ýf:©•¦ª’7v5I@`Ðd½!-ñæÖ{4ÕIB$©“ë:èG‰7m³ÓŽ‘AÀˆÓn@ÌGœMIÄ˜±zP¥$¨Zó…–V¸$pE¢í\"tÀÂ’ûOù”\nG\"¨Ñ4g:`T«:zÏñ&ëØN\tðKÑ“&ß&í9íÁØKÓ›cš•dÞ¦.šÓ„8½´\0¤”œ ø†‰*¢¨ìÑæ]°MBH–ÇÕ¡HÜƒ-¶9èRç)\'PJ>˜§Fé0‚ÄÔñCÒzd[€×\\žÝ®Ô=*è›]¾|Â?¾¬=”9#4d½¼JÔúè~‚èæ›T¢eÎJ«Ê\"ð!Á$ÑñÆ6ö.¡½!e–WRl¦8£¦âJÐ´újQÚþñ—¤¯>¾ß¦èš“\"lRÝ²8ÐÆ\\½¦-»å y3yð‹¯ìçö‡I;;v.–¦ÆëI ÿ\0ˆºZ›T_¨«HoX5ÄDg,ùDe+²CÕëã@ÐÝÀvÎÛ¸¬¨rùJí>°ñu¤Ž¨î<s…v+J_«S{¤ëÌXæQÌ¢ü¡”~\r…Ì˜ÑBçm‹fÊ®-L“µ›Ý¬­QBT§.wS(*Y8Âµ€-6ér’IP¦~¨ùî’oJ‰IR«ÇÖX\06D&(É–å–$ßcNtpÉ´_J•2ù¼À9I ¶U\rº!=*J‰HcŽ·zÔÅV«TåÚ•5j=`HºSÙ¢p\0\fqÂ/³[’°€·î£°³F”¢š:}#¤×²›<…(Í«Y9; Ód(d¬QÜäÀbå*Ý)%…¿D·¤u¾·¯„&´[W0ÝHsî‰{V„³A ¬¡so\f;Z´ÌëBe¤PÞ\"<²F“Ÿfÿ\0\f!¿3¨¾C²³ô–|ôž´¤2’t6!NîN¡´JYµø9™²)ZôÔÄ’|¼3ÑË¿gI8ŠÞèÊLšá5ïr0\r«¤‰\"ä¢›¥Ép\tÕÔÁåªðÊa%o¤´zT¤,\f7ìôrÐ‰÷‚“‰ÍC.Â3ö’‰’Õ{²¬ƒ¾YR+¶ÛÊP…$²Óu@ã\\ñ‹s®âq+ƒÒz:¥‚\"¥&è\nLÇ”aŸ¶å4{\tú`[OHmàRh;¥§éŽtpÍI4Õšuìo×e¼ˆYÖHtä †ÑžøÊt/¤“VV‹BÐŠ\nÙö’¤kŽ™1Xù‡ÙŽXpÝ2»³·¤ß@ñÉ¥\v¤´…‘ÃÄÅ\n¶Ù\n¯^I;Ÿá1(È}¡„3É-°iº8ŸJ‡PÃïÙ´|µO–…àK¶» ©¹Aë¶­tHó,Èb(² 9RÂ–Õ/†íQ›7QŽ+ã»7[­Y\t’çT:M,zN¦øˆÆÚ$”¨‹äŒ»Q1$8¨.ñ‡¹&îÊ»Q4ózP“DNè¢n•žj×FÓ^Ù$!.ª:LÄ­$ƒBM`+“Ý‡B\\#Ïôår‚æ—$Ÿ^ôGýI¥œÍXj¢Þ›YTnÖ\0èÎ\tH‹§øì[ü®œÑrçJ)ZA˜9r1’²thU©ò#E3JºXF{¤ö©è(@R’š¨¼®íì˜BânnÙj*ØÊÉdMjuâ|!Œ•ªMlš©„)EhÝUbà3ç‰>«“0š·Œ\f‘q•1bíXÞJÔØÅ¢jõŽ)³(´_à`®9­ø>–Æ¹|¢éSÐC‚ãeyÂ¹ÓfÝº›:‹†e.X\r˜{Æ+CZÿ\0¤àV› x>Q¡\"•L×Lš(AÏÎ\t\'¥ùÐFrÇ¢íÈ¢€Í!igÜKCÙ*P¡”¢ìý¤cí@§am%ÈLÉa@¦óQ¨0ã®“hâ%¸UApsf×=x\tjÄªé‚²‚¢w©<ƒÂÎ“¶·D„«ÉƒV“µþÐ£Ä{ yšFØAqðgæ!„É?UÍ1Z¤LýPö€†Rh”*»4ÕD¬ëQûâÄÎš=QçÆKýPö„tÉWê¹œ$£Ê\nuäMjœµb„¾±¾›|\'´T d’È”hæX”és8ì­¬å–ýáBJ\nT¤Ÿ&~Q\\Ä„¡$ÕÉÈS5øFŽÃ`JRë´¨gë*ÄÁVk?VR‚\0È€\"îÞ¥{Cåå›žÞ\v\\ìU¤,alp„HB’…VRT7‡êŸáÖ¯Tñ(:Ç¢)Tž?h˜ç¤ªqÔ`t~‘R””—ÅnùTe\rEÈ¼Ei¹ÿ\0â4úCB‡¼Úf|Û{@¨±(zŽØ:ª³K2ð„XÚå™yš)rË¤‚—;1‹ú…ÌIëJÔ·Ú6–:Ô*Ÿó¦%?D(JÌß¯ºègŽ-Štmã-\0–,q¥+H\"e‰JÏ€0d‰oz#Ægûa´¹\nÔŸlý1U6ì²×=Z\0þnYÐ`bü>ñµU™Y%Ñú ;E•}Ù~Ñú!­ƒc(­G”Gô;¼ÄhÍšguOÑYÔq?DML”ŒøÐ¨îŽ?hèÐ¨ò~ÐøÙfwÄýY²ÍîËöÑÙ)\n¡“³ŒLh4ê†âË3ºhý1Þ®wqÚ¾ˆš˜)èÝ„»Æ¢$7¢j:áê\'ÛWÅ$™¹¥;Gßt@a%¤%‰ˆ)8êŒzô,Ä+±èžF6\r0ú©öÿ\0Û]^iMqí}ˆ*T@\r¢–R•{v‰`† ¨‡\fSÖ¬\n%?Ì?DJU¢kÕ(þaÿ\0ó±-Œ•%,”\01`?„vÍd$òŽJZ³J}³ôÄ•i9%>ÑúbR»%¾\v¥%ªÞ[¦Ô®â}£ôÄ…¨÷ôÃ*ðÛ?ÿÙ","botalon","activada","comida"),
(5,2003,"carne roja2","descripcn carneroja2","carneroja","mibotalon",100,"$","ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0\t   (\" %!1!%)+...383,7(-.+\n\n\n\r0% %---72//52//-/--/-/2/-/-/--------55-----------/----ÿÀ\0\0¨+\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0C\0\0!\01AQ\"aq2‘¡BR±ÁÑð#bá3rñ’¢²CS‚Ò4cÂ$ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\02\0\0\0\0\0\0!1Q\"Aa2q‘ðB¡±ÁÑ#áñR3ÿÚ\0\f\0\0?\0_Îghåÿ\0—L\n„üe¯?ßÒïj8m,ã˜6R9\tòè1¦l­*\0$Áóç¹ôÁ…Jì’,±.ú€H¶*¼luRôºv4m4:6G†CšµÅ\0UPM€ž sÄYìeA`ÄF‹™¾,„Vq*V\fà›É;žvëˆ3¢‹xuh?¡2\f‹\t‹Hœ{ƒ­X|1˜È9#æ·¢„ÙF,ÒÈjÝ¯ÑDálU¨JÔ§QÅÆ¸)ÎÀžw%[=™Ð{Ú€ˆ™Ô¢G¢›âÑ•ÕmiY04=ÎlžõU;OfEB˜‚Wbb77<°XÖË ûz‚çå°Ç>9åïMj— +0|Íú®ðÜõ=Ý!QØÞ (œ’OÐbçÕµF˜Âçÿ\0d^¥L³TR9@PO#¦âG¦.5D\"Èã”3\0°¦=£‘Tñ\f\"Ûþr9tÇá6d}mÏtŽ\"–´:Hã$V…ç¥K\n¿uoó¼à>g†8˜ªÁRâpv²–¾“ÎúßdxcÖnQö›§÷òÀ‰Jà†‹„­AªëÂ1s²ªÉ>‘ËÏ\f>Î×•jÔÔ e.;ÕÖRF¡·1†ü†M2ëáÏÄçŸè<±¶|ê\v´^ãœáû°²3xº\'¾ïåÊ»Å¨åšå©ÒJ,ÝmiÞyò&\fàYì\\W0ß+}Ô®ÈPt›Oã;à¿ãjêCN o?L§60´¤, }ëø%mO´\vB’es}J¢;ÅƒÌøÔM˜[Þ}q™Œ†[0Z§Æ\t±+¿-þwÅ¬ÞF`QîÝG;L¼m†%Ú—–íK1ŽºHüK³ùuBÔ€‘ËQü\'\v4sT\t ÷ŠA ÜoiÇTÍe‡HÂgìý7bcC›†[_¡`9Ä>Ä8µ¬êÃHúœT=ª÷J”ê¤þ¢03ˆpê”OŒJýáùôÄ4f‹-îÎkõT¤‘×NE?åúë½åá‚íÅ‘–e%¨»Xê‹tkb,ž~²Ùj5º1–Ø/•ãµ†äþ#ñ\0ql~¨£ôC¿‚¶o}—å +Yo¬Ì[þ£|Ìv~Õo?îÚ±øžYÇŽƒ¯\"TÏÿ\0Ò¦ DïÊåX‰ªÊ™ê¶<á§ñÞ—ntÏMÿ\0Äí‚©Ã²•~¨ŸëSù)÷bÆW³\n6¨[Ìüúa¡²uýRÚ|¾þˆø’D°Ž^ ËøŒn¹ÊfÀí¸\f-ƒÕ8$u\0nXú¼bµn¬,5Îö\f>˜íÒ„îìˆxuêG´ãmCïyôð \r”-bE¶åˆ+áêwø§ÿ\0 q\"w(0žŠq~`úŒÏHô¾*>F¥È{†VÀú‚1¡£]l’\'UÊü¬pCQè„ÇJô`ûþþ˜Ø?CòÀ¦âUT‘¤Úyƒ=-\"øÛülÄ²‘ê¤þ\0à†¥¨\vGTIïßç/Ôü†)Ž5NtÚzXß¨ÄÃˆÓ<¿î8!;:®ÙÑ2­P4…›\\‰3Öçê‰¸â#á3{tØaQ3¨«¨\0ZÀj3î`ŒkC>Òu\"$)6ÛåŒ’âNW¡icE5£Å«2r\t,A°¸ÒI¸ôÀ^![IpL@`Þ„È÷ƒŠÙî$Ô©+ ™f1“±-´¯‚<$äÂS­›¬Px´³‚ªy\0«¹Ûâ´ò`C\tÊ[õ\r½ƒ<+¹NÊÑjj+;BB7ø¹Ÿ<áýœ ´Šw!iƒ±7};3‘OCåŠ5âIvf>J§ó\0c2¶šÖ^‹‹TeUP#Äw´‘°\'\r\ru$÷º`êm_×öEÓ…P¤šTÆ­Æ€Kz›ü°¹ËRwjt‘XiV)¥É‰6ÛÈ‹¼o#œªŒ)WJf#ü¶’O äÈz\'ø?`ÙElË72ˆ‚=ÙÍãÓ´Ö·€à6ã®?êö— ÂÚ-\"ÌuõßåŠ\\K=IDØO3ùuÁú=Ë«j†cc$é uÁOðJ\0OuD‘ÿ\0ëß26÷Çl>hŒ†±ÊHìóÿ\0XR¥¬\v³±m#H\"ð9ÜæFª0¨!G×Ìžgä«SïÝhÑ|n(7ø`Zgo q§©¡\vr/\t<-ÂK%Ï|¢ÃñÒïß§ûR¦wº:‰•Ž£§®#â¹êA˜!\n@òe\f~¤Øa79ÚaðT˜¹å>]01Æ>Áz\'Û¦>ðµõXZžÖ3L×éã (ç}@¾^{‰¤[}ý?~x£Áø“N\r™ Û‘ßÎÖÂµ,ú=â¹Yä×ò¼GÓ‰i(ÔQQ”8&gTŸ\r \\¿\\5šzä¥»W©š@ù_X]is ‰œËñ°çŽeÁûDZEIVŽ–\'¨Ã>K>Õ°V!weÞdy`£Em²A#l\'{8À.1GÂc÷Ç§‹h¤.¥I‰þþX›ãé¦K@å×Ûlèp…ÓG^à=ÖíM^Ç(>øX~B“±-¤ &<cSÚ*€¤‡b¦ß¦æx‰¨²Èþ•\'o1iÁ7w’ÊŸ´ûÊîYg×ËØ+ùª”GÀ‡VÒ?#¹¾ V7¦q¿\náõó%ŠhäO·û`ºöKr+4É&TÄÏ`â*a[ Üî>@ :À‰¯<_¡Ä€X‰ü=0j‡g”*èÆüâÿ\0ôòÄy®Ã°ª<…þ±‡‚0œÝ$±ç\n•<å9\\¥œ+œa{1ÙjËð2¸ò!Hö&þÓŠ5²YŠeãÒßß8SÞÈÃOi]†z ‹þýqµN\"Çâ½@oüÂfK9œ\n€?ªßŒŸ¦\vesõƒTPÀ\\­àù{`\fÍoš²Çoü¿PŽˆ¯1ì>ŠÀ}1«çÐ`ûÿ\0ê×8\n…{Ê\"’uBdl%ŸÝºÏePÔaM‹§Ù*w>`€cØbÔ˜±ÂÝøÍ3 –E`|æ§Î1ãÔ?Ô1Î4°½î[FçøS!Hiòƒò¿ÏÕ+\'ÙóÜ~“\'‘Vñ›W³¹6¨dTØþ@®+\f•]†’zR~@ÏÓ7¨ÞMl\t!Rð7\'ËÒÎ“bÖõ‘òÄx:!»<¨sz‰ÐU#ñªE/ý¥>p?L­]˜4êxö*_pT‰ô1ˆ—Šcê9?\\c:¡p!3f;:¦¡îó#•„ú7¼òÂisô©ÊSv«RbfBî$nOAóÃVk†g3b,³skÕ¨<À>zH?†\fð\tËZ!\reûmwÚäI>X¯±·ej½ò<ÇÇ_ô¹çìN{4³Q»šLAþdÉµˆA~|ã/ø{‘¦€5>ñ¢ììdû\0öÃ]zè¶f\0ùŸ×\vÝ§íN[(’ÅÝÈð„æ|Ú4ÇË\f=q‚÷gÔåH½˜ÊS”i)Út}/~X‰85ež…%BDJ yäÞ-é…þÀñFÎVÌfk¸”\n”éê…UbKBÌ“* Ÿöt¸V¯¡\v{É‹ô~˜—„øfeqÓ…ELŠÓçÈß¡õ8°´o·ŸHþØõh`!¤‹ÀåˆsY\nmgPÞPd}AÀÑG$¦¼ýôµqº*Ñ©×ê.öµ\n*°¦Åi”2Nç¬ý1w7ÙtkÒv§×œíÔ’0§Æ{\r˜†+X:Ý´Ü_ÐMüð\rÞ~*¥•ÞkƒŽæ¶½/ù?ÂÎÛZ4rÊ‘QêK’¾rt’ÇúciŒSn%žÎR¨ôÚ*K#LÁ=@h$ÄòŒ-QÈ b*TÒ5‚\téª`{á+Fš¢©“OLÂNò&9ÚN&@Ö›¤zwI0§:€¼\\õ¯åQà}5*2Ô¹D4/©;úb÷ìÊ$~#ïÓ)œZ§Ã{Å¨ë¦ñ#Ö6¿˜ÄÙŠú–)}ÂÄ±êÆld<«CK\vC€®¥SÈpTÖij’n×µ‡ëˆ8—Ë\t¬´×ä“‹_ÅVEUØ·%DzNÖùâÝ\f›ÕbtTQm Ä±¹ç·å×næÑµºw°´÷æ€fx?Š(±RÍÌþý°g‚ç3ÙZdn{½2\t=Z\"ý\fð¾è¬[~‹\r×I,yùcÜ¾{- œÎ¢.V@]Fçy­‚ÜãƒÂªí!s÷°zr~¼}å.q!]”»Qx¼–O q€Uø˜¸[ÛrmõÇPÌäÈ`Rµj{šT©b¤‰Èý0ˆpªoS½e\fÇHVÛÄ\r‰ƒ¶¹Ç\r­ä*§±›vÓõZöK³\f@¯›÷)£ï8çä§ß r©˜Ÿ 9ä0¶üJª@wV‹C}%b>G¿ké#i¬­LîÄ§ÌËÔ\fâ~­\fpiÚqóLµV‘Í«×óÆÙ\\»ijÞQ\'ç¼àNO‰Ò¨%[ÐÎ/¢Ä3Ôcƒˆ9\nÎÀG„¬­—“üÊr90™½q«¶ÔÚ~Mí1#ÿ\0Ýg×5@G‰q6ß,.-xç(nv½4Q¤’Ìv=7ÀLè’Nç‘6?)¶\tæÖ“ÕQª;ncÚØóˆåW¼F•!fØÿ\0¤Ð\f&K\'%ÉQÊåÚTÈ¬“±3±UÅÔlH˜‹õ‘åæ0À^š+&—\rö\0u}Óx Lí¶þ•xß\fd†ø•  [”ì˜ø‰ðyÚ.p1¶Ð¸¸T3\né+óüÅ¹âªÓ+\f‘1q2y`‹eWJLøîT\0\0Þ~×î1æf±`JÈßLÄÎÃútÀm-á§¨‡x½ìKs`1¶s…èX7\'xÛØÇ§<S‡¦fN×_-ðO)Ä€§â2\f™‹›X_b\rÛùi@ÎìšpBª&Ÿ´G+OåŠOJ6+`Åg§2X\\ë29EÇ¿LTÏ53QÍ#ÀR ™3GŸŠ}±#uríeà*,¾ƒ÷éùcQ«§Ð~˜Ñé™˜#ÓÂÄß¾Ðò«8²òœ3|ljÐµ%§pƒŸÈ`=.-—RJÍF[kci¾ØG,åÊ1…jeû@òÃ>C€ %©ÓZ+÷êP},Hù\\EÆJtý¥Q‡ÄÝ×ä/þyùû(Ó€ºŽ”\r´-=úà>q©æÃÐ ±[Æäˆë¾+ðŒHï*w¤ÒbnÄÌßr0LVþQËÓ¤(P‚¬\0±7ñ…c`È‰äF9ÍÛ—%þ#S<®¤ûÐõòôþ®Çä¼ÁÝ¬\0\0\v©‡Þ­ç?ŸEE.ú¦Ê‹ÌùŽxæù.$£¤È{ÍCHQÓÂ\tcµç|ì÷\fu—¤…3p³óè/l6í9)zm,q4\0}ú§Y†jTîÄJ¨|¦/ÙÇ‹H7‹T/Þhè.cç|R¥!S¼v$´iWˆŸH¹õÄªU¯Z¡\0‰Ò·>÷‡îÍ+4*ÕºÊ ‘sòÄnŠ~ÈùãQÅ(¨Ò)j¼ÇðžñŽ0´“¼Ö°d\vÌÏý ZL“¶&—<Õ+Yî–ªKT£L±¬ôk®ø§eèQ–§˜mîßÈZÇ¥Ç¾&«Ä_7dªª£âbÀ(õ Üÿ\0HŸ8¶-¥l¶Y5w†½B`E¹ÚÆÞ¸ü8ùÿ\0JË«£fÖÿ\0éÜûìª9L­Z”ô™`6%{¹õ¿ÔF\fdøp¦²Ôé«5\0ŸCõã®/iæJzVwT3¿¯×2€Wˆfª\0|Hã¦¨‰Ü_\nÛ|«ÐéšÜ½åçÖ±ì§§Ÿ¦ …3þYéÈíq6lEÄi;•\\Ócx¤ž†AŽ$£—\0€ªeˆ\"ð$Úvœ=æÊ$‹coß<IåZ½£Úœ£BTïi²À$ƒ3æ.&|±i²Yi,)£€I\fEÏ?cÐzcÆîª\"ÊxÀøÈô›È¶\"­[¹_ƒZ‘â$@ó?_LKŽ0¹ þec¿b¤#5®\"`\t+¨‹Û‘ßÏO`L)\'‘vƒ;zùb§í^QTŠtË¼[I´ÿ\0Q2>XSÍñªõÈE´Ø-5»M·\"O>¸‘rKõ±Ä0lúh¾gª’\\ƒy\0\\ûƒùà.ŠµU]Iü Í‰&$jˆØ\v\f3vw°Ó™ö¤þl6ô>Xt«—¦ª”Í`h\0\0+Ó~XxcY“Ê­ZH£€¹#džœT|«…€©u  ÞþLøi§ü}:hêõàˆ\t˜MCÈjBXò\vŽ¡N’Ò‰\njsÐs¾gøí8…\0‘ò\'å87Ñâ]‡Å&Òí{Òÿ\0ò²Î£ï$0úÇÊqíÅ©¦’UèM–Ý,Äá±³‡1MÒ Að…2,G9ç3Ž_Ú‹åêi¨ªên­I÷õN½ÛŽj_©‰œØùd#|\'´y1G»u}RßÝ’ÀHõ87Áó´ž +\\:ýÚ¾ $\r®ÆÒ\t#¦9›ª*XºÀy0ü b\njIfyFÿ\0LK¢ªL×=¢ˆ\v¯çëÓ.VE&kÁ¨Åu}íLlOœcÓÁž¨!<5/!\\Zó`„’ ìNðwå¹n/]ñkìÔÇÉ§\fœ/þ :ÞÑb\"“úåk€Ê°5±ž¡¬3Î–/á\'Âü¯_–/TAñ: «)é÷¢þcméÕjr\ve€\"Ñë‹y\fåECã¦\fòOŸ,)íZ…áÇý×™Å;w€³“A$í_»áƒˆvq^š”¡¤Y\"×Ò\tcËÎÛ×5”×­&ÓˆM†ûàÞC´µJJŠx5ˆ¼\0ÆeãL`ZÃÂsˆÇæ•èö\\¢,Ë¼H0cs D\\b¦e)WPXBÁB˜‘¸ uÅþ7Æ+«=`%X(Ü‹I<Éq¼ž¸Fˆ,5«¶­1ª9À;ë†5Ï)lg.æóuÕˆ’£`<¹{ùàq¦æä“ë‡Þ-•Lîf\n,)*®’bB ––;»j&OVä0É•ÿ\0‡Y  Tz•›‡*ÑE‡L>Ñ*‘Î>+\\½@®)årÁªs\0jn—{Áôù\f_nÏ\"|N¨ï\r9z7¨FðBl6¹<±GU­–¥?äš‚úNª¦ö–2›ÙdÁSˆªñg\niÓ=ÚµØ©ÜÚYÜËæçÒq%ô:+{hPÀW*Ôƒ¥VžNŠÜ…ª{`Ô’|ŽØ¡œ4i¨©˜Ö(Ä%2Ç¾­#âéM\f\v\0\'pe*1i¢ªæg½©&šŸéSzýF¦7|£S¨j²=Z†ÍZ¸$ÎÃaéõÂqÊçqgïïùU8Ž~¾zH§I\t9ÏÖzß¤Í¥$T/2ÄŸ@:þí‚¼c9OQe%ö| 6Ì@§?L\rïXÂ™(Ðº¢Ä“XîgØa[ï€²¤í&“¶&’¬fu:¥G¨êÒuÀØk™Õ¼ÚÞx&¼|ÞvëËÇeèŠ`¾¢Ì$´‘!µ±?g¸]$M\0)srÌŸ\"NÞ˜æµ×”ý>YÞo‘ô9 ~Çþ ü†UÎ«Tz®«}4Óv‹éí=¡oáôÓÓ«U±Pó6ÿ\0¸Ãwðõ2íàB¨.ºG¼@ÿ\0lKW‰S«á­J›u•¹ýú`¼7•mÝ“Ù_›­›÷ê¹\'4ÿ\0“]t6­^ F yƒðŸ\"-Ðœ^r©«»}¦ééé‡ð,VR®¨Oùzµ ™’\tóH8[²ÑKå«Ô´À©ÓÔ}}þìäQéçg„‹W¦XSÕCFa\fkÅ@bñ<¼¬q\'¡¤¥Jp4}D˜’¨äF×;òÂ¢?uT1J¨2U„\0=>Òô?L<i)4ÍÍË)Gäcö‘€\"Ž6ò™ªqªAu*z®¦\0úí>¸\vO‰¼15V’ÿ\0Uˆ·õ<§ðÂ×í%J¦´rÁ¾\tÙ5xlÉf¨×)Ég®Ä·Ðyâ6ž\\ˆêŽÛ¿^ÓüoSéÉR©V\0ˆ±h»7I=c×ìÆ4ºëÕ¢ |4õÛ®È{’N:\vÊeTib@]XXŽ@[ç3\\S%\nNäm0>¥¤|°Áµ¹Â§t˜y\'å÷î2€{ÕÑW˜¦\t?3êFð®—Ë’) Õ÷‰$|¢=-ƒüG†¼%JN4˜m1°0wôÂ§F©W»¤ÃÂX÷DÛÞ>Xês\"lpÀ7ŸÕÎçÅ”Õ¾ê‡+n\fk–ÌÖïi¹O…\fÄÄ€LN-pž”Å…ù“¹>¸&@l#÷i‰¬.T¶GÊqÂ²i-PZ£;hW‚+@|Èˆýqã(\'SQÌ˜Âös¶J¬«“¦ÕjM™‰è¨.ßL)À=1ó6JiÏðq@\níR™,Ä(ô¾ûgÚœµz}ÕeÎæ£x@?Ò7>ñ…Î+žÌæk™w5$\0*ÏLxTn`bj“ÌH#C¡ ¦á€¼H8€Æ±gË¬–aLo¢©“àÕª z!ZäBÔMKÊJjÔœaÞ…*ÕŒÅ\nj\"õ(¹K`@ÜúÀ\\‡gªåÜTVöOÙ7æ$™úa…j¹pŽGqÓßÒq^YÉøJ»¡ìÐùA¦U+ös*Â\0‚Þ3<ÍÍïø`>g²\0“Ý»ýB}­†ž ¨]Š’¨\"Ã¬G±œhùrHi7Ø‚uØáBIçùZÐé^2ÁûÑ ñÎV¤vÖ½R\rð)‘”ÅÔô;ã§pòeIRÈ$ZÜçóçýñf¾VU(Ëìw>‡Ó˜Üý^ÝIüË6^ÆcÄêýW.¥ž¨»1ÁÊ}®¨É¢«9´H7‹ùòÃì¶XÍŠ7ôÀ,<;r÷¼õÂoáÝÉ€Ú­¹ß—´{áÑÌÇš\n„ú=N”n&Â=G´ùqw¤ìAðÄmç8Ž¿kZ«ŽîŠ!°ÔÄ±õ;af9VhÚ>í8ƒU¦Cæ»†G†ÒJe©6ªŒ£SnldÄ.ØWŠÔƒ—rG=k|s|§ÍQ0µZ-ákˆå¿/L¶¯Î2zÁIÂ\\Çµâíh[QìÎmÞ\vë2mÏûæps„ö|TSR©Ô‚á0OVŸˆúÛË\nYî\'q@1ë,8ð~3¤i7q„±ÖmÊ§gjª·8U+y~*”ë• °\0\rˆùÜNø¹Å²mR™îHyã˜Œ\tâ-+·yF F;«íóÅ•ÎQ3 9Ó`ß@g—L0“Tr¨ha\f~Êy­RV~^}\t&|¶¿Q‡zô–¥åm¤\0øH°·M°i„T\nÞN ÿ\0|_Êæ™§àoé6úòÄ7„0ið\nQe8‘OåÕYQæ§÷8Ýò”ê£WI&t²ÚGÐ|ñlfYZŠíûLÊPB¢*Ž@Xzá¬ˆ»Í1ÎÛ”¿”£™p?ÔcÎÑ‚)AÍ›Cz¯ìâÖmP¥¤-‰ØOAŠ_Æe2:‰îƒyR\\,\v´:¨ñRPO0 }6ÂŽcUBQÁS´Aò·?ltlË°·œþ“ù®\f*xZyïG| °Z7‡–ø]Gô\\¿>K!5*@ÖJ-™¼Wo¯\nÛÜãQÃ@,Ê[eÌSîƒõÒúŠƒêW}ñ×xOü3Ê@ªÊåxé3þø«Ú>Ç‘L>Šr\'Z@m\0‚bDÛ|Z ´\f,Q£Ü\\K³è¹^K-ÝV••–ú\\`g˜è~XeÉ×¨Úˆoa,vƒ0/~^Ø2Ýˆª¤÷9ŠmL¦•UxQÑ\\Ëí¿9ÀŽ%Ù|å#ª’jêªÁ¾DGÕWÒp/Œ8X9LÓ¾]7…Í5èŠÐâ%j\nuåU€‚<í;þ8`©Á)BT—ÞcT8Ç>|ä”\\Í6£Pm­HVú[Ôc SãT´SÞ\'\0@ƒ~gÚþX@m|KM“6O€ýú«©Lå©6¦×OÐ,\v£—¦¤‘2×¼AÖÛbös6¨ºê\0‚KdÏ;a\v´=¶äÐ]âXío-þX–¹×áA;¢`ÿ\0/ß²}5Rš—¨êŠ¢ä›z\tç„^ÐvèW.²6\fÖÃsôÂ~‰Õ®Ú«9{Ø\0z(°Ã5nÎåó\n•2ú©J‚PcnFfzßØb^àÜ½RlóOmÓŠýÿ\0 ”³¹Ç¨u;>{A¶0Ñ­M×ÃQ*n¶!§Ëž\rÖìmmaQ•”˜“á2:z`÷áÙì»K4\véu$V¹\"ÝÇw¬¬PhuqÜÏìåCÙ~5Zª?~ÅÊR@\f:É±òÁÊù’÷\v.I¹>ƒ®5®Æ©š¤\n‘\fÈ4ÈÞçv¿&œRd#TW°åúb“Ü\v°½&–#A§ê¬Awæ\'÷Ó7¸äz·±IsÝ2—QpwùŸÏøUu©}w<ˆò]R³ºÀkÁgpzò=}6ÆWvdð0|ùßž.ñz4 3¿îå3¾°tÔÔÉe`n<Æ;Ï\v·[rÊ£J“ ÀûÞÜŒE[:ˆ‚bÇ¬Xý¦a¬¸\fÍah#ÎÜð»šÏ»îLbÃ4îqÊÌÔv¬Q¶™’ñnÒ_ù}-Ð{c(vs:ôÓ0)&%\tÒv:IØŒàœ7¿¬¨Í¥O‰ŽçHÞ<ÎØì´«Se³*åolZ\r\nÎ¼Ö’éI¯*\\â¯\r \nu²Õ©ÞfçÔˆp~kÕ;<ùuÐŸ»Pwmõ%>l1ÕªÔaài7µ¼ù^Ìðãm*@‰‰ü à›=òÛMe3/¯Ø\\tå+ÑP*SvÅ£‰SéŠåS>FßŽ:à¤‘¡Dî4éùÄ[_„e’h,â\0ùiÁ~%¾inì‡þWZä\t˜\rU\fBê™ç7åÐXå†/ãÙæ:à~o%Mª´„\"Ÿ>kçv~XÎô¨„¯#ˆ‘´U\r3‹8Ln=çƒ2¤üQ\\(eéÑ{Ì{Æ\nåx-2A5_OA¿Î-ŠûEálÃ4„ySŽÐ5œ5ŠúºäÄò\"ÿ\0±‰²ËÝ.Z˜îß ä1­lê,R¤4¨ñÉ=$ñY¤Î€O6ŽdH$ââqVf»Ÿ ÀCVLtß2ù½°æy“†íSVš²|žk8`\f…ÕNäõÅ§s`†FÀƒôË\n´s­6b}w8¿œÍ2\0‡+rv1{em`%:\']—)«…–©6/_,ã9×FîíçˆÜiEÈ:ÍÈ ÜîgögûBÎ¯ÓQÔ\" ƒÎF+“æšpZàµ¨#4]AÅn5V{´Uf,I·(ëóÀþÎq€ÙJcš€&N$ËøL,üSþØ¸H,Ê¢ØÜ$&º¡üG/¡Õ@bO!=F,6IÐø—÷ëŠY|õI$“¤å‹¹wÔ`³ms#Öø¦I°¯»{E[?”¥U{º¨®§ì°ýüñÊû[ÙjÙ9«AÜÐ¤Í9µÿ\0§–¯Ÿ\\vÎjŠx\tzŒ\'ÄÞžX®)Ôª;À7æUçõÄB­,M™¶p|Šà9ŠÆ¡ñ;9˜Ÿ”œ@rÕ\n3÷o¡N’ÚL¼{wÙZ4ª©¦Â‡zº•i¦XY‚¿Ø;h_ãlÊæëåªi%¨´\táaèlÊyDŒ7a«\v\nF¼‡£€SÍSJµiŠDò¦J«‹\0Ú~Éßá ðb§\rJ»*ˆ½¢×åë|?´šd0T1@ðéËÛå‚3êÃÆªR9›ííÓ³_‰z}áû±ÝVêÏU{/šV0ŽWÜÞ1åRI$\vŽWˆ ôùÇž+·\nGÕ\n±\n‰òü±°J”Ö1\fbzAëü°UÂÏe3gÖ¥¼ßH7ó>XÁA.LNæ÷ýÏå\rQb¢Öò÷žXš#Ç¤u¬c¨ŒðˆQðœ¡4x}Evj •ßI¿ûóÇµX–²<[Mù÷8¹S‰RÒL…#ïZ=ç®3üy˜÷yu5\tÛÃ&¤;`ØÇ¿„™µ0éÇˆüºû-øív_ˆ;dû\f/ÕâÕ …b\'s7<¾X-ÿ\0%ñ*¾3—kówE?&`qS7Ù,í!©òÕ nTkÔ¤Ç¾.Ç\vZ)yÝ^®y\\\\tËvJ™È²f¨Ó.ÎIm`0°\vâÄ^Þ½qUÿ\0áÖUfjÖ1Ð§ã§û#Ú\n”)f¡ƒ\vˆ·?.X|ËéÌ j×±°oˆyuáhiôúw±¥Ãëü¥ÞØº4Y™*TbÂ é${¬`î_\'M~Œ§©øƒÜC2š¥ÃÔ#ñüp5rlOÙ\'¡0~»ãwŒ«²6·j—¸ô¶×Z:úc\\Îqié\"J›ºÏåÓ©äõ=âä5ø_f2/LÉª€ïbAö¶\"Í]&ìmÖå~J•\f#!ClÀ{Ófó!\\¨¢\fZ@7ù[Râw¿së ¡Åjôé³5H›À¯Øb\v±‚¤2ŽFoi¸#ÿ\0ÓBÎ¸Ì9˜éÔaw)™BÊ>bYñ!žG˜èqÐòyÍ@«,¦Í\0í¨ ©æfüð¡ÚŽ¡ÅjbÁedƒ?#ûåY£‚òÙaÜÕ^šŠ¸‡7\f¦s˜Ø¢-3¶\tÑ^í‘ðˆ¿–\fÈe|6\"7R6#÷å¶,¶sÀR¡†Ây0òý9zF*Ë«\nÞš`\r^´–l¡Vðm…ü­_åŸS‰xeVzš˜ø@·¦*«¬—Õ2÷Þw8Ø<`e‡|\\\rkíøù|,›*ûj•ÚUê\vÒÜ¤€<îm¶1xŽªš+TPó\0*÷<ÉÀú™“ÊÃð¬•©¸c«P.Ûh=9\f¢‚zr‰q~\"i€±\0ý}ú`wÌ\tÀ›zß³ˆÇÀà&Óq¸=A¾V}H\vkXrÁ¥É|&ŽÍ©4Q†×ÛTâTÖ¶–BLÄuÏ—Ïð|Ò¦Q\'úœ©ÇiµB®\t\t…ÛÞ-‡ÐÐ-@.ÉGóYÊ\n|\fËän>x†·§¢Í$ÀçÏ\08žf™*Ô™j`¬ø¾_¦¸ª®¡¦½X>p/!¹\v˜ò|\'”Ë˜âu2Ñ3°.OÏ×¦\vvŠè}LÃJ\'ˆ–Üò÷Âžk‰ÓEP1áQÏ¤FêgªT¶Ì~~¸Q”Ø!1ÍcZAó]?\'ÚâƒÓ¨K’@\"mÓ\0U¥ÜšT(+§»P¤t ÀÞÉe¨ŠAž«Ï¡\'xÇJh{³~mËÛõÃ-á»‹’ö±ÎÚ¹Ïh;ÒÏ“$­ÏtÇáòWéÓTzá5žµ(êÈÃuaë¸úc©ð®ÐÕwec(l`\f]âœ+¬0V`ÂVòSæ¤]±\r•®Ã•9û6¼pš+›ŽÒ³¬4N¸vm+Ó³\r[@ëÓß\t9þÏ.¶JM¢¢˜4j°ßú*ÙX@m\'×ªŠÔ«k¤ë¸º°ýõÀ¿H9\tqv´ñâ_îº=\\ÊS&YJˆ˜;O‘¼‹ÈÀž#ÚJTlž3aäOé…õ‹SÕÞ317§yý7Åu£÷·éúâ¦’¦~Ù{¿ù¶½ySq#R»jcè€ýõ8èÿ\0ð¿,´òÍYc¼g`O8A1kOî1Ìœã¨v6_-L»BT˜@?%~„Ï\rp¦ÐUôÉ9sòkÍ<wÃT¨åT.}<¼†*–Ò|\fÑ×iùbÎW4ÄL÷‹Ór< òóÆ™¬°@$ý’ûáDbÂÝiÍ`¡¯Ý¿†ª÷©ÑÔìwÇÑáH³¨QS2\fswç‰QÜJ­9ÄòU–Æ™=\nßðÄÛ‡#\n6°œ*\\åsv(¬³’T­÷:LÄõ/¢ÔÐÑƒ1Ï/,ON…\'_ç¸9´Byú\0ã\\¥lè;úrÓr#Ë¦ ß!HÚÓ÷ý£œ/+—ª$)ƒöY…Äïn^ø\tÚžÒÕ¤æ•4PRÓ½¢Fø\rÂÚÀÒÜÈ7Y1;–)ö¡ª=PÆ¤Ú\tˆœåÆç]Ý­k+›ÀŸôÓ·k+t_‘ýp12\"KÓ—ãˆŽA¾ÿ\0ýÃõÀÒQ’T×ü5J5t5J6«J\f¬w¦LL9`Òê4K)N dº4Ïˆr\'qé†ÎÐpâ)x VKÓ6ßx’­\0õ‹8@¤Î¤’Ž€¸•i™Z‚tÔPhÆnM€>Dcjè¬~0ñ–!Xõ$zÛoïuÉ+•¿Ó|Z„‚ÑA`&JˆHçÆFøÕEºÖC|am¨Hº˜0HŸC„JÐÜ6å¥X+>\"vòÅÜ…mùm†J\t}Z©¸šO÷×˜òu>^GÈƒˆ8p\fúc{ï²þ¸Ï{hÒ¹\v´Ú?•\'é‹9z£Âò»GO×³™°‹¨X\vO/÷ÅŽÎq0lf}$G¦D¨&nàÂVÝ¢¤i\tY+ÏÈuÀL¿néJ†·#¯´aÓ!Šuh ‚$Zó\\\'æiÒPB,IŽž“ýðd\0‘9x~\nbÈq&¬„«iVÝ&Á­>Ç–+T•ñöÂîK2i1‹ƒûœ^¥Ä°-¿ž\0£f 8\0îSmG^áX4\v‚>DÇÏø=0b\fˆ<ð´kŠŒü=Ïé†<¥HP£˜’|ÎßOÇçjë¸RµÜ˜ª™ŠZWX\vP(€lcÌ~óºÝX–Pvé‚<XP€üR¬>Æ0+9­FšU$ºAð‘º_ëq&Scðù)òü:\0i†;“|yÊw%X.¡0cëíÆPn\röýFvj§zI3ÐÏñaKVs´”(BgÅ\r`\"À®)¿«™`—U´ò÷Ða·´ôrÍ\'½Nñ\0P $ƒ9œ+%%\'N£\rq¿±¿ËæQÚ7Ž‰‚…z9p 33tX38#_J¤n-#åË\nÇ!RúÏœ}c\0xÀÎ1ÐÊÄ7*`c¬\t1çŽÍZ‰¦1³wvJ­Æ¸‰|ÍZ„êÚñ}!Až€‰Žqˆiñ×Ò™~¨5÷bÄ„V%ÂúIéÓ;ÁkÒ\0Ô¦`ì@‘ôÛ$lZkñ‚¼ÔÍ{^KÅY´R¿Ì0‡}k3¥Ñùi·´bju6\"›t$è>‡u÷‘æ1®K…W®&2V~-‡Ìâ|ß\0¯Fî’:©Ô¬mêq=èà•Â\tœ7†šëI£°¹,˜}ªg¿Ý\rC4Èå¤lO™y`þo;Nfï\vV%P\v‰=\'M£ls9¦Q¤C\'Üa+=G0|Ôƒç‚¼:²3¡\fDÒ¨Ö?è¨HYØCiõlˆ{CG’~š~ëÊuàœ0+iR‚MÃŸ°Ã7øÅ•»¶ª¡É¦=\vO˜1Ž]œã5ÔÂT$XˆU,o,|S·¶$\\çxá‘ˆ&X‘;m;ÿ\0¾+Qn\nÓn©Žã•Õ³|rŽX“<…ðþo Òu24ù‘ÀáS=R¿vYè±Räk<ŒòN8kM8œsœQ‰+k£?Aä‡_Bþ HœR™€® ïá$\tù‘ôÇ6\täÃÛ¨èØTÁ©®Zº˜4jŸ¤t¨\"þDúaw‰e2õ*éVG)þ›í…Fâ5i#T;ƒÓ¨À\fÇ£Ä‹<ºá‘“»!UÕjb\ró¾ˆÿ\0hó™*\'»¥I*<øÛp½bl[éG³uL0\"0D‰ÀÁÁ¾Îöl V¯MYÈ$)o„D@<ï8?ü #”\\L³YÂ«—¼¤ú.¿—K\tç„Þßvhs”)©hŠë¥˜›bGk@ E¯Ë;5ÆÍ*§Æ–\'‘û¬<˜_ÖpÌ./¶4ýÂÒ$e.5“Bº)ß»y4£§cM€ ¡w“&Ç\0;EÃ T&ÄAV÷åøŒ5öÇ³ô²ŽATJÍiÂÑ©x>&ˆ°ºÈÜ`b¸ª\r+ß¨â¤;ä‹S(%vc|†áIDX¤ƒO;R€jL‰R›E*WVÁ”‚Z-*DçÑâ…wiM\tç\fÇþöaôÃáÁ Õ°·ŸáíLßn½F*¹¤$ÍáV¯˜z.ÅŸä9LàlåJ…0²ur½àùàbæ ¤ DÏ…F¦>mˆŽS¦plÆš:|\'˜ƒ´ùáRp¥&Jè*F®Q¾ÀÚw=pƒÄòNµ™[‘ß–:eê•»D€}dÈÀØeN zï…¥¹4eì\'´LN.d2ª|O _lU|™˜rÙ½ÀÚ§dœ¦^O*™‡Bß\fôŒHõôÖ—`ý¡¶Ÿ(¶Ø¼>¡¬ó™‡pæ™X*J´žcòÀ’O’Ò\fílø©\\\ns mª&ûœ:ðÚÀQñ\0ÂOå„Œ†\\\"ë¨@!×ÓOh‚«ðßÖ|ðq?k­t™fUNÕRË#Ó¤Ï/žØŸ„qšfžš>A\füýºaKT«š®)ÒVvTPI$ï\0bn#ÂŽEtÕÌ\'ñ&?‘OÆi“ÿ\0¸ß\nŸ!\'ñÃvwšu¤¶°¯qg¦µ$N¢£á0LÛÐŒ\rÈUz•i€¯Ý–™AÛý[|¾x;ÃSR@—€XŸ‰ýå‚k˜5¯ðþúÎ*™š\vIš7¹­.}y×ûýÖ•óR]†–SÖÛÓ­mH*jÒ¶ØòõóüñGˆSW¹`ê [¤òóÀ¬Åj•H¤“\0°p¢/hw…–J7ÿ\00S>}vôÄ8MÕ5•F‚<Éþ¡Î<ü°.®B’-!¹“¾\nå²ôÖë6Ú¹Þþ¶ÀñÁ\\\t“4WÕ9`¤E±Yrú[T¼ÌúGLWÔäÇ1¼ybÂU]\0NÓûŒAO.1ÙÚUµ\tP@PHäFÞøA®¬ŒUÔ‚7c¨åóAAƒÍ°Û*lk\n‘á`\0>bçñÅ˜I¢°»cHÀÎõ‚p©åx±\nÀ«L}‡Ÿúx“ØÇPp[&ªà>Z¯óTˆ¡RÈç¡Ç‚¥ùBŸ#…}8öqrïyæÈAµÑ8Oi{ÊO“ÌE&f>\'ð•cx“ÎzâøìS|BµO# Â0ƒCŒ1k¨¬ @,b¢é©sî¶¥òÁ«TUgÊfBÌ7E’š¡€ûÉ>`a¬ÙY¬\rCÄšjö^¿*“þ¥ÿ\0ëÆ²Í–Pk„†ø@>&ö#o9Å|¿l3ˆ?Í?­Aúˆ?\\\tâÜJ¦b±«V%†‘ÂÂf7Ÿ|\vÛGø¢„”;7›j¬\0J£÷¾øO§–¤•kª­æ\\.¯†Äóùâ¶Q2Ùt¥Ru¿Âj\0@N­ìLœXíZ´\0—a2~îÃñÅRl†ŽbŒ4^AwDS´X&–F\rpH\0­· â`b¢qÚdOv}šß†è÷ˆ O„ý–¾Ã—¨#zlô¸iR~gÝ´ð~¨Æ®Ni=öSŠ³(¦o_.-Ö®_§›//o<u~Ä–¥0TÌcc1cNãºº¥òÌ«\\G&•©µ7. •0G˜<ˆëŽKŸÈU¥[øWwTê â­s¬ 3¹ƒ#ž<Æbè«8Õ-Y?ˆV¨Uƒþ`ÑRÎcÄ5ÄS\0\\±¾UÈ«ƒF°ºÜÐò#ËéŒÆc‹iMX€fxI¦eWùÔFª”È‘Qþªºòtås´éßpòiŒT#“¤\rÁ˜Üì-mñ˜ÌQÕ ×úOÐÄÓ)¿ OëIÃ%™&£H°¼t¥±>qµBÔ[ÀÜ|½£ŒÅy[ÿ\0‘§ª¡S\"¢â?LIJšü¹ã1˜‚T…3¬\0ž§\v}¤®¶¸†uV<¯OáŒÆ`Ú-VÕ<µ¶/âœ1\"\\“Ê\0Üá·†ð\vÞgk\fµ1>ñÖsÍUD€Þ²G01˜Ì\\Š&ˆÌ?×ö²Dy¢U-ÛpˆÔ8eá)5ž¦ùŠ¿ê©º%>ü°³üÖmo*€ƒµÏ>|¼ñ˜Ì\"yµ3³´ìšzÉ9¢@\n\f)fäôýùbT§Tƒ¥gW1ÓŒÅ6‹+Óž0 ÍPÒOD1°ƒ¿O©Å¼–M2ëdLßÒÜ±î3¤4òU³<YÅ@Äÿ\0AÚ}zyiü(A ™“ÐŽ˜÷ˆw4¥­hYQ¶p\"žð&Ö±ÅþY\nj+gçÏŒÄ»A‰~Õîc8Ìª@·¡Äs+\\i¨º–}/åyŒÄÕ ‘åÍÚx8K¼O³dÜ7yM?ýEÂÍÿ\0ÆþX1˜Ìiº&¿ªòZ¸›®kx…î%ÊÔ(êÂðE¤‰Ä‹Á1ÈœyŒÀ*÷„s‚ðZ•é±¢ô@Ä\nÂ»-Œ 6kÏ†fÜð\'=V¥64ÝMÑÔ‚šœf3\vÍÁALyÊÕ×.´Ø­Z\f‹¤²‘\"böóÕë€´¯©˜­ô€„Øm9c1˜‰£\0Øèš^p\n3C0UyL=8‘±æŒ±¾¶YåÓéŒÆb¢¼÷ìÍÿÙ","botalon","activada","comida"),
(6,4000,"cerveza","cerveza polar","bebidas","mibotalon",4,"$","ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0\t#4 1 \"5#()-... 3:3/7(-.+\n\n\n\r7%&-2516+/-.---5251.---/+5-7-/6./---87--+-----+-5-5--ÿÀ\0\0á\0á\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0ÿÄ\0E\0\t\t\0\0\0\0\0!1\"AQa‘q¡#2B²Á$RSb¢±ÂÑs’áð%346CDTrÃÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0/\0\t\0\0\0\0\0\0\0!12AaÑð\"Q±#Bq‘¡ÁáÿÚ\0\f\0\0?\0Ü@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0q±|O†Áâg\nõ,àí-žÎÚ­æô¦ýÈþ×áÜSëcgoµõ{»Ì{¤ÓãŠ±Ë*Ë\rE(j}Tdå\'vÚvrkµ·Äò¬låJø¬wíÁÉ¶ÕÔu^6Mwz¶ZW´·S{Æá¶h(,]:r“RªÚ‡eÚM_¿’äý©„tqŸâ3:…\fÂ´±­)%qŠŒ¢–™µ¥5wË½›¹=Ä÷†«Vk:\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0aKŒx®‘±QÄGRSŒ#²£ïî¿‡‰×öTðN6ÙmÉoø’Ð¬ó1ÄÔ•®ëÎÖWå&—¿eÌ³Óù½¹öwß—Š·ÇÃ»™OËÉûÍ/øTÖ(”¿?ÉÝ(Qµ£­T¦öçxÞÞûÅzñùë/©ì\\k…Ù(¬U;;v•Û†Ÿ™ú±ãÛt…W2½9d\0Ü \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0óÄTê°ò“î‹~ˆú¾)Ä{/\rbgú8z÷Xgåþ×UÕ§RQr““Ù>nÿ\0‰},¾S¡½NïÑ^¤/bT0Ë]–ÈÐ)â§noøž_™{ÆIzŠSX«Ò„Í2¿cÍ)Ô­9MÆ­9.QJÓ‹ßÄß“ºØÃ8ÂwÃI§Üß3kËªõù}9/µN/Õ&[úmæØÿ\0³ÕqÅoYŒ=\0ÅT\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*b=›€1oÆ–Ÿ~©%o™Vg9b•.\nêÛ³«^œV×nÍÍü¢b|3_,£„jèÛ’eõ\nÿ\0CÛi«mnó?áŠMÉÔèiÃ^[/ÇáÌ å×v—«âL{8‰q8ŽjxYo½¶^F¿Áuý§„°²ñÃÓùE/ÀÇ3•Øz•åó½¾KúEX¿kàŠ:Ýå:oá\'ø4wð5¨Vz¶æbUÀÅL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ïK˜šy¶aJ*jQ¥9FÑ»Ó&»MÛà½M/‹3•äkµ©Æ6ŒS³”›´W«0ºMâ³\rSi·»·+¿­ËžæœÙ:*éâáœ—vxO&WWÛ’·?qoˆËšK«v\\šQ¿/>ïó<¼7A¦—5¿.VÙ”Äµw{íÊ×ßŸ¦çzm2µÉ6¥¢!žg¹~ªm¯ÛÑ.p°¬ð•öUo:û%ºò¼UþS9j¤7[_Ãú™IeÕºÌ2Z£4ã/š¶þ^„8Ù:.Ÿ+µÅó~‚“)ÇÇ3Ë)Ö¡õjAI|W#Ö\\<ð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0;é§°Ù5NöwËöa&¾mÞH»W‘iÓÔ_°á%×Í?Œ/ü¤nJ¯î+ù³ÙséqÝo•MB=“£*Ú¡fÞþ9mßþ»Ž.ívoÉ]\'‡¨£~®áe´¼oK\\´¯WwŸUTƒÓ?™Ä\tJŽÉ­ùob£+&¥ÏÀ‘â\t}æî4ÌÛid¬F)j]â½§‚i§ö*T‚÷)6¾L´ z‹\\wk<E[z¥üQ|zJ{°òY=é\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0eý<«ä¸[¯û¯þs8Ü‘ª´Tñ{.è÷¿6û‘QÓ8¬5^›bur¾Ê\\»÷hˆÍ±’Äe=N¬iSnÕê9(ÇÊ–¹4¯ÞÒÔù+nCöxËxêðéÇÉ¶*jžT5øâŽÊ(ÖÑ}SÔ¡E[Ÿoœß»Ôøoq+y,6š¿]¿%Qìxx~¥\tæ0¥ˆz#:©ZLa.RPŒïµ(wìËœ.{ˆÌqU(áéa§:ké å]%~KT©iw^¥”cÇHÕi¸þéÅkZÓ¹žîŠ¨gUú¬ÒŸSUýXÍ§ÿ\0wQwù;2cŒrÿ\0ÉëS»…Ú³µíÊßæœM–C9‹y8ÁÅ¾²9Æ¬ ÓÝÆ1µJ.û5¢Þçsà±³Í2IG0Šu ãIïª*úfŸ8·â¼ÎNWÇ´¬jG_—’Ÿ‡}š7B®ü\t\v~º·ßeÙÑ>«‚ —ëjýöYš«áªó»H\02ˆ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\08é²¬édÔo¥’¿…á$š~;ßàgÕ0ë\vŸbè+Ëý£\v98Ên-F\t}^NïÞÛ4>›\\ŸÒ¬ë;x]S“Wø’ù>/Ø¸¡ãë8FŒðÑ„bÕçUéR}\\Sä“›Ùos£ë“ððâ0SÃSÄáªE¼D²ü\f#N7rœ£$ä¢—;-ß‚+(fÕ2>(ÅÍQ©ôÓÃÛU9ïÁ©ÉmÍ;+ÎÌ$«*üFáN¥hÂ4’†•\rNK«Mï&Ú[¾{8”ªÔTëAN2Œ¯}ù[kw­ù›oŸøf>û}éø°ºZ°8ZžÓ\n•²ŠõRzúÈÔ•MRVNNM[öOíMârüUJ2“t0ôd§$ïQºzªRªß×Ý]Iö•Öíl^ñ|0’ª7*5\'I5*u­=ìàâ®ã{»5ßâ®Aæ8Ê5rºòË%¥W¡JŒ¨ÉÝêMRU!%õû.Ï½[t‰ÚýuÞˆ4þŒ¢¡ÂqPÝuµ~û*É^Œš|!OG-u>üŠ¢º<6Ï\0e€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0KŽÙ^{~r¾äÌçGòrN’RU ›”£îªEsÓßc’Nöæh]1ONU‡¿þOòLžázúkè¨ö½àÖÎÏ½xø?s6b´ÖÛ‚cpùäüO,E,>9íN)õ5–ñ¬£8Ê·ÚVV,x¢R†aZxº’¥‡:*5zÉÎR¼¯öm¥_Á+“Ù§RÇÔ¾RÃÉKWÑÙÓÕú]UÓƒ²íät¸› ­Ä˜G*JpVëTk7Ý{C’m¤ù÷]X­11:üþMSîœâÎ\"¥[\'Ž&•°ÉG¯ÄruídãJûÔmó—%Ìæa25€Ê§<E5“¨§?ú)\'¥Yò•Ûîº]Å._Ã”0]\\]W^¥>u*éµ/îé-¢ü$îÉÌó1–;åãJ)Ç}õ\'{·ß¯Ï¸ŽKÇOM<|~iV>2Ñz%ªêðU=[Z¥Uûò‰dHôWMÓàªZÕ›•Gûò±\\qÃdù\0€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0gÓ¥gG&Ã8lý«ŸrìKŸ—q;Ãµ¡Z„]H©E;ÚûÓñ·Š)ºv–ž¥ãíP·øeý>ªãéºäræÏ8gëÓâZNŒêbªÕÃÍ%*Zb•Þ†¹KC[¿/3ç—cj¬Î1­VN.2œ¯-QŒ{£6ÖÒjÏd­Ë}Ï6_Ñg8ïã¥úr:rÎ5&œ;\roËSóo‘õ^6»Ïøÿ\0„úvzÌÆ¢¯èåÓÃÒ£9ê}de¶ßYÊ×Ù½ÛwßÞGñTpý¥¥}˜;_ß+˜¼eïÕ->\rï%îîD?¹Nm-ÛñïdoêUÉnœ]þFì^™jW¯/öúµÞŒ¿äl3—|$ýg&T=+p.ßªþfSµñ\nËûÒ\0\f¢\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Îºo†®ƒI;U¾îÖ²îWÝ÷|L÷‡«\'kûü½#YéO#©žð}H`7«^:_j?¶Ï™VkÔEnï{wÛÔãåb›Çe<c·vÃƒš•>Ë=«*{»òMz8\'²Izxxÿ\0SÙý¦´mo¯[ßæPO\'WÉq9énñ*\\]HÇýå×‡ãÈ‘âV¡¾ÿ\0wÉ÷Üþkq\"å)^M»»vžÜï{ZÝÞó‹œ³D£‚š©VsŒc{·\'eø#·ÅšÙ¯7&±Mmºô_O0ÚÕ¯\t?YÉ•G‡\"Ë–Q“Q¡O•:Q‡¾É+žâö#PóvÎÀ–\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0#‰ú0ÁgÕåRš–´·”éY)?Eìþ-À6Æªt9^„¿5ÄSšó‹Œ½wþ\'ûO¢|FžÜèò[všó6@G¦ë³Âô77U{F\"œcdšPrnÞ›ù–|\'Ñî†+õ˜hº•ín¶¦î>Q\\£ðßÌ­b!‰´È\02ˆ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÙ","botalon","activada","bebida"),
(7,4001,"cerveza pool","barde de cerveza","bebidas","mibotalon",5,"$","ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0\t (\"%\"1!%)+... 583-7(-.+\n\n\n\r-% %+//-/-5-----+----5-5---+--------------------------ÿÀ\0\0ö\0Í\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0C\0\0\0\0\0!1AQ\"a‘2q#BR¡±ÁÑbráðC‚’ñ¢²$4DStƒ“ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0,\0\0\0\0\0\0\0\01!AQq\"2a¡#3R±ðÿÚ\0\f\0\0?\0Þ4¥()JJR€R” ¥()JJR€R” ¥()JJR€R” ¥()JJR€R” :–¬KüNÊk¶Ôô,¿½Tý§¶#¹E´Ê¶Ù¢ãf!¤ÎQuÐÏÊµN³VîwºÒ\"6×~gS¸Ÿ€¨[uÇ67ð–K+¢Û~Ä}bò¸H`v ‚+ÖµÇ±\\Zœ=ë9ÙžÝÉ @V\nô\fùŠØõ$Óó8¸¼1JW“4¥()JJW@sJâi44®&¹ ¥()JJR€R•ÅÍq\\^c¤À`OI@W;{Â–îîI\f‚D˜#Cå¿­jÌ&9mPš\01é¨­ÃÚ»±…º#t?íéZß†à19#6»o×åçç\\žª—o8ÉÕéni¼>É1y1›%r÷n,îrø[ó´«LÛ½ôL~öËœ#ÿ\0+ø8ô­Èµµ¡¹[JhÕÖÕÛ·ää×P]¶ãMƒÃ¨ŒîYQB‰ñ9=ó;MiN1ÿ\0ÄÝf&ðpq\f\0;+F‚næ¸¬ÎX5c\tÉâ+\'Ñ\0×jÖ^È¸Ö\"á½†¾ùû ¤x³#7C®ž^u³+O‡“\r5áœÒ•Á :Üp3QÚŒ°VÄ[RvÌÑø*7Ú[v‚¶ ”P„‚@gbÜ€>uª±<\nÅÌÙ\v/†pì“±$ò:Fÿ\0W;ê¯û™ý‹!E–,ÀÜ½¦ã‡Ã›Ö­›‡HË\0Æ3Äø€è+TŸh<]XÅµa¹SkU$J¶½9Ö\'gq¡ß°OÔ¥Ô\nfVu,ª&DhÄl+#ƒ¯…Ü8:FhDÈ’ÕV¯]úhf\tK>åúm{;Þ0^½Ÿvóþ íbå±nò.bÐ€@m ‚E^ëVû³w>2ë‘ULÉÌ¹‹ AZÚU°§½)c5§\r’q¥+$E)JJR€W¹®\r©} qŒ]û·°¸pê¶ôfÍjÛ®škGÅpkø_üE«‹mÔæIqöŒž’øVÊíÞïÓi^Òª¡7lÀóØˆøÕIñKÜ›d€\f’@\0±#Rzi\"5Ö´µZëª’Œ^#ø7ôÚJì†ZË6râWÃÅìÁtX°ûÙ|R9*€·Ä™ˆ9”4x£1 ÿ\0i¯Of—8uË\0€m³¡á¤©ü*\t.û¤ˆ=4ŸŸéUkì’¡Î$´U®ëŒŽ²°Ü3[ƒ×Ö¶—gñöÍÓ»ÛRÞM!þ©­wÆ0Âå¨žZzU‹Ù^1_-f%¬»#¸“˜|µ1åZ}QÜƒ‹åu*ð£#+ÚfÜá×Àb°‰Õ²Ÿ#|j|E°.0 ´‰ÓOA[“¶ä};w/ùV¶Áð“vôäÎ¡\0caøÖö¿*Æ~9(Ð5—“Ù%…^+x™žää† Í#Ÿé»ëLØ²Ø.%…»‘Q»¢@:†kË|¾•¹ªý,÷Ô™F®;lg5Á®j?q‡°÷w*!GVc•G©²knÜq#s-¯¹dzwŒf?Ê\0QæÍT÷âÒ09’u;‰å;CmÎ¦p^õ¡˜êeÛ¬’O! ™ù\nïÛ.|©âÌUšøŒW\vW)Ytc•Ÿs·§Œk«êäŒNÜa,[fl÷Cbn)€y¢©ÞtŸJÇ³Áa3gyå·áÒ®xÎä]¹™3ÁÔ‰9Ú„|s¯\'a’Tr×ÓZu\'$ÖÖ¾\thÃÜ¹õ2ý¤ao\t&/¶ûû«[¨Çÿ\0ò÷ÿ\0ù\rÿ\0jÕþ»5}‹àãÜ±d¾E)J°¨R” ¥()J¡íÄÚ´ÂenF›ø•€9Š¦ð¾.Ü0´Þ4ííŒø7þFôa3å¨|;‰&\fÉƒþ­gÏ@b¹]N”>®ŸO“ò—\'¾\t›†bÍâ>¢ò¹\0èàm£ã+þj¨pìEÇ|ÆF¤yÌs«j½‚T’F»ž[Œìj½h©Ã˜9ëÈÖ¥zˆÛ¥ÛOÜiq¿sõ,6e¨œ9ø^+¿l¼-õþN?‰wó:TÆ\r„yr¬.Ñ kD¾Ÿ:ãôýC¦ü{›·Ò¬ƒ‹/]¹‹¼:ñB¥3LR¾ð\'ËoïJ¨p^&ÖVÝ‚2è\vd\0 ;ïùVodñfï¼­$ÛK¶Ç\\«%GÈT:à[ÈAÝTõÜuùW¨×Éª\\£ìq4P]Í²3;mŽabAÌT‡YäÊd:Ù¼ßY·pÄ²+ÚYAÓÖµ_i@kï¤ŽŸ\n¼û3Ç\v¼7\rJ\'vÞFÙÊ?\0+S¢ß++{Ÿ½F¥\f4ZMQ;wÄ3Ü\\:ÁTãë®r\n¢Ç–ô©þÕv…pvÁÈ^ãH¶ƒí0êy:Ók¼n\\ºù\rë¤ #’“Êº·X¡Ù£E{¤‰Þl†ãûÒ³ïb{Ì]‹;(=ëü-xÇâ­cp€Tf:u¬~*íƒ\\Uû¶þ²ò¥¬??\v‚Îdj­¦£¥y®ž¥n±ËÑ½d£¶¯ƒÒÇï‡Âs™ƒïÇXä<«;ŒÞË`ž{ÏC_Xª·f®h£(X×A¿IÒIŽ|êÇÆñ Ù`zFÕOP²OY{–Ñ^*H²{(Aô2â<WXéå\n~r*íToe<AnÒ©R3“¤\tÍ¨ÞgPgj¼×®‡Ú9oÞþE)J™X¥)@)JP\nR”ohm‡Ã_R&m0å¾SùÆõ©Y$\vÑ”HGÆ·>è[nÆ )ÐÓi:\t¯Ÿp¸¶6À•Ë®m^\'ímÎµ5S­ÄÝÐÏdÓ.¶.\v–Êžb*»ÂpÙ°û\\BM±::É-—¤ßÎ§û=†\f!¹ˆ™ˆó5Ú¾ö]nÙ¸`FÒu3åÖ¼çNÅr’—Úÿ\0ÙÖÔI·ôòfá0î šwëéŽ´ ‰ŸÓŸ­EpîÐ=ì¡VÂ;à›ãQ£I@\'qäjKÅê‚W,èH{lÄé=Ùþ 5«µÝ\"Úquk+’n£]’Ù/‚„ñÁ`1†ë¯´«âHrÈf×iæÜFÕÛV‘T÷ŠRnr*Êë¬ƒ•íÙü\'}‰½›Ä–³:¡`HQ:è7>•rÁïÊ¥²Ìxgî¯Âº—ZÞŸ?ƒZš×}ü–+Ä+¾‘]{Æ¾ƒ‰8K¤\vWÀIÑïòh1çY/A;\n‡ígt©7ªs\r5y¢?áô›œu¡·¬­J¿\'·hx¿Ò‹]>ëømŽ–ð‰êw#ÏÊ¼8N1\fzn|‡^f±1†,A#ô‘½Xxf\nâ ðÄõ Bk§Ô­³n ²Q¤Œb²ÉEk\"Ö[“6?žš:¢q¹ˆ½˜æ(º*HNRÒG04þ•u8a36F§ïcR\"*«}›\"‚Ä˜êuŸ÷¨ôÜª7>’6¬ÝŒø2ø´•n9é¼Š–Åáƒ!rçQœBÆ±3™ˆüª^ýÈSä?*ájåý|¯s«ðGû$Þ?‡0W»ïRw\f)Ê9ã[‚´Ï³W78Áa°Ã9hÛÄö‚ï¥njöºvÝi³ÌêÒV´…)J¼×¥()JJWç0O \"û\\Ðïd[$`‚†~5¦±8pŒìˆM Dùó5²;EÇÉ°·0×þ¶Û*”Là–\"B¬ë˜Àk]_%í­Ã¼Açhk^õ”mi_ÔX¸fˆ:üDDió¬Ë‹[6¤Dvë$Â\r\tó:å^¦>[Õ“\r†ˆ”ElÍâm¶“¯=…yxtûí¹µádìÙ¨…|šÍ°ì˜¦Kg+[’µ¶\f\v\t‡•Ið¬\f˜JñÖ\te÷U‰ƒÒ²8ž\rKZ»iŠ²¶¨ò ‚NÒv?\nËÃp–lE·\f2»Ä’5\\£•z¸wUj¶üYÎ·c±øF&/ \n3Û`Hæ`0oHÔj;\v„»rõÕf³*3{ÁêN±×È\n˜½†?H³ÜòIs$®RªÀów=)Æm­Žìçu‡×»Ê\t,\fC\t@ÿ\07JéûŸG¡žÿ\0mî$ð\\0Ñ.0ûÄ$t\0GçPÝ¶á¿PJ‚@ëï ?˜šèžò÷ÅŠ÷ÝÝÆ7op/#eT\'Ä\vT•ËaÃ€NPÌs3+ fMsWmÁçItxV÷CŸƒõ9Iâ\\Ï\vÅ®ÛJh1¸F2AƒÀ<êÓÁûP€äº±*×3Ûv3‰RdîUdkWá1þ‘ÝäÌöî2„&$‚H\fFò=j_a\v6{¸\ngE¸4%O5å\"¬®*<ÄÅ’o†[1ø„ºé`fS¾Sï,$r`Dë¨\'áR·ï[´ƒëµam¹ÓžsÆ„Õk²xÃ¯~It%\t:ƒáV\vÐ ©N3Ž6®ÚgK…sg÷XæÚ¬tÕØé¿ƒÊ¶+ÓVø)•ö#µžîç»rÛ™0éö‡á­q‰\\«rÔUzåörÏua®2=¼Ç#ZK×n•Ç‰aL4‰‘01ÖC\\Ôµ¥¸€¥•Ç‡:ôÖ4?:àu®”êjøq•“«ÓuýÇÛ‘íì‡›‹Ä† \0¶ròŸ|úx}MmŠÕ^Îxîƒ»rýÐ¦æ ÈÝ§(A&!Nµxì§i-ãÕÞÙ÷\"9OºLõƒ]j– ŽmÏ3dí)J°¨R” ¥()J³Û|Û–[»|¨T‹Ñ9²‚5q¬m­j\fjÞí–àÂÜÖÝÖléáúÁ#4é®õôÁ *ùÿ\0ƒñØKaX…Wdkf\n¬@\f§C¤VU=ÄÑ(Ù±™ØYÊ™s¥X‹O•²Ü|ë\t:À\n4&¬ü³g9ºÍ$.f.òA5Æ’yÀò¨ÛX¬4æ8uF*Tµ““ÂH1”ÊÄ€`t/Â8Í‹6¥¾Ë2~²Üo®¥ç­ûcˆ¬“r–dòw¹Ã­Ù³mH\fÅŽbðæg6äj«¨4ŠèÊú²f-‚hÏòÈô©L.2Ë/‚â;È¸3Ô1å…Ä—(l¸’<ÀçQù10öEÉk@‹Š`1btª\tŒ¼´æyñ^ÌÁ²µÃ;4oQñÔš\\¶!AË×@Hæ~S^–ÚÒ¼5Æ9Äy{±c‡”•äÅ±ÃpfÒM£sibIbê¹’u!tø\nðãwð¶­äUf(uDb\t01ægŸJË³g¼rI„‘”(×MI=5<«ŽÒa+%ôIÒ:ùõ©÷%îcbö5Ö\vzæ.ë€áY‘Åû¹Y£}<U²;?À$÷ÈÃ,´ÜK•föXØ¶¢ß‡¼Ëâoˆ’#¦&à\\ç\0[\v\0‰ó_$òWûm†É[„$/\"3l§]D\nëcŽÜ*àk€J‘Ì\0chóÛÒ¤1ŒÃ8úÁoÀtˆ:I‚ÿ\0ŒV6\vÄ;»ˆŠ4!ß×­0Fö‹)\vpaC,uð÷ŠXð3Œ©Óh¨®1»jÎfFÊmªƒFU2XT±Ìb§8Ò[G7\rÁ)ÙWQñåUÎÒöÏ\fêFqrá÷ÚÐ\'6‘ïi;Nõ]°ðpŸ…•Ù¤§J\n·qoZ£Ú¿Þ†”¸ÔÎÄta\"#­}Ø>øl›w-Ì²ãMë4˜ò­Mì“ôŽ&¿W–Ý»NÀ\0\ráTÌyhÏ\0s­ó®>K/\'4¥+$E)JJR€R” 8\"´woð‚×»û}à5õ·•k?j4ôëÝ:Ãj/Zº‰bd&¼+GN_©ÿ\0zð¼Ý?¿ïô¬œX˜åóÞcäbº5¦+®¹zÆ ˜>\\«vÄ£fÖS]®pÞˆ<XŸëX?J¸žåÇ_åvð5#ŠS©1ñf4¨ûÉ¶?­^©*w¬rtÿ\0˜ñ‹¶&ïÌ†øûÀ×uíf8ŠÅô®p\\&õ÷ÉfÛ;y\ty¦#Iß¥NÅ%8Ìm‹Â<w=€|¤Ôe\nÓò‘˜Í²vÛ¾ŸŸÖ¸ÿ\0ŸqÃslŸ4?½X[³Ü,@8Œc–\nØU&30}:Ç»Ù®IQŠÅÛ` œö\0­³6Q óšŽÊÿ\0Çø%º^è‰_hXõ2­h§\'¨™ë]_Úm\rÄÿ\0ó Ý7DàñV1<ò†Ër9¤Äü:Õ[ÂîØb—m²0Ü06Òwß•eUSás’3®öËÚœC‚ òûµƒ‰ã8«žþ&ñÿ\0;Ê+ÛøùëÏö®S°—¡Žñç–umOS©õ¯Nì¿ßN•›Ã8s^cm’¦?)=dqL´Ê„«³áÛ_Ûôªp»»I©>Þãq{\ráBÞ\rïÇŠõÂ\'ømÈŽjÙuØÌq‚ÃÛÚ-©?:œ­\t<¶Í”)JTLŠR””¥\0¥)@*¡í6Uú§àÃúU¾¡{Yg6‡B??ZÃ–ß>Äà³,{š¿€[ÌÁgœ~õ)Ä8B¥·(C,{§B6ƒë5œ;<-…¿i¾¬¦s\'Pco9>•‡|¿ƒ4åa—]D*ÙÖj¢î„£Ã(Ðé$¨²2åLF§m\'çÖk?€ö¿-rë±oÅuÌiÏ(êß¿:Àöj.5ÌHú„Vs–LÀŒ¿k3ãl\"-œAîÔeeÂØ\0°‘+Þ´@1Ë‘˜5Õ³PŸÓ¦ÒO;¬áœwiÊáp+ÝX“¢·.\0\v1gmŒbzoµF¥Ü=™„7™Ã‰f¹nä·pÀf ‚ÈˆŸ»w\vßÛÃÝÀÝCp¨¯ÐÍ\0À‘¤íñ©\f6\'\rÃÚí»°òæ\"ËÜ¸rã!Fª·¨¯è(åã%zßÇ¸P˜KÆÐµÝ|ªX3–Ð†Èg_ti\\ýbÙ\rƒº(¶¬™Y•[&ƒœ±bb\fÄ\r\"ßÿ\03E¡éhm+˜anD†ñxN£}æ³8^>þ!;Ë7m2‹aï,ù©/âç¨Ò«wÉ/1XýÉª×£5m«¨ë»E‹jˆ«á¼÷˜ñFePÆ\0ò]š—·ÇIUÃñL·ìT\\™»‡u•`’ùªo‹›x¶ÔàÚòŸ\rÛw»«ÊÃù„˜<›J§q¾ÏãÖGÃœªÒŒ‹* ûÃ-¹Æ\tb\'HÚ§½O’;Z1{IÀNàPÙí¸ÍjàÙ×÷ê ZòþÍZ»&†»ÃßV·õ¸f$hG¿nyqæzUó²ýžL%£™TÜmn1Ôxu;½Xõ\n¸ùòÍÓÍË\vƒ_à8]ü6PÉtH,wÌ9jExpþsˆ´2œ¥Ñ]¹K¼ežgSúÕ¯‰îÝÄ!•QÜÚ&>Èñ7À·åYÏ‹^ÄØ·®[Orñé0Bþ&¸0Öî¾r_jz]´F>ÞMÃm\0\0\r†ƒå^”¥L¤R” ¥()JJR€V\'´Û©æ¦²ë£¬È¬5ŸSÃÉ@{¬0y&zmi÷fcÒ+¯lªãÓç^X‹G%Ä&\r»êO’•\"G¥Jcp™”¦ƒY‘¶ÍÒ´uÛ¹8ú:gSO>§[¸‘wûMiö(aä?zªûTAôŒ0æÒOœºŠ—áÞ7”ˆÈöÞú\\Yýj#Úb‡ÆámŽU?¸ü&»:ïiþÈÕÃchñí Æì‚Z˜ –?•Föx}_¹ü&?Ì×JÙ<?‚a°ê^Ò¨Xµ3<ö¨îÍvVÝ‹Mž]¯C\\Ý É\v—œO>µ~;qñü<”*žrPŠeà@ólAô4ÿ\0¦®½‘ÄY·…ÂYgU¸ö‚“âa©$u5!Åû-býžç/v³#$€¨Y‰Þ ¸·e/¯tø{ÚÝ¦°…XF[0\"HEEÙ\v8ó’j/Á¯8Å¥ÄYÅcH¶ HH0Ë/¥Oö‹2_À.ëÙïÕGÕ±P\"\0_tNà×{Ý”º¸kèï†ðÜG¶Ò$Ü6Ú@¨ÌE·¿‡Úu»oºÍÖ‚¹\\î°ØÈùÕÏ\rÿ\0ÞÄY=Ùrq—ñ6±na˜-¼Bîï‰˜Åtowç;VãWŒL»#Ä\t$3(09Ó­Dû19SY‡ynëwìuk€)îÌý˜\"åfñÿ\0Ê0ñ\vjÆ èLF[ŸJÕµyÁl<y<-2YÃª´Ê[(Fbdjr¨0&uÚv©ÏcøoûƒÝ« ægòŠ¥}ÊÐ²f˜1på\0ý¡uÓHŠÛýÁwXi;³EÐ~3Z‘ÓB¥ã“bwÊ~\v=)JŠR””¥\0¥)@)JP\nà×5Á (üvÑ71+–Tª´2’\vxHç¿ãUî}P±,‹nF\\ªK+,)hCD‡j¿ñœ8bFÒÛ˜#_ÀTOáVî\"¥ÄRu\0À¹;r11çWÁ­¾H¿Á\tÂÉ¼ÌŒ2÷ÖÙ& SÝ¶¦AACÈœ^)‹À9\\N$÷—J,Û÷²2Áð\'ŒÄÍd¦ìÝeè‘¤Àñ=ÅžÌuæ\"°;wÃ–ý£y-\0Ö\twUð‡¶ú³ÈÖCjO™«ª„c<z26IÍd™á@ð¨ÖÒÚÜiÍ;¸P¢\0ØkR¸~3o2Yf\vp…ÈÛ‘¸ô3Ò+^ö_Ž®\nüé¯eÍE·\f$“n5:Ôö%Wéúñ\tÙ%“]ºÇ:••bX|z„üfòþý+‡;µ¹¹µ\rÃ Ÿwøbø×^Ðq‡ÃÝ¼ E‘<¹Iª±Çã­àVê\"®K ‰ŒÛhÆg4î$ëÒ¨Œ_¹k–:üC™¬m‘o*Èa `®‘´Õ?µ­·†Ä)KYÃ{å¼*H÷M¶C\rŒˆÛjµ³‚²oß`(7n6¬ÌGˆ‰˜QZO´üjçÄçƒ©Éi:`æ\':¾ŠÔ›ö+²xFÄá˜Ì%áu°ÞØ’¶î)\049ŸC•¡K™?.üjøk ”Î™…å_ûLü…yp\\am¦Ú#8ÝºD•¹pC„ø,/Ê¥¯ðgîJ‡uØO]ª¹´¤ÉEe¸‹Ò\0ð×]$ü‰ˆò­ÁpÝÕ‹IÑüH“øÕÞ\\¸–ãFa:r\t­’*‹¡(¡JR«$)JP\nR””¥\0¥)@)JP¼Y}Ò>ˆþµŠáöï¸³ÎA ƒ2\fS\\XxèÃö¨×yÆ¬ƒ\"Ê®:ÝËX‹mÜ‘g»(åL©‰_³¿ÎMM[·6‘”KÆ¢ ©òåYWÑ]J0‘Ì~µÆÐÐ\r€Ò*~CÁ­¸ïú<Ü´…ðŒ~±–³$J‘¿wÏHÙAÒ£0x–Ãdaxµ†9\n–‘¨2Ëä¤“Êu­¡ŒÃ°=å£\rŽGÈŽzMT8§Áß\':¶á:”…¶’œ¾Uµ]É¬H¦UáåÎÑp¥ÅaÎž0’¤\'™S«FÇãTîÕöêÐd·eËi\fÒaY†¨§ª©‚|Är5fàŒöðëc:â2\fªÖî|¢r‚¬Ah$EU8×cm\\¹™p©êÔ›·îXr©“‘á¨Õ±<OC3ÝŒÄ®qü}Û·ã¼iðYQà×HU± Èc;AéYÜ\f\vî‘‰qõ6‰žàÜóxØr“Ò¥ð˜;cÿ\0…´MÃ§}sÄý<dùT¿áXÜ¹%Îºï=k6Z±ˆð#9fwÂ÷i®çRNúÖMã¥zŠÇ¼fµKOnÍÛÍ‰S÷T·è?:¼ÕO±V¥¯?)\n?3úU²«Ÿ&W”¥DÈ¥)@)JP\nR””¥\0¥)@aqtci²{Ú:Á>u…Ä+ðÔlAžc—*³Þ¬\fW\rKšC}åÐüúüë)àÁ€ÇJè¦5¬£Ãn.Ì¬<ÄÚ¼‡]Ðÿ\0\n±Ih“ëQ\\C„3 õý*MH][Òî!>ðõ¢–&ìÚ\rTAý«Îß&§®â–=á^\rˆSö‡¨©dÁ†0–ì‰Šîì#ò®·ñIÌ¯­xå½Åfé•I¦PÁêÍX\\C•O w=?¥fØáx§ÚÐIçq£þ\t©\'eCbÝ#P€e¶òê[üÇåPÜ‘”nÁ£};¹dAÉ\0~0OÀŠ²×…‘ïU¿/$…)JJR€R” ¥()JJR€èâ¸Ë]Í\"€ês\\Ås@u\"¼ÞÂÔˆµ{R€Æ8;gü5ÿ\0H®¿ðû_ûiþ•ý«.¸ŠÁ0¨6Eê»×@tËLµÞ)@tQ­zWÍ\0¥)@)JP\nR””¥\0¥)@)JP\nR””¥\0¥)@)JP\nR””¥\0¥)@)JP\nR””¥ÿÙ","botalon","activada","bebida"),
(8,4003,"refresco botella","refresco cocacola","bebidas","mibotalon",4,"$","ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0\t( &\"1!%)+...383-7(-.+\n\n\n\r-% &-----/-----/--------------------------------------ÿÀ\0\0á\0á\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0F\0\0\t\0\0\0!1Q\"Aaq‘2¡±#BRbÁr‚’¢Ñáð$3CSs“²ñTÂ4Uâ%ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\02\0\0\0\0\0\0!1Q\"Aq#2a3‘ÁðR¡áB±ÑñÿÚ\0\f\0\0?\0ÜP\0@*P\0@\"P\0@@*\0@\0ˆ\0¨@*\n€D  \0 \0€\0@\0 \0€\0@\0 \0€\0@\0 \0 \0€\0@*\0@\0 \0€\n€D\0€\n€D \0 \0€T\0€D\0€\n€\0@@*\0@\0 \0€€T\0€D \0€\0@\0 \0€\0@\0 \0€D\0€\n€D \0€3km˜°Å¢G1¹¯Ú{[Ã•ñ:¬6aºêGÏÒ¸Z,9‡Ã;GuéªnF‹,ü—êKl¢ÌL{ÆVFŽ98hVIˆ@@@lÜÞ=íÈ26ÈâZâ?\vZî5R°Ú{xA»¸žs».€htÓÏTr åDÀ[\n€D \0 <Qpc‹k0i«áu¥ø 3ý›‡ÛR4Èì||òÑÊ,4{¾Ð÷¬8>æw.Ãì6ÚÆCŒ‹\rˆ‘Þ«jªÎ„–´ÝW®Ù/S}Ðk¡w[‘ˆ€ñ,­o´@ó@xf.7p{O‘Õ¯@*\0@g=lÌÖ?\vmL­i YqÉÙù(s]ps~!â4”zsoô(±b1™­øfžñ Ì2(_ª¬Ükê(McÙÆG~œ§V2löåm7;ê€\0‹»ø×¹\\Ç{y:Ú/Â¬KbÜ¶\0  XØ¸§™q8Ñu€ÚvwZê5«”jìŽ6réV(‘1;Ú°{&ˆ¢‡šM‰z¨Í€|„‡´y‹oÍŠ”G4PÄØiÊNîÈ‘vtµ£Rô-BX\"¼ÊÙÇhàzBÚ|xØF­8‚M\n9‡ŸzÖ¦m¿â¨Ððny†F†¼µ¥ÀÄv€=úÚ”¨úÐÁâQm#À )î£˜áä\fÔ\\ËÖ´Ò´[…›ó–~ûì=ú6µ¼y`.¥ù`ØDg¦ñ‚93™ÅÁ¯{- }Ó®¹x­e=¦®TÈ\f7Eð\fx,kÚ7¯îq#¿úà±½˜ñ\vE]+c{Öw¹ä4\n™e;žë,Kcp@RúÃÊó\fn\0ŽÙ ‹û#‡ª­¨}vº\\Æ¿\n´û2À\fm#‘Ô_—\rºà­ºIpË÷B$¼ eÎoÆÿ\0g¸ôOåQ>¦-‚P\0@ZØï.–gc¶–b´F‘ôÆ\"p±9¤Œc¬wÑOšÖ]\rgô–È]m˜à¥D¨ö€D{eÄñ‹žÝdeón¥£À¿AzY„Ms]A²FM\r} · ø¡’vÖ‚l€<,×@t@pÆ¿,o<š~HÝJÙYd÷¸whµñ±ÿ\0r6xgÙþ„nÔ‘Äá¤.àú°EÑ oÃ@Hz0±Ï³.ës@@Bt€\ræMwŽôÈoðQäè$¹D3 íßu¬WIÝv³5Õ¥P´Mñz“ËrQ\nƒÒùsbˆû-ñüU,ÜÌäêåö#ex¡æ£mt\"}\v7@åìÊÏ¼ê+ðV4ï†‹šÃE­Y/‚\0@\0 m[`†I]Â69çÉ¢ÿ\0ÍzÒyñI\'s®ººÇ;5ÞW/Q¬–)m\'C…J¯Ô:CÒ‰›€t¬~í¹²h€uÔE1j¥‘¨²Lÿ\0Ž4Ýô.}Û_—lø\' Òæ–¹ Øc‹ýÛ÷…ÒC›%N‹ØÔîŽ»4Ø§ó›(ýQH1Ìp3–ûMfaæÂø %6n K\frŽý¦ƒø  \":S6\\+üi¾¤_ÂÕ]döálµ£ŽìÈÏr…æÏ@Øåâ¢ARtŠh‰}tixis±®ûMÔ/Qi3ÍÉShê¶0@í§^&&ý–Hÿ\0RÖ™Qäô4}F±ºÁuh€ðY\\š¡ÎÂ“éåi:–°ë©ìØ\'â\"Y>·% >~é6Ð’m£(3ÊevŒpÀO*àÐ\tµ]Ó¶‘ÌœÔ”¥Hµ³XqÒÐe6óö¾HžèÜ÷ûøyy-1éc¼­rÍÓ{jiQ7Ðé?¶\vÚÙ!­Óƒ@ia»ÓRhÕÞ´¥Œ£¾£ÐÛO8x•ÕÅ1x\0@\"\0@gývm¿É¶k£oµ;²y1£3ÏÀ7õ–´zÙMØ!Ðà]Ð†Gcï;Só\\<ß‘³Õiâ£\fmö9ï›&\n`íZÆ»ô%ìr’q|uëúêœwG´¸ýúNõŽ0NÍö¢q‘‡›]Vkõ˜}ë­|÷<¦H´ë·²·#<Í kKœh4|€²€ƒèÓrÀt29ÒŸ9\tuz€w´£Dö¬ÒßQH}œ¿gÂÁ„ùÄK>@ ,\nçLmÌdmââO§ý®~¾.qPEýFNl®áöi#´ù‘ýpT#£uæ¢üµÐ‘;\tÏfV9€Ž#1\'Þ¦“ÖÅO’ÁÑÇf`ïm´ù´WGJþR¿b†©VWDš°W3¾•í·A‹™íp9ÖŒÀ–‹\r$iß›æ¹ùóIdÚ‹Z}*ËÕÑD‹¬,@ì˜!®}±ð½În‰#ðØ¹mÜYºÒ³.60ö0-½›Î·n?¬3?DÎ£á‹\fwÆVk!\\(\rö„Û¸žóõXãè¤k9m‹f]ƒÝFF!¦\"Â×A+@{¢»†js|ˆðZA(«ûÌMÂ;ŸJ¾¾½H<{¥ƒ¼\rGtm¦iÀŸ¼A<©Wz–ïŽ¥7¯áÚåŒ:³ÛŸÎQ‰eÎ3ÓÉ7Yz™F;”ŽŒ–(N3J›>„\nc *\0@\"P€Á:ÖÇœfÖlØ‰ñC]Äé,§ËV·Ü¢”¹ö\'„x÷&C€Âßù“´þ®ðeøRæ¥Íž†7Ó²!6Sw˜|l`jpåÍý&f#ãJEõ#:·ò û£ÎÊÚ#´p˜ÆÐÆÑ#®´m1Àóÿ\0ò¸ºŠgU(÷çõVoö¬.™mC‡Êù7®lBÍ›WŽó”;E†ÒVÍ£\'Hƒ¥ 2‰šÚ\t¥ÍêKý.oí¡ÝÝ#Âÿ\0š‘óAz™þ—7ö¿ÐãÐüdmžhšáS9ÓÆÒ\vO¼ xñaÓ™Y†XOévG<S‡Ô‹rŒ¨ô¯ô´>¤v7HÇ@¨g’ñUö:ZXµ‰µêÌãµ11aÎ$Dek¦- çh²Ö\0lf±§²yé*ÒÇ4ÖçTE‡Q’8Ý®¯ô,;%ÌÓàÞð(<J-Í..&VâA:q¯ *Õ÷-óÿ\0=ŠûwOÊ^z).hä#”¸Ä€ê#»Š¡¥é/r]_XûÊÒçp\0“îV[¤U0~šíÄÎ½\\ðÐ\tÖÍ¼ž}í×Ás«~K:Úo—‹sþrQšñ¼†‚øêkžªÃ^RLRù©>„ŽÁÚ‚håoørzüRTìŸëÆãî§°“¶HÛ#x=¡ÃÈ‹W“µgŸj5Ÿ&\n]@.ÊÁf‡ià…­r},«¬žÜ2vg\fÙÒHÖ\fà·»$g¼€I43š<O%^IÊ)BY#§Iv:I°HÞ>õ¡¸Ý5\v_Õè[ÿ\0—øÿ\0ddP<ÍyËm{I£O»Ó3HÓ^¤qÅ,SMÎé÷7`ÞõWëµgµ“ €€G€ùû@K´÷Žö„“Êê³Ú.9G5J¶WQlèiqïÉ“øÝ¦F Êæ’\\Â\0¢\t×½TŒmýœºôs#’W¼°Äö[Z]ÆêÀà¤ÛÊ Õ~%kjãš0øvsÅ#»ˆú3zøjx+1èÓ8ú‰n”d»#éNˆã>\r+…ÂÂ|ò©“à¡.¦}Öž8É´pðÙÃÄùœ>ü‡+¸4þÑUu’¬uÜêüü×Ø©à1àJw‚ìg¸^ºzzxª¸à’èv³Û|2qØø²ö5¿1\\9¬eÛT‘®M¿3=7mn%ÂÎ‘â×¥1ÉèoÕ\n=\vÛ–»•~)§ùN]˜.ÑæÊÚœ¤q½9i¥üJäfšRrû¤vðEøqÚÊGH±àÏQÌDQê]†wn9@2K™†•ÇŸzíiáä¶¹}Î~Wæ¢Ý³¶Il\'|^XçI$v#ÃÌÍ^oZ×Š§«È¦©z/Ð“OŽû²w¡® ¹®ïcóoþª¾…¾SídŸŠá®ôvéæ?u„-§JC‘ö¾5o<ª%\fqÝ*0N•Lr7=v­ôEšò›ât#O%ÉÒËÄ(®5ä8_uEN×›RLs„]Æý5QÊ%¬Së^çÐ½RíSˆÙ¬Ù‰ÎÝí7Ð8r—Òsõ‰xÍ¯^Hîµ¶‡f,;FÄŽl\v\r4Ë*Tp¾#š*>We<ÜÕVyÜŽ\v„Ž®yæPŠ-œó›²}åe’?2árl½\vÚc„a»s\0c¼Ûü•¼nÑë4Y|LJú®¤òÜ¶\0 m\\HŠ\td?R7¿öZOà€ùÃgìÃÝ$²þh„‘†œ¬2öÃ\\þê‰Ù€âªæOaÕÐs‘–}º%|EåÃ) 5Äw¨Tá¸îFPšÐß¡Ø9]½°XÀç=à€àê¯´Hà>ÖÚeM^X¸×[²\vkl,+¤\ff$‰$Îž?£sÚì¡ŽsI-³`\"Á\nÂáœnv]—W–ÝŸNp.ˆnÝDbˆ\',z\'ÔÊ¶Ž=¸©y}}1‰§¿,\0³KæAõTµŠRi%Ðï|&P†)6ùl®í©R5z{ŠÎ:&Ôf†î£|>Ð§I\tÓëKyA´iQŽ2´Î[k¼Ž£Ù\"Ûä,±†eÊ6øŽ¡eÅXå}ÑôD¶¨Äìü>#íBÒ|Ú)ßU¶èóuÍŸIq3±ÑÌÈóÆÜåÄ[ƒ^á=Í¹¡¥ÇNj®‰C$o–tõ2”$«Ðã²6v³\tã|{¢[$oap™£&]ÞZª±dž6Ej¥Í­Ž(ì›ç±-,²=Ñè^öf/~×1ÐIâkä¨ãÉâ¦¢º“åÇáÉJDŒî±PÁÑ½žöö‡â¬(¬yb»¦¿r´¥âa“ìÓýŠßZ‚I$‚8Úãôs»²\vÔÐ=×æ¥Íêˆ0Uòd=-Šye±‡”µ´ÐíÔ‚Ã@Eºpø,bƒŠä³—$eI2\tøIsi\fŸí¿ø)H·+±îeâ\\Inc|¢ðQÉ6M$c&Û5®£ãž\'âaš70e‰à9¥ºöšjøð[Á2¶¦jRLŒéã³m9{vZÖØÀè/Ð¨fùg›ø„œ[ã«\"C8kÇ‚‰³‡9;å7\'š×uç¨Þ\\7uüVêE¬z‡T_z§4éZvÆº½äóSáõ;?\rr““j‘¤)Î°¨@*†ÛËù<™…Œ´Aï-¾þõ†eu1=‡· w³,n‘Ø}ðÌ×:±r¼>K jöæÐkB&RŠEí<ëô¾}‰½·¶a†\f±â\v¦,dmnW2W:F$„‘@Ñ\f\\£7TiR«ä¸¡)JÜx¶û®:/ßîzž&1ÌÀ2RçCºnVºœùžÐ]4„Þ‚ØÖ7™#¹2G„1Éó•ª»ý;/Üˆ‹bÆÙ8”É#ckÎØ‡‚Ñ•µM²»0\'HÉðR¤Rsâ½\v×UqÇXˆ¢.ÊÙþÖ„Äß«õE4iÝÍm¼ÝÓ1OÊ¤“‰˜8´?3‡Ži\\hyZÄöú«-éa•«R¥ÿ\0~ÄFÖ2½÷Ûq>dšYò¤G%šOÕþG-ŸœI-Ýzž4~‹Ú‰pãÏ%nN+»ý»’3‰¦K\\û¿íkiuDÊgj9.ºúW;Dþ`ˆûNŒI\t®™\\Öðû¹VrÎ±¶RÅç(ØÒH (ðîøð\\¼Zˆ(¤uòiääß¸¡Ãp\f \v=–ƒÌÐïYœñe•ÊÌB9qªM<1·²Â+Á[Á,q^TRÔC$Ý64ÛU»ÈKZö–H\r¸P££‡¡QfÏ(Õõ$Á§–É\']]1ÆŠ9»,q³•¼’K¾èŸ\0º•\"Ž\f^$ô\\±¦l†°‡¹ïµe ea¡ž¸Q&ÀãDx­JêYÉ¤n¶ÒôüûèƒkØ‘œÎsšÐê³í9ÔthÖÏ…w…Ÿìh´m6å./óéù¿ö:~&hâÌg!ù€\fÊÊ7ÜáÄ\n7}ÇŠÃ´º›Âå*Pâºÿ\0:‰Ñ)Æ°º@ýäR¶ÚE[^×ÇR)Ëxô²¦t”©FŠßXÍò(Ö]q­jýö ÉõwX›ÌÓèW¸Ë”TŸÜQkn\t++¹º…rhUFÚ”€.˜8w[¾Tøo“¹ð­ÛdÙ 9Ö\0 k¬yÍ™ˆ|d‡°2F‘©’5Àü%ÐÚ5|Ÿ:àvÔûÂö<Fsô-lBü\0PM´uôPŒ—*ù%vÆÞÅâ‡ö‰Œ•U˜7Jà[CCä£ro©ÐX1ÃéTpŸ¤ØÓ#ev —ÆZZì±ƒlöK©½²>õ­·; xqÆ-W˜Ã\rÒ¼sL…˜—vß¼vŒ6ü…—«tì¸Š)YËQ‹oƒSêwiË6hO3óHiÎugvóÀhÑõ+dô3(pj\vßÀ‘o±Ì’¡Úßù:«<c—*¢—=?ºýÙãhâ25Ä\v:×hy\r8é¯ˆÂÝæÔ(cy\"­»®WåÇÛìrkcÌÖ2µ½“˜p«5®„›²Vc¹+1‘arŽ6Õ%Ã¿·ý¾ã‰7yu-¬‚xñÓÐ~ò=ÖfÓx}R]Z¾¿ü¯ÕšUøÃùžf´hÜYw0;¿ÝêµÖ6°³™£Q–·#°ê\\èïÑèJG/@³½Š$¶V\'ˆ5]ý§Ã—š+fÇê3Ç:ÞH>?ÝÎÉ±ª#ù¡tø©`et~Ð°~‚œÓ\\h¯F£¹&yØåXÜ×ý9m-”ÖÇm1´40Þ•ŽÌÚ-w´\tåfÖ%ŒŸº¯uúöõü†g\tK^\\ÆÄØ˜Ð×9ÙšàóÜE¿1È5#V<<.ÆËZœÝ·}:ªÿ\0ìpÍù\veŒ¸0ï,=ßI˜gä<;ˆ<)?RU¯Ä¯‡WÇEÇ ócB‹Â´ë”¼_‰cµõS%JŽn\\ž$Ü»•î´¢k1îp§DÀ|@q#ãjýGSo6×Ó©T;(ä£¢¢„™Õ²8û–(‰ãÆ\"bI³ÝV”o,qQT?ªV4Å3†§°ÃÇƒsŸ›Š›òtþ¦”·˜è\0@\nßX˜}æÌÄ¶È¨óXâ2lz-féY´9’GÍqƒ¼}Ðáû üÔ”™ØÒÝÊ?kÏ;uÒ´Ð(’¦täî6ˆø%{iÁÔGõÞ¤âÊÜãlm‰Ï3œ\\â]­¿\nð[§TPË=ÞéçTŒÿ\0ùØò;£Ê|]ºs‰ôpRÄ¡“ÐÊöì!òYfy“ó@š=ùÂñø´K»8’æ“¾ƒC,4ÝdÖ‹&­ðâ6.ò&C!¤âËŸ&õÙdkÜ0­¶ŽäØ:\v Û\"Š!z\\è7ƒò|•»f}Øp‹{”owYû[¼Ü-\fÑwêŠ0í—Œ¿«‰c†µ®í£_U[U,Lµ¢•fTI’¼áèÑåll;Á²ïCîüVðäg)[ÛQ¨ˆEoFn Ù;„Æî1ø¶=¹šdg“¡`ä9Rô÷G—ÚåÈóhÉ—GoD8Ucîó÷ZnF|)v+ÍØP·´éM4U°2¨\v&óß|¹,š¨¶é\f.\" ÉI«Îu»$šæ{ÊÆämáK·ùD~\vdÆá›¹,í—]VŽï$ÿ\0Ecuúž-ž¤[0ãšñÅÐµ§•f%E?¨ãjŸÌ¯ÌªÄ”¢g6n;›:´ÈRÔ†RŠêpyâtÓUµ¨ùRF£Õk°Ò=—«šÞW”8Øý£ªŸ¤uôJiIO¹~R—\0 ¹‡Þá¦íÅ#}å„†­NŸ,Äß¤ÇëÆAïäª>ŒîiN/ºhï÷cÃOMõ/â¯\t\r˜;?×5—Ô†AÆ\f&÷0\r¹§Á´·rª(Î”©×›þ‘¶uUt{#t&Ig-ï2F>-rš=^O¨Èð1â¬o¼k§j«9½Ôw1è×‚¥IþC\tKó‡ÔòS&û”%Ž\tô¬‰¤Ó<µ+6ß©ª„åÞèË\t,xòZy¯©e,;[ØhRºö^4†Ð3²€ç•¾½ËÂe=3RÏT=+ÎžŽ6”dy‚#ÃÞHù) C‘rryÁúMùŽiñ¹™/–ýŠ¯Y8™pûOCŽ®cÙÜ(´hOâ?ª]öªGÄ®-•Ò\fa:bçofi@ÔòÍJNƒjlðþ’ãÿ\0óg¯õ_üPÕE#®oãž(ã1û·ò× rÖL›oÐµufÙ%ÚØ|Ò¼å/u¹Îv‚3¦§™\vX;‘6®\n8ÿ\0?Øºõ­ö¨ˆÿ\0(ƒëßè\'<¯Ä%S^Å=­4¡g\ny9àé~KFÈÜ¯©ÂqVjôàéÙo\f·R³Pê”Þ\rÎÈZKÀ£ÇFŠ±Ý§r³‰pzvÁó|—…!p\0@#‚æ.œa„Æ¸\v¡#ôä3w{œ<w-ÈëC$qì›a@,5Ã1øëø¤º\\\\wç“–?­Qõ5ÃÆ`\f‚RìlxÐIdQh©<[·ý£:\t€l[68Ç$?¶÷gÒŽ6jñŽ+g˜÷¬û8{ˆñ\\ùOÏüîz½>Ò\r¼ß3óVwR(GéòrÅEÛ -á+D9±ÖJG³†9\vGÓòMÊÍž)J.1õF¥Õœ6¯¯oïÝ-oà±©ü&QÒªÎ‘ä•çQéYÌ¸ê}@ù­áÔ‹!ËüFþ›äâ/q/Ã~ÌŒë¿\f(>½¨›ð°voæ#ƒ§ü)AêSCŒ‡U±«cÌqðQL³¦êiÝIáËñæM;0JO›¤Œ6‡XÆ¼ì“Y+ÓÅ¾­¶ZzÔŒà7®GãÆüôXÌù<Å¤ÕWbœØÅ*ÛŽò{lbÖ6Œ99b!4hÑ ÑãG-¢Ñ˜ù%}Q¦õ[.Ñ·gíÊ\tÊÞ]Å[x=VÅâ¸ªL¸©\v €\nç¸À×\nÿ\0ýüÀ<Ulj²HºÝâ•¼…±:ùXýŸä±5r:ÚIíÃ/ç¡ïf?°ÑßBüÖ¹:“h¥x’\'¶!˜–’-Ïahï#²œ­UÍçˆ²ñâ{Ÿ@tpÉ!®¶®–xÓ<þo­˜çHbË‹Ç2ª¦Íîp$@¹Ùá·\"üÏCðÉÞ6½ŠVÓÝúGæ­z\'Sbe¹]îù,&ÔMœ7e%ðøa`×Õuy€ ”›ýKmGw¦iÃ˜ú9š¹ò¿ÜìKëáJÖ£ðYç´Îõ(ˆ+ÏˆòVL¡Þ¿ù~+x‘d9fúV¾Þ_h-°¯˜½ÌOðåìÇ=was6×Õxóª?\vø®ÎgS‹8Z>c8ý¿ôÃ¤oÀ)“4’cwj·#c¨”|„Ñ–ÔmEá‡Ó¾µËoÞâ~Ai‹™HÎ²^XG²&:Ò¨\riN]ë×CË|aqeŽ\n³G,öŠÔÞÑÎR×_5”‚—<zŸW1åÀ¶€1 ;´\nö/¤õ:xS²Ð¥.‚\n€ñ+ÃAqà\'È >iÛ<~%Ò9å­úI¹’Òt²y‚=í93§\f7Y\t\fW}ÐÎÖAK?ò,¼Ÿ.—ý—n0EBƒÜÚõ µÈ®$¸r(ùPïl8ÆÆ;q=¯ª×-u…œi:²¾¶RëlêÃiþQ³Úžøˆä9Ÿ¸öz³Ž¶ª9yÓY•.ŸÀÖcäªØCé0‘òx\\­Vïþÿ\0·ú;\n—S2‰•#ÿ\0H«iùK2‡Ìg¨YôîòjÕËÊKü×ùœ\f#öcqø_þªŒçM/¹6£ˆ·ö4ÌNA±¢Œ\r@ðâH\'âWSPþK<Ö“B)V¼ùéˆl:Áž?×àVÑ\"ŸS‹œw¬ý6È)0s‘{šäã½‹_Z¸3.”Û!ÄiÇ´ßä»¥Ä_Üàhä”ÝŸ<ÊÂu<kä)IÉ3ƒjÈøÛd\nã¢•ºEXGt’†ö«ï\0=V‰ú’ÉU£è¤à¬\vßöå#ö@þ)‰pÊù¥rõÅŠ£†c_NÌ\\G6‘T}%>§/X±Émš¾\n42;½VhóÙpã]ÛÒµÚUhã,¦½ª[$O‹¾†·Õ¬Ìv§÷ê­b~SÓèdž$»µ!p\0@Dt¹ä`1E¼\'š¼÷n¤2—q8×‡[HÕ¹\rò\"¨pU”:RËåUì&+7Ð÷ê³¶í™Ë’*;lñ²ö˜‰^ú —O‰[J\r®±çWr&¶†×ò¾HÝ¤ŒÈx‡:«\\§–¡Cá´XyÓ|¿QøÝîSe`\n\'è›ís:z\0¬bT¨¡©’žMÉu zãöèéÔC\rù\\EC™y¿ŸrßÃÝ_?Î\n+tyQ%å:é­ç°jB|ÂÄ’SQ’ƒjTR¸áêÒ2Áç¹\\Êp—³6\r½‰iÙ‘“õÛu›ä\n¹ªü&ŽŽütÊ +‚zD†Ã¼Iº[ErE‘¤5™á²´»@Ò|ƒRàúÑ®Nq´»®°ñ\0a¾&Ç¸q««¬~DyÝ*ùˆùÓFµãó+h®K’’q¢;à<Ò*ã’RLë¹Gé~(—»‘ô7R²‡lÀÈAý†r[ER+K©Xë\"Rü{Ã¾ cG•_âT˜àk$üwìW‚ˆæ;Ø”†êNª·Ÿ¥ou4ûÁ#ñS`õ;º›f‚¬@@2Û˜/Ê0ÓCu¼‰ì¾YšE¬0•v¦Å8i\v1½¥¤¶ÀÐ×}‹Q½Þ„êXÿ\0ä3\r\tÕ×WWgåK]Ò6O\vëcØ\f\vnW]ƒ`ê\0xqZµ9U“,¸b©\ržC›ØC@ÍÐ[$ìÒY¡\\·QÛ\"X0RI(#} sZEÖ°6Íó7è¥Š+NIÕÏM¶ðÆcño±Ý|CR}åª).KÚeäà®þUfÖvðJ²Ó°v\'½aBŒË;‘ÉØ¢AÁ«.&°Êù]Í›ccŽ7£ìx²ü9!Àqú2áÿ\0Z×>?qdðrÛ+pãXà<W)ér/C­\rvÐî8^ïeŽ>Acúl™\'õ¸¹á2ÂÓm#Ì,­>dø‰õšwÖG8ðâKhÊ÷µ€ó³­+:©±i2]È¯“_mG“¿Z›f-ïäùô‚!4ùS=Uü±ÜÒìspÉÆädÛn&Föµ®³•¡ÚP€ù-ã}Ä1$)Ó=Àêx<ˆ?M«¨§NŸ\f{Û¼oê;+¾b#Izäèö38ÆàšçŒ¡²±£1p~^$Q­9,¸§Ô‰áÇ“Ë4eôªVœ²DÛ-7â\nÀOÔ©/„â}=?¥p%»¶W\0CÜãä@¯TðªøF%Õ¶x‡ob§xŽËœx5/w YðUÇáx=M÷ª¾âp˜g?*i‹Im‚XÐ;-5¥êM-’K¡b8áPT]ÖM\0  8Ï„ŠARFÇNhpø #ßÑ}žá”à°äk¦æ:×Ž”±HGC¶gÿ\0_…ÿ\0b?à”€ó\t°°p›‡\t\tû1§Ô wÚ2nà‘ÃêÆò=Í%d3ìl43aÜs3³>¹æÖ¯¼ª®ÞO±ÚÆ”0W«m<‡(½\\.XóSe’9¬˜¡ÆkU£•Cæl]H<4b¡âŽJãí‡ÿ\0¶9nVUÖcÙ4\\q]Ùï6!Éþ™,Ì4hÛQQòyƒ¡xxÅ2IGë}HYJŒ8¦!èNÞÜ“;ÎOä²ù1±;dÃ‡h·‡\v%ÄyÃÜ†R£çn²vŽóiâƒ‡²÷Æ4T€ â£®lž\vÊS¦{œlÙ[S8³f´-K3Th½Rm7jB”ïcµ¢*3êm ×},‘Ìú%\rÍ¥ÑÜ\'\\F\tO9\"cˆ¾4â,!›\"›ÕÞÇÿ\07Aû=8 ²oglŒ6VC”Q±ƒ÷@CÔ \0€\0@\0 8âáÌ?Y®oí\n@|™Àâ0S>\'[\fNs\réÀŸX=ák´guCN!ò\\ðkŸý%”æÍÍøÿ\0ÚÇŠ{ß†ð~¼¸¬lîmKCuêfHÜ4Ø™ZFùÍk/BY‹®Y‰ôYŒR\\åÊò;f¦¶\"\0€B€Ä:Äè$Ç$à9ÑJKóñ\rq$¹®Ê- iDé]ê)Æ^„‘Í}H¤ãº5+,Ý¸9dkÍDœýQ»Õa}Æœ¸\\.\"ÿ\0­B’MÑ˜j0îVÕeèž,ŒÂ ÑÝ™Í¼,ÙHËƒIæƒ~WÁ|êƒ ¸˜ñß•bc\rŽ&;%ßjGP¶8›_¦Dn{º’\0€\0@\0  \0€Ž\'ŸÞFÇþ“Zï˜@2=Àž88?Úgð@£˜ü8?Úgð@v‹ca[ìá¡Q0~ RP\0@Âl$oöãc¯Žfƒób†íØ¸Pla¡Â6‡Q@Æû-hò\0|$uC\" \0 \0¨\0ˆ@@@@\0  \0€\0@\0 \0€\0@@*\0@\0 \0¨\0 \0€\0@\0 \0€\0@\0 \0€\0@\0  \0 \0€\0@\0 \0€\0@\0 \0€\0@\0 \0€D\0€T \0€\0@*\0@\"\0@*\0@\0ˆ@\0 \0€\0@ÿÙ","botalon","activada","bebida"),
(9,4003,"refresco lata","cocacola lata","bebidas","mibotalon",5,"$","ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0\t)!*!7#%*7../393,7(-2+\n\n\n\r-%&/6--56----//-70-501/----05-------5--7/-----//--7--ÿÀ\0\0Õ\0í\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0E\0\n\t\0\0\0\0!1AQa\"q2‘¡#$3BRb±²Á4Ss‚’¢ÂÑáCcr£Òðñ%ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0;\0\v\0\0\0\0!1AQ\"2aq‘¡±Áðá3BRbrÑ#$4ñCÂ%ÿÚ\0\f\0\0?\0ÜP\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@áZî“.{Z²à#ÎPMÞ;\"`\\R\'£Áû——=ÿ\0Õ­ÿ\0X=ésÛ¢ñ‡B…ßÙzxyÖÚtYé><ÁþËË‹?ëöŸ®o¿û%Ñí¦m»C¥z_ÆßÌ¥ÅŽæTB‘^žH\0€ \0€ \0€ \0€ \0€ ÇŽqÕ†m\ræ®êo¢ÀÎå¤†9¬$¹£9v\"\\2Lä K-ÇcCAá”cÊ_Y¬ÕíŸUº÷Ônê²¦@s¡²@)€FS—R±å§Ä˜´F\vRñ‡›~å×dmÊX^Ã¨Ï½¨®žå²¸•UôbO™o{ÞoFPÒæN‘Qÿ\0™IV{)h¸Þí\'ÜŠåÆÚ¨d¾£Þ9Ôµr²âX­Aå¨¼ªõÞç@{‡6—g¬G‹9ò÷\'+>&õ˜]^tn~Æ—c»ÔÎmÅá_¸Å‹þp7Å”ó%16éß}ŽRt©ÇéÉsu­Ü|nfß­Z÷»®X¤E0Av`œÁˆ\0rZèÖ”¥i4–Ž§F’«Jö½ŸWARŠ0€ \0€ \0€ \0€ \0€ ›Ú.Øpc,hßÜøs1‚ŽxœO\0` îKEy»jGk.4N:ÏW¡\fû^åó«‰ï`eîÞ›Ëši5Õ z9‘à\0c®g‚‡R\n×:M7ˆ‹¯%lÝ®öù#ïz6s€²¬\"­¥\"î]ãXÖ’yÜÄš²OŠG¸ñ½joðÍÛ±¶ýnyXÙÖyk)´—8€8rÔg×Ži·°Ê­ZpNRy#Îæfb¦C´v&æ¯B±wFP•9Y©eÚqm\vGSqo‹@siÄÓ 5ÚðÏ–axÕ‰j©­l¼n²ë^‡¸¨5ˆËÎW¬‘=G²×6Ìv©lûwfXdøß¯óOñ/\r+ÇTâôåN²ª·ú¯¡·,j[Ö©eR‹ñ6D8ÚFGÌ­S‹‹ºÜXajÆµ7N§FKç¤l=¨Ë«zuØrxÌq9§¨2ØII]Î\'<=WJ{WË÷ë#@@\0@\0@\0@\0@OiŠãh^WyqÂòÆ–‚)µá“/iC@t¼ó‰JÒ«)3¢Òä°iS[lßkWõôGÂ¹©Zâý”*\\<µÖÏ‘/î3L&Aƒ‘Ã\' µE¹JZ»^Îï¡a^”(aðî¬o«IpÖK>ç|úÉ}¯6%Ž`ªÙ¦XHoÇ†\t£„Àkå°ŽCP²—:¶ß™pÿ\0ÑÅVÖOUç}¼Ûô¯½Yæóò;w*±5ZÇ7\v2Ò\vg\"Ù ;‡þç¶4i(%$î¼¼K5ý;jóN°Âý0\fôw\"·ÉFY2®”«QçSwEOklJôžÊui÷öÞ‹*µ³V„‘&M)Õ¹ˆÌa Tä²y¯4[PÆR©8KR{ZyF]üx?”é©ZÃèÔcXæ‘£ÀöŸ¥:ÁéÔe\vL Ô¬ËÌéÔ¢ªA¶Ÿ««¸ììßi>–ÑcŽ•Q§–˜¾ö…¦ˆšeª˜F¿+OÛÜ–ÞÊîvÐ¨G¢{²DHœ\rÔƒÓCÁy[¦ìkÑŠ/íÏÕ–Ìj¹•®h}Q£€q–¿Ú0{Ü3Í¢›Š•:u7æ»¶¯sBRÎt \0€ \0€ \0€ \0€ !²«M®»“„wõuÌåPÉÉ¼ÕoæígcR3j•¿*ôí+¶n}kúmµq\\Y…ú\0öæ\\A–†ƒ<óõá¶Õ¶–Uiadñ\vš¯—SÝÞËÅÖÇ§´±¼Bú‘â‰É¯pÄAÂø93ª’àªuKyEO<¢Þµt^õózÈöÙ©ˆS¬\v.X\0k«À€ÏÉú…ìo{=¦¼B…œéç»‡gºÜXî(Ó¼a¦ùeP\"còâ:jæ”ÕžÒ¶žZÑÎ%jæÒ±¬Ú5©>½»Œ\nŒå“¡g‡ì¸yzbêSv–h±«GŒ¤êR’E¹ånõÞT{QºsîšÞåÌî[æp{¥¤F­ÈÇRDi^V&èjJµ¯­»…¶÷ýÝ¹Á@ƒ Õh$HœnŒòbä4XC)\"F.ž¾iðoÃ?bÏ¼DÚƒ”{˜Þš¬k}ã5hÜ°pïõe³ÏÓ«~Á¿šÝ‡é2—ÿ\0¹ú2˜sa\0@\0@\0@\0@\0@LÜþº®±§xUcü]¬î#š¥oÊ½¾Éí©±÷W•2mDòÅ%Äu\rl~òÛBÉ¹=Æ¿ùIJ4ððÛ\'ô^oÈ¯ÐÞõ/ŸtÙžéii$µº\n`há3M§)kko,\'¥O\f¨>ŠYõ¾=\\M[díªŒ\f¸hmA¡ÐöN­=½K…E5im9F¦NTãóoÓÓx¶=GRÅL—=„‡2\"02Å¬,§lŒ0˜¨)Úy\'áþº¸•Í•¿…•½èÂtHÂAà*7€û^Ñ©Z©âÊeŽ+BëÓå°Ùõmð~Þ\n·i;PV¸k{§Suæ’ð$¸ápÂXO,Žž\"°«-iZÛ\tZ\'\rÉRoYIK<¼7¥ßØT-Þæ9•`Àx3öšCµæµÝ\"ÏUJôø«x—½ãwËuÐáiÉ+}ã+ôjþÒ?7²ÃÙàùucÿ\0Dðô†œÿ\0ÊÝ‡é2—ÛA~§èhÊaÍ„\0@\0@\0@\0@\0@bÏ›À\0ùúÄÄÉÌÉ“\0žj·Šëgnšþ“oðÇÐòØµ]›}BƒKÞê”L4\0âÉñxAÈK#¨+Ø]ÂQ]Fx·N–6Z®É)xîÍö•ºUiVÁR›šá–Ò\få–~k[àZNµ:”õ¡$Ñ~Ý›sQì`>À\0“î\vu5wcÆÍB.L¶ØÞ9®cYX8\0[Q®o†sÀsÏ%HR³²e=ZJQr”m–ÔïâFí]íÙæ¡£yD±ì9w´ƒÚ`äæ˜&³xêÁ»Myéh¼^¢©†Óá+>Ç»Ì ö¶­n«S4N,-!õHœå­ ˜ñ{Vš²Rw‰m¢°xŒ=9r¹]ä¯âþp*ÐÃ‹™ˆúQÎ85‡Qesíbí´jc©MâN*TèÎ´ØLÇ£æ%c7y_©ð±Ô¤ãÂR^oÄ´vuú}Ø3ñù)~“+tÇø°ýÏÐÒ³š\0€ \0€ \0€ \0€ \0€Å.Ü‰=ýbÃ™33¯H÷ªÖ¶ö³¸ƒû¯ÛCósê´Y^H%©LÜ·sj6[Õ\"§îõYG¢ïÕ~Ï¦ÓÝ%<E+miêßf²³Ï÷.oyñRæ¥*Œ·¼&½»„Ñ¬ ¹­?îQé,9p€V7¶RÍ|ÍQ§\nupüÉ®”w>©.<=³é>Þ¸\ti®9¤Ò:}ëdV«+«J5©ÞÛwpÿ\0EÆ¥³kRu[v±µøbŸ\vŽ±`Â“e%xí)TåJj›pêßó—ßUu:´¿¦óMÆãJD˜ÇIäIg£àÌÈ¨mÛ›?‡SN*pxŒ$–²Íð—T—¹ä×aYÞ\rRÒáÔjA#6‘£˜tpö\"\nõÅÅÙ’¨báŠ¢ªÃý>{C‰€Fq›€èy¬lyÞE±¤[“2ßå–þK<Ñ¦*Î¢ýOÏ?ráÙÛ¾][O˜`È¬uOU\'Ò}…F˜Ë\rÜý\r!K9 € \0€ \0€ \0€ \0€ \fUó7™Ÿ­ŸñŽüúª×ø»YÜ/ü¿l}¸[]¶÷¿ÕY¥VtÂí\tè¢W´ä£,öt¶UðÜÎ”yË»éæLmë›[º†Ö³¨òêmªÒö‡k2Êƒ<ÚDŒóÎ=œ]\'mÄ,%j8úzùÆªY´ìþ©õÞÛ\t-÷\\ÜS\v 7&µŒn@9\'ïË(=vEÄ%‡¥&®÷õ¶þp%î®)Qt¶­Z.iŒE¡ÍËƒšÜãÔVÆÒy;¡\tÕV”T“ë·ƒgíÎù²oÂéC]óué|eÇ/¤Ç}’\'%ï/n’÷F\vDJ«g–kl_6KÙ®³>íoÛÞU£Üb!ÁÏ-\"q–ÀX}«UI©»¢ãEàka!>W}²¿\v÷fUª:\fÀœÁô€Ò4Ô:ñÏ’ÖN¦®ìYí¾nßþ¹ï?˜X=Æ¥>ßd]{;iøusÃ¸`áõ§óÕIÃ¾s)´ÃþÚ\võ?CFSl \0€ \0€ \0€ \0€ ­¯#^þ·ãw#Ïÿ\0Šµþ.ÖwÙJÿ\0–>ˆ¦—€]–D‘Ï¨×8>¥ƒW/5[HÔw\vy(Þ[üòà!…ßî4h\'…Fð:˜eJ¥5%ÉÌäô¶¦¯Ú°ù-öÝô2:î7r­¥@úeÏ¦-p‚æ‘Ë9õõÒpwFˆcá‰Ž¬ìŸ\rÏ°?¼hÆpUA\0ÌpÄ!ãÌ³›=»H\v—Â¾nqùÃ4eûFâ­ÍJ\f5(¼ÅjfpÔnQQ„èýpÌE86™ÕR§\feÕ¢í5Ñ{Óàú¸®òz6Cmk†6]L°>›Éö8xNC‡åÔ/\\\\]pØ§‰¥¬ò•ì×ˆ·4».@»X\00³×©•á7gäZm‡ÄP?´êgóXKg‰­ýì×R÷.]~_ö\füEIÃt™Q¦?Æ‡î~†Ž¦Ð@\0@\0@\0@\0@1[KÏr¸«‘Âñ¼Á˜.2\"\'ÉW~nÖv±ÿ\0Ë\'Ñ^‹¹|¹E©©óX\fv\"Ù¸Vµ*¾ÍLporqAAáöµ}Y¬©(ÊV‘M¥«W„J1º],·|ùbÿ\0»{Ôè®$ÆB§Þ|ÇùR)VÝ#žÆèÕÓ£áüWû\nÖé¤ƒô˜GÝ˜[eN3 ÑÆVÃÊÏÌ©_ökãÛÜÁ0f5\r8 NYÇ\r\nÒðÍ¾‘kOþAÉÅêRIöúå2\vµ—SgÁ¨°ÆºZŒð†Hý×BVµÒFzN\\¥Io~yßÕ:ôqË)\0‘ FC>=„ËºRáÄ¶Ú‘Ñ<ª<j8²žžÍ:/æ÷ÿ\0†ÿ\0¹šý+ÖE¿³©øu~]Å?n\"·áºL©Óû4?s4e0æÂ\0€ \0€ \0€ \0€ \0€ 1ª§Ã{ü&®¤ýjœºýêµþ.Öv±ÛFÿ\0‘z\"’×A$3tAˆ\'ž«_<ì¶–ÎÎ6}\nõ+¶èx&CÉ»%Ã\f>|$Îœsm¥Éµ-…>™¯VŒ èmmåÇ,òÞ[n7f¥³Ã€5i\rHÉÁ¿j4ó}Ëc¤àø¢šøWº2òùÔyß¾­÷Öõ‚bx‡}ZÐýÇÜ’n9ÄÊ’…YruV6?Œ«m\rûÚ-†š ˆ×\r,Q¦¡¤æ¾Z£[KZz5¬£Ÿl­ëîTo«Õª_YÅÄ=ù’âeÀd$úDd$,WMÔ§M*q¶KËêrŒ8xâž‘|ÊôÂÖê.öylêg/Ò#>´§Û’ñ®gy_æµú?ú-}œ–WðŸ™g‹<óÓÙÐ·aºO°«Ó?q\f÷³ESp \0€ \0€ \0€ \0€ yðÞ‰ðŠ¼cé?óÉVþnÓµþ/ô/DS.Ü@Ã\'\f“†LLœð2:Ö´^RI½kfOv}µ©Q®úUÄÐ®Ì:gáqäœøLð[iÉ\'žÇ“ i|4êÒU)tàî¿†•I·V\riï­Œ—áA‹èþÒT…­Ofhå¤èão›S_vÿ\0^ÒfÆ•¥|o`pÔo6èxÃ†¹æ¶¥fˆUe^£-Îéüô1]àØäíkD‡ÍL,3:Ÿ¤F‘ÇÈ¨.6–ªâw\\RX>^¦Y]ý;w;÷A”+²ÖŸ¡B›GGøÞóÔË}€pYÍj½U¸‡£§*Ôyí›~\v$»³+Í¦c <ø8ûÖ=DÈ¾u–ÒùaOÿ\0É?Ògí–ë1¯mý>ò²rÿ\0ômú;wÜ°ömúmØSåõŠÙ‡é2™ÿ\0¹šB˜sA\0@\0@\0@\0@\0@¥ONó_Ÿ­ï¨ãË5Xÿ\0k;ˆ»Æí¢)•N\\}#Ç!êàL{–;ËÈíî,[Ÿ²)VuÅWâshSÁK\':Np\\MÃ—¯(GZ÷ÜVéUJQ§Ù9;]îðâi6[E¶e”»Á^Ú£f™^Æé\f‹sÓÏ”)Q–¥•îŽb­‰Nzº•Ïƒ\'­v]©&«\0‡´‚ð9§P[§©mPŽÔWO]-I=½w™æîìêLÛ•XÌÛIµ\v\fÌHkc¬c-õ(Ôâ•[-ÇE¯9è¸ÊY957çk‘]©ì¼\"ç\"Ú­\r\"`ãkpÈ‘}c5íxÚWây¡qô9ñ}Öy”g6eÝc‡žšû¡j.©äìi\fˆü€ÿ\0ÜÃù,ÚþyI9_JÛôû\\—ìßôÛØSüEe†é3V™ÿ\0¹š:˜sA\0@\0@\0@\0@\0@­hï/`½[ÛÞá¤ªÇ¶]¬î!}J7ü±ô)ôœb ÄÖŽ2#\'Få<9Ž«\\Ég›ô$·7m>Òí•[˜>úÔÎ£Ï GPÈOQëô–8œ;ƒÛµ>\fÓ®÷m•\0¹³ ÓxžïHç‡€Ïè#Ô¤:I­h¥<t©·GµoþŸörXÑsª|£\\P™ìL|¨ßªF@ð\"ecwªÍÕd£^\r]x5ÁñþHMÏ¦mö»¨?\'à¨Î†0¼@êO‘XQN5,úÑ3JK—ÑÊ¬v]?Uïb¥½›C¿¿®÷“îc\0ÎÂZÑ™2Ÿ2r+ÉÉÉ¶MÁáù,#­]ö¼Èzot‚\"Z24EybBŠÙÄÕÒ6#\t9‘MÇ©}P©nšþ‰ÎRwÒ²·ZðVö:»6?-¯ûˆ¯0Ý&g¦—öðýÌÑÔÃš\0€ \0€ \0€ \0€ \0€Äk8w—kU×_œ<Àë\n±í}¯Ôî!~Ní^‡îìËRÊõîA{)º‹\\âÜµG4½Ä\t%¡º\re#f›–ëy’q˜ŠúÐ¥G&Ôžj÷ÕIÙvßi5oºö´ï.Dü)¬ +Ñc*\\×:\f¹’IoMds…Ÿ&”šÛ•ÈSÒ5êaéþå«&ÖÎçÇÈ´n®Óch<Ñ×Ê¯ÅL¹ÀËZøÑÇHÖÚSZ¼ÜŠœ~NªUyÙ<Ò³·¶dýÉk½ï¥HZ•F<jß\töD…µÖKj\"CFN§ÝÉ5Þe•¶Ù;Y—¤ƒY²$dÈ\f?ÉÇœ¨œ¥ç­Öu_d_õï\f³z¾{}H\r¿OåÃ]>µ‚r.\rü‘«6ºÍØw­†¦ã½#–•ò×f×@Ã˜Ìù/È÷\\×7†§³\r1£Eˆû.`öä¤ÖV§nÃ“Ñ“u1úï~³ñLóìÖ>q\0ÜÓÔ‰ôŽ±ò\v\f7I“tÕþÏNÿ\0™šB˜sA\0@\0@\0@\0@\0@ËG{{âŸ­ bñ§)9aÓ^U­æûYÜAó(åøcéóyçÙû©T¯ZÎ©n©¹¹\r*°—0é\0Æ\":Âö•›q{Ìôº©\npÄCm7~ç“#ms³v–mÃQ2Üð½ŽäNe¤hOC¨X«Ó—Z%MQÇàòwMw§ü¯™½í«oé2µµ\\12Ì€ÄïH×õök*c\\¢Ö‹9\nu£§Z7ëùµux‘ô6-zÀÛWc€\r&•\\þ-Ù@“~ÏE‚„Ÿ5’%‹¥MªÔž×šâ»7>³(ÛôJ«é<CÚèx×1×^$úÂŠâö3®ÂN5)ª‘ØÖG¾÷ŒU©Ü~¾:‡1éáÀÿ\0æi>µ²Y»ñÌƒ€æÂT$šî½×“9÷Zß½¼¡Nñ¸7Äã–z5\"¯$aš§‡©>«xåîj[äÿ\0¿«éþ)Ï®JF#îÎkC/î—cô<{4ÊëŽ•>Z“ŸäµazLŸ¦’ä úÙ£©§4\0@\0@\0@\0@ˆV?{ûjÜµï>þŠ±í—k;¨}ÝÛB§JåÔêc§-{^×\rAiŸò±Ì¸tÔá«<ÓV}æÂmm¶Ý›+ˆeÃOÔ:3,:ƒÂg˜SU£}çÊVÑ8‡Içæ¸®½Ïý2½bn¬«a3MãQô\\Ùö9¿åhZÔÙaUPÅÓ¾Õæ¿‚ÌÝûÂÏŒ£. èÇ\'\tµö­ÿ\0h¶ÔU½­.d²ëú>÷mswR±lÆ@’\0hîÞ£JZÍ³¯ÑôiÞÞù[nØÿ\0¦XT<ë·?ªj7Õé{VVæEö•ô*/·W‚ý/ÊÏØ‘ì¾ÆkT®D†7á.vg8:\0?‰m¢³¹]§«Zœi-îþ<‹FýÕ‹V­Y¾À×Ÿ¾¸—Ìï è(ß\'Â>èúìÌü®àgóTÌp’Oy}Ë\f/I’´Úþ…7ÖÍ!M9 € \0€ \0€ \0€ \0€ \fm¶½å[òÚÕ@ûNïLœ°åêUº·ríghêjB‚yÞ+Ñx”ý¡kRÞ©c€ —z.á1¡BÁ­Ì»£R5á¬º>\t×Û/³®*Pq\"\"£H†¼}R\'(àî†³ì\'(;‘qØXâ©8Õ]œW_ÓâÙl/ì¶(ð¸ŒË¦ÃÌq¨ÕON5ÄÕ£ˆÀÎû:÷?œ}­¸¥ÒhÕý×êoöZ§‡¾ÆMÃé…¼‡ñõ*ììÊåÕf­ZlgÒÀ\\çÎb\v@÷¬[Ë9ÿ\0È¨Æ©Å·×d½YáÚUj,ø=«G†‹KœÐ@ C[L©9%v•¢·4,jMÔ¯-²v¿›\'·;g÷¬içKÜ9ç¡Ô·Ò¢Sé,G-ˆ“[K»ùy‘ý¡UðÐdÄ—:L˜5ŒÝZq/b,ô3©>ÅêwödGÂî#?Š§™ÈÄž?ÊaºLËMß§~,ÒÃš\0€ \0€ \0€ \0€ \0€Ç­î©2âùµAøES ºp÷ŽÖ\fg Èýõ×´¥~,ì§Nr£FPyj®;›æYÕp«ðŠ˜É\r9†À­>øIãôx¬%fL¤ñ4âéòjË><^æ÷ž–[“œpÜÓ>&€KiæÜ„ƒŠ@8Ó×+ÝD÷žUÅÔŠçS{:ÿ\0ƒÚÕÎkÁ‡\fÁñÌ‘¬ÎYA×–P½Y3\\Ò”ml»‹\v7Îîƒ† ûmþ¦Ç½måæ‘ZôU\nzìÉµûH½-pe:tøc\rsˆ\'”øgÌ/&Oa.‡ü\nšs“}Y/©ºv¼¹¨K€q©T»<B\"3Kœu˜4ã­?Sn”¯\f% ­••¾nYöš“N|}sùðSŽ(¡oÍÀuÖ¨Ð\"~‘—O±ÍPqžuÚ›Ž[ó6û¶{2ÃÙ{¦êâ\0Nœ¥ÎÔú½Ë<.ÖDÓ™Q§Úý%M9 € \0€ \0€ \0€ \0€ \n¶ñîu+‡º«æ=ÃÆè‘ƒ\"|Äš­S£;“ðÚFµª¬×¯õ^&y´w:ƒKš.žÂ‰µmÜ3®2Œü¸­/\rÁ—Tÿ\0ä­téø?f½Èú;.¥1\f©mS¨ª\'ŒHáÇ%ƒÃË¨Û-=†¨ï(Éx?tuÛÙ]“ám#®ú‡5ç!P=+‚kl¼>§­]´œ PiÓéƒÃ<çš:5ìt¦=²ð\"®7Jü™}6´g«Û¬e”Ÿ/ì½ä$Hÿ\0¾ÂEeÝº¢•¾9¡îñTtƒ.àÑˆÀ™ÒTŠPÕ]g5¤ñ¿k­¬º+%ó¬în„ç]ƒ£Ay÷-…qÇKumï«9ø«»<Dàî˜g›œ\v .«O ›»eÅ-3R5NœVJÙçüÍÞØ4,é–RlI—;‹Rs>µ¶ŒVEv\'W-j®þÝÄªÌŽ\0@\0@\0@\0@\0@sÜÙ±ù‘ˆÄ\"c×‘h\nÖÓÝz¯2;‡´È>ÐHöånGÒÝNÚ‹¿é¨ñígîK\vLÝj@gbÃ×¿wþ!,.rÝî©\'âíÏ:¸‡³\nX\\ñnç×ýUïûÂX\\–³Ýš ø»¦\f²§Lh8K‹’Âå’ÊÍ´›…¹ÏŸšôðé@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@ÿÙ","botalon","activada","bebida"),
(10,4005,"refresco grande","cococola de 2lts","bebidas","mibotalon",7,"$","ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0\t( %!1!&)+...383,7*-.-\n\n\n\r-%&-//-/---------/---/--------//---------------------ÿÀ\0\0á\0á\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0A\0\0\0\0\0\0!1A\"Qaq2R‘#B¡±Áðr‚’²Ñá3bc¢StƒÂÒñÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\05\0\0\0\0\0!1AQaq\"‘2¡±ð#RrÁÑBñ3bá$ÿÚ\0\f\0\0?\0Þ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ðù¯´®r<6¥ãyUÓ{6¸(¾îò¸¼N\"Ú\tÏHµ¯ŒúgüÂ¯µÉAöð\t®n8þNžÿ\04uN\'›±­àÕ¤f/ùõ±²|Â8Š«Á5ÐH§k¥$¹îY‰Ìe‡zÍ-5žÌÃ× \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0k”ÖJ´Ü*êŒÝþªnN.òŒ­´“]ö3¿†¼Ëê#Æ4«ËÓÑ˜tOàæ½ÛéNTkSÞúRnP·•Ù%tfjø½5\"c–cìÝ\vÁÎŽ\rJ¢jtéBOìÉ.ÒôeºF!ƒ­h¶¤ÚGH€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 p¸²©Z´¤’©.ÄTxSŠQ‹sãw¦þ¼]g²¬ß,•J2„uZñr\t-Öþg˜{”¶«œ#)-2ijW¾™sWó;p¼\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>2ªJ×µÖïá6y/a\\aee÷ïóï+SRV’ºãê¸¬zXˆÂ¢¦ä”ªêœ\"ÞòÓmVù¡³^\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*éxŠïhí¯z­GîÓ‹û’o‘äÎR³iÃESéiŠœêÏV”fïS›‚„o²IYÙpßºå\rn&+´6¸O\f¶¬fc»W3Ä¯{‹“ç|Uu¿­òüH#_RÝÚñázëÓºÅLËÅc1iÿ\0Õ×ÿ\0Üê5oæ‡S€ÐÆb°Åg¹¥>ÕÇ-;¨Î¬§ü×OÔ³§¯ÚÌ®#‚ÄfÙìË§0Ì¨ZVŽ*£^µûªÅ|/»“ºî½ªÏ›*õÄìö‡N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ŠÕc¹I¥§)6ì£®Û|•€ç^“gÓÍqk¿Ñi757·bûÕ’ø¥dü—\"­Ë\rï\rà¢Øµ™z¬¬¸-—õ2q™}5qXCc+nË´®Èµµ¶Ã­c¨ª¦¦¦Vc¬+L¨Áãë`q4ñ˜wiÅ»¯³RÞ§/¿©6–§fÃÅ£=Ý7ÑÜæž3\rOEö*Æöç\tp”Š’iù\"rÅ˜Äá$zð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0×Û‡H,0”ÝªcŒíË\vuŸÄåø§#Kb8]/‰©Ö™5=½·³~V[/Œ}yæœ>³Fya!:nÖîæCK7—žÍ®]ÒUÔ»WHÿ\0*$¬\"µÖðònKÑúÛ¢<î“«IJ/ÓÁ¾6A‰É=ÃØ7H],M\\¾£ìVÕV•ß»Z\v·ûPWÿ\0·âhéÛ,n/OÍ\rêJ¤\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0uö«xŒâ¤>Î4¨G»‡Y7çª£_ºŠÚöÄ5|:½e^[Jð—+Ê•5ë+½¹û«‡y—n­¨¶É|Ç\r¢\t4µ[{^Ü9wycw±©—‚éD•—2þ„*êß‹ÌªÚmw(ÿ\0*&¤lŠú‘•Ìº|_3ËÃÊ[0•…O¿nÿ\0×\t‡Ybáó…ÇPÄ«®®¥:²·8©}bõ×©kBvTâ£5u’e¶@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\09‹¤¸jÑÍq—Ž«â+4ÿ\0Ë&ÜW¤Z^…>\"cÍ»ÀèêÎœLWff]E¥ûÑž÷·fû¸£5†—ÂÕþ•üV/.4ã²ßÞàø=ùn\"µyðu»Gæóyî9F=CÕÜ–ýü/¸³£Ë\núÜ>½«˜Î?Ú3‚ÄÍ¹º2J[§µ¬•›Nü\të4ˆê­n‰™˜äüãý¯á2úñoUEì¬×=¼yÝ|Î5&\'¢M>[‡óöÌŒ*Y^¿çÿ\0Â,$þV?âÎéNQVƒvNí~¼\ttqº·£«ËŽW[eÑj•5\'y(A7Þô«—X’È\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ð]$ÃÊ¦iˆ…8ÊS•i(Æ*íìŒýh™´Ä>×€½tøJÚÓˆˆëõeË_\f•”©ð¯j—Œû3Ž¨IÇìÊ--ÕäC3j|³\tk§£ÄLêVÓÛÓ¦ñ´Æ{ÄÇÐ­žÕš’j¨*NÊK³¦¤oïníV|n·½¯¹Íµm?¿ßšJpZt˜˜ÎÓžÞ“åÿ\0¬tÄúá‰šçueS®’ƒ“‹¦ÒRŒ\\\\µ5Ù’k~i¯[»÷]I™Ì•àôë§ðã8‰Ïlç§x˜Ÿ¬†³úöK±³”“Ó½å7&Þö}¦íu±/< þG9ß·(ÇèÎË1øÊ²”èR…£g9iÓN6ÐÞ¹ÎV»PW»½›ð·µ›Ìíu´8]:Åum;ôŒïß¤DzíˆÆ_1V6pêÞ›PŒÓ8jpôÉi©Ú]©;´ï©úuÉyŒañ<%-ÏÏ;ÌöœfzçåÛ¤}žW‡›SZ]á9¦¬à—ßÌD¬k^±9Úzzº‹\rîGöWà_|lõ\\\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ô9äeKˆêSx¬v\"t©¸ûÐ¡)Ùý—)m~íù5sÇYýGÁÍub¿ÿ\0•s>SiéïˆüöîÃÇåujU¡B“¥6¡ÔERR„)ºNÕ\\œ¸­M·>wò+^“iŠÇ·Û÷Õ§¡ÄéééßVùù·ÄÌó~cÓhŽÏ“èåGV*gV.q”T¡»JmÉ‡Ý5´¹r8æˆ®ùýý½RW¤iÚú‘5åÛ|LïÒ6ïçcºÎuÑ­aZ8š2Œêu4ö”IêÓ&¥-´+7¯…•É#K–9³tüCŸRt§Nbb3=\'Ö:wŸ.¹Ùg-è´]IÊ­xK\vCz•`ÚF•Ü#.åÎKÉoºšº[ï;B§âVŠV´¤Æ¥ºDõYÿ\0õ™3J•âþOErT°ôì£N“KTñ5y^1³WÙ7}ÚÝkM¿Nßî\\W†¦Œÿ\06Ù´Æm=ç´V½÷ž¸Þb1Òvó˜ìtºåR”åzj0§=õKJÞnüå-RiüVgß0½]øSKÄo™˜ííôŒGÑ+ÒLÁFœºúqxÝM+L:Çh§+;ËLo&¸v¿d±6ÇXÝ…§ÃÍ¦>¾LÎ3×ŒÌyfvÏ]½Ûê‡»%ø²¬<\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0WfJrÌ1Õ)&êáéF•­Ù©Y»ÔWÙ4¤÷ákÜ­|Í­1Ö#õnpÓJðúUÔÚ¶¼Í½«Ûê¯ŠŸü=u\tT©Š¨ðÊ¥:iJ¤\"çÖË²·×R5-§Þ›!µ§ámÖvýû­iiWøßæmŽlLí8Äoý11ð£“V\n8hJR«ŠQXŠéê\f$µÏ…­+%Í¹>w]|;rÅc¬õŸ(òEn/JÚ×Ö´b´ü5þ«Ïy¦gËþw¦xwˆÄQÃA8YªjV·UA/¬ÄM=Ö¥Æ<\\awÅ_›G5â±íéæ»Áj|\r\vë[ùZ|íÚ±íçÎqñs=Â*’Ž„Õ,6\n®&|t­å¾ù=æïÍß–ó^3òGHêÎáugN\'‹ÔŽkÞqXý~¿.ï=„ÈÕyÂIÕ\nu*ºÍ}\\aRpS’¢îàí7O{n¡ŠsN+ÓÕ«~2t)kkÄM¢q½æb\'œÏ}çþ™YfSC®Ub§XuRu:éGyBnäì–„å»rêÉ)Zç=¡OŠâµ~éÎ&×ÄG.zLfc®ø‰ýQyÖ£:µ\\œ¥\t×‹¾Ÿ}¨Æ¤—Ü½ÕÊKÏq3ïû÷ýüKÖñ§HŒDÅg¿HÌÄlužöŸ\'BR÷W’ü\vL\tV\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¥ú[ƒ®±¸™Ó©Ð¯%Ö§N/JQtåªI½ÓÙrvïE-zÚ&f:O«ê|3[Fti[Æm\\ãi™ß|Æ!^U½7†–oN97x*ue\rø§RJ\t\'Íj³Ü†½9yñ¿e­mµ><pókG|Æ~ÑÍôÛ/KŽÊs\n:,Ê\'h…7Q“…’´bÛS{+7¿‰-´õkÒùü™Ú<O­ž}\t¬LægyßÖv˜Hû<ßDæÖaõúºÉF¬~²úgm÷Õ¥H…Ÿæ|ÝWü^\"xåôÌté§láŸa±Q©‰UeÔájÕ•J•n¯V’…(«ÞoJ²‚æÝö&¼Z&s´Lªðºœ=©§4ŽmH¬DWÊ{Ìöûý·gâ(_+Œ©ÊiÖ”zÙJMºxhÞ0¦¹ÎVŒV•ïJSø™ÔÇòýÿ\0D:wÇ1h›Z±8õ´õŸHÞwíP³Mý#:ºiÕÄÆ›S›rT`ÔaI;ï6áß|¥#ÚüÔÞ{£Ôÿ\0óñSË\\Ú´™Ú6Ìï3íœ{D\"ze(*umR›•IÊ*1wÓ\nPqŒ<—iøI£Ûãûè…‹Í«˜œDFþ¶œçë´k|C‚ò,1•\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\rÓ:qõ¥ñÔ›[%²vã}Ýü¹úñóKìü+S›B+¿íƒUjGªì§{}’»mì•’òµ‘äîDbvýå˜ÕoKrm«YÝÞ6ágáË¸î„R\"&0ÂÄâ\'7z•\'6¸9ÎSi~óv&ÌÏT5¥iµb#Ú\"¹½*-½)¶•Ý¢ß—Ï%ÜV7˜Ö¦¿_¯#ÔvYÌ1S„•\nj=ZQëï£UIT‚“Jý¤£\t$­mÓ/iÒ\"¾ïã8ÍKñ1;Vqí?åÔÈ‘œú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04ŸHñ”gŽ¯\n²‡ÕÔi\'§³zªROšìÆÜÝ¦üŠz³¾\'÷»é¼:³],éÎfzãûqžûù<Ô”£mIoµÓNýü‰S¢¬Äç\nzÓÎT±UºÒÙnuXy~‹\fíZ_WÇ°¢gPŽÏ™”¡(ª²Ä88Æ)Ò×$œà¬šIo%Ý«=\\v.SV9=_+Åp¯3ÿ\0œçm³ÕÔ$Ì\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0rþvœsLjš»úV!ï»³©\'¹¢—Ýðý©\tSI\'¢.ÎÍn®­ægÌoÕ·˜•VÄCþLW”¥ýOb-æóâÞ;ÏÝbš÷o)2Ö•|Õõ¸HŽ³÷”v+(JÚäìþ)o²|‰k0­©ÄjVzÏÞL*R½å/ã“üÏ/i¯©hüS÷–b“çø‘“{OYFgv²ï³&Ñê©ÄOË?W`ÑME\'Å$Ÿ‹Œe`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0›ºwKNuŠ_êB_ÅJœ¯÷•8Ží¿\rÞ¤Ü½å¿£3§«v±²š=‰sj ó¸lYÒUÖ‘YŠí¿OÁS¢¦´n»—ïvÎniôg$Fé?Y‰¡M«©Ô§»õN1üÉ´•¸‰Äe×%Æ(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\09óÚ¥9ÍGñÂ„ÿ\0Ø¡ÿ\0Wˆmødü¸cAlüãø³.z¾Š±˜QU|Ïk%ê„Î£Ù-i)kFÈ¬Ê=©z~šu£y\\Ë–Ìòîi3RüHž¯ô^†¼ÓõèËÍFjoî‰cIOŠŸ–]N[c\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Dûi§lÒø°ÔŸ›U+/žÈ­®ØðÎ’Š§Ÿœ_ßýÌ™ßOHÙUXþ¼?W<¬»´lƒÍã·æ’Ž¼lŒÌ\"¯+ß•­ß·÷%§E]hêû—ÇoSË£¬lË_ÔàJ{6§«:Â®éN_ÃF¤¿\"Î‹?Œüé‚Ó$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0GÛ£K†wWt$½GoÅkÆÍO\f¶-0„ ¶Ùñõ1­;¾·N>X\\žû;_Š]Ýûðâqo\t:í(LÞtg*|EqÌÆ=§úäMNŠšÑ¹‚]‘t1Ñ‘ËæpæS~ÈZyÕ+ñP­o>©þM–ôc£/¶Øtaš\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0wö©úNqR+xáãO¼^õ&ÿ\0Š£_ºV×¶!¯ášY™²¬%Ë²{¸ÇÕ¿ìcÞÛ¾ŸN\"±†]|#[óáý|øÖîùâz<ÖvÝÚ·ó4t:eW^Ó(¬Î]¦¿\\6&§EMkn§öE²üŸærâWz˜¬.m…¬ýÞ¶0“îDéIúk¿¡kJvfñuîê²Ã4\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Á‰wÌqŽ^÷Ò±Mùõ³(q]ßEáxä„þµ¢­ñ+ú\'o¼Ê´|Íüfñ8ÎÍ½v²ß‹8­fgw3H«Ëç³»~F…]~ˆ¼ËyËÌ›OðÂ®´o*0W³G¶G\rlpâQYÄx>{“iJ§ÑØ4$Übß“~v.1—\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0<{AË~œVIZ‹baoó¦¦üúÈÍú”øšìÛðËí†$qK…¼JGÐÆ¦T­±äUåµ\"Pøéê•¶WÛw·«äY¤bïni`Ï½^üoãÞIè‚Þo¸UÅøžYeûœ£”]XuõéP‹Þ¤áI~Ôä¢¿Î•ggñ7ˆv\nE–[è\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÕþÛò‡(a±‘[Ð©ÕTáþKioÊqŠýöC¯¤¯xu±¯ÖØºwZ¾Fm\'|>Ã[N&™„SÌ-³i[•É¾.u1³îq©-ÚvßnþBÙ¬:Ò˜µ•bi[cÚÎSÞ«Tl¢üº«L#ñêJúU¢¹½¬¹?î‰kXŽªÖç´O,mæŸöC’¼NmBêðÃêÄËoƒÜ~}d¡ò,×\fŽ\"-»¨NÕ@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0…œå°ÄÐ©B§¹V.¾7á%âšñG“Œ:¥æ–‹Gg6f©P\\5zN5pòÑ=ö\fÒ|c$Ó^uøy­³—Õpþ-[×_Í‹ÄQ“¿Ú³[§o»™5khAÄjèßxœJÖOJ½¥Z*Î5z•!NR…4¸¹I+%æK}<Ã?‡ã#Nÿ\07Dæ\"¢’R¿¼§XÆÍÙ´Le‡)TT®·íJÿ\0\nû>7|»®I;W™”F®¼hýgÚ;}L¥Þ<e½·IíÞíù»²¿<önÇKNm¾>ßoó9ŸVãöUÑŸ£Qž\"¤4ÖÅivjÎc~®-rnî_¼“àhèVkMß\râºôÖâ&tÿ\0\fmî÷DÌÐ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ñ½6öqƒÌfªÕu)VIAÔ¤âºÈ®œdšväö~\'“.«i¯FEìw+Ãµ*”êbf·N¼õExuqJ-xI3Ü<›Lõ{¯¡Óêú®®S‹‡V¢”45g<-gÀ<hÌïØ–9U’Áb¨<5Û§³©Ó‹wÐí\t\'n¾ýÈã’¹Î×‰Õ¬b,ØžÏ=ŸÓÀa¥OÕ×¯Y©W›‚”]•£J:•Üüx¶Ý—×,cþ%ù¹ó9óMÓèŽ3U#„¢¥©vvMpzx]yF•\"s±~?Š½9-©iyM’*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÙ","piscinaplayita","activada","bebida"),
(11,4006,"agua mineral","mineral fr 500ml","bebidas","mibotalon",6,"$","ÿØÿà\0JFIF\0\0H\0H\0\0ÿÛ\0C\0\t\n\n\t\t\t\n\f\f\n\v\v\t\t\r\r\n\fÿÛ\0C\v\t\vÿÀ\0l„\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\tÿÄ\0Z\0\0\n\r\0‚!1DQd¢ÁáA‘\"5ac2q¡#±ÑBCRð\t$3br’4Â%Ts“ñS²&67Utƒ„£¤ÃÒÓÔÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0<\0\0\0!1A\"2Qa‘Bq¡ÁðR±Ñá#3Sñ$%4C5bÿÚ\0\f\0\0?\0þ©€\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À&Z;G\'²’ˆ™Üò9˜XXVÔâ”âÉ5¡V…]gòãÇl¶ŠR7™i“%qVoyÚ!òW}¸Î!p6Ï´âaÌîÅDºtY’IWIoý?™ÛÆœLÜf:øQ»æ;wíU–Ù«ïE&ÙæöÜ\"I5µ6HùiQî¯Ü^Ž‹íJïôVŽ!|±½ço«¨\'yA´3¶œruk&Q‹qFk«µ5×Nš}„Ñ‚ÔécÅ¬õÝ–TkŠE÷¢¢¯®„”¸u©oÔ6p³JÛ&œ}\v%Tzµ„÷Ëí©•9ãÊmÊÂ¢‰M9C-:¿A‹DmÖÆÛ·ÒOjŒ½IPÛrü¨Ì–ˆrª!ÞtÖg¢„i3õz,‘ÍjÆí¼{Ryk3³»¬GûH2›+u†íµ•M!É•ºËŠ‡^ëÆG~§òÑöoÂ±ÛÙè³]uëß«í\f‡{hd³,Ž·)8¤Ég\nnùBF<”šô‘{µ¡™™ž‚ æj8~Lc¬.aÖS\'Ié/ Hë¤…Ä™öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\0\0\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0kLÈŠ¦t ûUeµëJÙÉå\tð%pÉv«Q™)ó*i2?-«¬zþ\r ð§žýåä8¾»Ò=L}£wÄöŽ}[ÆDGâ$‹A?‘æZÇ6þn~ž^V\"/ñ’³#R¼©§_‘ÔGÍóYšóFÛ\'EÀÄ7á©kY_:(Š•ÒG®¿2²å‰Þ°³Þ´¥>Â[zªˆRTDZÔDE «å¨BÃuÈB¸gÚVf“35^¯§Ü&&[DìâCª‹—#´‘Pª=_!™Ý‡ëg\nŠ.ÕE(ÔGJVº³»hÙÈDCõSLÜZ(Z¢Ü_=ã1»²ÍŸœÌà\"ÌCŒºÉÕ\vmT22ó©\fø|ó²;Z+¿­>Á™}Ë6N\"äÓç¹Õ•ü;*µq§\tdÚ¾ðU§ößåø–ž0^-^Òíè³NJÍgÉô<ûgÅÐs—R\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0\0F~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸6òÖœ®ÆÎ&\t„Q<\"ÖF•é#\"û1cK^lô¯Æõs¶\vÏÂ_Ìl EFL\"_ŠŠ56¤‘%¤èÓSÝöF¬ÓmXx\nÅ§¼ºzpˆÇ2…m³$Ð‹Ä;¦G¿HŠb{Ùn“´B\f\\;Èj%Q3¡ÔÕ46U­L¼ô‘h=B;o1Ñb³£Ä¹.2_‰0‰~íÓ©&•MthÓæ+N;~ÿ\0>«5Ér™ì­fšK¯‘%%yn«ITµ+ÌkË1Ý\'6îŠP«æ„ªñ§Þ3sÏQë× \'vaÀJa\tB¥­é2Q™%Ýjû–½!?aìSpí¥‚&Î†z\te_xô„nLõ³ñT¶Òá$Ší\ttþzw\r¢7îÖÓ³û¾Š,É5¡™™Rƒh‰ïTsmúZ_{³.Ñ¦\nÛÚ‰y4K8¸÷UB2A¬ª{ÿ\0?î8œj‘ZÆÎ‡\f¿5º¿¢¿ú>+ÕôÜ<ã¶f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°~àùû\0\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0ê|ªú:´þÂàµ¢ÿ\0ìÓó…moÿ\0^ÿ\0”¿™–Þr¤?’Mô¡G§È©¤}\"Ôêùö\tÞ:ºÆs0r)Å¤ÐzËR¼…múîèÅ:$)¸7]6âIJÈÎêëC÷iät×÷^mÚ6MHˆîõ¬äL-\vj\rDI%Õ*:û´=_3òVñÌ¬Rk3´CØSk,Óm¸¶--Ò‡-7Rdz|¼„;Y3‚«C!¼×†Ñ4d¤*ò˜M4†ÒÃ8¸˜‡Ü¾Üâ›+¤UEÕÞ3=Eó!´G¾~&•âŽeDÙh¡uè­KN¿Üm»R‘jZÖÒ£2»¤ˆ©öèOQ&â\r$¦‰~du/ÐoN½<‘äéÖ;¾Ãÿ\0gDÒ,NB¬ÍE,qpŠ…RQõý‡7ÒmŠ&¸]â¹&%ýMíz(ô\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0\0\0\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0u>S¤“+Cccå2È¶áœ}Kqk4’QC®¢Óå ZÑ^´Ï[[Þ©®¬ÛOh¯º_Í;wdst{Í¸êÖ¥¹t¦‹Õ×Aô;e›u‡„Á]ºK\'“7¶¦3hf[JIFdŸZ<®;Þb»Ã£Ž¼Ó´¥:v\"\nñŸ˜D<GT¨i&U3%ëþ‚¶Ù/ëLÇÍszS¤\'½e”K¹*˜­\'¨•¤™—èFtLZ\'má¼Z\'É•ŸÄ1â–Â¹\fÆ¥6óÆêîe oZÎûK3.kÙ³“-OÊb–ãu23‹Q$è_åÔ111=ØÝšt Tâ]\\*‰ƒI•\rZk¾¾ƒ1>ævrRVmh6îÆÃ¨©C&‰i¯ÝDXqßK(q)…ˆ[ˆ2©^+¦_j˜Ú‘¼ìÅçhÝÈeJu7ïš\vÉZHÆÖ˜žÌV&;¾Ÿö+Š)N\\¤\vhÔ„ÆC$ˆëU\'Èõ¯Åâ\'O=¼fŽ¯ëD‡hÃÔx·¨W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0G6–CNe±2¨Ô™±Ù¶²-t1¾;Î;Eã¼4ÉHËI¤ö—ò×-î¨­_ˆé7î©(oQù¡é§š‘/ŸZ9-³§Y°¶ÂpÓÏÉl|ÚfkYI˜eOAyùL±¾ö•ªWhÚÿ\0þÍ9oq„áÌÆÈÈ¨Ä­²$é×T|¿qGÒ+’fkn‹–Šâˆ‹=ÊöPËAª2W/J\fÒ£uÃ;ÚiRÐZÔÉ¼íÌÒù±Ö7ÙÀÙ®Ý´fÌLêT“#¡•ÛÕæ!$Vmå§¥c¬ï\t±¾ÏöÉ¤›MGÊ¢íkwÝ¡ú˜’˜ciÝ­µ±;L#DäÞB&ûL@¼¢¡Ñ\n1¤éæð–ºê L2U”n=fÝQ è¥µU‹åîcOjôKéxíÕžvO6€yE%Ž‡4§øö!Ñ-ã-\'´¹rö–Ú”uQ!D~ê“Jè&Çi™ÚPä¬Do¢ý8¼½Ù6áßT=É‹T[e¬i©~Â·õ4Ó=Ûpëx™öí³úÝ>Õ‹ ðÏZ’\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\0\0\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0\f¹å¶[‘i$Î*\0ãâc6˜†BŽòŒ‹IÐˆÌËI\všM%µv˜%]VªºjÄËç›3“y¤³QÖ–>W,ˆ¢ÔQqÍšTÚ®Ôª•(µ?qè\'S´c‰y¯š<Mº16Ža“È÷–å[6ˆtÉ\ne˜E,Ñ§A™¥TO™i^bñ¶Û6¦=æ&Z‰³9k¶ˆj22\r ŽçNšu™‹X‡×«³|±Kõ‰H]Ë‡zaoåŠ‡ðÍ6–j’r¥¤¨çëæ,ÆZVzVUgmftdZÜL^BÕCÖFfµÁ9u§¾$TìÒ1b&vk‘›lÄCçŸQ%FDeåÓ?û†ôÕÌÄtÛv/†•»Äy²s›e¨Ý¥–šôšKÃðÌÿ\0îXšººm(ù1Û®ì¤uË®&&\n¹•ÆÍfl<’ÒEMU:˜Þ5ÛièÏ‡]÷‡XÚx›yá±hd‘ðÙ’Tâ œRŽšÕJ\rë4™Þ\'yIË´\"H(yù·‰£OèJFF•ºô\fÚ:oÙúlïŒŸ³$È†R¬¾Qc×Ü[NÄÃÄ0¤\fŒŒî(È¯¨æê­:¬3sKÿ\0X³ú•3Šf6\n.d¶žI­\n/2:1´í/S¼nœ0È\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\03÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀeížZI¼4îm+(‡ahi.)­4Ý2× …½6¢qDÓÞ£¬Óx»^;Ãhäó‰ÔŠ)RU©ÄEÍÿ\0½ Ú&ˆÒD•}Ó:TÏI¯˜¹‡5+–&eG.\fž\r¢#gÎö]v&öŠ\"ÉO¤ŠšE:˜‚‰6Öd¤™û§xýÚ^I—ÈÈwrâLFL~çoÕÉ>nÚ’\r´\\j¯ÆÁ¹\0¤ ÛYÑWHÊí\nî£!RÓlq·ˆ­ç£Êa%€€…YœÕHmgï ÌŒë_Ðf—µºÌ5½k^Òý³Qªnj†á£üw\r&HA‘LËVææØ§$÷–^ÐÌ)œI½:qƒñÜ¢nÒ¿ ›9¢dÉÉ3\fŒt$,ÝDÜDáÇ7Süˆ„Ñ’ÔòEÉÍÕ.\"ÌÂÂ°üD$Ò5£m:ÐçæÓú#zå›LDÁ4ŠÆî»´Ò¹´Ù/K š9‹‰\"qËäEu:\f««y\v¸ë×d<ü½åÖv2Zû6ÍG0…‡n/Ç¸ÒUmDJ:wÿ\01>jïiŽ…-mã»ï»G‘‰¶TìÄ<†Ð&]”¶¯¨tøÎ‘ÞI’®‘h¥HŒxÉâ1ŠÓÉÕêqðé¼DÚv},€mét<¹•©m-¥J÷eO=_åiçwf#hÙÊÌ<g\'q†LÃÆrw\0ÏÜ?`\fýÁóö\0øßÑðq^¯¦à\fÃÆrw\0Ì<g\'p\fýÁóö\0ÏÜ?`ýêún\0Ì<g\'p\fÃÆrw\0ÏÜ?`\fýÁóö\0øßÑðq^¯¦à\fÃÆrw\0Ì<g\'p\fýÁóö\0ÏÜ?`ýêún\0Ì<g\'p\fÃÆrw\0ÏÜ?`\fýÁóö\0øßÑðq^¯¦à\fÃÆrw\0Ì<g\'p\fýÁóö\0ÏÜ?`ýêún\0Ì<g\'p\fÃÆrw\0ÏÜ?`\fýÁóö\0øßÑðq^¯¦à\fÃÆrw\0Ì<g\'p\fýÁóö\0ÏÜ?`ýêún\0Ì<g\'p\fÃÆrw\0ÏÜ?`\fýÁóö\0øßÑðq^¯¦à\fÃÆrw\0Ì<g\'p\fýÁóö\0ÏÜ?`\fýÁóö \0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘ˆÊm¸~ÅÃA=\vg£¦ÎD8ið¡Ò“M4Þ3RhZwïtX\'=¦±;(ëóFsYóœ|<ÒÚÛ¹,êe*–ËÙ&]z!Öh”¥n,‰W•UiYïŸ[IŽi^»¼¾KãÕ_w`Æ[)dekJm›a¥,×ã>ú¯/^²BOV¯Ð‡>Üöö¡s:oê:öÒe\'åîÄe*ÎD-H¾‚hÝ¥jZóe¼MŽf#nYk—O7·w/ù:•8Sí,ÅÜ»u+ZtèÐGBþc6‰´m,ÓÖÞve&Ù{ÉüÎ!È…Ìe¤kpÎŸ‰3Ñå¬ÿ\0Q¾;Z‘ÚZäÓVÓÝ)Ì°äÉõ#ð¶Æ_¥h;æ£¡ýˆÄõ¾óëBi­Xõ%Ì‚Ê-(h¶à²“f\"¼d]ðÖ§Ri¦“¡øtÕóEë¼FÓú+ÛO’cš\\c‹ž3¹ê&1æÈ›L<JHÕC#¦“*•X®h¬ì¯l¶òÄÏJi.LKò³ˆoÂ¼‹©ª’\"QÕ:LŒ÷³l•ïÑ¯5k0þ›Y¸ææRæ®Üz\vMÓ©R›ÇÍò×’ó¡c·=\"Z™Ñ‡¨º¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0\0\0\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0í¤ºm7³‘ÒÙ$Gáââ˜[-½z†Ù©4%ÌH·£Í\\b÷í\nzí=µ8§]\"ç²¤¶pæÅ¦ÊLCí¶¤Õ•(ÈŒÎºLôŸ ëÛO4Ík³•€Ò‘Ý=ìÎÉ„AÍíLl]í&G\rwMtIb¶N5—%¹¦qðÊc®Ñ*ÿ\0öe{9B´MÆJ—«Æ¥-ÄNºÈ½í¯ÔE<W,ù&\rcÍéŠö\0ök&Ð¹]„†eö—}&õ]lôPÈÒ­·ê×‰g‰ë=[IIŽŽSÞÁ^ÌQ¦—£2m—®‘(¡¿‚Ý~IN¬ñûô–k¥ÇÖ…ÿ\0³‹Ù¢t—“\te\n\0’‚I\\3Y‘tÔÌ¾BJq<ÕïÕ¥ôt·iÙ›šÿ\0²« ÓSrc1Yçiªz ›ï\\‘í£Gí¼¢B²º[gfMÌìvU£àd¨Ù›J#-;É{¾])5xÜ×ð¢¿\fñ#kJ¾ölËÄ´FAF@Ú¢dü\"RÍIuMÐÏÞ#I×ò—ž±ÓÒñ¼W˜¥½Xru<ÔÞôë/£½ž2ŽÅ¤²¬Y9¼­ù5 ‘2Ü<T\fAÕFDWIi?:Ý?Øyþ!¥¶+ÎHëYí.î‡SL”ðÿ\0;ÒC´aê9Ëêà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à7e:ÃåA•È\f¡In.V‚uã5¤ÚUä¨›2*ÔŒ¿OÊc½¢ÉU‡Ñ¯Ñçõô¶‹\'¥R7ÝÙöbÞÀ[Ù4ÂÒÜS*6âaïUM.‰:y^¯Mm.I¤ºÚ=Uux¢õTV€à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0\0\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè=N•&×Muº7ðíîG9ioZâm³­\vä6®ÚvÙõ8©Y¶ï)…·‹&©/$¸Zï™«ùP^¦‚;Ú\\ÛñYž”®ß›¯-$Ês8Q;L5t‰kZ¼õhýÇ_\naR:¸:^ME¿äžŒt3É³‘™ô”ˆš¼„Æ6“Ò¶ÉU:|éQcQ‚58f–ïä¯£ÕÎ—<^³ÓÏòw\\¦m9‚Dt\vÉZ ÈŽ¦“Ü{I#—°Û–ð÷xsS=yé;Ã˜#J×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0\0ŒýÁóö\0ÏÜ?`ýêún\0Ì<g\'p\fÃÆrw\0ÏÜ?`\fýÁóö\0øßÑðq^¯¦à\fÃÆrw\0Ì<g\'p\fýÁóö\0ÏÜ?`ýêún\0Ì<g\'p\fÃÆrw\0ÏÜ?`\fýÁóö\0øßÑðq^¯¦à\fÃÆrw\0Ì<g\'p\fýÁóö\0ÏÜ?`ýêún\0Ì<g\'p\fÃÆrw\0ÏÜ?`\fýÁóö\0øßÑðq^¯¦à\fÃÆrw\0Ì<g\'p\fýÁóö\0ÏÜ?`ýêún\0Ì<g\'p\fÃÆrw\0ÏÜ?`\fýÁóö\0øßÑðq^¯¦à\fÃÆrw\0Ì<g\'p\fýÁóö\0ÏÜ?`ýêún\0Ì<g\'p\fÃÆrw\0ÏÜ?`\fýÁóö\0øßÑðq^¯¦à\fÃÆrw\0Ì<g\'p\fýÁóöÂ·i]3œTt—–ëÿ\0uõÇ{õ¬L´¶JVv´Ä#¿”Ü›ÌNìNPlÔ!³ä¹³õU–á·—úgé,xØÿ\0ª>¬ÄË.Ù\n•EVV$ªpŠµeÏ÷ Ì¿q-tZ‹FñYG:¼1;Mœý¤=ŸaKw*òêÓÝeÅªê\"=Ãxáú›tŠKYÖéëÖlö—¶BD¤ÛHS#ÔdÛßÿ\0¬m÷f¯}¹%§Þnüðü_¶A›¡¹m¡_ó6ñý°Ž«žÔ’x†š;Ýë‰öªÈ4Ås(0,dwj•™*»Î…MC5áz»NÜ’Å¸Žš#~x{!rã‘øÓ$ÀePådu|Š¾~¨·\\ñÒk.Uòã™æ‰r›Ê=†Š:BÚéZ÷ÿ\0¼§Gë¤oèÙ¼¡çÇÖ^§-˜ZM\fZyI¸~ñ$ãZ*—èjSOzNö‰ÛòE“Q[×j%?\rµFBÄ4áé¸òUéC©êvî¥’&ñÖ:1sr!å%&â[#©‘U*N?¨¿ŽÜÓÕG%b±²‰µÿ\0Ù¹›mÄ¾e.‰YxŠ§ä®Šþ‚Ðøõ›W¼:|\'ˆú=â—éú\n]\t1…n6\nf‡˜y7´HËÔyKVi<¶Ž¯kK×%y«;ÃßŸ¸>~ÃVÆ~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°~àùû\0\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F #å\v)+-TDtR?¢£LÐÔf2-$]…Í&‹&®ÛV:(ëuØôuõ§¯¹ó¤ßÚC*s)“©‘²Û¦FM%˜tšü½ã7Oþ£¿^\v‚”ÞÓ¿ÎgxÞkÛ§OËoÝ”yü¦Z6o6ˆ7\tE¦-0¨Mw\nOÏÈKMž½¶ýPåây¦zLþØ˜O¦Í©¸•¶K=¨©”TA–4¼µ\t9qâŽˆ\'U“,õsá}› ß_ûìLŒÎ‡Fþ$˜ÄëgmÌbœå¢öd³pëiB°ª\'ÝOàY2?ž”Š××M§™bºy¬rÇšô/³m•$¥OJ¡ïV§X(sÿ\0Ò\"ôý»JXÒÞci‡›þÎVQïËÂH©î”$1òŒO¼vîÚº(ßÖŽŽ\fW³\r})?“YyþŠz\fSˆåë·Fo¤¤m4§Vfmì½\r\fê,ë2ÇŒô’ƒc^êÜ+Äëoú’©mJÛzU„›d†ÚÙäVma M\t;Ä¸xv‹Ý*“H½‹W¥ËçÕO.ŸUNÝ!Ë²°ö2)\fZ+…¢´ql¾ëj*ï\"Y\róc¿,Î;+ãÍñ¿/ÈvD-‹%,–¼¤™­%…¤ÏÊ·ëòÐ8n«MÓ/o“Ðé4˜5]qNÓžï(ÿ\0f›!Ê¢¬ÖuDj+á²¹¼MÅ‘\\¦á®\'kO­=?(I¨á¼±Òma²¯$œÊ` W-r*10¥î=î’FjS—‹RÌuqjih˜‰so¤ˆë5v§É¦T,ŸTëÆbtÅÂSÉ2B‚:WBI?°‹MÄ±äÉËvu<*iH½!K!^Ò’i$ÁØDþÖi†[É\"&]QÞ4š‹I¤ÌÏI™é=Â§á¶¿üøáÐá\\B¸ãÑòOgÐm:Óí!ö\\JÛq$¤)\'RQ’21ææ6é/I¿Xy\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0\0\0\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0=qªYf £Œ~ŽÜ#m²\"5(êe ^“4úkê-Xè©ªÕãÒÒfó×ÉÐv¢&*×Í¢\"ÝeO¨ÔFñÖžZ5èÜ=~ž”ÒãŠÕáurjòMìóX©£„gíÄÿ\0u)//\"çÍ[7ÁI§hÝº”X[ðÞŠ+¦e[ÿ\0ëæ9Ù5¬í»¥‹O’ýyZ)]•„…#+ˆÐªT‹_ÌSË®åŸ5ì<2rW}¡¦“É ÝK…á6Ÿ\fÓJ$¾uÒ(ÛW{K§NŠ±Û«BP0¤¤/ÀA©\t$‘Ðµ\nüöíºç‡Mâv{|û¤ÚCËnX÷2wþRô\räåqqå/@ÞNX÷+Hšm_ˆ«i?Ë¬¿PÞNX÷)?\tÙ´ô;jIùHf·µgx–¶ÇKÆÖ†ÔäNÆZVŒÿ\0\0Ü,MoÍ&ê«ó¦±ÒÓñmF\tï¼9Zž\v¦Ï#iu«y:µ66$ãlôQÄ¶ÜhÎùºRŸqÒûÏM¬¯‡ž6r>èÕèmâéçyíÒvèÛÙ{X™ÓJ…™Ãª5¥T…h%VºÌôäê´vÁi¶.µ÷»Z=}5Šféor¤òÄËíœ¹ÈxØfVì?¾Ë÷?Š…i¢’¢ÓR2×Q-L×¤¥Ë¤ßÖ£bæ3ä¸ý‹·pHSÄFL¸dJ\'Ù¥Î´Ó[Åè\'ËZmpÎþô8­~¸³ÆÑ=íC;4©tDá˜ruÅ!Èx˜r4)+©“*SEGw†ñÍ_\nÎ¿Cm.O»ìµìÅlg°2–,«™þ8¡!Ë7Å©f¥8Ù ëæDªyèN±G‹pø¯üøüç¬:+Šx–ð2|§ö}<óÑ+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\få¨µHÚSL œˆ4(ˆÌô!TÑ]úõ\vš]%µ×³­âÒFÝåÓsFfvšmøø×âTª’S#ÑJÖº<Ç£Çáé±òÕä²ß&³/=šy=–m-%Ëˆnš4ûÊè9ú^ÖîéétSzm¶íD<,im7QR• åäÕÞý¼<?>³Ý³a„C·á·ZVºEkZm;Êõ)¡í¶C´Ñ0ðŒ7òi¤­kZÎ„”•*fc13´13ÖX4å*ÍE-h’DëÃ;®¹\tx{Þ*›Ñï½º~h}\"›í\'‡ö–ÚÄb›8w~ÄÆ›N]Ó¥HðÎî­ç¬ƒÃÇìx™\'µWŽ,Qi\'ÚI`MFuePfíÒ®‚½T™þ´ÓòßyL±¶iŽñ\\<‚ßD›yÚÖ4WL…‡ðê^eùƒŸGJ³É–g­žYáÍDÚGÖõ®%&^e¨¯ÒrW~•míçdìÍ2C;}n¥*»üôŒÆJïÖ¬N;ùYíb~¥C{\r¥(£×Ù½yTÖZt\rk4ë¼7˜¿”¶FôÑ·aP<ƒAxÏx†4*Ñ7OÎ¾cVwØÞÑ´m»Ñf$ñŽx¯Â‘ªµÔ[ë¸I]NZÆÑ(m¢Á{sMz¼\'i$&%ZíaÎëQ1Ö¦!¸dO%Ä¯ÆKLŸI\'üDÕI=þíióà¿,òÏiWÔbçŽhïU¬8¦ØO¢‰\'èKEÍ\nIûßr21sM3¥Ë»Ÿ«ˆÕbÚ{¾]i·ì„Ãñ²÷Þb.IâÛ4¨ÈÔ„¸mÐ©òQUNM^>KuÝåo94™¹«ÑõõŒ¶ÌÎ¡àŒŠi9Ñ¯\nY¯/ ·ÐÔEQãõzxÃy­|žËA©¶£Zþk“íŸAIÐH\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\0\0\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\f¼]Š(÷ØèÒzµÐ¤yŸž¿ÓÐ^¦·Ã«^Nm6µžsY,®¸d5Êt’5Ò‚µ³ä´ï2»]6*ÆÑW(J\nêJ„B9™´ï)«X¬m[±pÌ8†}´¸ån ÔW•MÅæYžÄÚ#ºÃ–¾LÌ?âbžü*\tFGøƒ&Ì©¯A˜žº\\¶í\n—×`§{0Šö€Éüº:)¸ËLÔBMÊ2„5véÕxÉ©P[¯\vÔdÚ\"»+_Šéñõ›où21ï!ÑñêœÛŒyÛëˆˆRT½º’=\nš÷‹3Ã5»m´*ÇÑo×¬´ðP±1I$BÌÛ¢H’T¥\vEi¬S¿\rÔÖvš®ãâºK×~h‡4òe\v\\Ñ¿Rþ£_»µ?ÒÛïM\'õÂ›ùj°Í‰3¸iQ¤Ò•¦öƒ×JêW…j-[ik;nýFZ,BÐJ9ŠfUºj*— ÌðLy1sI>oÙŽP¬´wá¼\tSMLËAV‚áúˆü+Å4³øßŒO$ñ?ðfpª=%tMJŸ*ˆ-§ËIÚk?EŠjðdŽjÞ>®q(ªGRí²x˜ž°× \tíŸ@\0``läÃ\'–¾&ÐYø”»+¾ŸÅËŠ<i$ø„á½ÒÐi=>zEêåŒôä·xóQÉÁ·=|Ù)”n~üáI|3Åû¬©\f)Ô¾½¨zHõï-&«ÑíÓg\']£Uvˆë»±,õƒšBdŽ\fïÏ!X(¨\"’dmº¢#\"Qh2/çgÔFMM¯å.®ŸO8ôÕ§œ-Y»e\tnì´¶\n¤×y\r¦¿Âx‰&¤tÔªB¶£\fàÉ4•œ£=\"ðæˆS\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0\0$gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸KÖ¦4ÚOYÞx“OÖ¤$¦+döa\\ôÃ¼¡Çe^É@4áEZRV„™™7KQ}“Z‹”áùo=+?EqLTŽ³þn´µ^Ô¹:”B¡”G½0‰iFTÒFº™V§tˆ´j1p-Vië°­—Žé±V9gš]q0öÃJq0P0fÙ™Ü¼‡/WENõ*:4û5´ok(_í\ríìWhcf~Óšq1(©cH7JCN-&^LÈÌ“¤¼É:ë¨t±ð\\£¬9yx®§\'I·öd\"-5 œ<ã³I›ïºâ¯Tèšžš\v•Óâ§JÂ¯‹’Ým/5®29\r¼ä9{…uþŒoZÅ{5ë=ÞÈvâR£ñ‰=e nÖÔ‰òs[}Æ•[Ê¡(Gä5ÙJÎëÐ1ME¡&¨•\"…M&~¢½«´õoÍ?…Qˆ7×ã^5èÐcN±;Ã3;×k(&Tã¨ˆTI·x©§Mfm·F‘Ë¾òäCËàœr¨ŽQiÔnPCi´wX¯,ÇEˆ(RƒwøscEU Ò²23§˜ŠcxÞa´Zbv†Ž2q¢\\<å&´¦ˆQ¬Ž†gä_sõ2iñdZñksâŸV{6²Kek!Þñ¢¦,F4fDirš¼éC-\"Ž]WjÆÒé`âºŠÛ{ÎðÛA[DÅT•ÚLˆCå§öÌºãã«±ƒŠcË<³(”ðªGáX¯WÓp£ÙÓ‰Ýû˜xÎNàËÁÛ6ÓÉ$»J\"Q(ªFGR={Èf&k;ÃX´m/L4t*†e‰\"Zjª«S3©ž¯˜Í­6ë,V‘HÚŒúDWJ\n…«óö¶uu³ñVBÛ;ãÈæë3¥ÃZ[{MÝ%B*×IŸù|‡S>LzœoÇF›]6¢ÔŸb{;K0ñœÇ-×3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØ?p|ý€H\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸$Òc\r)€za²CL¦òŒoŽ“’ÑXóG—$b¤ÞÝ¡üàË_fOÍ\\9|s÷|gTpÉ4©SAnýÇÐ´œ7,qð9õy3å›O›¤f9K›MQœcÍ¨‹ûŠ×úéúW¤BÅ¿]ÜIË±ª6¢_uj^Š™êÜ6ÞÓÖä­#iS„DZ”M%wÍ^êN´*nõ†‘´õvŠN¶ÚžW¾I#:j\"½÷èÒ+<Í‹píÜJ”ÙÈ¼¾ÃFÑ×w´ˆéEE<ˆa·]ž@Ìtzž},©7”ES–‰™hìû\rEMm¤¼éB_Úi;Ö6iØ”‘6Hð´¼J32?Ûõóõg–vVnR’\"ÿ\0wF¢#óø›œ›9MJ›RÉ.0•%Z\nšöx©f›öY„³+ÃmDÙh=G®¢\våÙ51Í—±0‘J##Z®nY•LAmG,uO]<Û³G(±p\r¡óN)$U/ã¿QC>¿’=WOKÂç,úÑÑ¤fUÒ\t\te7Jš5êùŽUõyoÞ]Ü|?>±V†Ï¥((‚IPªž¢´ÌÏuØˆŽ²0È\"\0/€‡˜2û1fD¤(Œµ‘‘˜Ím5á‹V-Jù\n›†~€È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0\0\0\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0Ç*©Ó]Èâh÷Tu#Ô`-ÈvŒ=@Wóÿ\0¶=¾]‘É¹ÁA©ÄÅÇ<HB’t»D™×ùzŽÿ\0Ùý/žo=¡çøþª1aŒqÞ_Ë[Iòh¨‡IQ$ŒÏNšöÖûòï5—›ip%°¹Eœ¦ŸïR¿¿ê5­yºÝ½­Ë´íïj¤²Ó?yF¢OùŒê}D±ßhAxæŽ­ÄŠ^êÚÍ-©z¬ÌfóÑ\r=N’ì©A%HI¸Â*IÒtý„\r¶ÝR„gD+äÈ`Þb:¼Lµ‘—ÈÁžðõ¢òRi5UZÿ\0A”q}ºK„¨X˜ˆ¤ˆÕåöù\fOHm¯wfØ™3êi*nSM>U³O]÷f-¿Fù™O•Ô»všËx«klÚ³2³$…AÖñ×E|…{d˜X­\"Ðµ\"`“Bm£N³:TCl»\'®˜\t#OD!\r²›ÆGJ\']\n½\\¹¶ç²æ\fóËÕ²•Ùv˜$-Ô ‹B¨Eï~Ÿý/.ªmÒÜ>)´ÙÄ\"¡§3¼ï.”DV6€a•yÑ‡¨\nà\02 \0+ÈvŒ=@V%$ÌÈŒŽšäôD\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0\0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸©mî-\0$N–iü2Tu/z‡èh™½¢ìÜÏ*VÒ\nÆIžK\'Êß}J3Ò^éP¿S£ƒe&¼þ\'˜ã1ãåŠÿ\0Oîù)Ù5³—dÊŠJÝcZ’FZtüÇ«Åy¾8³Îo¶ÌlÕº„¡šH«]âH˜·XfÓ5è×Kdw=ç.´Éžæz†ÑÒ6„7¼Ä¶²y;f”xL ÐƒÐ¥Ÿa§v±ižíŒ:]a$“;©¦‹¢9ÚRGND>I25)k3ÐFcNÝßnî3^+Î„ñšHô‘jm³O~æ1ñ¤ïëÖcY´D•ÉÓv¦ÉYx¨§IçPkEê£EElÙë\fÆ9¼ïãY‡áßˆÙjü¤ZŒÇ3.mçu¬x§³DÜ•m™)ÕYé\"!OÆò]ôxÛuY‡CSU=fIÿ\0Z–Í\t)†{BÄ<¯ÁJjT\"=\t¦“2j\"pé-~Ð¢Ó)lŠ…O:yåäËl“ÕÞÃ§¦é^ÁÃ\\\0DûgÅÐ€\0à\0\'Û>.€02\t¹¹jçrU”m©1$£UHˆèšr‰òWþ:Ù;Éj´âíp\0\tíŸ@\0x­iATÀj¡Íj¼¥é@à\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0\0\0\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0$ý^TŽ÷@£AÝQÔQ€ëÌ+R›M;´qM¥¦Õmþ!ÄÝBtê¼zëtwt“¾Õç5ñÿ\0=¥ðvU-L\r§µQ‘ÐÑ‰BQ¥):ùïÓòÖ”Œxâ%æ+¼Êuš’¿êIsÀ[¤jK(?:WH“~XÞZÌù;rÇÊâM¥I¥Ñ°ÊB\t/.%u\'_\"ºTÑO1[Ä·œµµ¢:K]!ÉLcÊAª÷‡¥_ðèDudÔr³Í³fÎKáM4u×Sú A:©ŽÌF™ÞT òM&JT¥Åª§BÒgê\"¾ªÒ–˜kÕb\v&Hg²}×´iB[U}º%®ž“;ËC`lû*%x*UÝDtõrjrî·Of–_)•@·FJ‚¦Kä¼îµŽ˜éJ‹>\tÔŸëA^fÑÝb\"³ÙVRpmÅ’¢\rW(˜¨UòóÍz/i§rzÝšf˜‚y7Ûm\n*ÐR™´wuk´o\tó¶ÐÚaÒÚI%U\vì5™ß»xˆŽÉC\f€5À\0$O¶|]\0H\0®\0\"}³âè­¥pÍÂåJn’25?)†ˆ3-ÊuÔÓ“÷onl5üÕé^\\Öü›!Ya®\0\"}³âè:ÖHI¨ÀzR•<«ëÕä@6„DZ€~€‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\03÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô¼W«é¸­R\"¢¢êGÿ\0\'p-{UX™ìÂiÓÑÉS™øH/\t„(ˆŠ«3/|èz\t*/ïTŒz^Ÿ\"k“g›ã˜sZbøåòt&M-$4Èå²Ë/4˜›fG\r\0ñÔŒüôáê}/Oµïù¼÷£êmR›þNÖ²y Êü†ò2\nŠ’ˆâJI%åT\fsóñ;[ÉoÕß½vù»ªÎä\nßFÊ‹ðpQ‰]çZRI®‚\"3× ôŽeøæ:õ¬n·N“$úó³i-öxµ„d¨ërÚEÿ\0\r¸}5ÿ\0ª½[qÞ½)\v5û9M¶›Ì.@ä\0šY®:ÔÄ8f_ÜIŸ¹n[ŒÌö¤$¯ÙúG{Ë”Õ‚²ÐIDFÌÝ»üX¦è:b¯ÞŒ+H\\û³KÖ¼ýeÌ‚ØÈ\'\tËÊ~ê’²\'b‘B2ÿ\0¥$5¶£UhÚb~«¥ÑVw‰¬,&_df¡@ÂÜ×Wˆïé®òóÓ÷óê~)¼=ÿ\0çêô¿a`WqûG*eÊT’¨”%Gç ¯Ô9µ3ïú3Òu˜ÛêåÊåÖr!¤ÅËfðÊCžé(Ž¿cWÈ†¹c?³}Ûa¶›Ú¦Ê…:hõKÓÿ\0waXYˆ‰ìò)êRTL\vä®Ã\rŸ¿ú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~À2vÖ{iêÞi—Ã5(¸‡\fÏÃ32ÒzJº¿c4˜1ç¶×¶ÊíN]59©]ÿ\0fW%\rN­E°´3É›Ì!ZfX—Ù#4©H3rïæ=Dí~âÇÃM<W?4/>MT[.O~ÎÖÌ<g\'qËuŒýÁóö\0ÏÜ?`+Zfé¼¯à“8¯WÓpJd\nyWÕdŸ\"¹Ü¼¤EBŒäî÷?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€3÷ÏØ€\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +WA€ÏÚù”¢M,8ÉÄâšIÑ(ð¯éôÑú‰°ã¾[rÑ£-0×šï™í´ÔžÍD©ˆ;(Ò_mF’uÂBEåU—óòü<\v&Hß%º|\fÜwf#züÓ®&^Ü“8ã‰b^ü‚¶îÕÕ,ÝRtë+Š2=TÔb||K¼Úe­ø®¯m¢±?µäÆ-+n#(Ê4ÿ\0}0rç\r:¼Ìš3Ô{ÅÊp69ÞµŸšŽ^#«Í³o§G.Ú&UêZþÚÏÕSü¨–D•N•Ð¯WÜKè¸ëø!R×ÔOX¼ýÛ}*µ§2CkEª).¤–GüDSå¥$Ê‘ú+[S¨Ž÷Ÿ¬¶0rULÛ\'Q:˜‚4’Ög¯äd*ï\\sìÇÑbm|±´Ú~ª°v1Õ¤œ˜D–“3Ô Í¬ÅŽ;B}>‡>YÚ7ld99†y.ø½îOßtôëÝ£ÈsrñH™õbŒÑ½§ê¢œŽÙUEç–œr&”¼n(Ò_¡TVž%’{D.×„âˆÚfZH[)%…a,)$©RQ¦¾†+[U–g}Ö«¡ÃXÚctd2„äÖ§½FÌEl–·uŠb®?eæ4H¯!Ú0õ\\­×Ø‡I-÷ÚLèFµ~ã1=˜™ˆîÅçY]ÿ\09Bß­.øÉ­wR£<–÷1Ï_{ÉSzð—épÝI*¿¥C–Ýö9«Ûu¹$D;jy·m*Y¤’•(ˆÌôè/Q¥žhVLT:â‡’o6’R‘]$G¨ÿ\0`ÚvÜÞ7Ùé\\ÖîÅ©ú4ÉÑjºzô¥Fy-¾ÌsÖ#vûU\"¼Iüié*×Â_ôø7Û}šxôßg&&q\v.TÑn©PéMûÈmJ3/ÐŠ¿°Äc´Û—Í™ËZÖmå ·ù\\²±÷]³ö£ðÑî´¶ÔÒÚY¡Æé¦¤¤è¥u•5˜îðþ—ñWòìó¼OˆbŸbÓîžîÞÈ´¢ÌÊì<2ìÄqÆ³£}è…9|ÜtÈˆêe£E©òmò_4ø½Ý½\r1S\fx]›ÁQm‘ø¥%\t5(ô\n©õ>µ•Wh^ /è\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0\0\0\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\f\r¾œ²ô²kÖ…Ã$›Q¹ùjuþƒ©¡ÇëÖeÄâ™}Y¬>Êdšu1zùd|ÍN\t\f6¤¤”g¨õöÕË\\TëÑã0ã½ïÑ˜—d*|n¥¨<Ž,Ð¢\"I­\f•ã-þö¿ÔAÍ68åÐ¶\fù&&<›i&J²…/gýÓ#m°ZÕF¡ôyi÷¾An!¦ŸÆŠt‹OnŸ?ð¶‰VT¤íÕ’ôÜI]MØv+]ÅCýDvÔi­mæäi3ÅvŠËMþV[j¹0sýé£p‘FˆÑC/Ìw©_{ÈÌGmNš??5ºr¶òÇ²½\t|×“‡›$P’Šfªùñ4}Ç7.»I~‘gGÕãë³Elò’÷EØ8ôºŸî“Œ\võ5Ó÷eÃ£É^y·÷XÁ“]†óŽµëòU–ZÜ°%J8{\rdgüB¿\råZõgƒÊßÝz/Ä÷ëú(·”ü¥°„œnN_Mê‘_Z*t3#üªÞ_!Šè´Ù:×#7×ê°ÎÖÇº´5¶ÊlBñdÝÂBèñÛ#2Þ^ø†Ú},tñ?ŸEŠêu–ˆŸ\võòô1h\'ŠWûÅ‘ŽBiýÕ´£3ÿ\0¸„6Á‡oW\'é)©ŸQ¿¯§ÂcüÃÚ‹LWü8‰Ds\nÜ¤¤ÿ\0‘˜Ìhæcx´>M\'ˆDO/%¿Oò¯gml~1-o6¥šI)S+Ó¯q|Æ—Òd¤ôÚ~i1ëqÞ7ãó†²%˜¶Rû\n¼…V‡C/æ µf³´­VÑxæ‡®:]2h˜Ž‡KÍ¥D¢JµWxÅm5ë«é,vFÎ5QMÊ™\'HêJ¡ëÞ7ñoïkáSÜýrÊÈ]\\ÍÉzº®§R2:Ô´è×ä-öÛsÂ¤Îó\ržY·z+SN%Ôÿ\0uu=?±\rbÓrDÎë‰…‡DB¢ÒÊ\tå¤¥ÓI‘yTcyÛfv÷~œ<9¡M›\ršVuRn•\fþa¼›C›à+_ÁC×U|4ÿ\0@æŸyËçs&”¿ì\nŸi”ø\r6F¥üˆ@“-–ñXž¨òÞ¸i7´t|™í”,ô±˜‹/“XÑ\fºÄÄ¥ëdTÖ’3*u~£×ðZLóäÝãø–¯§h­6ý±ì\t7›ÍòC3rnú\\SÇZd’T$7øv\f‹ÔÌr~Ðâ®-Uy|ë¿ë.ß¼ßO;ùOí¦GÚd´¡&¥€z•»ÊÐ’Ô@/H’Q_òõ`\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt [E\fÜ¶%ä@6úÝ2R‰ER3Ó¤ôóõ´Wµ²Åfz9¼F•®Z#«å\f¤{B[\fŸN\\ƒ‘É¥kG¼ª!B”Eó¸=f>é÷™yJëiŠÛíægýµr¤û·!¥RÈR5]¼ª,´ÓzHC“ìý&=k/bã>±V°ý¦r¿ÁE>râAVéÐïK”¯ÒíË3Õ¥øæ¦-¼GG¢ÚG*Ñ/)¥µ422\"-4×þQ¿Ü:^û¡·ÕDvQ^\\r£÷†¨ÈHop‰$Þ³3¦ŸËþ«úÜºHå¯ßš¹èç;”¥Z3mq¶ª)Ù×øiÝºƒjðÝ?f_‹koÞvP‡¶¹DqœÔÝ¨™)·gMHÏAé½ZjÑ«XÓÐô\\ÜÛFìÏâNX™ÙfZîT_yCLænz(æ£©SMT¨‹.\r.Öˆm‡YÄy¢be~+nš\\TÀ’ƒ:™,ÌŽŸbm‹†×£¥]G´o·è¹/·/,‘66ôUFFª}½D9#‡Ò7ˆßæ›¸®IÚf#äÕf\f Sÿ\0Î5Wþ¥A‰¡þ™þ|Ö|.\'ýqüù9mJm«h$®t¥™ykü„s“Iý)#ó¼=QRûB†ÛÎÞ!š•rŽ(´Q?-â+åÁ¿«Tøðê¦={õ~4ÌSFeãšÒe©ZN¿¨Š×Ço-“Ò™«ÞÛ¹¿O|ôˆ­¶ý×›oY°¶\0HŸløº\0\0\\ÅÆÛu\nmÔ%hQQIQTŒ¾d;u†&\"ciuvW25b­ä¨àc$ÐŒ<óN6‡Ûa)R\fÈŠ¥Bÿ\0T-Ã¥£â™ôvé;Ç¹ÌÖp¬¸ßm§àêÏeK-2Éô¬°S5¶ó’ùÚÜ\'“_}*a’-§îB×Ï]]éž¾uýåÃm.;a·”þÐïu)(I©GB!ÃvšT¥Q\v¼¢¢\vQ\0ä¥$’¡\0“>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0\0\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt _åW+\\œËHã%±Ó‡ªH‡…jñÐ‹IŸÈ´zŽ§\rÐdÕd‰¬í÷\'Šë±i±MmÖgÉüÿ\0Ê%²s(SÈ‰Š ]–8§\r\t†¼u$™èò/ä=Æ_rwy\vxwŽg²ÊXÛéñ“âšÔ^óÎÜM}PÍí’Zsâíãƒ³ö®:kfåèºÚ•N­e¤ôä×X¡lq¼Ú7I]Ecjí©\t`dÍfY@€BNžì<)5¦š«â˜Åmzô¬L–¼^w˜Ù¨’Ùì›K•»kÞˆqI§þu$^^Zw\rmãKNzO›k*˜äò\fé\t:mÓ#\"Q›¤³¯ØA|y§¬Õ½rbŽ‘fª\ng÷QÕÓÕ¤«üÅL˜³Oá[Ç—zsCG\thä*e³‡ˆpÔ£;ÄIý7}Ç/>\rNûE]½&£G·5­½ÿ\0Ú)j\\D9†µI$=…\v`Éë:ôÔc¼oIèæµËÅT´Ö•*VƒIÇ0Þ¹+nÍ¨Ñ DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0ÈÛ;S(’ºËQî©„šÔª{©#2Ögú\t+Š×ëí’´îëë>‘N­\\þ*K8ƒj©ÅÃ­&D³­HÈŒôÒï©\vzª[*E£e=%¢ùo1;õÿ\0\rÍ¢5hIj!AÐmH‰%BúDûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0\0F~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸’ö•ö}´ÙR”B\"ÉÎÜf)—*´^Jv†U÷¼õyŽÏâUÐÚyã¤¸ü[‡N¶\"iÞÍ½›-L¢hâ£­º\\ù’j¹”SLté\"R“RÖ==8Î+uŽ¿“Îß…å¯xÚZ›9ìß3q)ŠÊl|Z*D¶å¥¾Uÿ\0­&¢!G?·~Xùô\\ÃÂ©1¼»¿\'¾ÉaÏù… ´q¦î¬¢Ò–´âSde¨Ç;?¼ÇH’æÞq\rÔ¿Ù\'%²Â%-—bL«E¼i:nÔD)OÔm´t_û«ÌLï?OðÐÁdO&âºÔ4\vj/3$—Qëu6ïiM-4NñXY†±2¦MP’hÐDFjñKËÎ´Û&l›Dîš1áÅ½£g)›.Gü8HJ–—¨Ï‡Ÿ¶ÒÓÇÓwæ«”˜‰DÍ$Iqˆrgr‰W«÷-Ãot³ãiÿ\0ª>¯j%°4«qé2?2Mz&—ó†ñ—Ý&ÆePï¨ÒÔq–¿s¸Ök1Ý½o[û2÷gîŸ°Õ¹Ÿ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~ÀûƒçìÅ²rtš:¢lÙó\"©*¾›†go&#}º¼³ÉÜa“0ñœÀ3÷ÏØ?þçÏØÕefÄ±nÎfðò¶®¨›z-\'á; µškå¨üü…¬zkÚz*_SH‡£&¹8±m=1¶–AóJ-\v¤ûëJ(‡DIªJº¨Eæc\\ù/;c¿’L4¯[×ÍØ)³ä’¡FrwÓ¿s÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€3÷ÏØ€\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€Ï[›TÍŽ‘*uëM¡%§P¥$ˆÈÏRtù\v\\‘“ÃUÕê=ä|-m½­âæ6–.Ãd«>Ä Í²Œü*ÖJ2=â•¤«SÐ]ý\fð˜ÁH‹Û»‰N%:‹sEvÙÁNT½¬çþ*_g¥rHt‘ûªT+\nÒ_åZÈÿ\0úˆýMNößæ–u™m=§èòƒ‡öÉ´>-ûw\r\0ÛšTÛSrLˆôh¼f{ÿ\0Ori1LsWyü§ö<lÙbf–éñ˜ýÚ¸l›{MÌ Ñ”¸è˜u¶IZ.%(‹QÞJk®žc<ú(æ›Oå-gÒ¦b\"Ñ1ùÇùrØöoÊë­–v‹ŸFTêªÌ™/{ºeþŒiÍ%gÔéò–Ó¥ÕÛÚþ~®LO²‹e\\*&Ö•’tï^aò2Ó è…4‰£Uƒ,óDÂ­ô¹éêÚ³òÿ\0M¾_m¡T“vo<qJ\"©~§ìØNJZ=ºÿ\0>h¼;Vzb²ü±VÊcÛPÌZÖ•ºm´Ú~æ¤­â½¢”‰žxþÿ\0ºzÍ¯1XÅ?¬~ÍÄ\f¾Ý²Ù¡r)™{ÕÓÅcæømÖoI\\Œ9éìãýcü¯ÀZ¹ì¥LËblŒsŽ^º¥™ ÕCÓSRtP„vÓS$sÖð–š¼˜mÉlsüøöxÄMc™÷“%}ÄR·’â?•j+FÏâ…ÙÔ^:Í\'ô{N>8¯ÒRáÐªŸâ£Þýô\fxTþ¨ýYñïýõò©$™G ž¤™ÕÖínº›yŒxTþ¯îxÙ?¢~±þZVÖjm+R\reS#=B)X‰Þ7y^Où‹Ôa–J¥¼€*[Èi\t—ûÆ’þïP·˜ŒSî­¹¶…4iB.¤î/O½«ôôDÆÝšLNýÙY•·\r(¡ò“\vBW¼˜v5SÌÍJo!4_~“Kÿ\0S\rh¤lqÙM‡~ýRQ«a:7{©O˜—–-×ÃŸ–è-“—¤dœÃk¦-C9ÌÚÍºIEôÒ%$Jû›Ÿ}ÃXÓï;rÛéþ›N¦\"7æ¯×ý¾nË5©²ÑVr-¹üŠB—Rj&•\t7\'Bˆ½ÓðÉåP´ê¡žßá4½rïÎßôáqY‹âÚ6‰Ÿû}ì£•XL¨dÉ·¯¶˜éSê„‰j„…‚RUsY’‹Nò=Ã‹Ä´³¥ÍË>nÖƒQŒ[ÃºG=y‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0\0\0\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\f†T áæ6QØ—a‡\\Iâ\n¨=B¥Ì]áöšç‰ˆÝÎâ‘ÓÌLìøæÓØ[ˆç ­6X`lô¹*%œ,¦ÄºzhÅKDâu–¥IŸSzÄMqLÏ¿ù;<ö‹Oï’?Ÿ\'Œ”{,L\"ZˆŠË$þ5+¦•LfI3U4QE¢§QÏ®}O,íŠ7ù:ÖÇ†/åéüø;6Qg@µý³š¶ÄJ’Ë¹:£§SÐD§>[†‘­ÖÌÍbcà[K¤¬E­“¤´ð™È</†Py@™¢åšN\"OMjEùÿ\0ÕuZÉï¤iô]ã#cf,4+-³”ù’|33ª£Öºþ·ŒÅi¶iïŠÄ`ÿ\0Yþ|œ6­Ÿ•ŸáÊÖh¡æ’ªyT’#œ9o×Âþÿ\0å,gÅ_ÿ\0oíþámÍ‘#5®Ö²á$ªiZI>žé/¦ÍhÚ1ìÞš¬5ç.ÿ\0ÏÉzA”+~7ÿ\0”P„j4‘ŒÈÌôï/˜‹Ðóÿ\0L¥ôí7õÃD‹af×Œ‰ä!¢´©9¯ô-f5ôl»òò·ô¼;sstxÿ\0l,¿ÿ\0®a½Oú\fú.oékéºê†l­‘GB™0fz)x=7ôž›§þ§­ëC)mf…L(z(HMtž‘6=íÌ+æâé;VÎ;³xB%*\nÙÄC’ô™4Ê\füÿ\0Ì7¢Oô+z|mÿ\0SùôKŒ‹~dŸÀ»o¦‹mZÔ˜v’{õ’\nš„´ÓòzÜˆo­›ú¼ýc¬YG,ˆíÄõõ+AQól^gî™\tbbé|K^:^^rk\nä®l˜–fóGYmJÜ‹R‰JÑ­&¯æCÉM¶šÇÑµ#$ÎñyúËfô$ÝÂWáÜh–TºfªÜV›cÂ³Ly­Òn©\t-™/Ã_ãiÂ25$e¤´ùŸ¸ŠrR:MSW^ñw›Ö>*2 £—4xž©éDC‰I–Ÿî•½‘¨­zEHKè—·­6ëùËÕ1ÉþqlìÚ2·nªì[©©}Œf5Q_¤…êýež<Y/~1/¾J:ø—LËNóPš8–Jû=>ˆ§…ÒþÛò# >\tÉsÒ÷NÆü3\"‰u5/²ª6ûßQ¾ûÿ\0f‘ÁtñåýÝ\'•?e¬‘Ø¹$læ\nSôk,­h5>ë—ŒŠ¤GUìpÞ)¨Íh¥­´~Qþ~+ Ç‚7¥wúÿ\0”ï`3¹j­´9^lÒÄ:–Ö¢IÞQÓô/Øiöšµ‹RcÍkìåízÞ-äûLyW§d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0%”Ã&¬ËñKI›pän¬È«u$G§÷!ÕáŸ«‹Çk7Óí÷ókÚ\nnÚícÍÝ4kçC5éÐZÇ¹Ã“,o³ÉÓJÆÑ»­l´z˜¥Q(S«%¡U3Iè7Ç>·[7ÍÉÒ¯¨r’§È­†„•!òŒ%ºë¦ÆƒÒµëÕåAÎÓ^‘­É6”¹i’tÕå‡YËa-¤BŒ˜ndÚ”~O+ËEuèî:6Ë‚\'kL*×IâÙm›Ê$BéÃGùŸ:×v±ê4³Ó§Ð¶\fõìÕ@äË)qWD®&žWŸ­K^ñ¥é»oF¾ž6™h%™)ÊSë4æ¥3JQFñ•4\r/¬ÓÇ^å4ùfzL´Òœˆå\fÌ”û°°ÿ\0¬Bú$Už%§Û¤\'k{Ú¹VD­J.ª.cg¤ÉDó—‹îirq<;û0Ÿ\fÏjô´¬3’\vDN¡¶fPÄe¹ÕÐý#ž)Š?\nHá­æµ‘{ZJ¼¹‹M’‹M×\\¯ò[Œaþ”•àYíø¥f$s„$Š\"5\v2©V¦u/Añl^UI\v?õ9äºhÂ\nãêýHÿ\0 †x¥f{\'Ž\tzÇyrS`æí¨Šã?ªSØ>ñ¤ÃÂ2E”±‘­L›ÕC\"N³ô_]…œ|2õžªPÖuÖTJ[h¡y]òô[SZ¦ŠÕë*LÀ8“ºIl‰\'§@†ÙwY¦ž!A–”Ù™­Du=5&w[­vî÷kÒCVïÃ? WÎž@<È’Ÿt¿Phù|$Á£‡Œ‡iÖÖFF• ”J/™’™-Žw¬¡Ë†™ckÃç›e%VOÚÜCIÙC,ÅIàShMÔ¥FôAZˆ‡G]¨¾£9¼ösøvžš{Þ´‡rŽS¬×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0\0\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0ÖÔ·€T·€“>Ùñt ÌÙyb+*bHÅ´jL¨²?\tEçEßÊ^ño#ó‡â¤Úoxp8ÌÞñ¤¾ fÓÙÉôáØØ¨ffñj7\tøÃ\'ÒWq×Ò»‡£®Ó3åGÕ¾:Äy»\nÏÃ@=Ñ·*—¡G¤áeé%|µ(¾^Ÿ!\fW\r\'x™f÷Ízí´;J\\»:¸B)·´7’¼–ÛCz|¿ˆtÿ\0F(Í±×$ôYåÔ[rìµ/·Y/–´Jz>`û©UÃ\'£î×Ožƒù\t£²Gü}¿%[ÎJLxþ\rR2’C}¸”—šcIÂýipmèÙ-=öCãrÇœµò+w\"Su—Øø“$™iCD³#ô!ô×¬í2Ú5=|Ú¸hÓéI7b&ëUtA‘Š—ÃÒlž™¦zÄ-CÚw\n‡ý‡›•ÃR‚­°Äþ(ú®W-¢;~‹\fZ©ÊH¿bc\r ¯—AñR\'­–±ä¾ÛÄ9Ò»]hVo9dŸh“¡#3?ÿ\0\tPE|˜¥=5¬ÏMÔUlæ‘-Û<éÍ]„Q¦‰¢SN¶ÕæÖ-„cêº©BÛÇ_ý#æÏ§Lù9ßÚ7ô^‚BkænvÎ4µÕM§mžH´d£4\t½ª¤¾Á7êÌê¢\'–\\„MÛ¡­JIV†eZÐcÁgÒcw½™ƒ.«þ:5j#[ÂJf‹Ïw»ñLÆI\rye/4<Ðëk¡$ÿ\0A‰‰‚-ò=A†ÏÊWôÇ˜Â?\f¦a¢×\f³¡’ÑÚŸÌmYˆž°Òõ›GIcbá-¼‰:VÒô‘¹\tSûó#Ã¿áVŸâbc²éhå‘$ÉBHãPIRî”ÀÛyIN»­øg]eæ,×E[ô÷W¶¶Ôë3Ñ™É,ÊsirÃjílÎVìSD0ÓŠ­—ŸÓ¨µ×wßˆbŒ8©ŽðìÞ=ïwvŽK¬×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0\0‘Ÿ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà=œÓ¤~.¤MWòù×õùž8~nÀ?S9¡×ðÕÇØ¿ã_GÁÅz¾›€3ÉÜ\')¹±9Z•¢WkÙüB_ˆ…\nñ)M5Ð,éµy4¶æ¤«ê4ÔÔFÖ|Ù8öU‘ÀO¢ad¶J9È” á]Kd•&ö¯pèGZéÜ;8¸…ï^iÛw6’´·$J¬³ÙFÇÇçöxÛB(gøØæÏGý„ÖäžÛ>m)Š‘ÛwbÈraÛ3\n¸x&,ãeGÐQÍÔ¯ißOØU¶£%ü“Æ§»FÓY” ÐÂdL‘(ˆÍ£N½eýíÂœ³ïM§NiX‚·ù3†Gƒ9ƒhˆ´Rµˆ§IòO1×³žÖPl“‡þç2aä¥:M+N‚Þ3]>KtÙMN*Fòá–W¬i¾PíG%n*„HI•L÷’t9|áÞ¶Þ6ú©žPlúRF·ƒ2ÐKxˆý(4ô<¬ýá‡ÉëE¾“D¤Í…²¤…¼¤\'KzÎÒÌkihæˆ{l!L‰WIkOûÊtþš>ëÏHÃ2’uU\'\"Ó6ñ\f²ƒ½äq)©}¨7¦=ºÊ,¹âzV:¸ÍÅ¼µ_üSÒ’x´~ÂMöŽêóNií/\t\\,ÙµD*1¶73‡J$ÝE\n…¬üê3l›ù³\\R¤MG™‘3HÞFñhMãtÑ‚vï³Ü\fQÞR•Vš–Zfõób0ÛÊaïn&õÙ‘Rµ¼CI½|“SMúËõ÷VõÃ‡U)¬ÌbrDChÃ3=^ôKßEV~)ù$Ž£IÉ\t<y¹M2é™ø¥OîšufÐÚ´µ\\•¤¨£Y4WxÑ$üS&\r^8TMaÚtõ$žO‰O‘TI^¾H­OvBØ½o/~[\'DÊÊ¿Ä3©ÓÈÈ¿Q68Å¼ÏT7œ³3N•Ê|öYbeíÍí%–_â¡‘A¡M!¢ÓRRÌ”D^šÇOIŽÙ\'jYÍÔäŠÇ¯\v¾ÍsW-ÅªŸMÐâ!aQË,#ß¸DâÕ®¿ó×âœ\\±=Ûð+E«}ŸBæ3“¸à=Ÿ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~ÀûƒçìŸ¸>~À$\0\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€â/ÿ\0:¯þP \0d;F +€ní–VÉÌgê‡\'á™52OÖâ—äGC#?=F%ÁÆÉ÷¢Ï’0ã›Ï“ùõ•Ü¯Ú˜…FNbbIé„”A­Ë¤¯ùˆ–UÑ¿È{<ZM=)¶ÑóxìºœÖÉÍ;´Ì&ÛC°ÜJ2co\'ñ*Y\rø†Údµhü‰:iß¼P¶=4LÖrD/Ó&¦ñŒ}ã/±QV†ÅA«ÿ\0\fZ‡›5U~\"(Í$g¤‰J%‘W^µ|ß/>¿E¾LöˆÚŒä>O²ÂOx?øfÒ„Þ¸æuªHêt:~&ºzŒøúm½¹ßòÿ\0MýQ¿³>-\\ªÊå‚\njŽÉ½”a436Òù)¨Ìüsÿ\0F4Œ¸\'ñÏÐ¶Ÿ7ô~¯d­væ%‚‰ŽÉ\\ô8ÚTƒ†ŽBR²¡ê3tÿ\0ÑŒ_=km¢óÓùîfšI½wšwþ{ÞÇ ço’Iy‡÷uMY#/ÿ\0š3ésÿ\0wôÿ\0M~î¦ÛF/×ý½ðp¹Qzòd™.‘ÂŠ8¨²wFÿ\0uï‘—ØcÒiiõòOÓý3è<±½1Æÿ\0Ÿûr›’eÝÄgll5OIN*¥¼¨øÒÙðÄô´Ïóòm]%æ:×g“vwÚ!ô´¦ì$+)Ôâàâ4ý“ú|l?çÉ\'¢äí·óêàEÉ½ _#ü=¬±0Ê:{È•D?Jº1]FíY˜üÛ[I–cÕ´D¼Ú³™sSMFPä‰u.¬™—,¤}ÕZ‰=+Iÿ\0n~¨ýW²þŽL¦ÅåÖ*.!oe6RL7O\fŠ^«Þzôü†Þ™£ÿ\0µú´ô_ýïÑp¬~ZŽ[K8qGï”¹í\'åþ\'AˆÖic¶9ú±<;Sn³—ôqbdÙl–ÃxèšK£\\J’JCLÜ%ž“*ª£yÏ£¿áC]·Î÷éòsŽ·Þ‰y–Ò£ÒƒmÄ–:êb½²éæzBÝpj¢6›e\\u©Rs+­SQ!IQ«_~EëòZø7èÚ1jvë-£bÚˆ&JmÂ5•S|ÈõÓM*E¨AkÓ~±M§šz¦&*ˆRœšÙ×§º”B>•™éÖfí7\r¢Øg¼Ijgˆé/\\CYQR\vð‹‘¥w©WšpÊ›ô87ÿ\0ÛüQÄjwë¶µ’Ü¸O_z_ØÇ`ÜEëPÑ-Ä!T×xÞ§™ù\tðeÓRw¶ÿ\0Ï’<øu«³ç¹¥žö£É¬Ê$Ÿ˜Ì­D ê¶&Ò³mE¨’¤RŸšžõuÅ-ÃóÖ\'}¥Ê´k±Úk5Ýšµ¹uËd¨Ú„^N&Kƒ_ºì,Ý„Ä¶¶ëCºlÝ2Ðzê-iô˜9¦qÞ&~üÿ\0*ÚŒ¹/XŒµ˜þ>åö¶,Z»MlTÄ‰R£m˜u)ƒ%š•¨•Sýü…´5åðâguÞÚï°™z6D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0\0\0\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\ä>Ox¬¥\'TÝ:\0düHÃÓøv¿îúND—ŠËiMH´L™3†ÙÄý=@SñÌÏ~ÓyaE’jLƒlÍNx‹C’Òª4Ô¾~CÒð=g‰Ëg—ãºëÒÑ‚Ÿ›¡äÓ…ø8H,98²ÒÌ\vm«îf’Œœ&»o7—&8…ýžH—cA{MEÁÌaácÔBY—t‰3×î•jD(åà¼sDí+X>Ð_«1ÒÊÖT!eVq»HL’˜˜S}WHŒDt3=ú‡\vƒÄÍlQ=üÜJqa¦YiêF_lëÌ%pÆÓî‰p§M\rf&§ËÍëvA“ãŠïHêâÇ{@Ká’¦£3c‰q4\"A¬ÈÏç_!<pYžÓ*ÓÇ§Î¿Ý*-Vy–›`ß…Jd‚&’â‰%å¨Œ\'ƒLõ™þÄqéí~µ–xG^ðÛiµ¤•CQ2é>ä4žç?¢HãWŸÃª¼“*Ñ¤Î„¬ÖtW†“ÒeúêÖ3<2ŠxÆW&ioÝ˜¥ó(Ä0…’ï6é6gMÔQÿ\0A¬pøf[G´ûNz2§Á¥ø{=45¡’e>#íÜ2Ñ¤ýúž­tÏ\rÉÚÓ\vQÅðÏZD¸lÚ©ÌJ’Ú$ff½J\'›ºE_?~º©¨oè8©¼Ì¡ž)šóX‡*&ÐÅÀºˆWìû¯8æ›ì,õ1¤áÇhï³jj3Dï¶í-šŽ¼â\"Ym*qÂ+¤•’ióóÒ)äÃJÆõ—G¢÷˜‹CT+.½\tTgâ–KK_‡¡]23¿_ŸÛÕåøµõ¹¾\fÀÕ³ö†zˆiÑ‡¨\nà?\fè$\0i¼T4Ô¿@ÈyL².-ØGHˆŠŽ4“¡i­4\tqÞÑhÐfÇYÇ1³’)\\»*V§ðØX4*®0Ù#MõÔÎŸ©z—´Ú”™—/„G/<|]Ò9Û$Zu\0jÖ¬ˆÈ¿_;½@X\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À=1?•õ¤‰çæk@\0|ÉíAe$ÓYœÂ};f”_BRj÷Ög§Vï¸ö?g²òâšÄo/öƒüx·“â;L‹<s÷ótù\tm¥V¾”t©ê¡G£Ëh­:¹Zx½§ªÕ•›)™ì\v\rLfÓRY(É\f¨’^´§qNù+ö™êµfo3´>¹´6ÊØäâAe,õ•œ¾ä\n\'Vá²„ÔÖjÐ~-tè=$<þš|Mò^{»šøº|t¯“a­rM/?eÛ…†N•œDKzËQ˜½mnï32¥][u¬Fßš.C3ˆ—³/8\v2…Õ.ºúôSþ–ÏxÓ·\fZgÖþ|ÚåÐj&6¿Ÿ&šÆD›\f4‡l¼+‘^8sv«:yŸ„Bšü3>Ï›l\\7Q×oçÉ¤bKMœ,Cò\"RLª¢74—ÿ\0,E:º|[ú\rãÜ§/°ñÄÕæg0­x‡Rð/þ’N²žæñ¢¿œ¹%’øçWã9h\\tÊªºâ”e¨ýx…b6åb¼6fÛól³\taI¨˜d½Nk:xŠ¡èÜ)_‰Í£nWNœ);ó5ðö\t§RâÝRTƒ*%£Gó­­´ôˆZ§\r¤u™TLŽ¿tßºëæ!œöžéãGJöxMm¤°¦Ð’#®’\"Ó¨C32³ˆí\tF<£(†’G êFV²t½ÖÓ{ïJ\0õ©˜ßÏø‚*t‹AýÀJš:j[,º‹ŽûÔ¡èV Ò@<µUÝewP\rM]4ûˆ¼u¥\fèEóà¦#+y18H´z€•5WŒm²ân8D£2®²Ñ¤†bvêÄÆñ´ºþA\n†²9y-™Â2‹úŒ¯¯Gê.êrNLT™PÒbŒ9oXlšUûÊ2¢KBLÿ\0¼b‹ Ñ“qN$&–+»I€ðRâáˆüTøÈ#üÚŒùµL:•ÞJÍFGèx\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\0\0\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0¬¾óLRËÃ#N“%ê&vãà¨-7º\0–N³æêKîå/m»\r;›ÃJí<<…2ø3Zb\"cáÉÕ\"©*PŒ´Ö‡æZ\võî\r©ŒS4™ž®/Óø›Z!ñì’i/L­ˆ¨Rfdg.CgB2*‰E¤z+ÄÚ»Ï÷p«µghw¶ÚYˆR(x»cm\"–tR˜f5l¶~TÐáÿ\0!Fk[ï<«¦ÑÂ°‘2™ó1‹•Ùiœr÷ÔqqªxÈ‹}RzEK×L|V«9¢³¼ÆðÐ¹ôŸøfÃê%—ºì2«M©×fzYò^±×¿ÁBC\t5‰ŠJa²S/†Ki¾“ÍÍëò¡‘}ÆrrÄ{Hé3¼7ð\v¶\f\\jÆ°‡e¥-’ôŠ“4ó”û[´(Ã¹y*yë#|Ìôø§Sý=Á´Îí(¹3L¹ÐNÛˆ8Ä!Ë6ÂtA>u#ÿ\0´ChÃ=wOO½% ‡vÔÝ5©’#ÑtÝ3¯(†côÝb¾$Nû=ÌÆÏ?oÉ®þr÷®¢ýkié¬½]fIü?¯úZM¥™_]é:Òz½^ƒO¾RßÒíçÏí#¨BÉ2ËÌÎµ3F’&vÝ¸ŒÖ7åp›´ŒF=øG4HÔ–ËI‘hþ†#É¥µ;&Ã¯¦HõºKõsXVP¥®ý^Iz>OrKÅïp´Òõ¾É’-ü…»õ6Hòké˜gÍ§+o#ER¥=_?t¿¨F—$ù¬Ãn|¾ÐËfn“0ËUõ&ñˆµz/†ôå%5òNÕ—\nÕ•Æá¢¡m™™~Â$Î#”©y9&.ñ‘Z€ÖBD1Ï‹ê\\MLŒÒuÒZÈfcnìDÄöemÙ~&UôžesHf–¨hF&NB¥å–‹ª4>t16(˜˜‰ŽŸ’³ÄõüßÎøÌµ{hÙûy(œH&¨…`””øï­ãA‘ù©E¦¿aÝ®ŸI}¦6rí›4o¼ËílÌ­4æÄCZ\ve\0Ô<æ!N™7uF’ü¤gB®³õ}lR™91ÏH_ÑsZœ÷ï?Ù½l0Ì¤õÝ#1Mq®øeR2ÞÀ¨Ë\tò%®Ÿ°\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\0#?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀzNKv ËñfdMž‹½ÀxçŽ›°&çD“:ÃÔ©ù»\05\fÔÝƒJ[ð|ézý}7\0òþÍ³ÿ\0¼\'ÿ\0—ÜÏÙWk%6)‰²hMÍ\'OIæXºf¥‘ï¹ê;E:œ³}·Š¹\\WW1Å7ë*¹%“dæg’¹$ÎÊI9‰džñŒ‰.8µ%5RÈˆôž.\\Ù§4ÅçeqïXla™³°(Uø9LIJ–åçSTÐ¼Ë@‹&\\‘õ–pà¥í´ôs%‘ÖEØéÔLîRÜ\f:ˆ•JA6_*š©»ÌUœ¹&yb\'wBº\\qÖg£‰ÿ\0‰ùlŒœÊu›Aj:Ç3£œf+©·jOÑ™¦š½í·Íï…ÊLžŒ_ár&t’Ö’LSFE§þ ¶-L÷Ç?Ib³¦§lŸ¬8Ù~Ét¡Òb\"Ð´á‘™U§ÉdfZÊ¤5®—=úÅRÎ|õy¿WŒ´†J¦‹Kp3u<¥’îŸä6ô=DuÙ¬êpvÞQm´þH c›ƒruo¶ªa7êfdT:Pÿ\0¨ÛÐõ±¨ÓÏXÝé…ö•ÉCÈRÚ+BêRt3L¥g¦Ÿõ\r}\v<û¾©=\'\r|¿D¶=¨òS3b¤ºjtÿ\0Þåê‡I‘n5×Y\tc‡æÛ{Z#çº+kq~\nÌþ‹®{OX\";ÌA²åN´\\bQO×ÝÐ3>óø¿F“®ˆïO×ý=ðžÓö÷ÒÌAÈá\tFd~4í´™S^ƒH“î¼¾S3òC÷ž8ïM¾éÎÊL­Å/7>”Ã<¶õ10iëÿ\0­(1“K«¤m]çä×§GyÞõˆýVU†yn©s$½DTÔ’I‘•QiªžÉç.Š½0’\vô9ÃD¤ÌÓ](-?PÉ:ºt¶æ)ÐäëX‡¶g!±q¨ð_ð”…ßªJOQè:§WôÅ“UXÍM³=þ\t\\‚O)WþÍ˜G0U#2Côè5¾£6N–®í©§Óã˜šÛo›_vu¢5Ü&´Ÿ½~§öÜ(K©Ÿ¿‚‚3¸sVˆÒDG«ú†Òo\fË&Q.µ/œÃÄ©-™(‘Ei¦šÚkju˜k­÷ˆ”‹3;¡ù¼ºa,T2Q\"ô/ø*EÒ¡¡4Ðe¨ôë!.Y¬òÚâ­©½]W0nMk‘¢üÝ:ÔÍ[~)µ\'ÅB—¤‰FnTŠµÐc©‹4Î-ýÞ_\'#Q¦Û.ñçæâåFÊO%Mœu‘‚Ld:VâüE^y*©…T¼Èü†úJ×-¶¼ti©Ï8£}Û\f„å\r¬«YHÕÅÄ´ÄÞQp‘°éUåU(B‰t­HŒ•ç¸Ç7]¥.M¼¦5÷óvº$ÄâPeB4Ô½Þâ’ÛÏ?p|ý€3÷ÏØóÃGþ†¿ú¯WÓpFaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0gîŸ°\t\0\0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà8ëÿ\0ÌŸÿ\0\f\\\0µ€³!Ú0õ\\ó[Û©í¢Ë—àMf¨is5d”EB½r¥§ô!î¸+I9?7ä›j£ó«ê,äB&ë}èyÄkÏ°–Û†5¤Û\"Ó¬©åR¥)ç¬y}V¾s[š±´½ŸA¯-çxp\'Èù žÌžšÌ¡fŽÄDÄ?Å•]eùuáx†jÆÐštX¥Ù6%VÏYˆË\v/6Rtš]ðâ•yFfu33©þR_Q’÷ç™ê–¸)JòDtsa²3’ÈwRãV*^“%ßÐJüÛõëÕfŽÖ\'OŠÑ´Õq6RËË\\ipR6“¡&¢lµÄê2Û½¥ˆÒá¯X¬\"ÄÈ$±&KzY\fá”Ÿ†^cZæÉN•–ÖÁŽó½¡>ÁXØUØ³ÐˆQt$õú¼|žö<\f~åû=g¤Pn<ô<¢\n*„Fzkæ5¾l™=©f˜1âö#eÖ¥°¯üŒ?ÿ\0)?Ði¼¤Úi¬$$6ü$’÷J2B[JLôo Ú³3;Lµ·«Ä:žÙËæÓtÉ£¬Ü,-ÅŸˆq\tIºé¤«óÑe¥\'-eÊ·Ã{Æ+ÃE“Ë\r3wÆ˜YxÖ^kj¢œjó×µ¥ÐôLøaå$ÉMÚv\"%6V–¢IçºZu{Ã©Ë=ìÚ4ø£´=“Ùm“²¯¶ÓV\rØÆhüGXJÌ5#=>E¿Ì„¸òeÉøÐäÅ†ŸƒvU‹{`ÙŸ3+—X‚ygvò\\:\'Qâò1bpj&¼ónŠÑŸKäåÚZãCF¡.™D@¬ÿ\02Zz¤ÅXÕd§HÖ\'E†óÍ1³•(L\rŠ_ÍjI™z$ké7žû3è8¼·\\“¶Tu…)J%]¼£¦¢®áï7åc(ÇCÍ»fââ3B\tnLÉÅéýÆ|[ûÉÅIòra%2éSÊn]†´‘¨“çê5µí~¶–iŽ¸ãjÃ\'3Dd4·(ƒmÕ¼áø‰]M4:šYyüüÆÔå´úò×\'5cÔ„9†Oì„þ]\t#˜Ê\r)—,Ÿh›5‘6å4™(Ìë÷®¡,fÉŽfñ=ÚxT¼E&;:¿.R÷¦¶yØu¸âN\t/4«š/¨©B?ôœ:ki‹GžÏ%®‹b¼Ö|·g?Ùó/…‡M¿4!MÄªbM¸Ù¹x©á ôyùŠ¿h=ºþN¿éoÍö,*ÿ\0‚’:Õ¿qD<ã¼Î\0\0çÙähvöƒRˆÿ\0˜\và\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0\0\0\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\gþòeôÀf\0\0S’¸iñéçw¨\n†ú¨àßiÈÍòâÃ\rª÷âb™ahºeZ‘ÿ\0þ&=Ï™¯Ÿ›Ãñy‰âû&¼8vÒ£¥Ô‘G‡˜êöñ=Á†\\ÙJCÄ4›ß””å¤?“Ò¶ÜAù¤Èµ²Kè4’\f‘¼üÀdR§¡\vÃðÍÖ¼ˆµ?ÅÃÓÞC¨=Æ@*É¾o¥˜u™•ßxèEæÃŽÃ@´oED6Ò\vó-ÅR_sˆ™ìÄÌGvÐe~ÄÊæE-beøØö¯ÃÃ´µ™èò2MÓÑ¸Å¼ZÙ6™£ß3\nyuøqïÖ}Ñ.™‹˜ÚéÌÁù¬ªÊ>íõ-mÒ„ÔÌüÌŒ¾ã½ÀÁ–÷éõy¼´Ï¨Ë6¥:ÏÃgjÙglÊPÝ¦lÊ\']ä™+E\vFÏêï†÷ßg¤ÑS>:mžzµòW›Q?á6µ™RµÐE¯Y˜ªºöM­]’Â=7À¶–}Ä›„µ‘|š¨þÄ$®;Úvˆil”ˆÞeóöQ­\f·(Ó†á²M#Œ‰™®‰TzX[\fÕ*-Ä$‘ýˆÿ\0˜ìhãÀ¬øöèâë#ÆÉ_:»Ã.ØÁÉÛƒµéCÑPèBh4šŒîé©¤èf9Z‰ÇkÌãìëiã%iË‘¦L\\1¤F´|Œ´:¬…ÏQ\tm¥%tÍjó×äá‚ÅyjDI2¥’“M@3šµ\0SÌ*’†â¬ìlWá|O\t¥ZN¤uþD:ü#-«›“ÞáqÌ5œ>\'¹„ö%‘=\0‹g4\\´ˆ¹±¥&t:Ýi½^~d.}¡Ú2R\"|¿Ê?³öµñZf:nú]Ö\\aÓ}‚­2w8ô,ÂbØQ­4eädËñUÖXR´VòŽ„@(YÃZ¼u¸ªÕdEû€Ð€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€—ŒÚq–¢:+ô¨YPêZPfú™ûô<ÉùD€…™{E¥&¡Þ…6b!Ðò¨ƒ»¡G_•â¿†åðøm§mÞ?Šáœ¼F±!ô}³ö†È‹q‰=­·²øWâQT¡·*_ª÷7‹KžóÏJ½6LØb9//L´ÆDgøVúâ#2¼M9¢˜Fm¢Ï¿²SU‹m¹ž˜ßh<’Í‰“€µmºH3%0îZê‘¬èóG“oJÅ>oC™dÉâEN”gJè†pÿ\0’F¾‹—ÜÏ¤ã÷¹\tÊµ‹RIIŽ‰¡•KýÍÒÿ\0Ò1èù=Ç¤SÞÓ\',V\rFDS’3Ñ¦\tâÿ\0Ò“ÜÏ¤c÷½ëÊ•¸kn\"%Í+°ŽiûÝ ÚºL–ÿ\0Ê;ë1Ò=ÿ\0$Ø¼£Ùé«ˆjâ‰LšˆïÃ-5üº´\rýûo¼#}\"vå”yôÖA;„Tº>1èuÐÌ›JÑSýHÈÄØtù1zÕ´n­ŸU,Åm[L}?wWcå³H ä…RN©‹ÇK§C3:˜ÎõÚÖ¾\fi§OKóV“>þ¿¼·Ú¹T4BÚj[vª:¡‚\"2®±[Ñ­1¼ÚçYH¶ÑYú?\'VÂéy\"G¶¢¤Ñ‡5]G™ûÅCÅ¦™Ÿ_³õqZÿ\0ÇßòE6âçm~khc\"ÐåâJ\t‚‡4•¤”ÙÐÏæ6ËXÁ;Ò?v¸o:ˆåÉ?.Î+™:±ïÅ³&eçØ­Õ¹U’2ÓSÓ¬Ä~•——–%<i1E¹§ûÊ´,²_/~¸JJ„M¶IÑöM­nòž+Zö†å²*¨Dfz~cVÏ*â&}³âè@\0\rp\0\fÕ¸€TÎZPHðï:…£ß-HˆO§Ëàd‹û•µx=\'\r±ûáˆÉµ”rÈÊ¢ KiqØ¥<dÝi¥)\"þBßÔ×U’¹+îýåK„io¤Ålw÷þÐÖ6â]RÒƒ#6Î†^cšë5þéùÅ¨“:ÐI©‡Aë#Q™ú\0œ\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0\0\0\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0~)$²4¨ªFGá»T¤¯¶g«Ì¿@úéøX“ý\\æ)¤“„‰Ó{ûŸ§ÌÏÆ³ÿ\0ºÅØ@>(öé³vªcjäP\fŒjm¨ƒW†óJ4×ó‘ùjÕ ‡«à™k|SŠ;ûžk‹cšæŒ¶íïu/³-•—Z\f¦&ÆåË\'0¦2ñ°‘j†Bœ$‘ûç|ÓS­Sæ7×EñSš’ÆšôËÙô«ÏØFÉÿ\0Ù©k‹iF“$KáÖFeJ‘iý7k§Ë=&~³ü•šßAŽ¾·Ÿóäö¯ÚGÙF³nÉdé—”Ñ‘,ÊM›÷ˆ¿½xÌõyñð~¢w½¶ùÊ<œOG§±×£˜¿iL”@¡¥AdÝ(Y¤Œ’Pé2Nâ§ØIÿ\0§µß\'÷Aÿ\0¨0Gÿ\0›šßµíðpvZ Ò^é#ÅJnü´WÐb~Íeó¼3i1öŒr´Ç¶´¹ý)°Ñ$DUÓ’èújÿ\0÷#èOÚjGÿ\0œ¹Ðž×­F’M›ç½¾0´r-övÕï’>ŒÇÚJOÿ\0œŽûAÎ\'È4YæÚa²ÐÑ½Sù™ªŸêƒo¸\"+Öèõ,ÚÞ­:<\\Êôýè•”<M¶G Œ¯ê1÷6ö¿ŸV\'íãð>ŽCYDµ/>ËåÍZ\f©§Fñ¤ðZGâf>ÑZóè´YO¶-ÝƒBhw’†ˆÌÏÈªz†#„ã‰ë»3Ç²Ìtˆra­õ«yüLI$ÌˆŒˆ©ü†ßw`$SÆu31ÕQ™Ô]Å®/Ä$™T¼´i1Mé²Æ>%©™ß}Ü„Mf%áIê«Ý¡Ý¡SWu~â¥ôTü6^ÇÄï·­^¯zŸ›)ä8Ü%tµ)fg§í¸U¾,t¹—ñgË–7Šþ¿é¶„v1z\"XB4Tî™™WîB+Ec´§¤Þ}¨r†‰\'Û>.€$\0\0×\0\0ë|¯ÇNep-FÊ#ÚÒ‡\fÓ]¨tûþÃ«ÃpcÔL×$8¼_U—I¶9Ûw\'nZìÄ4E¥}NF¹SY™Sôÿ\0[ê*k#e˜ÅÙE9m†-›¼¯9\n¢pž‡]Ç\vÏê*­µwâËCŒžôj0¥ø§‰(KdzÍZLv‚BaÒ_ót(\0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0\0‘Ÿ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî²ÉœªÚI\\“Í_JÐg}µW®,ˆÈŽ•ù‰°g¾žüô”9ðSQ^[ÃùYlòœ¤Ú\tOãžzúŸ„i×¿†ft¼:´¡k:oLÇ\\òuÔSO3ŽÑÕÕð¬B%)r\'ßyFk4Ö§xôêjZ‘=\'º…ëyŽ±ÙÙ6}(—4ì½ä¶‹çy7©£WôOXÝK%-·FðíDV’JáR‚M\r)QUZ56æì×;S»†í·…LO‚‡Zi²UïÏZÚ(Åût•h[JÌR×HÖ’h*h^³Ü15”3æÔÊm\"/¶^5£I+ ŠqÇrfg£Y,Ÿ©NP„‡ÿ\07ÈC4ŽìóZ½`f1Ž:KpH-\n2:ˆæ\"¶]j>(‘VÜpÊ”Oºz6ˆKOeh8Ø“&(RÝ:(G÷ÛhŽ©b»ÏE¸Gb¼O5pÈô˜†y|¥¼E¼á¬’›„Z–¯-Öù‘jÑ]_ çj-]ößiuô¸ï5Þ#xTb!*+¤ÒÑ¢¥y4Ð*Ú\"±ÖVë¼ö…Ù\\±ÉI¥ÂOùŽµÑ«WØQÔrºº¾Ûy*gîŸ°¨éûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~À8s\td=¬ðÉô¥´Ã*¦JMÿ\0Yy”M‡=ðïË=Õõlz£$o³”ÝCH&ÛŠº”è\"$wÌïÖSÄmÒY‡Œäî\f™ûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àûƒçì@\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0|Å–_gŒ[¹¹Zy¼†eI32‚y\r‘ÓMN­¨êf°îðÞ!›\r|8žŸÏ‹Å4xíoÏ«åyŽF¤å8vIìÿ\0nfdNh7bRh=ß–¨Z7ŽÝ³[z×çÍÉÇ¶_eÙ–SÙÞË7\0ÜtÏÙædÓë©ªïÄhÐJ¸‚»ZyÐS·šFÕÉ²Ôh-–wšï\r$~FíËð*€±Í–dÉš)¥M¢VÊiMGU¤Ìÿ\0AFÚÊÌó_$ü\fzKDrÅ>®d¿ ¹b+•=’ÌÁÚ·\"Òi‡CO.\r¸D¥d£5þ#þ!«Á§½¨Õ£EKY×cßnyÛõßèÛÐ¯ß–7z!²]í†j›-“(wTFFY½õ‘ý^‘Ÿ¼1Dm?Ï“Iá·µ¹¦!2eíáª\"/&°¤áPŸnI£hÿ\0ÍOÆi[_‹n“?Ï“zðéß¬C›*ÈW´”A­?ø½`’ÛzÉ6R,”u­*g{·§_Iü3õÿ\0Iã‡Ä{¾Šßøí.›¦ÞZì{wu]³Q?ÿ\0Ô5ôìsÞ³õÿ\0Lú{ãèòs!ÞÓî%$Yy³-k6ìëÅ_XƒMÅýõÿ\0LzùL}˜ÉŸ´´¨‰s-hÔ6d¥C”Äx…º¦õf5˜g½f>é‰ÐÚ;L}ÉL³+ÑsHˆÉÃ²xW]þ\f3M›ž+¬Õâi?èÔaŠíY”Q£É6ÞÕ‡lYVjæ£CÎ$”¢M+¬sò^/njºXqÎ:rÙï‰³P‘ñKˆŽCJºd–n$ÈÒŠjULêu5nÑAµsMchi}5rNòäÃÉÚ„EÈgÝh¿å2ß]ÃË6ï\fÓOöfP/Ô’¢3í²}â{!ÍaíÃŒI&ÒVò8˜\\O¢]IþâHœ^q?_ôl¾øpìÓ™p—>µLŠËNY3Gˆ˜gaJtºòü«äbOý¼ÇMãùù4™Ïå1üø»&O3‹ƒ\'fÒ¿À?Z^2]ÑBÓTèßè ´DOIÝ5ff:ÆÌÆP×•¶[iì™*Î¸dš:ÌÒÅ™žô©/ ·h¦ý\"l‚ëoòCžsGý¾n‹v×ûYË^$Ìl=•}µº¨FY×æDú©æ:X°pÌ‘íÚ\'ã·øsógâ8§¥\"cá¼þìe­Ë\'´Ìœ—`N†Vdk„yI4ï¥LÏW•ü7‡å©}ÿ\09ðçæâ:ìq½ë·ÊËµý²Í3Êôš~»C\nÄâNó\fD*Œ‰hQ.åIFfGR_ŸŸÈs8¾Šº±JNñ.§\nÕÎ³ÞÑÕô(äº€\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\0\0\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ~(Ì’fES\"Ð@?™™zö–·özÛ;.j5—–‡àžiim(­ÈÏG‘è¼=¯Ñãœ1Ëõxívi¾iœ¿á„ŽöóË“–¢ûqQNI\fA©DTò3/¿˜Ó>Ž³>´¦ÓrmêÇÕ_\'?íËLê9pQ²xU(ˆ¼B„Y’µ4ŸëûkÃ´Ù=¤ù3çÁã—Yïjì¯OÙ·/‡I9æä2ˆõ~´Û‚èâ;í?›Ÿ÷Î¶\'m·„;]—\\¤0¦—0—%ÛÅï ¡ÖD¦ž¢­¸N—ÊÑõo^5«þ‰ú9ðùG¶ñÕ[’´ÿ\0FdFz\vùg†é)mSïmu­µŸ¢«ÂØ8eâ@ÝÓC#eEþ¼ÄÑèãµ¿XX®¿ˆOzÏÒÂ¤¶ÒÚ”6dM’”gE˜]Ouh1:m,v˜úµfºgy¬ý%¬—Î-Kð\vm(‡JêWV³$¨‹^£=ß/1O6-5/Ò]>}mñõ¯_¢œÂ|†˜…Á­zjjQþÊ ¯zà™õfV±ßUõ¢7þ|RQw‹Ä‹†»çw_óM1yL¤Œš:Çóæ÷!ö”F~+fUÐdzÈChˆž‹4™˜õ–¤&GøŠùz[¬\0ün§TûmÑj­N§¦£i½­KJã­ff<ÞÑ«uyÑ‡¨\nà0^Êì³%5L¢åqs…‘xL2ƒ$N•7\f®$‹^“#ôšYÕ[—xˆUÕj}»í¼¾X„öÎµN¦<â¬´©ŸjðRŸuEt^Re]_Ðvãìý:o–>®5¸íâ:cŸ£©fþÝS›¿&rÏJZAºtW‡_r§£ÞQ—žï!sOÁñcÍ[š¾£ˆäË‚y¢cäúGØ1ø¸ù]­›ÅÀ›\vŒrF¢jâ\\U©–ýbŸÚJR—ÇøþÉþÎÞö®No†ß«êñæ^‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0ö”ÉNAÚ¸‹3‰RÜ}j½yå\f¼èZLëúCÁså™šoÑæøí)H­â:ÎïŒ-,âRúÕ\rfdðmµ#nýŠúLziÐã¿yþî-vJÇþ“¶óbUérà!ˆ•}&Üš\fÌ¾æØŽÜ7ó+â&ðÕBe‹)g–‘:i¸T™ŠÜ¦\r*I‘h*“uýü†´áøï>´o?œ±m]©¯O£’¬¤ÛçÒFvÂ8Í$IÐÓeÒƒiáXc¬Çë,GÉüØo*9Of¤Å´œ*´ÿ\0€DFgúî1+4sDI<Vü³Ë;9\fZL»MT¶a­¬Y,¼–e þu}ß£¯^XúÊ/½53êÍ§ôH›Z|ºB¯Âzh‰Ã*’ážš‘ïÞ~¦7¯\rÑÏá†>õÔoŸÑž™Z¼¾‘%MNm2Ü­Tm¸º¨O\rÑÿ\0D>m¾óÔOãý?Ò\vÖç.Œß8‹GlQžâ9OŸè5û¿KåOçÕ$kõoüú8Žåk+ÐÌ±yEµMŽ„GáËXÄðý.Ûøm£]¨™ÛŸùôP—eû,\fKüL¡ÎÛUûÈ[¯ß5ŸÞ»‹F¡¼pí%ºÅ#ÜÒuÚ˜¦òÒÊ½¬2éD×öþ9êÐÍNÃÃ¬Ëþäžá­øF‹&ÛÓû”âZªDòßû-?íe–¤¾DY@ˆm)ÓOÀCí¿áˆç‚èf:S¯ç?å$qmlNó~Ÿ”…»9íI–)ÔÁ¶¶^\vFáŒá™*&¾~çòÓèö™µ7ùË\\ükW_fß¤? ù%µ¶¢BqQñª‹q¶Ù«Æ„¤—y¼T\"×úñüK\r0fšR6z~Ÿ.£_,ï.|òØ-©ñÙYI ãÉÅ8eD$õ5þÞB:nl~-»&Ôjü<‘Š±Õ6ÖZ¦åSye–e.ÆÌ¢[[úhD†Ê•R©MVá¥0ø¾·hI|Ñ‚6ž²ÉZ¼úNáÌ\\™µB»Ûi»Zž³2#óßä:º]&Þ¬Ç÷pµœG>Z³úBˆ·P6ºÐÇØûXˆXçOâa™~\nl›$¦©\"4éóVâ<?Ñiqt„¼+‰Î²|,ÝeÛñ™7±°mÃÙ)$=LW%Œ{Ôò:¤rkžñ;ÌÌüåÛ¾\nZ6¬mò‡Ë–ã%™:‰µx9ìD¶ÏCÃTšpål‘¼U¡ÓÃlÏu{lÕ¬_wßâàd¦+ZqÞþmO³M¦„L\f}’&[fÒr[år5[ÆM\f‰$H=$_ŸÒ¦I˜ÉgC†Ûw¥>ó‡X®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\0\0\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@Å)(*¨è33Ù‰˜¯YuÞVíDŽÐD®\t×oAKYS‹6Ê«uJþâw~Må¬‡†âÉƒy˜ë/3ÅócÔÄrÎñ’mVEíÍ´+G*j[¥R^‚:’HêFdDExëü‡©Ç©ÅXå™Þ}ï7h´v‡\vÙfÖG¨œðPÙ¨ëïèÓçBN»>ÒræÉ>Ë°ì÷²¤é0‚ZÂ”N©\t¯ç-4\n™8¶\nO2xÐê2ô¤;Cì±g É.G4ËÆ²+Í­&FEóý/?ÚëHu0}ŸÍ;[$Ä|çfr“\v0Ú\nÉKœYUOC¥u2ó÷ˆè8™x®¯/{Ì~Nî.¤Å×’&~=»ZÕ—³¬2HÈµ]‡ASÐ…iÕgž÷Ÿ¬¬Æ‡M±×é“û!el¸vvZk]ëÊ8Fêz¼è3ÍDt‹ÏÖXô\r/ýºý!=vBÙQ¹4KþXt@ôÍGõÏÖO@Òÿ\0Û¯Òx›;d®+ñ’iY¦•?³*}È#W¨ò¼ýd—Ï~ÇÛ#ì·mZ‰²Qò«*Q©¿¥˜6ÐëkIÝ:,“R23ÒUpë5Øm›LÇÆfaW6G–³ZÖ\"}ñ»¢,o°\\†c8zuhYˆ–´êW\0¤I´UZ4žIôûqúÒ\"+^ï?<6OZm¶Î¯ögÈEeM¢×CÃÅ$µ ”­?c4üS6n¼óècíÝÓ³Ü‚´ÚŸ‹³Óèyƒf²Ro¡U\"Ñ¼Ž…å÷LzšÛ­£e\vóW¤y\"#&vŽ´Öƒq³#RQxˆô×wè&®HÝKE¢:¾œÈw´“–\t–$v²ÈÍ?\nÌ2XüD-Õ¥jMÒI™)IÔD~¦<çàöÔÏ‰†cw„ñjéc“7guEZn­|žÙY\vNÔ,Ý¶É˜†ž% ¢YQ¦ª•ÒF[Yé?GÕiqÍ2Òy]©Ôé5™\"ØïÍ•°³lN&ÒKO(Œi™„\n¥¾–Ê¯0jMä(üÈŠõüÔzª(cË8·­£¤ºY1Fh‰‰êõÍd0óF\r‡ˆ”FG È©QgœS¾Î~£„ÆXÚ,ë¹žJâ¤Ó­Œ‰ˆUL t‘xªEæÏB’TI×Ý5kó ·—ŠWQ_bz«iø=´¶ñ7ŽŽïƒŸ²»8ÌòdÚá¦R·å/&º5Ÿ˜ãøskòW«»9kL|÷é•rÇodG¿f¬Ó¶ªh·–hz6‡„*Ö”Qª¾^^CÕðý.[S—4òÇ÷xý~£\feçÁënù•QžÙË}-Ê\fÖälZü:Q²K#R.Ö„—QŽž£A.žqWù*úMeñfŒ“ÑÛ==€´²hIäµß-²qúŸäÇlvšÛ»Ýc¼d¯5TFÚà\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\03÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀuæSgÒ©D¾._iáÛœ°Ù©†´¢®h¥}êê3ò>§½¯åõgÍÉâzŒu¤ÒmÖ<˜yD¶u–¡`›Læ0½ãŠ¿áÞ5~c=\n×Bó‹Gœôyîx¶û9$»Sä\vR¨†ÝQÞ\'Ñªý½Ï–ñ¤Ö\"w™I‰íU9“Ê-¥Èˆ†ÎžâæK\"\"?3÷æ+eÔ`ß¬õ\\Ç¥Ï1ê×¤µíCÚ¹zS\fô«ÄR´·n]©ë3ºB•íƒ7šþ*j4ß‡uè)cªe*‰(”¸›ø:ÔRµ#Vz:4Ëi¬sDïù9q–¥˜uÅDBÝi²¼µ_Ô^ƒ±ø–åÝœÙg\ryöÝ›FZlÃ±\t†e§–âÖHM)EBxVXæaÌŽ5ŠgnYjsû@Ù.â¡ü/%MUôÜ9¶¯,ìëÒüõæg-NKâ­#¤ì=¹JL‘p“òÛOêdJ*ŸÏ^Ó,R6å‰i|sißy‡]Fû\"Ëg-ÛE”«G7B“tÚ‹tÖƒÒGS#Q×î.SˆÚžÍb¯¡­ãi´²Ócœ›DA»*a2·b\fÔôD49Žë©‘‘ë:‰£‹äí0¯<.»ï»ÐÏ²ž‚²gd¥öò×0Ã®¯¸˜å‘º£*i*è-z+æÄ#››bty&9vºÃ{?H¬\f¸Óf¤0³´*ªˆŠ§Šª•5Ý=Æ,O¦Yõ§eðÌõãªüt®ß¡ÅÊ”›Ô#3©èù\\¦m/â¼ïüø É¦ÖoêÒ6þ|#dS}\v/ì,DziCÓÈ,×S¤Ç?Ïšµ´ZÉüôÿ\0L\\âÈe> Ð¶l„­¢%‘šaÜ:™SQ‘#P·]N’#ÛŸÏù*ž‹«›m‰ømþ–ììŽÖ\"`…ÚÂ&45)÷ÿ\0ZÜÓúsë4ó]©“çæ—ÔÖÛÛßÏÉÝ2‰\\d+pLÃ¿.&á%ôPÖgåM‡œÔcÉ3Ín¯Y¥Í†#’½Õ$B\nªŽ\"óÒŽâ¢öïÆäÍ:Wš˜È´T“^ oºáØ¹ó®³0‚\\<d•3jRÊ¤zRI-:7‹X²WDÄõRÏŠù¦wŽŽªµÙ\f´Rç#¤vÆvÂ–¥)0®’´×ÈÊøìaâsŠÞ´C‡“†Ó$m^ÿ\0GCZ/b«a/iÔÂZ˜FábjR¢a®‘+þc5éJqÊZ\'hSžjMyçì£%›Ùë3“ùå¡ƒ˜?)|ÜaØeÞI0¤•i®ƒ¼•ŸÜp8¶8çŒÑs;ü+?=gô»ð¤DeRŒäî9³÷?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØ?p|ý€H\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¶ 8e#4ÎmÜKm™8IpÉfš¾“¡éóì=_\r‹SMñ\\^õ¾®b«-#…ƒlÛJ³Qè5yu\'ftØ¢gâÙ7\fË7P„—™¨Èôª&l“1´KÒi0Egy…y;¤‚ˆJt™Ý¡zŠ®‚³-Sß^“=`=à2 ?\t)-’ôbC´aê¸\0\fˆ\0\n’fÉæ¢Ú5)$´’LÒt2­íC1;NìLo(K%Ðò¨4@ÂšÍ¶ëCYÔÌÌÌÎ§ú˜Ú÷œ–æ–¸ñÆ*òÃ’eR2Þ4nÆ:FzôTËU\vGôg\'>=½ÊQ†1fçß»ÉãQ\vQèÑ¼GŠ±km)µ¶:ï»/<´©]ÆÙ«ÎÔÒšÔw°éfÑÝä³êâ“ÙzÌCÄÚf”¹«®)ª¹©&Z©§ýiµs]7«Hêêpø¾·×É3´6É<²LÁÃÊàÛ‡mGSJ\vYÒ•»^×í.õ)ZFÕ†Vbˆ‡ \"¢KêmDÙ™T‰TÐÛš7-ìÎÌ†GamÄžÌ¸Õ´ÿ\0}Î¢2mEá¶£UIŸËHëñÙcÀž›8|6sWøÑ×ã-[iZml¢k\fãÏËTKHQÄ»C¡–í=¼›O›n!›õžÛº¯!Ð‘°9_›%Ä\n)*Z“JÅhý‡_‹rÛGç?›F¶#n“úe\v¡ü¼Ç“{F\\ŒŒª@\0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0\0\0\0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@Tu\tqµ¶²ªT“#/GF\'«äW2“åù+7á›T[®6•i¼Ñ¬ôžºU#Ühf·ÒE»¾}Ä¢Øõ–‰ø»¾Íx†Ù^A&žé{Äu#]\\ÅkÕ×ÐÖrd—Öç„’NƒWÈp§¬½TFÐáFÚh›.Ñ¾Ì‚:h·Ö”C4¥ø›IÝ#Ð$ÇŽ/Þvi’óNÑ»Kgm*gè¡Ë#`ÜKdµ&!… ‹åU~CÇÉæRüÞKb4Œˆ\0Ë))zW1MšE>Üc‰qê4øm&ží_#ó=bI·<EbròLÞeíŸÛØi¥*–F>£UÃiJÑMz\vNÆ-äë6ˆÍS6¾1t­fgáäÈm$Ês”9\"ˆ…‡S~\'ˆé]¦­:™ê/!¦lÅ-¼¥Óê/šzÒb>.¬¶\0¯!Ú0õ\\\0Ah%–ŸQ˜šÚ¼ÏÅ¤Í#ÒZHÆin[n×%9ë5uý¦Îž™3+—D¾MÕ’[5Ð¾f_qé´º¼6§¯h‡ŽÖh55¾Øé2ÚdÖw\fÉ·0iÖ›I(®8‹¦Zw‘Îây0äñõ—[‚áÏŠ&2ÆÐÞC¾ë¤Ì¦.›©„‡DJ“mšn›wFu35PQjÖ&šV\"&PEí31^3w¦X¹ô$Íå~µ8pÎ|%i¦‚%Wq×ÌK‚c-£Çt:ŠÛ-–\'·V6K—+5m¤O¹&C)™$—àÔåÇ\fŒ¿ÃJŒ¯yê®¢kp¼¸/ÓÓÞâOÅš“uMÈÚæ3<¬ÆÍ€q†Iy\n¥[÷VU2ÖUÑ¬Yâ¼”ÑÅbzî©Áyï­æ˜é´üŸC¸Ý}äëóù*ölŠNšKW˜at\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0u~XlÄÚ1éu ’1óðîx+KçwÜV“22Ó_t‡g…jf“8§´¸\\gI\\•Œ³äÈÚÜ¬Î,t¡0¶fi.9ÚŒŒÔúMDÑyP®™Ÿ‘Ž´ž‘>¼tr4úŸGë.£å#Û6~Ûòø;u!#q»ž\vlÃ4íí4Q¶F^¾C?vèñím¥j8®l›Æï™r‡>ö¿Éõ¥z.ÑÛ)ñÔÉk/\ne¡û¤š•OAÔ¼ÿ\0Qg‡XÞµ‚ÜCn“2ÜdëÛÛ+6Q\fÃÚ¸²˜Á0Š‡hÔ£2\"*¨ˆ•BýDyx>Ÿ&ó¶ÒÞœG=våâ_AXïö†ØIÔÚ©rá¢$Ò¡Z5ÞV­°åäà—ž¸¥~œV#þ¤>²¾Ôùµ°¬¿láÚqêQ—[Y)5ò3»O-â–NªÇ=kúÂÅ8¦šÿ\0‹ôŸðß\"ÝXå¤–›K.2QT¿ŽB—…rç‹O{#n²Å“›?q“+Dßƒ\n•)Å4ËŽîÐWwäU1cÔfÛ’¿Ù[/Óbž[Ûûºª//SëDårsaN*Ì‰¸¹¢I”9«I\"ù,‹^´‘Ž¶\têï¨¾Óðêäj8õ)m°×xqæ­{GZ©{ßµ2™œ:¥,0Û‰I”m¨þõòFC†bgyWûÏY—xˆÚElrAír£9‹Wzf²3Q´Ó‰oËO÷¸‡CpÉé5U¾§_¼LþŒKö‹*6Yö¡í]¶µV~dƒÿ\0ˆ£ñ¡V_©Ï^ú\vµÐhòuÇX•kq-dw´»2Íe3Ú^¹¤ºmk¥T5šhÉ»]ÇB#Ý£ôsð½\r§kz²³‡Œj£xŽ­,µÜþRñ7n²i2‚Jt,Ø‡3?‘ÔÕwý}…+ð7¬Î½WéÇsVÑ1ô÷·öÚ‹%“ÍFÆK”i©&&ÊŸËÝ#!ÌÉÁµT¢\")‡Nœ_MhÞgo“µå9cÉœéd‰}®‚RŒªD³Sox‹H©“C¨ÅÞ«8µÚ|Öå¥º¬mì‘‘Ü´N+u’Œÿ\0B-\"Ãy¶M9±Ö7™yNœK­Â¸ŠÝUã*•7\r&6è’\'xÞbÓpî‡Í4B–Z÷Œ×mýnÌ[}½^ìDê*oÁÃ¦:Rê˜y+[ˆR’âÓ]$Z\t¥KÈ·é=,izÍ¢\\}mõQ1—gÙ9ºfÒûÎ°¶£þJ‚%Ë]L½Óß¢¥¤QÏŽ)n-6IÉH›wóf²‰i§–lÕá³0ƒŠ#B¡c\nâi¸• Ž¾w¨±¦Á\\Ñ¼t˜UÕjm‚Ü¶ëøƒ*Rû&´ŽÚ;gÎfûQ1$£n‡RSjmJ5jVƒ3ÔZ°Ðê3dÇáçþ/\'®Ób¦^|>ç`{åak\'ÖŠoIAþ%öÐS\"+¤_¸âñÍ<Ò±1Ò#÷vø>ZÅæ¾sû>²ièÚµ¢ºKXZVh=Z<ÀNž™C™{ \t \05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0\0\0\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t£HŽÊžSrjvj\0ÜC-8iuIÐjYh-Ziù¿aéx^‚+_þ}žW‹ñ\v^|\f~SÕ*ÍÈìôÊ\'ñ1²H‡•î©Å²•~†zKì:9fÕëââö¬µPÙ/±1‘«™DIHâL‰&éÕyPÈë¢¦(ßS—´K¡L4ˆ†–q’{+iìéK&ÐLÄ¶é\tÇ›\'I*Pªª™Ðüë¸Q¿Ë‚ý=?\fÇ¨§<¾_Ê§°Lº?ñ/Y(¸f‰ÕÛ„dUÑ¤èGºƒµ¥âÔÔW›,us5:LºKòRw‡PÈý‰í\fŠÒ¡û]#LÖZGWQ³¼:(“üÅùÔašóRv•?\'³.ô³’@:ô<·\'i‚†;¥ŸÁ0³¦*3:ê¦ñO6nœÛöo†f}YžîÇ–äžk¿zC.ðRD„”D2“ó¡$Å_N¬wKm­Ä´²œ‹J!ÞLDíÈx³B‰mÃ¥’K=÷\vAþ¦BñNþ$§Ž‘’ÊS©srÈÙqJ !”•;GÍm—¸ÝÓ\"ºT2­i»Y)žÙ«<ÒÞÚlx§ÕëòjY4~VÈ’TÔEAZÔû§Œ‘·g‘Ý¸d|£3¶ÅgknÏÚK;\"´îCÎäðqŒšhiy”¯GÜ…>[âÛiÕ³ã­æggN¹øË56Tã%6¢&BáJÜYÃ(ÿ\0è©¤·hHêÎª™+¶hÞ?W>1Þ¶ÚÞÙÕ±ËlŠ m„³¶ž­´‘)k*èüÍ;Ä5Ñi³Ï6,“]ÿ\0žõŸOË‚9rR\'oç¹ŒÊEžˆŒJÏ ñ°ñÖm\\Z+O$šÈ¨7û«4vËÑ·ÞØ\'½;+;³¥ÈùÖL[_‹T¢åp©RgR÷ÉU3!^Ÿµ2uüå&>+§‰õ©Óò†ŠÐJåþ&Ma¥.\'Æi\n^ùn™Wî6¯›Wl—•lœR\"ûã¯o|Co+Ê4Ò!µDLâ¶¡+R´Pë­$_:\n¹¸^.ÑÞVpñ¼ýç¬7ò¸ÄMåLÆPîD Î‡ èu!ç3SÁÉ5\'­ÓäññEçÍênÏKÚUP¨’Mÿ\0éÄ,Ó{ËECÆ»3‚“ÞÌ¤eRI’œÖ¹Ä²-ØY‹å\fK…BLÒ³%~e$¿º~bÆ—G“[šOXWÔë1è¦µ´t”<µÉaíÕž—J`»0#z¬ÛMÛ¥RR“S#ª“ä~{„Úø\'š:GtB“ŸmIëäùfÑû[™«0DÚYZüoÞuÇ*•KJ4ÓFŠE^=§®øùgéÜº¼^húÏøWöw³òÌ˜å¾7\'rø×æ*ODE»¢ª¸½U=ánÖ!â·ôæÛn±\tx]\'²+>é}r<ƒÖµÀ=kEt§XÓ³4~…îÕU-Ú€N×¤€\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\0\tûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜƒ8—.[ÌUç[ekm75¨ˆÌ¼ÆkÌD±n‘/‰¡çQÓ›tôÆbÂ[Šq$äCUÐkV“2/Ö¾£è:lu®–±Ÿ8ÖÞmª´ÏYv½ŒªŸ#ºhB— ˆUÔmË¹‡~}›\nm¶‹©32QÔs-_7N¶òj¤\rs%\fn]$©FZ+»Gì9ÚzÜÏAÃ2o^G*k!ðÙS¤â]3\"-%JiûˆôÙf³²mn½y¢:³>Š ï³Ôf:“iåèàÅ#›«”ÑÕJjM¯=Ö\")^DJ3$š”j^c]¶gy—­Â$.†f6ŠnÖm³Ž¢5;VÊµ-ÄrôC3ÍÕìM.$Ž¥æ2lüRH‘S%TcknÚf¼©ñ‹$&·M_!69˜•{ÄL%C$³“MQT2þºE«NÑ;*V¾´8v¥JEë®™é-g µkéºí(µq´ìÂDLŸ‚um¼ã\'¢„g ¿B1ÒŠE££Í1=^1v„‰\r¡r†î¨‰‰tÓMz†+‹n±,Íù™øvM¡A¾òª’7n™Ôõ–\"yß“¢/=Ý—cd(ˆm¸¸ˆ„¤‰DWSS\"-zÇ/Y›’9½ÐéhpNkÅ<æ]ß\tfƒ†n˜›¨l¨DHÕû’ó’Óió}8ÅH¥|žìÃÆrw$tOµ“«šY9C­²´.hÒÉ):šýÕ•<·Ž÷¯oÉÀã¨ÐÛõFÈl„Ä‰Øw˜C_”¿ˆª¡5ÜeJ|õŠÚjx™où¦ÖeðpR>\rÌ4±28ÿ\0÷×œ¡ºó^!™šR¢Ð‚©è\"»ûŠwŸùâ>+¸ÿ\0úÛûáòÖLYŠ‰öÀˆb)¯OAÄ(Ì“þV×¤ýLz=gÿ\0ÊŸÎ-\fmÄ#ò—Ø9‡Œäî<›Ô™ûƒçìŸ¸>~À<œõïð|Þ½_MÀ<$¹ª,îù•Í_¸iHˆÊ¥£þŽà?s÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØ?p|ý€H\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0JPé4˜Šé3»Bß¬1øG\"¡#25¸Ú’šê*Ígi‰khÞ³ò&…‘[¥4ëD—–†ÚZQ¤ÉDZ~Õ!ï4y&ÚXß;ÕÓ—UjÄ{Û‹Â\n‚Oæ\"ºJû¯¨´¶ÁXæêìˆFOÃI¹¬´kÔ9×¶Ýt›u†ŽÏ¤‘D,Ž´3\"Ö9Ú™Þ®¶Š&¹!±|ªÃ…ÿ\0)ÿ\0!ÍŽîÝ»K–Ê!IMEO/êÒÓÊó÷¤sÈ†–dfF£¢®ÐËXŽÙkÕ54Ö¼ú¯rYÞ”–ú–±^Ú™ü+”ÐÇ{¹òÉL<g‹âÿ\0r”¡o¯ôô«¶ô\fSÝÌ;1\0gS¨zUÏ»ñ?JÌ@\'IT=*çÝø™÷ ‰iºƒ$×YÐoM]¢w²<œ:–®Ô’â¤QÙøw?ò«Ý¨·N!Iö£e\vðœ±ìÛt„Ëc˜Ž£©u)F¯2QÒ´#ë¨Ç–›Ã—}&l9lÏZ¸£[/VÓBRD£¡Ô´þ‚æš#¦Ò¡«Þ;Ä°k‚Tbœ[m™Jõ\fªfC¥¾ÝÜèÝèTT\t%Ö&¹y&¤ÔWÏýT#kÒYh\vQH·&“¤¼i?D„Ò†gç¤÷\tïM£–­)½§ywæGæ-EÚTÂ6Š&ƒ:ÓóT¼÷jwŒS—þùz/³öæÔíðw òÏl\0ù¿ÚQPNÙÙlÁÅ²Ë±¨Q»Ot¨J*ùk¯Øv8Mù&Óðq¸¶)É4ÛÞÙDÊ¥S¥‡MØoÂ¥Pñ\ržƒJR‚#/ÔŒŒUÃžØf÷ÛªÆ§Mˆ¥&z;ËC4#ËY¹q(I¨üõŠ™/â^oï]ÅÂÇ÷>cÉÜ½ÈkÔ¸˜Wîf§To+IIòÝÿ\0)OªŸþ*8ýžoG·Þ1ùOîúèyW¨d@\0Wíz€¦´y*áùÓp\f¾½$\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0\0\0\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@x:êZMOIž¢ÞdÖq¸u?wí¬ó/tÈ·\0ùo,Ö1p6á6‚gËdûŠ¸£?vé™™é×AìxNª¹0xqäð¼kI|ZÊw–‚ÇÙ˜ÔºÛ$I¸T;é24Ýû\nú­MqDÍ’hôs¨´E~rÙÍmžËGK$¯ÁL\"\"&¯¡–Mˆ\'Bj¢#RÖ”šP’­LÔdT¨àLäÔoyžÏULx´»R±Ýâý±·²¹¤L‹%®L¡Óv‘™Î´ž½HQ’·ýÃ<Vò_o”¶Ë|µÿ\0§MÛy\fês\0¨›AgÜ–¸„©KA8Nê=Dš™èeÇŽ¶Û·m‡&KWþZí/l¦ÐYÙÓª‡‰dâP“ZáœMÇ’’:µQDUó§˜ÒÔ½;¤­©~É$DEB*\'déå¤Y¨_ÆÚ\tÄºÿ\0½‰y-¤¾ê2âÃ|Óµ#tYsãÃ¼½6+ù&Y9L§Ù27n\\#CªµÔWÆgMš:rÏÒHÏŠc~hú´ŒOlüÆ=¹¤®Ò1Ù6Lø0O!ô™™þc¹SóýÃ¼DÄÆßŸF\'%9¢b~Z\nfJ¤ZÌ¥¼€U‘¶…~ Ô„ŸåÖ_¨ÎòÆÑ.TtŽS3ÿ\0Ï@¶îŠiÑ£ì7¦kãöeLòûqº,vN¬ÜJÂ‚&”zî*[¿·ˆç¤õÜüÜM–:WiuÔû$²é½Ãf)Æ\r\nÑ¤ÝÝ¨_ÇÇ/Ië]áÎÉör–¯«i‰þ;±~ÍˆRœv\nh¶–â¯™‘‘«îbÜ}¢Ÿ:«ÏÙž›EÛìäêÔY‰‘Ìá£!uðÝñHÌ–G¨èFZuþÂŽ·‰ãÖS“—eîÁòh2xœÛüÌ›×Jý/SM5TqúÔKf—XiÝBq$eQ˜¥‰áÇ”CFC@¶Ì€n7RI2“$%>DDfg«æ6¼ÄÎõkŽ&+ë93ENÑg¦k³éB£R‹Í’Šºh¯!.—ÃñcÅì‡YâÎx=ß2û=Í­´óÚ)÷í4®\"PpŽ°´ªHMËŽNª­}åyIÄçhf¸ýñû<ç\v¥ý2&ýö—ÙƒÉ½c\"\0¼‡hÃÔpµ£Í$&ß@ ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0Rë©m5?±oée•:¯ß=@8SíEÿ\07@@unZåñPìÁZV\"áÛbwb[ˆºhR)¬ˆÊ·Šž_1ÖáYm<8óqøÆ_=¼dÖ^mœ#(vÅHì9$ËÄ÷ôÒ…E*¾[‡s/®OúÞ¿ÑçÕèŸ0ö‡Ê¼RÛ‡ŸX‰ƒÈZî¥L½\fWkB=$²2ýF´á¸é5ˆK~!lÓ×ŸìÎ9”Ì“Ú¹ëÒ¦ÚIÝš¡\"Î&5\neÚ¥D¶ÌÙ2Õ¬Ìµ2é¯Ž»Ò±?(O‡<Úbfý?4Ëgo}¢}œ`‘jä–Ö_”,Ÿ6umO¹\f¨–ÛULªeqj2Q™yèãM§Ôt¼rÛæèWS–“êNðäXïö”dŠpëöÖE\'TZ\t·žL+†ª™ÿ\0†JU•û‹\'\nÉ^¸çuŠk+=/¨¬·¶7³­¯BNQ”F\rf”ªã°QMž_™¢!Bü;QOÃý–£[†|Û(Œ£d–}MÆO¤ñì¨ªH}²p¨ò©\"/5\'¤L7œØoÖgvìëê§ÍJ$iT=å>éKM•H´þK‡¢¾»ÌO¯/©]ÐdË¥ÅëÛgOÚom;\t#˜.Q“k\rhbI•è(D°ÕúWBÜ6ÈÈ«¦‡¼^ÅÁ59c|“²¦N-§Ç;UÔ¶¯Ú§ÚâzÊÓflD¦JÂ¿ÄsÃ[èIùSÄRköÔ:8ø+;Ûû¨ßRw¬OWTÚ<¿ûbÄÄ²V–ÜÍK\n:¢\n$DfZ\r‘ùyÔ^ÅÂ0cŸeW/¶Zô·óäÛdó-ÖÊÐMC¹yœH#’m\"cÚÒâëJT™RKËY–±&^ƒ“Øú{•cˆç­·‰wÜ’ÖûXJ!S3“ÚØd™¯Åh™3ºe¤ˆ›»äDc‹ŸC¢ÛÕÞ]?ÔÚv¶ÒÔÈ= m»‹D5 ÉÄSK¼D·i-ËÞ§©æåÑb‰õ,êbÖd˜Þõv\v9[‘4†—8€˜KÉeï)PËq)û¶J#gI}ú,WUIŽ­ì£*6zÿ\0áå–.†t[´DDt=+IŠpd¯xK±ÏH–·Zy7Ùq\vNô™æ&;¤‰‰ì—>ÙñteGu&ªj*„u\'£%h!-³dÍ¡§±0ðPdF¨6ZB‰Ò¦š™¤Îµ?#ò!v”ÇZíhë.}óeµç“´;\"A>‚ŸB“Ðž1‰iu¥ Èéó-?a[&9Ç=W1äŒ‘Ñš·ÖÙ«ÚæY‚¥É2$>ì:žeEç_\r*QªV•©‹m?¤zµåWW¨ô^ggNÚïlK\t*•©÷ô\\D3j¸–¡J_rš\t&¤‘L¼ÏÌt)Àóä¶Õþê_}â¥}~î¹ödË]§ÊæTf1ÓÈHHtC›Pí0ÒSB\"ZŒÍI­ãÓMbçÐÆG·ÇÞ©¡ÕúN¶\')ò}f<»Ó5À\0$O¶|]\0H\0¬JI5§˜ \'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0\0\0\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0Å×RÒjzü‹x\r3M)Õx®ýˆ\'V‚&}³âè3Î%––êˆÌ“QÓä3¼ìÄÎÑ»äÜ½Û»Kh¡áŽjër6Rjü9û©Sš(gMz/k×ƒèk§§=£ÖxŽ+Äm«¿%7ÛÜâäò(€TÂ%¿uk#lA]/–¡{=¦ÖÚ¾NlDDuhÛ_‰“44¤üÊ¤UÏ,GF‘Í¿YA¶96²ºØ9Ü²#ÅÐNøe}?2=z+y¯XK˜|á•g+o\t.~_dí”ÁÙJL‰2åF;á‘~b÷ÝÖ7šãÔO4DD­áÖNå¾ó\f]›³PV}ˆH[Sa]9Š‰-½¸fÝmDD_”ŒÏvâW«µ|™ÉžfüÛô÷;ºËÂd\rnÊñ\\ºF¥Â›GçR$ î‘~…QãÏÊŽù\"oßgaÂÚ«7–lvL‰¦„¼ëmøf~FjZ¯iÝ¨GI·[ÎÍo«šNÑ,Õ¢µVÍ>\r¯˜3+hëšåª46¢-%|È’gå¿P»‡<=k©eÕMçhîãJ¡dÒâL–RÌ:S_y\t\"®&f\'˜Ú7•~kÞzË™ÿ\0‚WPµŒÊÿ\0¾t¥?!˜ÞQÖµ›lÈO¦‘*u(J]3Wº¯\"-;ÆõˆóIÇXaæp˜öI1m)h\"÷‰´¥E÷!\'*zÞÝ·S°×*:‹LÂÅZØ“a¥Tà¢]SÌ¬¼Ê‹­*T-B¶}\fý/\t©¬ËŽ#«è\v)íÈëhLQò]øƒF‡—¶Ó•ÜfJ4Ž£ìõæÛá¶ÑñÝÛÓñºEyrÆóðˆwe•ö˜È±i2æ¯Á…xÛ‹a$ÿ\0Ëî™é*ŽV^ªÃ<ÒéW‰é²G+Ù=,œ:ÉDÈ-l®·U‘—‰B=ÄdtÓA­)–³¶JËIÉKÆøí\rÝšÊ5‰fQgâ×0ZÎïð:Þ÷ti¬ÏÔWÉ¡Ímò_¤|Vqñæ1SÖ™÷5“Ý%õt×]$\tçSéu“mM¸iÕ ËY}ÔK’6ˆÚw„gšm¼m;ÿ\0?G²gjž“[ùužðøiªM$­Dá&¿­h“Ñú‰c_7œ\"œ–®£–;KÑ–„Êÿ\0°‘nMåìF²…’ŠÓ2\'UEQ$dZ\fôÓWê7ÐZkš9Zñ\nEðÎï™-²Œ-³L$$Ê\"©uÄÊSdG¹FwüŒwþöôYÞgŸÇÃ§U¯îådòÅÉ2gíd¬Û^Ë5 ¿¼¢mÃ¼uý\vöëµvÕèf÷óÛû¬ètÑ§ÖrÇ–ÿ\0Ùôðó/J×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0\0‘Ÿ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜðä:4Frwé+4µ,Öìiê#ËÔ»?h(>~À?s÷ÏØãGÁÅz¾›€p§RCnO´ÆSá•ÿ\0)üÆÔö¡­ý™|l¡ã-,ÚV‚RaÒ†Ü[ªQâ$Ò¿¸ú>——.gÍóM§,î×œê\r·$—¨®´‚I¨µÒi1<Ò~hêÑKZ~â2mU:OvýBµútK^±ºƒÍ Ô¢I¦©EtŠÔb&b:“ÝÀŽ€LEßj¢’U*\fÖÛKÙ.Su&N2ÚÈJIâÍf<•oópY¬:Ô¯ÉRdÒHÈm6÷3Éçi~N\"#Þ6îÄ¹á©:’áÝôÓ¾Û#¶ßtÔBR’…?]:LÎ¥ç¢¾‚Iº£s‚ÜP3¯ÆJP³ü¥_—Ï4L6›Od{G.}µ8ú¾gB¸^z†õŸ&±1¿VYïÇÄ½à#Áe\t\"½s_ßPß§t‘hˆî‡7“ÃÂÇ¸ixÓxô&´¾ëù‰+;Á^“»öa\v\nN¶úZIk&Îƒµ¥¿4WÉìDd4±Ù‚|G¨FWU#¯ž¿˜Äõ¶Í½YŽdˆXhuÂÆM_a§Mù\rZ™–:†ó>Hã—¾í\r#ˆJ^(f[%Ñ)\"lˆˆþb\v[yå˜o8æ±¬õ}³ìÇ-“EL^——â†Ùž¢ó©–Ðy´Ygš¸ã·W¦û3Š-Ï–Ýú~îóøßÑðq^¯¦áæ^µør\"-\'ÉÜ[g¦\tiÅLc›7â$Ú4%5:i®dšÌú¨±Võ‰çØ›s7J­ÕŒQÂª¹ÔÜ-:(P¯¿¾íÂÖ(ßOoË÷…L›Æª³ïÿ\0\vYK˜±c&ôV3f¥‘,´ŠiÖb\r=¦¹#eEbØæ%åaeE)†WâLŒ ÙI‘¦º¯|Äº¹ßoš®†»M¾_»¦3SÊöÆ‚a.²™[õvšü7tR¿\"\vGÿ\0óýáZ“ÿ\0ÉOóÉônaã9;Ž´gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0gîŸ°\t\0\0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@r§H7$ñÍ¦•T;‰*üÒcj{PÖþÌ¾\nœK^f0ä±LU(jJhEüÈ}\v\r¢)äùÎ^¹\'óF³ò©Œ\fYÂÅ¨üZ•k Ì…Œ³Y®èk3¾ÎÛ—²ólÝRLÎåÏÌÅ\f“Þ›Äu{Š]1}Å“pîL’U¸z¿Q¬LDFì÷žŽyHã\r¢t¡Ý÷)Z\'ì\"›Fé6·{JÂÚ\tÒÒä‡R-h:iù„êñ`¯-©¤Í¨ëŽ»¹ð™¸ù9ñ#Þ#?t½uŠ·ãx¢=XÝÙüö·¯;50ù³ÄåøçUDdi¢\t&_}?!Í¿Í1µz:ØþÏà­¢o;üšYNI,DQ;âÊÿ\0á’HŽ¥óù|‹ýŠßzê¿©oîmô¹ŽdJÀ¸¢VouÖIYPÿ\0`û×UýLýÏ£þ‡+ V%\nICD$Ì©ùÓOÔèUýÆôâúªÏ´\'ÑÞ:Wfÿ\0g‹\fê–ãln+I(Z¨ûA¨…)û5§Ÿ?çÕ‹û!Hb›[²ùûÄñªõd´îÓ]Æ?´™b}jôk³xù}[uþ|X©§²´„n%é$Rc„™©4\"2\"­)¤ÌÌé¨ˆtpý¢Áxÿ\0’6—;?ÙýE\'l[L}?Ë¬&y/µ¶z1pÓ)tY¥Z\r7£FúÎ=M3Wš’ã_áž[ô”h)Iž~g\0÷ábHÈ–•UMªµ*•>BY·4oÑFÕŸ‚õ’’BJ]&žquQU7Î©YyWæ1y™kiõv‡Óù\vµMµ&Š_‚ê®ñwIT¨UóSŽémhŒµíKöwYLv¶w—~ÈvŒ=G–{\'®cësè9s‡HgÛ3:¢¤¥•t×Aè/Q5+½&ÑÞò[l•¬ö•X—Ñ\fäBµ%¤š(MTd[ˆE¼ìžghÝóÅ›¶³[S”é’m³/É‹ÿ\0g´ï¸â¢}Ò¾fzýÓsE<õŽÆm$`ÑVõëkO_Ë«‹[ãë§ºEcü;Ô@DÏ¤É‚—ºÙ·´øŠ?y&Ñ‘™ž~C›§µqäÞî–¦¶Éjwil¬+rö_/ë,²ÛdFWH‰7ª­?Øg>HÉ1G¥Ãl13yþCç‹5„™û\\ÃºÌz\"r×ÈÌ—xô!îÃÐjñø|/nßù‡\vCyÉÄfwß¿ö}V<»Ô² \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0\0\0\0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@yZ‰Só¹d® ˜yô!Ã#2JˆÈËWè7ÇnKÅ‘å§=&¯š-}™•¿=f]=aÄÁC›j}³Ð•Ò:ýÈ{>iœQ·›ÁêqN<ÖŽÝW¥9,”ÌšaÄ¾ã÷\r*BˆÈ¯]>B¶^!:}÷…¬:usÒz·’kg¤(¼i7Ðfãê*üµj<úüÚŽ£àôzn§ÒügâŸ1·Ó©Ñè9>O•5f¨¬AD%¤‘|«¬ë»pÒ˜¢Ñ½¯²{äå«]Ý&IÌ%0ñS\tJ`žˆl”ä9¨•r¥¨Ì´j ¯kMmÒV+XµzÃžÄ,<:.2ÒP[ˆ†¶´Û¬¶­+HÚ°ë{aj²°LÄ±\"™M}Ï\f›‚†[ÆŸš®Ð¿Z\rñcŒ“´ÌGæÓ.IÇÄn2µYMrÎC`ØñV“ðÕ„]?š*Gû‹x´¸¦}{tø(æÖÞ±µk×ãü†ay@öŸ”¬Ê\'Vr1^4Å•J•òñ~bÜhtžvŸçÉWï,þQÏ›ŽþS=°#\fŠÁXÉ;iQGº§I%ú&!\'§G¨Ìh´QÞÓ?ÏÈž!©í´>nL¢Eí=2b>:g”è¿“(V%ÒÅx0î)D¢÷”âª’\"Q½»Nüd®‹M¾¿ø1çÖfã³“LšeÞhs\\¥e†.)„™¥0M6„ó)FJ×¸¨*fÏ¦ÛlTùº°çž¹,îÄ¦êI7T*Tõ˜¡3ºäFÑ²´•&¶âKR\rDEy4©~m%QˆèLo!Î2nQÈqèYüiÄ™Õá­¢?:’PJ=óÖ:8¸ñôÚ6r³ðŒY·ççÁˆždÊ=…x³I{1pé§ñ!™3=^h+ÇþµŽŽ.%KG}¥ÉÍÁòÒ}^°öÃäÂÈÅ‘òè\'NêUî$ÉEúûÇüˆA—ˆäÇ=4ü.™kÖzÃ–¼—Y\\\'U\0hQ?†ªú‡ï|ñFÛ,ýÅ‚zÚg†ßá©²vQ™cŠ8\tÄÉ–YRørqÚé]\nª+åäd)eÔÎn¶¬:84•ÓÆÕ´¶&”¨ÈÔDtÔ+­lò‰z…’ÖÜ;>*´’–Š•ï#1´Za¬Öø7­ü$Í˜Xè\\d¼È’§¡ˆÙR)çukQžÂYŒS]âgtQâÅ¶˜Ÿ¹H³nÛ;5³’é¢áf·VM—’—è¢­\fŒÌ´‹;$aÏ´tVât¶M=«Nï•}–òoj¬w´Ì\"í|ª-¨”AÅ).¤Ò—ªÓ‰ªHþD{Ç¡âšŠçÐLV|áÄáx¼-\\~Rûüx÷«d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0Œé©-¨ÑKÄGJê¨ÌFó³£wUåy%³Ž½>j–¡<UÄ™™Þ|èwRDu?ïy­zGEâZ9jóÚã™æ·—HC{\\Ká\vÂ–Ë&$fTUPÊL‹AR·OÔuþêœ½lçW[8}•xiITd[nNaçrÖŸ÷\\xœ(„o4·yZ*z„WÑWmþ|ÛFlºŽ³~¿Ïs³¬­ ³ÖÉµ?$´Ð³†šøiR›y¿?È¢%— ¯–•Ž–®Í±Û5\'x¶û=ñòˆ™*N{)µÎI)ÿ\0QO¤áÕMKñkJèü¦BžL´òÄnè`Öd¯[J<N]­Ž)\vŠ+\'h%÷t®S9†mêþ>Uó­S&:oñÿ\0Ã©]eüâ?Ÿ6òÍûYdN|¦a\"íQJæ%pÑPÏ[Qè¡½sÂ=>dª/¡Í^ÑºÅux­Þvn\v(¹1ŒlE¶³Î¡ZII˜5§îJÆÑøgèÚra·y„ý²ÉÌ…–¢›´‹mw¯~ÕeJ’l”e÷Äjsz±ƒ—Kƒ{NÐù»+^Ü¹-²1Êdˆ»A¡$dÛˆjñy*ê‹ËHéaáZ¬‘ó²–Mvš–™¤Dü]+:ÿ\0h¦S¢ZL\f¢ÂËåzŠm\n7RD~é{ë4ÒïÈ]¯÷´Ì ·ˆ£hüž,ûvåBp¶óô\\k(n¤km„$¨{¨>^BxàØ«êÖ:«Û‰åŸZg£´òmí8[mÙL£ÄE<á™-N4£\"*QÔ+ËIþâG\f¬OZô0ñ+òï¿WlHíŽ\\%¸¹¹¦a\tJ\'ÅK*IÓOðh~C›—EŠ#§O¯î½‹‰M­¶û¯µo²›é¸íDÞ)Ò˜Qáÿ\0Ä:’?°«:JmÒËq®ö˜Q—e‚Få´2Iä–,Èï0ü±÷’škþ+HSgÿ\0p†ÚKÇ³1)ëª¥½®ŽÉ”Z‹>qˆ¹DæÇ“$\"ù¶³*•†ª²-d\"µrV6˜I[c´óD´B$ÉíŸ@Û¥§N!FÚ’DMÐ¨“ßZTgxÛf6÷G˜ÃG±0;CËêÂJÒ‚$‘\rGS#?1kk~–ª–«-ñûY³Öž\"{.TTždÔi¥FÛž+jBÐ¢3#*&”§™\r²cÇë\\ó^“,Å­Ê…­±(7ãìÃ“VO¼P\nI<J*TÔ•¨¯yþQ6<óµm·æ6»&Žx|ù”_kOd¡#-$„›½¸e6ÃóF’†Y\"#23\"4–ºý©„E£nhÛà¡n)¼úÑÕ×ÞËòÚÚì¸Êg¾bük“¦cVÚÜI!)BXQ•Ô‘ŠÞòó=ÂçÁM?šW¾ðƒ†dœÚè¼öÚ_wõp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\0\0\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@é««bYûdf¦ØZÒE¼’f6§µ\roìËá\\®ÛÙ¥ª†‘GM}‡!–Ò™:¤D£=äUõ1ô¤¦:ÎÏªÔZ÷Ú]^Ìl²J¿^ev†uý7¢Ñ£–g«C,ð×tÛeHJÔEB=ûˆoH™õº³6´{3³öbëò8Ö¦ÖJi*›´¢Q¹³JVEä´ÖêˆËyŽÚ|yckBLyrVw‰^Ÿåî>ÞÙtäó*òH¯\tjBóœ­DF³AÞ/$iÐdT2\"=c™“‡[¹±õt1jk~óË?Wœ«+ÞÎv[9ÉÔ3JBH“Ûn¬”¢ÐjUãÐg¤ôŽ4-<ÖžŸÏslšËDrã˜ßùïX~Ø{7N¯Å»Â[eü0³I~•-Äž‡m÷Žêþ—ž#–c§É6;*¾Î–e’95šn>$Š©¸ÚÈ”¢ò¡™µMFHŽ{+xÛZf±³©²íjm\n“È!³’÷\në‡\rÑ:eÿ\0Q$ÏN‚×¼oM,c´Jn}ë<Ó»ªáBˆ¢‰¥Ä<¥^Sîåš·™˜½Ž³Ëë+ÞÕæõaìDQ»05<Ñ)ÃÖG¦Ÿ=ÃnhVå™õ¦:KŸâ¤I[IQ{Ú+_Ðƒx–f%ä”A\"ücHvæ¨¤8Á›j*|ÒuÜ·v½c£½²AíK”|ŸBCµ2y¹bWU¥Ó#p“ ´ÏÔsõ\\7£·IM‡Ul3¿wÖ6ÚvÂÛÃ†‡n*=â3KjB\r)¥|ÍCÏê8fLùÄ:Øµµ¾Ó=åÛÌ¼ÜÊ“¤¶þj(©ºƒ•34ž®”V/«õr#›2˜ë3ò\\27¿Ú\fõÞÓpÏ^¯50Î×ëó”ñµ½\'—å\rTž>\t¥g\t‚¢Y&º(”™k§ë_ØUËzÞ}XÙw\r/Hõí»)jíR¦mJ¡Ø¸¦Ý4^×ZÒ›ÿ\0¨½¦ÑÖôñoÙÊ×qãÉàc¥É†\'\fÄ8•,ŠªQh!Ï¾ÓiåŽŽ¾(´R9§yu¾Hí$}¬zØÌ_ŠqL¦rpÌ^\"¢PÛhA’~W’~¦:9àšV#¼9ÑO/yžÏ<’NJ*ÖÂÏÑÄhDR3ªiîTËNõþâÆ¿\fF\n^#ùÕK†ç™ÏjÌù†ó+K%òã&2åD2ìBXuM-M­\tQš‰I2?-UýÚo´NÎ¦¶µäÞk»ççr1`mü\\§<N§ñU%æ¥ïÄ¹á)$eZ™.´¢ˆ‡oÇÏ†³5ž°áEpäÉ4î‚¸)5‰ö½±’Il`¥íËã!e”û©56á$ýLÊ£:‹_7´Ï¾\'tš(®-dmñ‡Õ£Ë½;\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0\0F~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0f3“¸aã9;€gîŸ°~àùû\0|oèø8¯WÓpaã9;€f3“¸~àùû\0gîŸ°ÆþƒŠõ}7\0àO¤\t9$À•Tœ+µ+ºÊéüÆÔö¡­ý™7mšþÏHÔÒÊ¤‡ý}ÍézI¾œfÿ\0©,eœaqM%âI¤Õº´ù‹y=”u´Lï\rœžeçš%Â2»B!¶™è‘65QNk:{×«¢•ÄoIÚ7„§W…x¨¡(ÑVÈ–duôýFiX¬lZwåŸ6³»Ñ\rL[\'I¦D‡õ¤U*¶êsO“!ø(w|#…¼KY™š[%Ú¡É·çž_ÍvÌ51‡ðà`¢TnÁ\"23ûëmÝ\fÞÝãÉÏVHm4kèS28‡\vq¶fGûˆí|~rÚ·¾ó?ÈÖPiH…³Qi*è2né ×ÄÅ¿µ\r¢ö˜ìŠ¬›[‰Kî;0‘D¥:¯›}Fbi=wmžÏÅI&Œ!Dp.’Œµ)Z(6­wŽŒNXÝÁf+Ày§Ä_ÒWˆõFÓ_s^xß«‘\v\rì¡ä²j%¤ýßî‘Ó^€ÚX›Ö\'iT³v‚6“\rûHÒjiF•ëÖJ-?-c®>Ö†\'ÄÞf²ïœ‡ejÕ§—JcíLÜ¡”f•!qnUB2*‘ª†(jô8\'Û–>“³QL›E§ë/è,†Ñºô©ƒ~Íd›·zTE ”z^¿¸ùö¦‘,Äv{ýIË‚¶·}œ˜»SÉ¿HAyšõþÂ:Rr[–©²ä®*ÍíÚ¥R(i‚œ™Æ9yä«Äñ\rF²4ÓF¿Ðô‹u6ÛÃ§HTÃ£§7“­’æ-Ì+ÐV.Ñ°~ª†Z“Cm4÷®–š™T·kÖ1Zz<ÅòÇÆÞñ¨‰ÇŠzö—2A“é&O¬áËåŽ‘6…8û«ðý÷\\RjRŽµ3©ŸÚ„3|¶Õfæ–‘ŠºM<Õ×y5je–{M7—¬®µ\0˜w7’ŒÚ2¯Ù#±¯õ4•­»ïþ\\ëjí1Ûiþðì,¯©²²Ì¡ÓNˆ¶Ô£QT¨IV#‘£¬Û\'Gw]x¦8‰u•–5Káì|\vê\'\"’É*ñ\r%îè¾HœwyÌ™f3ÒcÍ‡µ\'\n~ØÖ@ÖÃ«Áy£5¤Žâ–‡”_2­Kæ3xß†Ú7Ù>šÛkã¦ï«3ÉÜywª3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€>7ô|W«é¸0ñœÀ3ÉÜ?p|ý€3÷ÏØãGÁÅz¾›€3ÉÜ0ñœÀ3÷ÏØ?p|ý€3÷ÏØ€\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F 9³8uÅËb¡[:)æVÙWy¤Èf³´Ä±hÞ&Ïl¦ä¦ÒJü\tcpÎÄøNÄ¤e&t¢È¨TEÐê)lq1>PùÆ«©šÑ1Úe‡³y<¶0q)yû=0$^/xáÔBÝóÒcº8ß}›8LÚ¸xµ®.AÛ/M·<$ˆ=\"“%™®ÝÞ™†N-Íï\r¨4J†F\'¤mŠGV–‹vR“û=[é«¨K0m¥«´¿pÎ‚œG/jRSK›7ZC[%ö\'œGF\\Övˆt-\'xÆ³©ÌB–n?Ž±µ#ªöŸƒg¼ïhv-›ö%°òã\'fqgfdzY\"§îc——íYÞ+¶>Ûž]Á#ÉfO¬t9¢¤µ¤”´$ºNM~£<õ—O\fÓ`ŽÛ¹ßÚK\t.Y±œeí)?Ý¾’ “=ú¤æÓc¶pf[É„¬Œãí\\©šž!×æ1|ÓÙ¿‡ÜÎGû@d‰fLÂÇgKúnÂ!.•7ž‘=tš~ÊöÔé§¯*\f~Y2ggvo—\fÈ©.½Q4iµ8úó~¨g>›,rìÎÍ!r_jœu\nÈ„ñçWT²•‘WïCù‹4Ôj1m<ê—ÒàÉ¼m³\t>ök³S†”ä&ó¹Y™VýóO¢|2¯¯˜¿‹ŒßmkoüüÔ²ðxÉ;ÕÖ“Ïeé«äÎÓAU9&_†eZñ/•u—èbãX¯1ßóUËÂsb¬í!#öž]ˆØh’qè_}ª ÒjW©ÓYïý/HÚ\\ëcÉN± ²y•;\"bÑXc‰†¼‹…‰Q™§ÝÒiðŽ§î–Šïˆðì9ºâ¼o¿›·Ã8ŽM?ýJôÛÊ¨ÞRl¢‡\\¾m-™À!Ô™(£á|-dzLÿ\0QÃ£óRbv÷Nîÿ\0ÞlñËmã|6™5ˆmékÐmÌaãØl’„:ƒÒ¤éÖZiê+j)Ë13JÎŸ\'6õÞ&+“7r{k&QÖuä9\'9ã¿\fç¸pï]¡©Z\fŽê4P¿Q¶]OŽµ¿zö1iü\f“j~.íu¡–\"kpËŠ&It*ŸžšÓöióx6æÛv5zI§&û:ã%6VÄÍ\'ñ±…Ë“8£xÜC¤fi#2\"=¦”õzŸJˆˆòTÑé\'G;ÛÍ¥Ê$±«C-†„xÕøWÝ$“¬ªZÄ:[Î)™Žé5´ñ¢\"{:*~Ò9*È•¨L’s*›;4në%á[Yù+NâòÜ;:m>]^;Mf6q³réòWx÷þÏ,[¦™Yö¢±óöåí±\nüÍ–›pÔi+úk ´Q_°ék4Ñƒ‡Ú#ª\rI¶¶7OÇ‡{&D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0\0\0\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨||J àŸŠqhBZlÔf³¡jó1µ+6´D5½¢•›Kæ‰ìltôÝšBC¸Ëž3†I\"2$¨Ôf¢õ¿M1\\qIø<²³9­’<æV²y9´‘“XˆR\nÚNéÃ©\nS§]£:SFá³\r6ßÍ>=£¦Ý†ìõŸŸDxÖžÐAºªÐ¡š‰l‚ÜzLê9s—>8Ûgé.Õpé²Nù/XL´²Ë7,yˆ[9cåÓ†Öw\\_ãÐ…#~#jeÔÌoy˜ùKÃ£‹mY‰ùÂÌžE/—BÒ]+Se¥†Þ\'zuèN‘\\Ù2O-çt˜tøqG68ýÔ&3¥ “®ÌÎ¡¡¦EUIÒEóEâ2E+Koh[œ–¼mYuôÊIo/)›Al¦m­T+ÐŒøm|èj%WÔtqS¢&»}\\¬ùõ´Ök;{öŸü!/&ñNL¢­$àÏGûÃé4SìÙSÔ[­¢±Òb?Ÿš²^Ó;VdŠÉÝ“†eOGØ‰Zm4S‘.šB=ffdCnnn‘f‘{Ç’k1–¶¨¤5da“»þì¿Ä/_‘%Îƒ¤ÌúÑ3?OÙ%2ßðLD)@[FÝ˜1(²öVy2E’ò!UE¼H2?Ò¢+ÛÃë;%¦ËÍ.Ù€–Ÿá›qø5²á¤½×GïSV¢¯Øs¯–f{ºôõˆí.dD¾?Ã¬¶”½ê=ÿ\0_1äˆì–0M£j¦9)ÊnÐ®ËôkBÚQ‘—ýä%ñðLm;¢.¦¶Þ˜™ÖX%‰I»!”Ì[I{Ée*B¿M+?—‚1à½½YÙvsg¥}jïù9Ò|§KuV¢O ‰=¨¶Ì¡ëåüc\"IWÈ†2émN´ãàÎe2ô´m?è©ú n*%p«–D,šiö½â%ÕJ©‘ôèÓA\fRmGu‰¼VwžÎDæÒÉ$À³4ˆ&³‹ÄÄ:®ûªYÒ„g¨µþÆ5¥/}æ¾M­zÓhŸ4ø˜<­BÄÄEXÙŒ™äPÌÙŽ†R‹Î…î¸?1-m†ÑµâQÚ¹k;Õá\vn²Ë(*Ú<›µ2#Sh½,qMÝ5(“Zú‘V¦uÐD6œXmìÛoÍ-}ªîì\tŒŽ]ià¡sE6¦â\t³=-¸TQ|èb½o8æySM\"ñÎ½›dîÎMæ?ŽŠb!ø…¸j$™ ”~fDU-T©4‹Xu+Ò;)ê0â·ŸW`Â*\nøÈj¡\tI%k$™P´PŒÅ{o3Ùb¼±·Xu~_²w+Ê|¹›?\rm¸¶–šxìÔŠŠIéÑ¿G‘Ÿ\nÔF›\'<ör¸¾+gÅÉNïl^DZÉ÷´%Œ‰~xÂ¦\t›Ã¨áYZhMx‰ÿ\0‰CÐ­BÑ]¡âyãQ¥µ«Ûg…DÓQ´uJ‡†{fD\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0\0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \fe¸†z2ÊÌ!áÞ6–´&‹/îÑdf~„\'ÒÛ“-l¯ª§‰†Õu¼dê[g?üD:¡ž&ÓR2[«ºw•þ‹ÌzL5›äxýNÕ§+%)‰˜E²kŠyÅž„&¨*é¤t²`¬Îîe56¬m\v’T²·Šˆµ2áŸ÷ïU_sÑä\"É{7¤Ïõ-œ<Â!FWœM+xŒC<—›ÄäÅ<Û¬Ë§ót§Ã‰q½FJ§ÛX­}-&wÙo»$FÑ;-ÂÚYƒË–ÂÆP‹ò\rt×_ÌE¸PË¤™é´:º}ukÖcyhà­¬‚bÊZ˜3øežƒK¨3#?‘ÐQ¾›.)ÞZjðf¯,ìä%š‹ªàfHlÏJ‰iúF<L±í3à`Ÿeoal¼áµÞ)¶g¤ó*ÐëýÓ!fšœ±Ò/¥Ãfcg¬ý–”2P’Ùr^¡{…q4\"®ó*Ÿ¨“Ÿ.N¶•¦0cžZÆîT\"£áÓv\n)-QSþtÛiŸZwIYéêÆÎiFM?Å‰Y‘y\\Oô\t¦?sÍž:oú?2q«‰Ž}¥iRI\'OØkáS¼$ôœ±;[¢CÙE†\'\'´Ø³-)n1•^:y‘¤½CÃÇ>I#QhóqS”©K#œØ¨hº~eÂÄ!Uù’|C1‰ÓãžÓ²HÕÛ~½T˜Ê$®nŸÃMlœR\rI÷ÉÈuùùiø¬ô³3¨¤ÆóW”°åÐÊqÛ:ëÐÈuW•Ê”Ñ¨«¤ªš–³ó ÚÔ™öþ¨ã?,úŸE©£ñ3Ùr¡föU1pŠ÷LÒ²QÞ§‘Ô¿QiZ_Õ¶Ë–÷Ç½©¹\fìqAAÂ¿†Ú%8úŠÿ\0–ƒ/AzR\'x¶é4ù2[¥«1´W[z\'è¥­¡jg¢‰§õý„´šGxCzäŸfb!îrA_—Î¥(ê¦–T?¾[…Êê©­«³›}[O=o¼³ñ¬Ïa”h˜ÁéQÐþ_r?ä-R¸2ÇIQÉmVu‰—Qe–ÕMl­‡šGX8Y–wü2Ê†Rn(Òt2©´Ì]Å¡Œ–Ž°«Fbv´>UÈ¼¾ÙËòÅc&¾9syƒO?ø­Vù‘ž‚Ð^^C§Äf\'Eh¯’=Ç¥Õý(íà\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\0\0\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€3ó$x’ø”hÒÒ©R©ÓqëSÚ†·öeñ´æyi&MÊåÑL8MËmà~êR¦Òn&„Eåî÷¾qãæ8ÝóºßÄË1iìÕÁMít¹*7ì¹D\'Yø.¦‰\"ýTFÚÑÝR±máÌ–[ÛS1Œð%¹;3yK|îz{ÔÛDzÖK]·é\r•œÿ\0ÄÙÜÉ˜‰ä¶_+€A™­´®óŠ*??˜©–iOgªæ*ÅãÖm“i¼ÂJ…ú£4~)\'þzGî%UÕ¨gÄ§½ˆÅ“Üýü$iéSD¢Ü¤‘þÃ’“Ò[F<µë4Jâ+î8Û\tVŠÔˆÄ6É‡Ê7O¢gº¼e•šBKÖüµèw#Bÿ\0ø•¯Ã%‘/Pµ~‚õ¸âyyz:x¸v[Ç4Ù×P’/i¹cq1Z+0yN´Ç‚´¥\rù$Â*7üô„ê´¹&\"bcãü”¾ƒ›sFÓðxÅÚojÈD’aì…–ŠRHˆÔÜEÒ?R/äû9üsômÕD~ŽSsßkw4¿“;:¯tõÆ#_—÷¿Q·&‚\'þ¤íùKYôÙ®ÑŽ\"~_å*iífÜÉrC*(c;®Â¢bÉ¨Ê¥¤ŒÜý|Ä¿û®ÕÉ?Iÿ\0§¶öõéúÇùwYÊß8X˜ØS„~!7–Á¨ŒÛ=*Feç¼sgS·«Õrºzúó·äã9\0õ}Õ&…ª†u!%uT™ÞPßA’±êÎïBáâR£­ÛÅ ¿¨±\\¸­\nwÓæ¤í²œ®pù×Àm\tÔJU¿m\"¹1ÇšÖŸyë¶Ëð±RöÖôdBLˆJJR¡}ª)ä¼^v¬:Xq[oiz\'.¡æ¡]En¨”eR2Ý¼C1²ÌNé`8“\tr#ÛSfó­ÞI¤Í\v2©y~¢\\Y§’\fØ#7y˜rdöZdn]f¢àâ ”òœu1æ¢Z\tFfw‚:é?ï\ròe¦iæ´m?¸±_\frÖw‹\\¤!™\t?Ô…}Ö6‰fg¶~P—u0\f”fgî•ty\vÕf¬mU¾‡O{sMz¾ij[ßµÔ<RÞŒs5¸óFëh&Ù4¥ßÊI\"ÓZh=l³“„süb->áâ¾vÚeô€òïP×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0\0‘Ÿ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ83ÉQBIã\"N!Õ“l¨Ì›lZµ‘Óæ7ÇÚ!¦IÚ³/‰í|SmHŸD¹oÄFCFœr¤ñY¨ôiò©ú}Íb<¶ˆ|æ›F[OÆ]„ÄÂ>D¶Õ*uæž+Þ#\nI™J¤^d+m¢[m-åœ›Ë¦ÐŸŠƒvúITªŠê‹Akõä¥©;Y&;VÑÑ©‚SkEjš–£=\"ŽX˜_Å5˜êå²ß¸IQšyfV#àå¡)\"$è#ý„6ÓV®BBiR/™ˆfÓºÄR6êö%¸:—\fÃôRNë¨#Nƒù‘ff|ÓR±Y‰R5DLèÛm¡)hªDE¢‡äTýkR±ÞW©’ööb†¤kSd§\"®¨õ‘&´ýÄ3¶ýk¾Ý^y‡Œäî0ÉŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡Œäîð­OT%iÿ\0?`7~I#R¡(E¬Í}€~-YÝ\n]ÓoÀ*Ð½ã]}7ubghÝóOTí¯ö¦Ž‹™¶ü,L®^¢h”EvâÉÂò?—ì=F«aá1JÎý^_IšsqNi)}?˜xÎNãË½IŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~Àûƒçìñ¿£àâ½_MÀ‡Œäî˜xÎNàûƒçìŸ¸>~Àú>+ÕôÜ˜xÎNà‡ŒäîŸ¸>~ÀûƒçìŸ¸>~À$\0\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õÍš|6+ÿ\0‚¿ä6§µ\roìËâøØhÅ©4Uûëª\f´þÃèUñ¾_Ö¹>/Dl\\öP”.Qˆ†œQ™‘¸i¢N›ˆÿ\0Ñ\fú¶å˜¬ÖvìÐÙ¹ãSI©¬½pŽ)t+®Þ/Ôôú!_,yÖSR¼½édæWäsvHËMåŸ¼’ùiûE­;ì¿]«n·*WãØ5ÁMˆJOÞRZ~¢\vòÇtõ‹y)s¤—ã$Ìè#ŽD“Ï/k\v™¦‹5£õ3ÒCY®>Í¢Ù;¹%3óRKqˆ¦)\t¢o0äÃEM÷’T3Ñî¨ô—ú1«Šgm“S&jÆñ+0ÓØ¶ÙKn´£Ru?¨­m=fw…Úk¯Zíhrž¾â¨MÓçBNž#Í%u¶·’JÔæ“fòÊš\rI$×÷íHî·Í–zÄ\t7Î—Š›õ\fO\'“1âïÕrC´aê#L®\0\"\0ØÚ§é#ÌMC,ÍEãxÎ]¢tÒš§¬o^_ÄÖÜß…¨Eë¥~—©¦šª4l,HRR«¦ddG¸^H,ùHÿ\0¥LŠr)å¼³qGDš”gD‘™Ð´‰reñ6r,x£ÌùÊ„jàS´L\r¯Òf²v—M>u¨Ò±mýVöšÄme¹¥o5|‰J¡’w‘V£NÛ³¼o³ç¬–¥èÏj›KÙµ\r+e*2:‘UO‘©ôúûExe+=æ^W‡ÖÖâV´vÿ\0³éñåÞ­‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0\0\0\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê›4ølWÿ\0ÈmOjßÙ—ÂSËHô§u\f²N¡O)+\"UÌI¡×6™÷>gÿ\0ím¾*íZfPµ-˜¯\fÐ^òj/?:«\t-]Ü‡¢ãeäOÃLŸ;É©¿–1šÖ¶Ž­-i¬ôqáíÔò\fÃƒ‰‰wIxn!F“?±\r­§­ç«òòô…X\f»*F¢)üŽŠ„êZwß-Æi×¸TË¡™ö%{¢\'Úv½œÊ…ˆŸB1>†£©%òjßë¸rriòVzÃ§L”žÝZ6\'2x£Oáæ°Î’Œèiy\']>ZEksÇ]¥4VªpÄQ4[/¡Ä‘èQ(Ž£I²X¤ÄôsÚhï%Q&³¥OË÷ÌíÙb•‰˜‹)gžRiøÄÐËÉ\'ýD¨ÛÉrÚ=ûOGŠ$1\f,‰…þc2!·Y„~‡jÏIpT\"-Ä*ÏYtb6†Uä;F +€\0È€\0¯!Ú0õ\\»C<fC-~9ÔÞð›RÈ·™‰°aœÖå…}N¢ºjsY€Éý©‰µÒ›E°ÛK7œA+C\"Q‘¡\rµ8|\fœŒisúF8ºFP‰ŸId„GøÂt÷MFH#EOôÒZEã÷žÊÜCæˆ¤wn¬êb%óiœCD¯\r¦Ú-tI(õüúóÞ¹¯«m.+iñÍïßÜé_fxÌõ–<£ÎPÙ%¤ø0hÓ])R–zýàëqªxx0Óàæp;ø™s_nòúhy×£d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0‡…9\nëh*©HQëAµgi†¶ë0øVÖ¥6Îc.~PÑÏj33üêÓAôj_›OK×ÝÙó‹ÖÑ¨½/ïŸîì\t<T™…p’…¥f¤é©Ð“wFÔQ´í3\ty\'—u§¤Ïµ\fÒŒ‰HYè©–½/X”¬ÙÅ‹³…„<Û¦ÊÈ´™hQyéû\t<Xói˜žŒôÎÊB°â£–Ûñ›\nlŽ„iRN“\"xÞQÙ¼Vg»eáb˜†v”C0óOD‘¶u?Ä%dI#2©n©z\vå¤k–+hÞ!=-jÆû¹r8†Ðô¥™“Î™Nb\']eJ#…Sf’º’ÓR?ëR?Ê_}/Hå™$”½¹¶ø¼mžZ-­‡Š‡‰±ïÁ;,SŽ4¨¸#8”’¨T%™-D“ÓæE¬GƒC‡?Kô”ù5YhÐXßl9›Òm~\"FkpÛW¼{¿Öñ®~\tì1ƒ‰Ï›°%^ØJfE¶“\nòÏÜñP²J“§ûÇBòÞ96à—­æb?Xv#‹ïiž¿”ªÌý¨¤¸r}ØfMu1JQ—Ú¿!šp)½¶„vã“ËÛû¸Ž{uH¯,hi+†D³2?žß!™û?’³¼öù$ûò&½6ßæÅÚ/n¹£J7¥.4Ái#4Þ÷¨¹ìõm·E;qÌµžŒTçÚÏ*ÓöIù4l²~ö†îº:½£ËÈ]§ÓÖ:Â•¸Æ{Zw²kÒ–é,ºk©Q\n2º…PŠº\v@–x&ŸÜÒ8Æ£·3Oa½©-Ä®m\fÍ¨y¸˜%èZ\tºé¼G¬è+ê8\v×|qÕ6.7¨Ç>´ô}Áb-¼ŠÝÈáçRXæ_CÈ%)(Y^Iù‘–²Ó¼xÝNšú\\“KÃ×éuTÕc‹ÖWÖ•)”¨ÒfZ\f¼…xY–ZÑ;\v)J§o\"âuO<Êiu$’©ÐÌêzý5\tb\"ÖŽD36­gŸ³¬¦6‚ÒXÜêhz{dIºãí\'Åˆ‚×yTAUh*Ð’fUUO@ž)\\Ñ·kt\\öÃ;÷«G9œË\'Ö\"2s\'Œn\"\"Õ¡ÄžŠ]=eädeC#ÒFFCm$[x­ëù2éæÐ¡yËò]\'5¢7Ô{ÍFj¯ïè5×^2g™„ºs\fD®Â­™Ý¯r(áR¦åm©–ŸÓùÔ¢¼Ddtþáy¦³LšJÚ/–cÜÊûAÛv¬=‡ˆ˜¢‹Œ[N¢£I÷\fŠ…êd,ðí<çÍèWâZˆÃ†cÎ]Wìƒ)}›\t2ŸÌIÅÍ¦kxÜó4m‘5k#¾Ð_›QZÇhÞTø\r\"¸-1ïý¡ß‚î5À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0\0\0\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H=Fâh)aY¼§¿ÍÒ(—\r~gùÎñÔµkAá9}#GX÷túCç¼K£k/óÞ~³»K$Šmød“Ëi¶xÒ… ˆ‰&t­i§È…\\»Ò7ž’“\fEïËaÙ®ÂMe–¢[‡[fu%&¥S\"©kò)xß¢|¸þ÷&D¸v——’gùVzKå X­âgeVa61Å4Ãÿ\0ƒñq‚2Ði©jòóÅbzîÓw]³d\\’Ä´¸¦Iç¨ç€Çˆ~úVw¨µÑ4Ñ¬ÈO{Å£hèÍfwÞQ\nÏÃ4P$ˆ•·)}çZˆZÈå¬Óy’-u÷\vÞ=1¥­1¼ÏšjõÚ#£l¬¬ºÊYåIj%†&1ID¿Å#z†ŸøŠ#ÓZyê1oM›žûOÕZùÃô\f¯7¢â^in¥\"ö±èï;ªÄFÛCˆ‰dçTB¢´ÞlF’¥~t-ã^X$œÓæ÷?ó)8bpœhÈÊòÌÈÌËMJ£5‚cyêõš!SŒ¨Õx”i#¡SõûÚ[/!¬8Á¡&¥\']\f¿mC%£–ö ]—Æ7(5¬‰4[šïüÄ5¶ó\ri4ÙTåò+ABiµÀÇù•D^/-zú†ö¬uiXõ·¬(CJ¢rW7\"mmðžò=ÚKäc^hŽµ&&{»‡ YC›dºÒ9øÈ“ˆ•Å´´kIHê’Ð~F9WAM^)˜é0épÍ}ô™b\fô}Ý*™ÂÎ ˜Á¸•´ú\ti22=U&9Åi¥»ÃßbÉ\\Ô‹×´¸6‰´<Û-8’RKJ’eR2:hGD“°R¹[¶aõÀ;¸™lZÌ’—(¢lÔT2=”÷|ÅÛrê)Xõ£õsâm¦Ë1yõ\'ôu–Wä–‡\'“;kcÿ\0 ˆ†ð¦r‚Wå5™$Þjö„ÓB”De©GC3t9¢öŠ_Ú÷¡×iýIµ{;§#3|nJìüd¹f¸s—´¢32?î–¦³×=«>õ½&H¾²œš59‰‚…\"‡ð‰÷ÿ\0™FfEóþõF3ÒkXæk¥½okM|ß6{CÚwí|râ!ž5K¡<HYrHŠ=R¼îóI{”¯ ôKËíy¼ÿ\0ÖFûV{níÌÙÏì½–Ê$J$šÔwhfg¬ÿ\0×Èp5Ù¼|ö»Ñh±x8+Il…E¶¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0\0ŒýÁóö\0ÏÜ?`ýêún\0Ì<g\'p\fÃÆrw\0ÏÜ?`\fýÁóö\0øßÑðq^¯¦à\fÃÆrw\0Ì<g\'p\fýÁóö\0ÏÜ?`ýêún\0Ì<g\'p\fÃÆrw\0ÏÜ?`\fýÁóö\0øßÑðq^¯¦à\fÃÆrw\0Ì<g\'p\fýÁóö\0ÏÜ?`ýêún\0Ì<g\'p\fÃÆrw\0ÏÜ?`\fýÁóö\0øßÑðq^¯¦à\fÃÆrw\0Ì<g\'p\fýÁóö\0ÏÜ?`ýêún\0Ì<g\'p\fÃÆrw\0ÏÜ?`\fýÁóö\0øßÑðq^¯¦à\fÃÆrw\0Ì<g\'p\fýÁóö\0ÏÜ?`ýêún\0Ì<g\'p){bX*[7„\"+êQ<í5\n…JŸÌ{³y¦i|så¶Ïö—i–™b;ï¿é³‘÷%óÉ´e˜‰}-E¾é»\fn&ûO\'Q‘WQ•KËÌ…Î#ßÉOCoS›ÍôqJcÐÓmCC¶dFIYø†º¤ô+A}‡¥;º\\ÜûË”ì­*`Ùrf¯ï™‘]t š™Urâó„·¤\r­·”šˆô™iÐU×£PŸÅÙWÁ™óD²mÅ²ì<SW–ñÑ.TÌÈ·ÔI6á¤Õ•Ž±èaÙ+®ÀÃD¥„©¥¶êHÛQû”Y‘‘ûÚM+¤Iât¶ÌÖ:Æþl-¿±É¤‘qÐ³“ŽŒb#Jî¨ÝmµSÜQ¨½ä•\fõž³4y¦¶ÚÐj\"#­]bþMgl0ˆ¨”-HQ î•Lü´}ÇZ3VÝ!Í‹rô–v2Ï¹,ºÜd¥×®ëQ¸iM*g¦‡Ðm¾þi«“švˆrZ³ÇÏ‹ 2mDJBTgûŠ3R-´ÏVóKòïJ,œ_„„;$Œ©§Þ¼ÞB0¶¢•ž¶k\\9/lÄÁ§\rH€‰B\vEÕ4T®ú˜ÍrS¼Kñ}™h%R¥†Äd±fE¥GpýÒó¨ÖrV{KYÅxÞ™––~ ‡3‡]kv§OØo™„Qy‹m*rø\\âÉÉ¢W™Mæ¢\f¼«ªºÆ§xm{L{]œÉL\v‘IT·‰ÖÌî*”óÓ¤-1efc­_J{=ågÒ¬„Ñ’}¤\\6¨Òg ëçC÷G•ãZ\nÄxôz¾Ä­iô{ÇO/ƒ½þ7ô|W«é¸y‡­qfVI¹œ°NG©áP–”iIë#->GCãÉ8­„yqW5&–ff6~*ÄN í+Å3Ã‰5«I>Õ+S®£\":n©kó¹«“=m¦ÿ\0ÝV)|X-KõÛ}¾1üèêlŒÛØ)-”bÉH˜%J¦Ñ/&YJ5¶Ê¯©Kadª™P’á*^î½Bî»§,Þ{ÄGì©¢ÍŠ)ï™ýÛü¯ÛôdÞÀ¨¬ô·Â˜G-è3Bˆ×|Ò£#32ÓBIé:ë´Ô¶§.×•Üó]6)ä™yMÿ\0µÓykql¶PrÚ ËU\f¯P¼ëB¨ïê5uÑa˜Ç=eä´z[ñ\rG6Xõ]ÜÅ›j¤°ÌUÔ ¨’$j/Qå&wåî\"6¡ìÌ<g\'q†LýÁóö\0ÏÜ?`ýêún\0Ì<g\'p\fÃÆrw\0ÏÜ?`\fýÁóö\0øßÑðq^¯¦à\fÃÆrw\0Ì<g\'p\fýÁóö\0ÏÜ?`ýêún\0Ì<g\'p\fÃÆrw\0ÏÜ?`\fýÁóö\0øßÑðq^¯¦à\fÃÆrw\0Ì<g\'p\fýÁóö\0ÏÜ?`ýêún\0Ì<g\'p\fÃÆrw\0ÏÜ?`\fýÁóö\0øßÑðq^¯¦à\fÃÆrw\0Ì<g\'p\fýÁóö\0ÏÜ?`ýêún\0Ì<g\'p\fÃÆrw\0ÏÜ?`\fýÁóö\0øßÑðq^¯¦à\fÃÆrw\0Ì<g\'p\fýÁóö\0ÏÜ?`\fýÁóö \0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà:£Ú>Ï39°/>¦K†YM\r’”U#Ó]t!Øà™§ª#Þáñü>&’mîêø†cd“f-|-ÂÍ³H’‰Q“l“4×q‘ö9±Ó-æ¶ž»—’Ã{Ò#¦ï¸$k‡‡j*î¡Ô“‰ªiR2×ê<®y˜w0Ò%Upj*RGR2½JTV®O9Z¾(‡\rP¬¶ššJºkòÒ\'Œ›ÎÛ«N-»Ã†ü*A©çR§òS$Dí(2c™†zmeÞqjü;ë+«5$¨fEû‹xòÆÝU2aú1³+6ñ“‹lÌÌÏr©¨]¦ZÛÉJô½:L¤K,tâk1D\fb\"ö„•ãQ\'æÌ3jëƒ¬¥Á£¶§¥]Åc²e¥ð©Œµ2øy„]LÍ/2KBtè÷N£Ïëx¶L×ÛíKÃø=0ãß4uü’ò•2±ù>CLgò\t\n(M°ÜhxÎžJ*Æ‹mE½X™o®¾4žÝ<9hý¨rOfñ!#£g1JN„¡Ò3/™ÕZu£†ß/yˆrk¬µ=šþ¯œíÿ\0·$;ˆz_\"u¶ÖjÒ¨Ï|Õå¤“R×¼Y%pÆÑmÙÇÏšÜÖ‡dû&eÞg–é³Ö ìé6äo¾qj2Yxd>UÔF+ê¢¸1øÛôI\\6Ë“Ã}+7É••Z¶ æ’xg¥“(U!Ê°š´âP¥^N;¤*S‰eÉ‹þ9ë\f[†ãÃ—þGQÛL‹N,”Zíœ}s\t\vŽ’¢#%Ã¤êF•k©èÖ:š.#\\‘É—¥”5º+V&qõ„¨4·\fˆ–šñaU¢uÝùþÃ¡i˜·ÁÇ¬z»y»ÌÃ%ÓDÕ–TÓ¨»zá]2§Ì…=FÖŽKvXÁkã·={¾±ñˆŽƒqôª¦d›ß#ÓQá³cœwšËé82ÆlqxhDI™,¬ÀœÇ&ö†\r³[°%Ìj2ÐE÷ÿ\0G¨O¦·.ZÏÅ¢¼Ø­¦ös±¨²ù)’Iæ©uÅ%q§y²4¶â”£û+ß?Ü\\âzˆÏ©¶JOº?Oô©Ã°ÎÇx÷ÏëþÚkM`ŽÓZùLú5ò\\$©·<8ešTâÍxÓª¥pè3éuTÓÒÑ·Y5º\\š›V+>¯›s ¬$Àá!åµeÔ©k}:\t\n/#*k>‚­¯9#šÒ·LuÅ1ZWhiÄI€\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0\0\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€áNeNeq2·”in%³mFZÈŒoŽþâñä-<ZM=ïƒ-ÖLÝ‚—Ú»é¦5•Â\\³M?Ù’ï’Kåu«ùˆ{²š‹×,ùÆÓðxmf—&’¾|§¿½Ù¾Ì¹J…´6^ÏÆÇ%yi†Zêç‡äfZüËÈUâº^YÞ½¥¿ÔNþ³èHH’SiBté×ç¬yÙ‰‡£¬Öñ¼?f‰RÔ—Ü¼†qäÚZåÓÍ«¾Î\n!®Ÿ-!-²uWÇ‡zÏW‚àê\fé÷/!¿´ÆÈýxåe¥ÐîæÑÊ n ÌÑ„Óõ2 š5‰Ú»£ô(¼ofR+Ú#™8„\'µ’9„K•uÂbdÑ¬ˆµê¯‘\roƒQ¬ë´ìŸ°è¦=îvV=©lmŠÈû¹H“¾ÄÃñŒ¤ Øñ‰&¥)dƒ32®‚ÒbððÜ–ËÉn›/dâ8æž¯Y—Âi{+Ô“59flLDT­©ø‰ƒ„µ#Å¼EK×hdU2\"ÜCÓéõ}y.àj4Ù³[ž®Ì°ßìþµ1Œ¢:ÙZwÛdŒ¯À·dt§å%´~´³ñ¬|Ó\\iqpì‘Mí£±¤ÞÅy•JŽ16¦SÜºó.UDÿ\0ØfG¯Ès-¬·7Yè¿\\v´tzìæMì—³M¸›eA/T¾VÄ¢¥Ëï’I—]uôVõ¼Òz« k“,ê«É>öøé8f-/¡rƒ5‚‰°©¶OÍ‚a¨4Äþ!fWH”Dfe¤ëBÓæ*é-áfˆÛÍ.»ê0Ï^¯’,~_âlšf0‘,»8—NãWË\tˆð¼%8£4®õDf_/=cÓêtTµ#=:Luy½>lœÞüú;¶Qb£[‚bÜžLáÕ\f´ø‘\n3Zž*iÓpµ¿-ZGx…¢fbÎ¬ðºZ6´~C0ò;/CT‚|…=¢©€RÒ“ÑZ¨‹Izyý«Î³=öâvø§û»MI™Úc‡fÆÈÛ‹\fò\"mT½Š™%(ˆ}\r«EOQ|Å-DeËni«¡£®<å‰ne“Ydæ£¥1ìFC¨Ì‰Ö%¤Ïõ!RÕšÎÒ½‹u„Ëm¶lûÍ¶š®!m²¡©i-_q&õ÷Gš}M‘åÐç\t\f¤¤”ÓIJ‰%B©‘¥çšÓ-é^ZÄ9VÊò£PÀ\0d@\0Wíz€®\0\"\0¼‡hÃÔp\0\0ä;F +€\0È€\0¯!Ú0õ\\\0D\0yÑ‡¨\nà\02 \0+ÈvŒ=@W\0‘\0^C´aê¸\0\fˆ\0\nò£PÀ\0d@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0¢±vfÕ’3ì©¨•´J&Ü:’‘ZV†_¡z\t1æ¾)Þ’‹&e¯¾yšûAJ­œ%¼ÉÍ¿œK¦ËKŽ·á<‡îª·=Ä\"‰2©kó1×¯½«4ËXŸ¯OÕË·¤uÇiý:þŽì‡“Ld¬°Qñ\f>µ§ßðPi*•+¬ÎºÅ+j)“¿D•ÑdÃÖ“»•ò²˜\'b2pü½N+á>ÊŒëò÷Ê§ýE­-´‘m³OóèƒQM]«¾8íü÷¾Ê.T}»¥“GŽ‘OaåªY‘;,”:º–ºWÞ©P¾Z‡VµÐ^w­º+E5¯­^¨¶>×©˜²ÞX2“kåh3¾ñE%0©®­Ù¯î/d®×þ=§u\r³Å»voíOò0˜Y¹»s¥6Â„(yËo>âÉ&dJ¥|é¢„4ÃÒ#yE“.i¶ÓÝ_’;#“—¢í\r§´MI¦MÄ›I‡uÂ&Ðƒ\"*ï3©é©k!6|›SÕf‘{^*ú¹_øFæYìvMí+\f*VÜ•1²”¼²CQO(–f¢3Ð¿ÌºnýG÷Ë:k^÷u1c¤j\"/>O­%0rd: e°­‘{­´’*z¢óÖÎí-µvu§´ÆRâòe“×#%HFq˜Ä&ÌéE©*:òŽ‡\nÒú^x‰í\nSSèØ§nìJr¡#²1/Ú8ˆwŸ}Òf\t:8ê©¬Ê§]eê:šÝ5÷¯“‹£â<›Ö|ÜÉ¤¾nò}i\"%²¶¦.Z%¹âŒ¼5¶”&ã‰©é+Î¯I=ÑË­é‹%y§m©¥òRf±ÝvÂd¾M7—JØN&q™ISÒˆ—ðÒù\tf’A*éU&ZL´×>}­3HÛ6Ø0ïX‹÷‡Î/û/É\'ùF¶3éöTa¬»³Ä3.uæ[Q]RTd­4=e‘Ñmü*ã­7è§:zÆI½­³íLŸÇÌfVfÈÕ6¶Ãij(µD¥$DN‘ÔÊŠ/{î8™â+y÷º˜&oO‚ÄU ³\r™ÆN`”Õ&K}ý5ˆ¢—žÐŸž•óaí\r¼°Fê`Z³Ñ3U»T—áàZUJñ$ËQïqâÉÞm²¶L”íÝäÖ3(«hÊD‹+\0¤ÕN´êŽ(Ê¿Ü*ÝAÿ\0ÔƒýÅšk)‚¼¾ÔþŠÓ¢ÉšüÛòÇêìÛ7 fÍÈ¡$HŽ‹ŽD\"M$üb’§W¤Îª4¥$zé¨´nL“–óyé»§c¤R<„#H\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0\0\0\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0Hàë,¾›´‡¹i#/Üf&a¢\\™ÆL2{?x¢&öBYêtÍ’#õ*\t#6H¢ZxTï³ì•÷”ã°vH \\Z‚\\4KÈ4šˆÊ¥ïÓG ³^!ž¾jöÐá·xu5±ÿ\0g¶HMoÄY¸ùÄ©èöÜK·b¼d©FT­%Pôë!b¼c4FÖëmÃqÏZô˜zr‘ìsl,e““J­œt,þÉµ\t;]ÄÄxFµ®ï¸‹‡O…îÒ…¼0ñKc›DÇ«>Läáõ·,Çx{dÒ?lš0Ôº2Cná¡Ðhaè…\"ò/#Yš›%>BOHÑæé}ëüù«Î“QŠy©Ö^»od=§2Ã/³yFÉ30Ð±iˆDl¾mJhÈŒªd§ÌÎ„~D,éµz=¦ø­ßá?á_Q£Õêëµã¬vì©&ö_¶Îƒ‹ypR¦\\BÝˆˆˆmÇVšûÉh›3$è-&¢#ÒT=bMO­ë¶8ê¯¥à6­ù³Nï¢W&—YéTºM)†K¨Rm:’U!æ¯i¼óKÓÒ±Hå†jseX™D¦c/ŽAQ/Ã®‡÷#ªOFòS5©½áðÖó¿iu•´öc³ùAŸEZ+SifÑ1Q6Ëžˆi&”%Z’Óî¿˜¹‡‰_yi«—‡Ó5¹¯2íÛ7’y]ž’BHJo1ˆ…e¨xt©ó/\r¶ÒII{´ò!Zú«^ÓmºÊzikXåY‡°M„¥\'*K¦…›„n¸µãóÒb9Í{y¤®W´=“x(8b†(xVZ¥ê\\AíÂ9™”›D\'\f2\0×\0\0‘>Ùñt \0¸\0‰öÏ‹ \t\0\05À\0$O¶|]\0H\0®\0\"}³âè@\0\rp\0\tíŸ@\0\0k€\0HŸløº\0\0\\\0DûgÅÐ€\0à\0\'Û>.€$\0\0×\0\0‘>Ùñt \0¸\0\0å\vp\vp\t3ßð¾Uûêþ€$}ÏÔî~ 5´-À-À$ÏÂùWï«ú\0‘÷?P¹ú€ÖÐ·\0P·\0“=ÿ\0\vå_¾¯èGÜý@>çê[BÜBÜL÷ü/•~ú¿ \tsõ\0ûŸ¨\rm\vp\vp\t3ßð¾Uûêþ€$}ÏÔî~ 5´-À-À$ÏÂùWï«ú\0‘÷?P¹ú€ÖÐ·\0P·\0“=ÿ\0\vå_¾¯èGÜý@>çê[BÜBÜL÷ü/•~ú¿ \tsõ\0ûŸ¨\rm\vp\vp\t3ßð¾Uûêþ€$}ÏÔî~ 5´-À-À$ÏÂùWï«ú\0‘÷?P¹ú€ÖÐ·\0P·\0“=ÿ\0\vå_¾¯èGÜý@>çê[BÜBÜL÷ü/•~ú¿ \tsõ\0ûŸ¨\rm\vp\vp\t3ßð¾Uûêþ€$}ÏÔî~ 5´-À-À$ÏÂùWï«ú\0‘÷?P¹ú€ÖÐ·\0P·\0“=ÿ\0\vå_¾¯èGÜý@>çê[BÜBÜL÷ü/•~ú¿ \tsõ\0ûŸ¨\rm\vp\vp\t3ßð¾Uûêþ€$}ÏÔî~ 5´-À-À$ÏÂùWï«ú\0‘÷?P¹ú€ÖÐ·\0P·\0“=ÿ\0\vå_¾¯èGÜý@>çê[BÜBÜL÷ü/•~ú¿ \tsõ\0ûŸ¨\rm\vp\vp\t3ßð¾Uûêþ€$}ÏÔî~ 5´-À-À$ÏÂùWï«ú\0‘÷?P¹ú€ÖÐ·\0P·\0P·\0ÿÙ","piscinaplayita","activada","bebida");


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
