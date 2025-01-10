/*
 Kita bisa menggunakan fungsi ROUND() untuk membulatkan angka desimal.
 contoh : ROUND(12.345, 2) akan menghasilkan 12.35
 */
select
    round(sum(LAT_N), 2),
    round(sum(LONG_W), 2)
from
    STATION;