/*
Enter your query here.
*/

/*
    Kita bisa melakukan multiple order by dengan tipe sort yang berbeda.
    Contoh query ke 2, kita melakukan sort berdasarkan length(CITY) secara descending, kemudian CITY secara ascending 
*/
select CITY, length(CITY) from STATION order by length(CITY), CITY asc limit 1;
select CITY, length(CITY) from STATION order by length(CITY) desc, CITY asc limit 1;