/*
    Kita diminta untuk menampilkan nama dari employee yang memiliki salary lebih dari 2000 dan months kurang dari 10
    Kemudian kita diharuskan untuk mengurutkan hasilnya berdasarkan employee_id
*/

select name from Employee where salary > 2000 and months < 10 order by employee_id