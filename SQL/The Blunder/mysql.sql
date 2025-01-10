-- Menggunakan fungsi ceil untuk membulatkan hasil ke atas
-- Menggunakan fungsi avg untuk menghitung rata-rata gaji
-- Menggunakan fungsi replace untuk mengganti nilai 0 pada gaji dengan string kosong
-- Mengambil data dari tabel employees
select
    ceil(avg(salary) - avg(replace (salary, 0, '')))
from
    employees