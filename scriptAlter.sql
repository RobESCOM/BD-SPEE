create table tcd07_servicios_nota(
	id_nota_pago int4 references tcd03_nota_pago(id_nota_pago),
	id_catalogo_servicio int4 references tc02_catalogo_servicio(id_catalogo_servicio),
	primary key(id_nota_pago, id_catalogo_servicio));

alter table tb01_nota add column cantidad int4;
alter table tcd03_nota_pago alter column fh_emision type date;
alter table tcd07_servicios_nota add column cantidad int4;