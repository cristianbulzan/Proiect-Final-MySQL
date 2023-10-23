# Proiect-Final-MySQL
## Scopul Proiectului
  Scopul acestui proiect este de a crea o baza de date care sa contina instructiuni DDL, DML si DQL.
  
  Instrumentele utilizate in realizarea proiectului au fost: MySQL Workbench
  
## Specificatiile functionale ale proiectului

  Se va crea o baza de date pe un subiect la alegere.
  
  Aceasta trebuie sa contina urmatoarele componente:
- Instructiuni DDL (cel putin una dintre CREATE, ALTER, DROP, TRUNCATE);
- Instructiuni de DML (INSERT, DELETE, UPDATE);
- Instructiuni DQL (select all, select cateva coloane, filtrare cu where, filtrari cu like, filtrari cu AND și OR, functii agregate,
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
