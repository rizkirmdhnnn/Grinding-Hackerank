-- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
-- Untuk menjumlahkan semua populasi, kita bisa menggunakan fungsi SUM()
-- SUM berfungsi untuk menjumlahkan semua nilai dalam kolom
SELECT
    SUM(population)
FROM
    CITY
WHERE
    COUNTRYCODE = 'JPN'