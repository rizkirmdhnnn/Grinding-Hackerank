/*
    Query a count of the number of cities in CITY having a Population larger than .
*/

/*
    Kita bisa memanfaatkan fungsi COUNT() untuk menghitung jumlah baris yang memenuhi kondisi tertentu.
*/
select count(population) from CITY where population > 100000