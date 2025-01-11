-- Query ini mengambil nilai longitude (LONG_W) yang dibulatkan hingga 4 angka desimal
-- dari tabel STATION untuk stasiun dengan latitude (LAT_N) maksimum
-- yang kurang dari 137.2345.
--
-- Fungsi-fungsi yang digunakan:
-- 1. ROUND(LONG_W, 4): Membulatkan nilai LONG_W hingga 4 angka desimal.
-- 2. MAX(LAT_N): Mencari nilai maksimum LAT_N dari subquery.
--
-- Subquery:
-- SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345
-- mencari nilai latitude (LAT_N) maksimum yang kurang dari 137.2345.
--
-- Query utama:
-- SELECT ROUND(LONG_W, 4) FROM STATION WHERE LAT_N = (subquery)
-- mengambil nilai longitude (LONG_W) dari stasiun dengan latitude
-- yang ditemukan dalam subquery dan membulatkannya hingga 4 angka desimal.
SELECT
    ROUND(LONG_W, 4)
FROM
    STATION
WHERE
    LAT_N = (
        SELECT
            MAX(LAT_N)
        FROM
            STATION
        WHERE
            LAT_N < 137.2345
    );