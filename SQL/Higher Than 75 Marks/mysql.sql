/*
    Untuk mendapatkan 3 karakter terakhir dari sebuah string, kita bisa menggunakan fungsi RIGHT() pada MySQL.
*/

select Name from STUDENTS where Marks > 75 order by right(Name, 3), ID asc