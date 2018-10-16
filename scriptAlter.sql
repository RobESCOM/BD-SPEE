create table tcd07_servicios_nota(
	id_nota_pago int4 references tcd03_nota_pago(id_nota_pago),
	id_catalogo_servicio int4 references tc02_catalogo_servicio(id_catalogo_servicio),
	primary key(id_nota_pago, id_catalogo_servicio));

alter table tb01_nota add column cantidad int4;
alter table tcd03_nota_pago alter column fh_emision type date;
alter table tcd07_servicios_nota add column cantidad int4;

INSERT INTO public.tp05_carpeta_pago
(st_activo, fh_creacion)
VALUES(true, current_date);

alter table tau03_cuenta add column st_activa bool not null;
update tau03_cuenta set st_activa = true;