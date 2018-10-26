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