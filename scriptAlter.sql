-- Tabla para los servicios que se incluyen en una nota de pago
create table tcd07_servicios_nota(
	id_nota_pago int4 references tcd03_nota_pago(id_nota_pago),
	id_catalogo_servicio int4 references tc02_catalogo_servicio(id_catalogo_servicio),
	primary key(id_nota_pago, id_catalogo_servicio));

-- Se añade el campo cantidad en la tabla de notas de biblioteca para saber el numero de multas que pagará
alter table tb01_nota add column cantidad int4;
-- Se añade el campo fh_emision para incluir la fecha de emision de una nota de pago
alter table tcd03_nota_pago alter column fh_emision type date;
-- Se añade el campo cantidad en la tabla de nota de pago para servicios dentales para saber el numero de servicios que pagará
alter table tcd07_servicios_nota add column cantidad int4;

INSERT INTO public.tp05_carpeta_pago
(st_activo, fh_creacion)
VALUES(true, current_date);

-- Se añade el campo de estatus a la tabla de cuenta
alter table tau03_cuenta add column st_activa bool not null;
update tau03_cuenta set st_activa = true;
-- Se borra el campo de estatus en la tabla usuario
alter table tau02_usuario drop column st_activo;

alter table tc04_notificacion add column id_destinatario int4 references tau03_cuenta(id_cuenta);
alter table tc04_notificacion add column fecha_envio date;

update tau02_usuario set tx_login = 'administrador_dentales_matutino@ipn.com.mx' where tx_login = 'administrador_dentales@ipn.com.mx';
INSERT INTO tau02_usuario(tx_login, tx_password, st_activo, fh_alta)VALUES('administrador_dentales_vespertino@ipn.com.mx', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', '2018/09/25');
INSERT INTO tau03_cuenta(id_usuario, id_perfil)VALUES( 15, 3, true);


-- Se separa el área dental en turno matutino y vespertino
ALTER TABLE tc01_catalogo_area ALTER COLUMN nb_area TYPE varchar(55) USING nb_area::varchar;
update tc01_catalogo_area set nb_area = 'Servicios Dentales Matutino' where nb_area = 'Servicios Dentales';
update tc01_catalogo_area set ds_descripcion = 'Servicios Dentales ESCOM para el turno matutino' where nb_area = 'Servicios Dentales Matutino';
INSERT INTO tc01_catalogo_area(nb_area, ds_descripcion, st_activa, responsable) VALUES('Servicios Dentales Vespertino', 'Servicios Dentales ESCOM para el turno vespertino', true, 15);

-- Se agrega nuevo perfil default
INSERT INTO tau01_perfil(nb_perfil, ds_perfil, st_activo) VALUES('Default', 'Perfil que se asigna al registrar a un nuevo responsable de área', true);

alter table tc04_notificacion add column id_destinatario int4 references tau03_cuenta(id_cuenta);
alter table tc04_notificacion add column fecha_envio date;

alter table tp01_pago_dia add column corte_caja bool;

-- Pago SIGA
CREATE TABLE tp07_pago_siga(id_siga serial primary key,
							tx_archivo bytea NOT NULL,
							fh_envio date NOT NULL, 
 							id_cuenta int4 references tau03_cuenta(id_cuenta),
							id_pago int4 references tp01_pago_dia(id_pago_dia));

-- Tabla servicios efectuados
CREATE TABLE tp06_servicio_efectuado(
	id_pago int4 references tp01_pago_dia(id_pago_dia) primary key,
	fh_aprobado date not null
);

-- Se borra tabla servicios_nota
drop table tcd07_servicios_nota;

-- Tablaa registro usuario
create table tau05_usr_ipn (
id_inf_personal varchar(18) references tau04_informacion_personal(clave) primary key,
num_ipn varchar(10) not null);

-- Inserts
INSERT INTO tau04_informacion_personal(clave, tx_nombre, tx_primer_apellido, tx_segundo_apellido, tx_celular, tx_correo, id_cuenta)VALUES('30092018', 'Felipe de Jesus', 'Figueroa', 'del Prado', '5522456789', 'subdirector_administrativo@ipn.com.mx' , 1);
INSERT INTO tau04_informacion_personal(clave, tx_nombre, tx_primer_apellido, tx_segundo_apellido, tx_celular, tx_correo, id_cuenta)VALUES('31092018', 'Karla', 'Pineda', 'Ruiz', '5521842090', 'administrador_celex@ipn.com.mx' , 2);
INSERT INTO tau04_informacion_personal(clave, tx_nombre, tx_primer_apellido, tx_segundo_apellido, tx_celular, tx_correo, id_cuenta)VALUES('32092018', 'Emma', 'López', 'Jr.', '5521842091', 'administrador_dentales@ipn.com.mx' , 3);
INSERT INTO tau04_informacion_personal(clave, tx_nombre, tx_primer_apellido, tx_segundo_apellido, tx_celular, tx_correo, id_cuenta)VALUES('33092018', 'Josefina', 'V.', 'Perez', '5521842092', 'administrador_biblioteca@ipn.com.mx' , 4);
INSERT INTO tau04_informacion_personal(clave, tx_nombre, tx_primer_apellido, tx_segundo_apellido, tx_celular, tx_correo, id_cuenta)VALUES('34092018', 'Pedro', 'Morales', 'Nieto', '5521842093', 'administrador_fotocopiado@ipn.com.mx' , 5);
INSERT INTO tau04_informacion_personal(clave, tx_nombre, tx_primer_apellido, tx_segundo_apellido, tx_celular, tx_correo, id_cuenta)VALUES('35092018', 'José', 'Hernandez', 'Rodriguez', '5521842094', 'administrador_cajero@ipn.com.mx' , 6);
INSERT INTO tau04_informacion_personal(clave, tx_nombre, tx_primer_apellido, tx_segundo_apellido, tx_celular, tx_correo, id_cuenta)VALUES('36092018', 'Patricia', 'Mata', 'Gil', '5521842095', 'contador_general@ipn.com.mx' , 7);
INSERT INTO tau04_informacion_personal(clave, tx_nombre, tx_primer_apellido, tx_segundo_apellido, tx_celular, tx_correo, id_cuenta)VALUES('2014630206', 'Fernanda', 'Campos', 'Gomez', '5512489658', 'fernanda.ca.g@gmail.com', 11);
INSERT INTO tau04_informacion_personal(clave, tx_nombre, tx_primer_apellido, tx_segundo_apellido, tx_celular, tx_correo, id_cuenta)VALUES('MUJV920407HDFRPS03', 'Victor Edgar', 'Mujica', 'Jr.', '5512469874', 'victor.mu.jr@gmail.com', 12);
INSERT INTO tau04_informacion_personal(clave, tx_nombre, tx_primer_apellido, tx_segundo_apellido, tx_celular, tx_correo, id_cuenta)VALUES('2012630293', 'Roberto', 'Mendoza', 'Saavedra', '5521842095', 'isc.robertomendoza@gmail.com' , 13);
INSERT INTO tau04_informacion_personal(clave, tx_nombre, tx_primer_apellido, tx_segundo_apellido, tx_celular, tx_correo, id_cuenta)VALUES('2013630206', 'César Erick', 'Hernández', 'López', '5573316482', 'cesar.je.lo@gmail.com', 14);
INSERT INTO tau04_informacion_personal(clave, tx_nombre, tx_primer_apellido, tx_segundo_apellido, tx_celular, tx_correo, id_cuenta)VALUES('2009630293', 'Ulises', 'Velez', 'Saavedra', '5521842435', 'ulises@gmail.com' , 15);
INSERT INTO tau04_informacion_personal(clave, tx_nombre, tx_primer_apellido, tx_segundo_apellido, tx_celular, tx_correo, id_cuenta)VALUES('IPJV920507HDFRPS07', 'Issac', 'Perez', 'Perez', '5573315582', 'issac@gmail.com', 16);

-- Tabla corte caja
create table tp04_corte_caja(
    id_corte_caja   serial,
	id_cuenta		int4 references tau03_cuenta(id_cuenta),
	st_corte 		bool not null,
	fh_corte		date not null,
	total_corte    float,
	primary key(id_corte_caja));
INSERT INTO tp04_corte_caja (id_cuenta, st_corte, fh_corte, total_corte)
VALUES(13, true, current_date, 1455.50);