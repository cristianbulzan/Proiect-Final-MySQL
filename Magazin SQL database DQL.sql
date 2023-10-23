# afisati toate produsele disponibile in magazin
select denumireProdus from produse;
# afisati tipurile de categorii de produse din magazin
select * from categorie;
#afisati valoarea transportului pentru produsele din magazin
select valoareTransport from transport;
# afisati produsele, pretul de lista si pretul de facturare aferente acestora
select idProduse, pretLista, pretfacturare from preturifacturare;
# afisati produsele pentru care pretul este mai mic de 5 ron
select * from preturifacturare where pretfacturare<5;
#afisati produsele pentru care pretul este intre 5 si 50 ron
select * from preturifacturare where pretFacturare>= 5 and pretFacturare<= 50;
#afisati produsele care au pretul cu discount intre 1 si 5 ron si promo intre 10 si 20
select * from preturiCuDiscount where 
(pretCuDiscount between 1 and 5) and 
(promo between 10 and 20);
#afisati numarul de produse care au un discount de 10
select count(*) from preturicudiscount where promo = 10;
#afisati denumirea produselor si preturile de facturare ale acestora
select produse.denumireprodus, preturifacturare.pretFacturare
from produse inner join preturifacturare
on preturifacturare.idProduse = produse.id;
#afisati denumirea produselor si preturile de producator ale acestora
select produse.denumireprodus, preturiproducator.pretproducator
from produse inner join preturiproducator
on preturiproducator.idProduse = produse.id;
#afisati denumirea produselor, pretul de facturare, pretul cu discount, pretul de producator si marja bruta
select produse.denumireProdus,preturifacturare.pretFacturare,preturicudiscount.pretCuDiscount,
preturiproducator.pretProducator,marjabruta.valoareMarjaBruta
from produse inner join preturifacturare inner join preturicudiscount inner join preturiproducator inner join marjabruta
on preturifacturare.idProduse = produse.id and preturicudiscount.idProduse = produse.id and
preturicudiscount.idPreturiFacturare = preturifacturare.id and preturiproducator.idProduse = produse.id and
marjabruta.idProduse = produse.id and marjabruta.idPreturiCuDiscount = preturicudiscount.id;
#afisati denumirea produselor, pretul de facturare, pretul cu discount, pretul de producator si marja neta
# ordonate crescator dupa marja neta
select produse.denumireProdus,preturifacturare.pretFacturare,preturicudiscount.pretCuDiscount,
preturiproducator.pretProducator,marjaneta.valoareMarjaNeta
from produse inner join preturifacturare inner join preturicudiscount inner join preturiproducator inner join marjaneta
on preturifacturare.idProduse = produse.id and preturicudiscount.idProduse = produse.id and
preturicudiscount.idPreturiFacturare = preturifacturare.id and preturiproducator.idProduse = produse.id and
marjaneta.idProduse = produse.id and marjaneta.idPreturiFacturare = preturifacturare.id and 
marjaneta.idPreturiCuDiscount = preturicudiscount.id and marjaneta.idPreturiProducator = preturiproducator.id
order by marjaneta.valoaremarjaneta asc;
#afisati denumirea produselor, pretul de facturare, pretul cu discount, pretul de producator si marja neta
# ordonate descrescator dupa marja neta
select produse.denumireProdus,preturifacturare.pretFacturare,preturicudiscount.pretCuDiscount,
preturiproducator.pretProducator,marjaneta.valoareMarjaNeta
from produse inner join preturifacturare inner join preturicudiscount inner join preturiproducator inner join marjaneta
on preturifacturare.idProduse = produse.id and preturicudiscount.idProduse = produse.id and
preturicudiscount.idPreturiFacturare = preturifacturare.id and preturiproducator.idProduse = produse.id and
marjaneta.idProduse = produse.id and marjaneta.idPreturiFacturare = preturifacturare.id and 
marjaneta.idPreturiCuDiscount = preturicudiscount.id and marjaneta.idPreturiProducator = preturiproducator.id
order by marjaneta.valoaremarjaneta desc;
#afisati denumirea produselor, pretul de facturare, pretul cu discount, pretul de producator si marja neta
# ordonate descrescator dupa marja neta pentru primele 3 produse
select produse.denumireProdus,preturifacturare.pretFacturare,preturicudiscount.pretCuDiscount,
preturiproducator.pretProducator,marjaneta.valoareMarjaNeta
from produse inner join preturifacturare inner join preturicudiscount inner join preturiproducator inner join marjaneta
on preturifacturare.idProduse = produse.id and preturicudiscount.idProduse = produse.id and
preturicudiscount.idPreturiFacturare = preturifacturare.id and preturiproducator.idProduse = produse.id and
marjaneta.idProduse = produse.id and marjaneta.idPreturiFacturare = preturifacturare.id and 
marjaneta.idPreturiCuDiscount = preturicudiscount.id and marjaneta.idPreturiProducator = preturiproducator.id
order by marjaneta.valoaremarjaneta desc
limit 3;
 
#afisati denumirea produselor si preturile de facturare ale acestora utilizand left join
select produse.denumireprodus, preturifacturare.pretFacturare
from produse left join preturifacturare
on preturifacturare.idProduse = produse.id;

#afisati denumirea produselor si preturile de facturare ale acestora utilizand right join
select produse.denumireprodus, preturifacturare.pretFacturare
from produse right join preturifacturare
on preturifacturare.idProduse = produse.id;

#afisati denumirea produselor si preturile de facturare ale acestora utilizand cross join
select produse.denumireprodus, preturifacturare.pretFacturare
from produse cross join preturifacturare
on preturifacturare.idProduse = produse.id;
