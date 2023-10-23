select * from categorie;
insert into categorie (categorieProdus) values
('ALCOOLICE'),
('ALIMENTE DE BAZA'),
('CONSERVE'),
('OTET'),
('ENERGIZANT');
select * from produse;
insert into produse(codProdus,denumireProdus,idCategorie) values
('T09W5','GILMANS GIN',1),
('500403','NATY ELIT MIX NAP BISC',2),
('SL638RS','OLLA ALUNITE CACAO',2),
('Z7716','REGAL SOS TOMATE',3),
('70000/K','RIENERGY DRINK',5),
('KC3F9RS',	'VIVA PERNITE CACAO',2),
('H3886','VODKA SCANDIC',1),
('J4384','REGAL OTET',4);
select * from preturifacturare;
insert into preturifacturare(idProduse,pretLista,discountDeBaza,pretFacturare) values
(1,33.05,16.5,27.60),
(2,5,16.5,4.18),
(3,2.15,16.5,1.80),
(4,4.5,16.5,3.76),
(5,2.15,16.5,1.80),
(6,3.35,16.5,2.80),
(7,21.00,16.5,17.54),
(8,3.63,17,3.01);
update preturifacturare set discountDeBaza = 16.5 where id = 8;
select * from preturicudiscount;
insert into preturicudiscount(idProduse,idPreturiFacturare,discountUlteriorLivrarii,logistica,promo,pretCuDiscount) values
(1,1,21.87,4.89,7.00,18.28),
(2,2,21.87,4.89,0.10,3.05),
(3,3,21.87,4.89,0.10,1.31),
(4,4,21.87,4.89,0.10,2.75),
(5,5,21.87,4.89,0.10,1.31),
(6,6,21.87,4.89,0.10,2.05),
(7,7,21.87,4.89,10.00,11.09),
(8,8,21.87,4.89,12.00,1.85);
select * from marjabruta;
insert into marjabruta(idProduse,idPreturiCuDiscount,valoareMarjaBruta) values
(1,1,4.16),
(2,2,19.44),
(3,3,37.55),
(4,4,30.14),
(5,5,40.60),
(6,6,34.01),
(7,7,-0.91),
(8,8,7.32);
select * from transport;
insert into transport(idProduse,valoareTransport) values
(1,2.9),
(2,2.9),
(3,2.9),
(4,2.9),
(5,2.9),
(6,2.9),
(7,2.9),
(8,2.9);
select * from mercantizare;
insert into mercantizare(idProduse,valoareMercantizare) values
(1,0.8),
(2,0.8),
(3,0.8),
(4,0.8),
(5,0.8),
(6,0.8),
(7,0.8),
(8,0.8);
select * from preturiProducator;
insert into preturiProducator(idProduse,pretProducator) values
(1,17.52),
(2,2.46),
(3,0.82),
(4,1.92),
(5,0.78),
(6,1.35),
(7,11.19),
(8,1.71);
select * from marjaneta;
insert into marjaneta(idProduse,idPreturiFacturare,idPreturiCuDiscount,idPreturiProducator,idTransport,idMercantizare,valoareMarjaNeta) values
(1,1,1,1,1,1,-1.43),
(2,2,2,2,2,2,14.38),
(3,3,3,3,3,3,32.49),
(4,4,4,4,4,4,25.08),
(5,5,5,5,5,5,35.54),
(6,6,6,6,6,6,28.96),
(7,7,7,7,7,7,-6.76),
(8,8,8,8,8,8,1.28);
insert into marjaneta(idProduse,idPreturiFacturare,idPreturiCuDiscount,idPreturiProducator,idTransport,idMercantizare,valoareMarjaNeta) values
(8,8,8,8,8,8,17.46);
update marjaneta set valoareMarjaNeta = 11.41 where id = 9;
delete from marjaneta where id = 9;