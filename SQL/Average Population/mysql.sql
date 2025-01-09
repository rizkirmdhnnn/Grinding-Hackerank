-- Query the average population for all cities in CITY, rounded down to the nearest integer.
-- Kita bisa menggunakan fungsi floor() untuk membulatkan ke bawah
SELECT
    floor(avg(population))
FROM
    CITY