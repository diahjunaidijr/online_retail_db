-- Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir
 
select cust_id, avg(amount) as average_transaction
from orders
where order_date >=date_sub(now(), interval 1 month)
group by cust_id;


-- user id 13: Melissa memang belum pernah melakukan transaksi
-- disini baru ada record 1 hari transaksi dalam 1 bulan