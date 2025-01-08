/*
 Kita diminta untuk menampilkan gaji terbesar dan jumlah karyawan yang memiliki gaji tersebut.
 
 Untuk mencari gaji terbesar kita bisa menggunakan subquery untuk mencari gaji terbesar.
 Setelah mendapatkan gaji terbesar, kita bisa menggunakannya sebagai filter untuk mencari jumlah karyawan yang memiliki gaji tersebut.
 */
select
    max((months * salary)),
    count(employee_id)
from
    Employee
where
    (months * salary) = (
        select
            max((months * salary))
        from
            Employee
    )