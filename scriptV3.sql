-- Tabla de accesos
create table tau01_perfil(id_perfil serial primary key, nb_perfil varchar(50), ds_perfil varchar(255), st_activo bool);
INSERT INTO tau01_perfil(nb_perfil, ds_perfil, st_activo)VALUES('Subdirector', 'Subdirector', true);
INSERT INTO tau01_perfil(nb_perfil, ds_perfil, st_activo)VALUES('Coordinador CELEX', 'Coordinador CELEX', true);
INSERT INTO tau01_perfil(nb_perfil, ds_perfil, st_activo)VALUES('Dentista', 'Servicios Dentales', true);
INSERT INTO tau01_perfil(nb_perfil, ds_perfil, st_activo)VALUES('Administrador Biblioteca', 'Administrador Biblioteca', true);
INSERT INTO tau01_perfil(nb_perfil, ds_perfil, st_activo)VALUES('Administrador Fotocopiado', 'Administrador Fotocopiado', true);
INSERT INTO tau01_perfil(nb_perfil, ds_perfil, st_activo)VALUES('Cajero', 'Encargado Caja', true);
INSERT INTO tau01_perfil(nb_perfil, ds_perfil, st_activo)VALUES('Contador General', 'Contador General', true);
INSERT INTO tau01_perfil(nb_perfil, ds_perfil, st_activo)VALUES('Alumno', 'Alumno', true);
INSERT INTO tau01_perfil(nb_perfil, ds_perfil, st_activo)VALUES('Docente', 'Docente', true);
INSERT INTO tau01_perfil(nb_perfil, ds_perfil, st_activo)VALUES('Externo', 'Externo', true);

create table tau02_usuario(id_usuario serial primary key, tx_login varchar(50) unique, tx_password varchar(255), st_activo boolean, fh_alta date);
INSERT INTO tau02_usuario(tx_login, tx_password, st_activo, fh_alta)VALUES('subdirector_administrativo@ipn.com.mx', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', true, '2018/09/25');
INSERT INTO tau02_usuario(tx_login, tx_password, st_activo, fh_alta)VALUES('administrador_celex@ipn.com.mx', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', true, '2018/09/25');
INSERT INTO tau02_usuario(tx_login, tx_password, st_activo, fh_alta)VALUES('administrador_dentales@ipn.com.mx', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', true, '2018/09/25');
INSERT INTO tau02_usuario(tx_login, tx_password, st_activo, fh_alta)VALUES('administrador_biblioteca@ipn.com.mx', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', true, '2018/09/25');
INSERT INTO tau02_usuario(tx_login, tx_password, st_activo, fh_alta)VALUES('administrador_fotocopiado@ipn.com.mx', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', true, '2018/09/25');
INSERT INTO tau02_usuario(tx_login, tx_password, st_activo, fh_alta)VALUES('cajero@ipn.com.mx', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', true, '2018/09/25');
INSERT INTO tau02_usuario(tx_login, tx_password, st_activo, fh_alta)VALUES('contador_general@ipn.com.mx', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', true, '2018/09/25');
INSERT INTO tau02_usuario(tx_login, tx_password, st_activo, fh_alta)VALUES('alumno@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', true, '2018/09/25');
INSERT INTO tau02_usuario(tx_login, tx_password, st_activo, fh_alta)VALUES('docente@ipn.com.mx', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', true, '2018/09/25');
INSERT INTO tau02_usuario(tx_login, tx_password, st_activo, fh_alta)VALUES('externo@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', true, '2018/09/25');
INSERT INTO tau02_usuario(tx_login, tx_password, st_activo, fh_alta)VALUES('fernanda.ca.g@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', true, '2018/09/25');
INSERT INTO tau02_usuario(tx_login, tx_password, st_activo, fh_alta)VALUES('victor.mu.jr@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', true, '2018/09/25');
INSERT INTO tau02_usuario(tx_login, tx_password, st_activo, fh_alta)VALUES('isc.robertomendoza@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', true, '2018/09/25');
INSERT INTO tau02_usuario(tx_login, tx_password, st_activo, fh_alta)VALUES('cesar.je.lo@gmail.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', true, '2018/09/25');

create table tau03_cuenta(id_cuenta serial primary key, id_usuario int2 references tau02_usuario(id_usuario), id_perfil int2 references tau01_perfil(id_perfil));
INSERT INTO tau03_cuenta(id_usuario, id_perfil)VALUES(1, 1);
INSERT INTO tau03_cuenta(id_usuario, id_perfil)VALUES(2, 2);
INSERT INTO tau03_cuenta(id_usuario, id_perfil)VALUES(3, 3);
INSERT INTO tau03_cuenta(id_usuario, id_perfil)VALUES(4, 4);
INSERT INTO tau03_cuenta(id_usuario, id_perfil)VALUES(5, 5);
INSERT INTO tau03_cuenta(id_usuario, id_perfil)VALUES(6, 6);
INSERT INTO tau03_cuenta(id_usuario, id_perfil)VALUES(7, 7);
INSERT INTO tau03_cuenta(id_usuario, id_perfil)VALUES(8, 8);
INSERT INTO tau03_cuenta(id_usuario, id_perfil)VALUES(9, 9);
INSERT INTO tau03_cuenta(id_usuario, id_perfil)VALUES( 10, 10);
INSERT INTO tau03_cuenta(id_usuario, id_perfil)VALUES( 11, 8);
INSERT INTO tau03_cuenta(id_usuario, id_perfil)VALUES( 12, 8);
INSERT INTO tau03_cuenta(id_usuario, id_perfil)VALUES( 13, 8);
INSERT INTO tau03_cuenta(id_usuario, id_perfil)VALUES( 14, 8);

CREATE TABLE tau04_informacion_personal(
  clave               varchar(18) primary key, 
  tx_nombre           varchar(50) NOT NULL, 
  tx_primer_apellido  varchar(25) NOT NULL, 
  tx_segundo_apellido varchar(25), 
  tx_celular          varchar(10), 
  tx_correo			  varchar(250),
  id_cuenta           int4 references tau03_cuenta(id_cuenta));
INSERT INTO tau04_informacion_personal(clave, tx_nombre, tx_primer_apellido, tx_segundo_apellido, tx_celular, tx_correo, id_cuenta)VALUES('2012630293', 'Roberto', 'Mendoza', 'Saavedra', '5521842095', 'isc.robertomendoza@gmail.com' , 13);
INSERT INTO tau04_informacion_personal(clave, tx_nombre, tx_primer_apellido, tx_segundo_apellido, tx_celular, tx_correo, id_cuenta)VALUES('2013630206', 'César Erick', 'Hernández', 'López', '5573316482', 'cesar.je.lo@gmail.com', 14);
INSERT INTO tau04_informacion_personal(clave, tx_nombre, tx_primer_apellido, tx_segundo_apellido, tx_celular, tx_correo, id_cuenta)VALUES('2014630206', 'Fernanda', 'Campos', 'Gomez', '5512489652', 'fernanda.ca.g@gmail.com', 11);
INSERT INTO tau04_informacion_personal(clave, tx_nombre, tx_primer_apellido, tx_segundo_apellido, tx_celular, tx_correo, id_cuenta)VALUES('MUJV920407HDFRPS03', 'Victor Edgar', 'Mujica', 'Jr.', '5512469874', 'victor.mu.jr@gmail.com', 12);

-- Tablas de servicios
CREATE TABLE tc01_catalogo_area (
  id_area        serial primary key, 
  nb_area        varchar(25) NOT NULL, 
  ds_descripcion varchar(150), 
  st_activa      bool NOT NULL, 
  responsable    int4 references tau03_cuenta(id_cuenta));
INSERT INTO tc01_catalogo_area(nb_area, ds_descripcion, st_activa, responsable)VALUES('CELEX', 'Centro de Lenguas Extranjeras ESCOM', true, 2);
INSERT INTO tc01_catalogo_area(nb_area, ds_descripcion, st_activa, responsable)VALUES('Servicios Dentales', 'Servicios Dentales ESCOM', true, 3);
INSERT INTO tc01_catalogo_area(nb_area, ds_descripcion, st_activa, responsable)VALUES('Servicios Fotocopiado', 'Servicios de Fotocopiado ESCOM', true, 5);
INSERT INTO tc01_catalogo_area(nb_area, ds_descripcion, st_activa, responsable)VALUES('Servicios Biblioteca', 'Servicios Bibliotecarios ESCOM', true, 4);
 
CREATE TABLE tc03_tipo_servicio (
  id_tipo_servicio serial primary key, 
  tx_nombre        varchar(20) NOT NULL, 
  tx_descripcion   varchar(100) NOT NULL); 
INSERT INTO tc03_tipo_servicio(tx_nombre, tx_descripcion)VALUES('Curso', 'Cualquier curso impartido dentro de la ESCOM');
INSERT INTO tc03_tipo_servicio(tx_nombre, tx_descripcion)VALUES('Servicio', 'Cualquier servicio ofrecido dentro de la ESCOM');

CREATE TABLE tc02_catalogo_servicio (
  id_catalogo_servicio serial primary key, 
  tx_clave             varchar(4) NOT NULL, 
  ds_servicio          varchar(150), 
  precio               float8 NOT NULL, 
  st_activo            bool NOT NULL, 
  id_area              int4 references tc01_catalogo_area(id_area), 
  id_tipo_servicio     int4 references tc03_tipo_servicio(id_tipo_servicio));
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('853', 'Curso de Idiomas semanal o sabatino, 40 horas. Comunidad IPN', 544, true, 1, 1);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('858', 'Curso de Idiomas semanal o sabatino, 40 horas. Público en General', 1053, true, 1, 1);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3261', 'Servicio Médico de Aplicación de Amalgama. Estudiantes del IPN', 74, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3262', 'Servicio Médico de Aplicación de Amalgama. Público en General', 142, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3263', 'Servicio Médico de Aplicación de Amalgama. Trabajadores del IPN', 101, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3273', 'Servicio Médico de Cementación Incrustación. Estudiantes del IPN  y Comunidad del IPN', 68, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3276', 'Servicio Médico de Consulta de Odontología. Comunidad del IPN', 27, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3284', 'Servicio Médico de Curación. Estudiantes del IPN', 27, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3285', 'Servicio Médico de Curación. Comunidad del IPN', 74, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3286', 'Servicio Médico de Curación. Trabajadores', 47, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3311', 'Servicio Médico de Curación. Trabajadores', 59, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3312', 'Servicio Médico de Extracción de piezas dentales. Docentes y empleados', 66, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3313', 'Servicio Médico de Extracción de piezas dentales. Docentes y empleados', 180, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3326', 'Servicio Médico de Impresión Parcial  (hilo retractor, yeso velmix, hule, rectificador, alginato, yeso piedra y cera)', 81, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3378', 'Servicio Médico de Profilaxis. Estudiantes del IPN', 108, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3379', 'Servicio Médico de Profilaxis. Comunidad Politécnica', 163, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3382', 'Servicio Médico de Profilaxis. Público en General', 196, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3403', 'Servicio Médico de Resina autopolimerizable. Estudiantes del IPN', 155, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3404', 'Servicio Médico de Resina autopolimerizable. Docentes y empleados', 175, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3406', 'Servicio Médico de Resina chica', 41, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('3407', 'Servicio Médico de Resina. Comunidad Politécnica', 172, true, 2, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('4', 'Multa de biblioteca', 6.50, true, 4, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('11', 'Impresiones láser t/carta (equivale a 15 impresiones)', 9.28, true, 3, 2);
INSERT INTO tc02_catalogo_servicio(tx_clave, ds_servicio, precio, st_activo, id_area, id_tipo_servicio)VALUES('55', 'Reposición credencial de biblioteca', 26, true, 4, 2);

create table tc04_notificacion(
	id_notificacion		serial primary key,
	tx_motivo			varchar(255),
	id_cuenta 			int4 references tau03_cuenta(id_cuenta));

-- Tablas de citas dentales
CREATE TABLE tcd02_estado_cita (
  id_estado_cita serial primary key, 
  nb_estado      varchar(25) NOT NULL, 
  ds_descripcion varchar(150) NOT NULL, 
  st_activo      bool NOT NULL);
INSERT INTO tcd02_estado_cita(nb_estado, ds_descripcion, st_activo)VALUES('Pendiente', 'En espera de que acuda el paciente al consultorio', true);
INSERT INTO tcd02_estado_cita(nb_estado, ds_descripcion, st_activo)VALUES('Concluida', 'El paciente acude a la cita y se le otorga la consulta', true);
INSERT INTO tcd02_estado_cita(nb_estado, ds_descripcion, st_activo)VALUES('Cancelada', 'La dentista cancela la cita', true);
INSERT INTO tcd02_estado_cita(nb_estado, ds_descripcion, st_activo)VALUES('Inasistencia', 'El paciente no acude a la cita', true);

CREATE TABLE tcd05_hora_servicio (
  id_hora_servicio serial primary key, 
  tx_hora          varchar(8) NOT NULL, 
  tx_turno         varchar(1) NOT NULL, 
  st_activo        bool NOT NULL);
INSERT INTO tcd05_hora_servicio(tx_hora, tx_turno, st_activo)VALUES('09:00:00', 'M', true);
INSERT INTO tcd05_hora_servicio(tx_hora, tx_turno, st_activo)VALUES('11:00:00', 'M', true);
INSERT INTO tcd05_hora_servicio(tx_hora, tx_turno, st_activo)VALUES('13:00:00', 'M', true);
INSERT INTO tcd05_hora_servicio(tx_hora, tx_turno, st_activo)VALUES('15:00:00', 'V', true);
INSERT INTO tcd05_hora_servicio(tx_hora, tx_turno, st_activo)VALUES('17:00:00', 'V', true);
INSERT INTO tcd05_hora_servicio(tx_hora, tx_turno, st_activo)VALUES('19:00:00', 'V', true);

CREATE TABLE tcd01_cita (
  id_cita          serial primary key, 
  fh_cita          date NOT NULL, 
  id_estado_cita   int4 references tcd02_estado_cita(id_estado_cita), 
  id_cuenta        int4 references tau03_cuenta(id_cuenta), 
  id_hora_servicio int4 references tcd05_hora_servicio(id_hora_servicio));
CREATE TABLE tcd06_paciente (
  clave               varchar(18) primary key, 
  tx_nombre           varchar(50) NOT NULL, 
  tx_primer_apellido  varchar(25) NOT NULL, 
  tx_segundo_apellido varchar(25), 
  tx_celular          varchar(10) NOT NULL, 
  tx_correo           varchar(50) NOT NULL, 
  id_perfil           int4 references tau01_perfil(id_perfil));
CREATE TABLE tcd04_consulta (
  id_consulta                serial primary key, 
  fh_consulta                date NOT NULL, 
  tx_hora                    varchar(8) NOT NULL, 
  tx_observaciones           varchar(250),
  paciente                   varchar(18) references tcd06_paciente(clave),
  dentista					 int4 references tau03_cuenta(id_cuenta));
CREATE TABLE tcd03_nota_pago (
  id_nota_pago         serial primary key, 
  fh_emision           timestamp NOT NULL, 
  id_consulta          int4 references tcd04_consulta(id_consulta), 
  id_catalogo_servicio int4 references tc02_catalogo_servicio(id_catalogo_servicio));

-- Tablas de fotocopiado
create table tf01_control_impresiones(
	id_cuenta	int4 references tau03_cuenta(id_cuenta) primary key,
	nu_impresiones int4 not null);

-- Tabla de biblioteca
create table tb01_nota(
	id_nota 				serial primary key,
	fh_emision 				date not null,
	id_catalogo_servicio	int4 references tc02_catalogo_servicio(id_catalogo_servicio));

-- Tablas de pagos
CREATE TABLE tp02_estado_pago (
  id_estado_pago serial primary key, 
  nb_estado_pago varchar(25) NOT NULL, 
  ds_descripcion varchar(150) NOT NULL, 
  st_activo      bool NOT NULL);
INSERT INTO tp02_estado_pago(nb_estado_pago, ds_descripcion, st_activo)VALUES('Aceptado', 'La caja ha aceptado un pago', true);
INSERT INTO tp02_estado_pago(nb_estado_pago, ds_descripcion, st_activo)VALUES('Pendiente', 'Se emitió un pago y no se ha validado', true);
INSERT INTO tp02_estado_pago(nb_estado_pago, ds_descripcion, st_activo)VALUES('Rechazado', 'La caja ha rechazado un pago', true);
 
CREATE TABLE tp03_tipo_comprobante (
  id_tipo_comprobante serial primary key, 
  tx_nombre           varchar(25) NOT NULL, 
  tx_descripcion      varchar(100) NOT NULL, 
  st_activo           bool NOT NULL);
INSERT INTO tp03_tipo_comprobante(tx_nombre, tx_descripcion, st_activo)VALUES('SIG@', 'Comprobante de pago emitido por el sistema SIG@', true);
INSERT INTO tp03_tipo_comprobante(tx_nombre, tx_descripcion, st_activo)VALUES('Voucher', 'Comprobante de pago adjunto por el usuario', true);

create table tp04_corte_caja(
	id_corte_caja	serial primary key,
	id_cuenta		int4 references tau03_cuenta(id_cuenta),
	st_corte 		bool not null,
	fh_corte		date not null
  );

create table tp05_carpeta_pago(
	id_carpeta		serial primary key,
	st_activo 		bool not null,
	fh_creacion 	date not null);

CREATE TABLE tp01_pago_dia (
  id_pago_dia          serial primary key, 
  tx_archivo           bytea NOT NULL, 
  fh_envio             date NOT NULL, 
  id_tipo_comprobante  int4 references tp03_tipo_comprobante(id_tipo_comprobante), 
  id_catalogo_servicio int4 references tc02_catalogo_servicio(id_catalogo_servicio), 
  id_estado_pago       int4 references tp02_estado_pago(id_estado_pago), 
  id_cuenta            int4 references tau03_cuenta(id_cuenta), 
  id_carpeta           int4 references tp05_carpeta_pago(id_carpeta));
 
 
  
 
 
 
 