/*
 Kita disuruh untuk mencari nilai terbesar dari LAT_N yang kurang dari 137.2345 dan kemudian membulatkannya ke 4 desimal.
 
 Untuk mencari nilai terbesar kita bisa memanfaatkan fungsi MAX()
 Dan untuk membuat nilai tersebut menjadi 4 desimal kita bisa memanfaatkan fungsi TRUNCATE()
 */
select
    truncate(max(LAT_N), 4)
from
    STATION
where
    LAT_N < 137.2345