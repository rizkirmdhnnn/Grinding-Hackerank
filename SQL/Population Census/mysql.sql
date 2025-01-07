/*
    Untuk mendapatkan field dari 2 atau lebih tabel yang berbeda, kita bisa memanfaatkan JOIN.
    Terdapat berbagi macam jenis JOIN, salah satunya adalah INNER JOIN.
    INNER JOIN akan menghasilkan data yang memiliki nilai yang sama di kedua tabel yang di-join.
    Secara default, Ketika kita menggunakan JOIN, maka yang dihasilkan adalah INNER JOIN.
*/
select sum(CITY.POPULATION)from CITY join COUNTRY on CITY.COUNTRYCODE=COUNTRY.CODE where COUNTRY.CONTINENT = 'Asia'