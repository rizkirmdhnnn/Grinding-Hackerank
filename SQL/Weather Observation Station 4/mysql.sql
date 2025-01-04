/*
    Kita bisa menggunakan fungsi COUNT() untuk menghitung jumlah baris yang ada di tabel.
    Dengan dikombinasikan dengan DISTINCT() kita bisa menghitung jumlah baris yang unik.
*/
select count(CITY)-count(distinct(CITY)) from STATION;