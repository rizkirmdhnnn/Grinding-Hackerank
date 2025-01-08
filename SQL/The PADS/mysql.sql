/*
 Query 1: Ambil daftar nama di tabel OCCUPATIONS dalam urutan alfabet, dengan menambahkan huruf pertama profesi dalam tanda kurung. Contoh: NamaAktor(A), NamaDokter(D).
 Query 2: Hitung jumlah setiap profesi di tabel OCCUPATIONS, urutkan berdasarkan jumlah (ascending). Format output: There are a total of [jumlah] [profesi]s, dengan profesi ditulis dalam huruf kecil. Jika jumlah sama, urutkan alfabet.
 */
/*
 Pada Query 1, Saya memanfaatkan fungsi CONCAT() untuk menggabungkan beberapa string menjadi satu.
 Dan untuk mendapatkan huruf pertama dari profesi, saya menggunakan fungsi SUBSTRING() dengan parameter 1, 1.
 Untuk Query 2, saya menggunakan fungsi COUNT() untuk menghitung jumlah profesi, dan fungsi LOWER() untuk mengubah profesi menjadi huruf kecil.
 */
select
    concat(
        Name,
        '(',
        SUBSTRING(OCCUPATION, 1, 1),
        ')'
    )
from
    OCCUPATIONS
order by
    Name;

select
    CONCAT(
        'There are a total of ',
        count(OCCUPATION),
        ' ',
        LOWER(OCCUPATION),
        's.'
    ) AS result
from
    OCCUPATIONS
group by
    OCCUPATION
order by
    count(OCCUPATION) asc