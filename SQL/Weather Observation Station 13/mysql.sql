/*
 Fungsi dari TRUNCATE adalah untuk memotong angka dibelakang koma tanpa pembulatan
 contoh : TRUNCATE(123.4567, 2) = 123.45
 */
select
    TRUNCATE(sum(LAT_N), 4)
from
    STATION
where
    LAT_N > 38.7880
    and LAT_N < 137.2345