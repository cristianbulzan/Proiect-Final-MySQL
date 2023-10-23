# <h1 align="center">Proiect-Final-MySQL<h1>
## Scopul Proiectului

  Scopul acestui proiect este de a crea o baza de date care sa contina instructiuni DDL, DML si DQL.

  Proiectul are 3 sectiuni: **Magazin SQL database DDL**, **Magazin SQL database DML** si **Magazin SQL database DQL**
  
  Instrumentele utilizate in realizarea proiectului au fost: MySQL Workbench
  
## Specificatiile functionale ale proiectului

  Se va crea o baza de date pe un subiect la alegere.
  
  Aceasta trebuie sa contina urmatoarele componente:
- **Instructiuni DDL** (cel putin una dintre CREATE, ALTER, DROP, TRUNCATE).
- **Instructiuni de DML** (INSERT, DELETE, UPDATE).
- **Instructiuni DQL** (select all, select cateva coloane, filtrare cu where, filtrari cu like, filtrari cu AND și OR, functii agregate,
filtrari pe functii agregate, joinuri - inner join, left join, right join, cross join, limite, order by, chei primare, chei secundare).

Fiecare instructiune va trebui sa aiba asociata o explicatie a scenariului acoperit.

Exemple de scenarii:
- Crearea unei tabele entitate care sa stocheze toate informatiile despre angajatii din companie;
- Crearea unei tabele de legatura între tabela produse si tabela comenzi;
- Returnarea tuturor angajatilor care au avut un bonus de performantă mai mare de $1000;
- Returnarea tuturor clientilor care nu au avut comenzi in luna anterioara.
  
De asemenea, fiecare doua tabele legate prin chei primare si chei secundare vor trebui sa aiba atasata o explicatie legata de felul
in care acestea sunt legate (care e cheia primara, care e cheia secundara) si respectiv care e relatia intre cele doua tabele (1:1, 1,n,
n,n).

## Sectiunea Magazin SQL database DDL

In aceasta sectiune s-a facut structura bazei de date, aceasta poate fi accesata aici: [Proiectare Strucura Magazin](https://github.com/cristianbulzan/Proiect-Final-MySQL/blob/main/Magazin%20SQL%20database.docx), s-a creat baza de date, s-au creat tabelele din structura acesteia, s-au stabilit cheile primare si cele secundare si legaturile dintre tabele [Magazin SQL database DDL](https://github.com/cristianbulzan/Proiect-Final-MySQL/blob/main/Magazin%20SQL%20database%20DDL.sql)

Denumirea bazei de date este: **Magazin** si a fost creata sub urmatoarea strucura care poate fi accesata aici: [Structura Baza de Date Magazin](https://github.com/cristianbulzan/Proiect-Final-MySQL/blob/main/Diagram%20Magazin%20SQL%20database.mwb)

Tabele create au urmatoarele detalii, iar strucura acestora poate fi accesata aici:  [Structura Tabele Magazin](https://github.com/cristianbulzan/Proiect-Final-MySQL/blob/main/Diagram%20Magazin%20SQL%20database.mwb)

  * **Tabela Produse** (Id, Cod produs, Denumire Produs, IdCategorie).

  * **Tabela Categorie** (Id, Categorie Produs).

  * **Tabela PreturiFacturare** (Id, IdProduse, Pret Lista, Discount  de Baza, Pret Facturare).

  * **Tabela PreturiCuDiscount** (Id, IdProduse, IdPreturiFacturare, Discount Ulterior Livarii, Logisitica, Promo, Pret cu Discount).

  * **Tabela MarjaBruta** (Id, IdProduse, IdPreturiCuDiscount, Valoare Marja Bruta).

  * **Tabela MarjaNeta** (Id, IdProduse, IdPreturiFacturare, IdPreturiCuDiscount, idPreturiProducator, IdTransport, IdMercantizare, Valoare Marja Neta).

  * **Tabela Transport** (Id, IdProduse, Valoare  Transport).

  * **Tabela Mercantizare** (Id, IdProduse, Valoare Mercantizare).

  * **Tabela PreturiProducator** (Id, IdProduse, Pret Producator).

Pentru toate tabele s-au stabilit **cheile principale** coloanele denumite **'id'**.

**Cheile secundare** si legaturile dintre tabele au fost stabilite astfel:

  * In **Tabela Produse** cheia secundara este IdCategorie care aduce din Tabela Categorie categoria produsului din care face parte produsul din Tabela Produse.

  * In **Tabela PreturiFacturare** cheia secundara este IdProduse care aduce din Tabela Produse detaliile produsului (Cod Produs, Denumire Produs, Categorie Produs).

  * In **Tabela PreturiCuDiscount** cheile secundare sunt IdProduse care aduce din Tabela Produse detaliile produsului (Cod Produs, Denumire Produs, Categorie Produs) si       IdPreturiFacturare care aduce din Tabela PreturiFacturare detaliile legate de pretul de facturare al produsului (Pret Lista, Discount  de Baza, Pret Facturare).

  * In **Tabela MarjaBruta** cheile secundare sunt IdProduse care aduce din Tabela Produse detaliile produsului (Cod Produs, Denumire Produs, Categorie Produs) si      
    IdPreturiCuDiscount care aduce din Tabela PreturiCuDiscount detaliile legate de pretul cu discount al produsului (Discount Ulterior Livarii, Logisitica, Promo, Pret cu      Discount).

  * In **Tabela MarjaNeta** cheile secundare sunt IdProduse care aduce din Tabela Produse detaliile produsului (Cod Produs, Denumire Produs, Categorie Produs),         
    IdPreturiFacturare care aduce din Tabela PreturiFacturare detaliile legate de pretul de facturare al produsului (Pret Lista, Discount  de Baza, Pret Facturare),      
    IdPreturiCuDiscount care aduce din Tabela PreturiCuDiscount detaliile legate de pretul cu discount al produsului (Discount Ulterior Livarii, Logisitica, Promo, Pret cu      Discount), idPreturiProducator care aduce din Tabela PreturiProducator pretul de producator (Pret Producator), IdTransport care aduce din Tabela Transport valoarea 
    transportului aferent produsului (Valoare  Transport) si IdMercantizare care aduce din Tabela Mercantizare valoarea serviciului de mercantizare aferent produsului 
    (Valoare Mercantizare).

  * In **Tabela Transport** cheia secundara este IdProduse care aduce din Tabela Produse detaliile produsului (Cod Produs, Denumire Produs, Categorie Produs).

  * In **Tabela Mercantizare** cheia secundara este IdProduse care aduce din Tabela Produse detaliile produsului (Cod Produs, Denumire Produs, Categorie Produs).

  * In **Tabela PreturiProducator** cheia secundara este IdProduse care aduce din Tabela Produse detaliile produsului (Cod Produs, Denumire Produs, Categorie Produs).

## Sectiunea Magazin SQL database DML

In aceasta sectiune s-a facut popularea tabelelor cu datele existente in fisierul care poate fi accesat aici: [Informatii Tabele Magazin](https://github.com/cristianbulzan/Proiect-Final-MySQL/blob/main/Baza%20de%20Date%20Magazin.xlsx)
  
## Sectiunea Magazin SQL database DQL

In aceasta sectiune s-a interogat baza de date creata si tabele populate cu informatiile din seciunea anterioara.

**Scenariile** in urma carora s-a facut interogarea sunt urmatoarele:

  * afisati toate produsele disponibile in magazin.
  * afisati tipurile de categorii de produse din magazin.
  * afisati valoarea transportului pentru produsele din magazin.
  * afisati produsele, pretul de lista si pretul de facturare aferente acestora.
  * afisati produsele pentru care pretul este mai mic de 5 ron.
  * afisati produsele pentru care pretul este intre 5 si 50 ron.
  * afisati produsele care au pretul cu discount intre 1 si 5 ron si promo intre 10 si 20.
  * afisati numarul de produse care au un discount de 10.
  * afisati denumirea produselor si preturile de facturare ale acestora.
  * afisati denumirea produselor si preturile de producator ale acestora.
  * afisati denumirea produselor, pretul de facturare, pretul cu discount, pretul de producator si marja bruta.
  * afisati denumirea produselor, pretul de facturare, pretul cu discount, pretul de producator si marja neta ordonate crescator dupa marja neta.
  * afisati denumirea produselor, pretul de facturare, pretul cu discount, pretul de producator si marja neta ordonate descrescator dupa marja neta.
  * afisati denumirea produselor, pretul de facturare, pretul cu discount, pretul de producator si marja neta ordonate descrescator dupa marja neta pentru primele 3       
    produse.
  * afisati denumirea produselor si preturile de facturare ale acestora utilizand left join.
  * afisati denumirea produselor si preturile de facturare ale acestora utilizand right join.
  * afisati denumirea produselor si preturile de facturare ale acestora utilizand cross join.

    


