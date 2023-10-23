#crearea unei baze de date cu produse, preturile si marjele acestora
create database magazin;
drop database magazin;
create database magazin;
#creare Tabela Produse (Id, Cod produs, Denumire Produs, IdCategorie)
create table produse
(
	id int not null auto_increment primary key,
    codProdus varchar(20) not null,
    denumireProdus varchar(100) not null,
    idCategorie int not null
);
#creare Tabela Categorie (Id, Categorie Produs)
create table categorie
(
	id int not null auto_increment primary key,
    categorieProdus varchar(100) not null
);
#creare Tabela PreturiFacturare (Id, IdProduse, Pret Lista, Discount  de Baza, Pret Facturare)
create table preturiFacturare
(
	id int not null auto_increment primary key,
    idProduse int not null,
    pretLista float not null,
    discountDeBaza float not null,
    pretFacturare float not null
);
#creare Tabela PreturiCuDiscount (Id, IdProduse, IdPreturiFacturare, Discount Ulterior Livarii, 
#Logisitica, Promo, Pret cu Discount)
create table preturiCuDiscount
(
	id int not null auto_increment primary key,
    idProduse int not null,
    idPreturiFacturare int not null,
    discountUlteriorLivrarii float not null,
    logistica float not null,
    promo float,
    pretCuDiscount float not null
);
#creare Tabela MarjaBruta (Id, IdProduse, IdPreturiCuDiscount, Valoare Marja Bruta)
create table marjaBruta
(
	id int not null auto_increment primary key,
    idProduse int not null,
    idPreturiCuDiscount int not null,
    valoareMarjaBruta float not null
);
#creare Tabela MarjaNeta (Id, IdProduse, IdPreturiFacturare, IdPreturiCuDiscount, idPreturiProducator,
#IdTransport, IdMercantizare, Valoare Marja Neta)
create table marjaNeta
(
	id int not null auto_increment primary key,
    idProduse int not null,
    idPreturiFacturare int not null,
    idPreturiCuDiscount int not null,
    idPreturiProducator int not null,
    idTransport int not null,
    idMercantizare int not null,
    valoareMarjaNeta float not null
);
#creare Tabela Transport (Id, IdProduse, Valoare  Transport)
create table transport
(
	id int not null auto_increment primary key,
    idProduse int not null,
    valoareTransport float not null
);
#creare Tabela Mercantizare (Id, IdProduse, Valoare Mercantizare)
create table mercantizare
(
	id int not null auto_increment primary key,
    idProduse int not null,
    valoareMercantizare float not null
);
#creare Tabela PreturiProducator (Id, IdProduse, Pret Producator)
create table preturiProducator
(
	id int not null auto_increment primary key,
    idProduse int not null,
    pretProducator float not null
);
#modificarea denumirii unei coloane din tabelul preturiProducator
alter table preturiProducator
change pretProducator pretVanzator float not null;
alter table preturiProducator
change pretVanzator pretProducator float not null;
#dupa modificari in cadrul unui tabel este indicat sa se verfice prin functia de descriere a structurii
#tabelului
#desc preturiProducator;
#adaugarea de chei secundare in functie de legaturile existenta intre tabelele de mai sus
#
alter table produse
add foreign key(idCategorie) references categorie(id);
#
alter table preturiFacturare
add foreign key(idProduse) references produse(id);
#
alter table preturiCuDiscount
add foreign key(idProduse) references produse(id);
#
alter table preturiCuDiscount
add foreign key(idPreturiFacturare) references preturiFacturare(id);
#
alter table marjaBruta
add foreign key(idProduse) references produse(id);
#
alter table marjaBruta
add foreign key(idPreturiCuDiscount) references preturiCuDiscount(id);
#
alter table marjaNeta
add foreign key(idProduse) references produse(id);
#
alter table marjaNeta
add foreign key(idPreturiFacturare) references preturiFacturare(id);
#
alter table marjaNeta
add foreign key(idPreturiCuDiscount) references preturiCuDiscount(id);
#
alter table marjaNeta
add foreign key(idPreturiProducator) references preturiProducator(id);
#
alter table marjaNeta
add foreign key(idTransport) references transport(id);
#
alter table marjaNeta
add foreign key(idMercantizare) references mercantizare(id);
#
alter table transport
add foreign key(idProduse) references produse(id);
#
alter table mercantizare
add foreign key(idProduse) references produse(id);
#
alter table preturiProducator
add foreign key(idProduse) references produse(id);














    
