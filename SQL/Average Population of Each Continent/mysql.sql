/*
    Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
    Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

/*
    Karna terdapat field dari 2 tabel yang berbeda, maka kita perlu melakukan JOIN terlebih dahulu.
    Untuk mengitung rata-rata populasi kota, kita gunakan fungsi AVG() dan FLOOR() untuk membulatkan ke bawah.
    Kemudian karna kita menggunakan fungsi agregat, maka kita perlu melakukan GROUP BY terhadap COUNTRY.Continent.
    Fungsi dari GROUP BY adalah untuk mengelompokkan data berdasarkan kolom yang diinginkan.
*/

SELECT 
    COUNTRY.Continent, 
    FLOOR(
        AVG(CITY.POPULATION)
    ) 
FROM 
    CITY 
    JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE 
GROUP BY 
    COUNTRY.Continent 
ORDER BY 
    COUNTRY.Continent;
