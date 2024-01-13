-- Study case: Pelanggan membeli 3 barang yang berbeda (asumsi saya bahwa ini skenario melibatkan insert dan select)

-- table orders
insert into orders (cust_id, order_date, amount)
values
    (14, '2024-01-13', 16021000); -- ambil contoh customer bernama Noah dengan id nya 14 karena dia belum ada history belanja

-- table order_detail
insert into order_detail (order_id, item_id, total_items, item_price, grand_total)
values
    (13, 1, 1, 12000500, 12000500), -- Barang pertama
    (13, 2, 1, 420500, 420500),     -- Barang kedua
    (13, 3, 1, 380000, 380000);     -- Barang ketiga

-- table payment
insert into payment (cust_id, pay_date, amount, pay_method)
values
    (1, '2024-01-13', 16021000, 'cash'); 

-- melihat user yang membeli 3 barang
select c.cust_id, c.first_name, c.last_name, count(distinct od.item_id) as jumlah_barang
from customer c
inner join orders o ON c.cust_id = o.cust_id
inner join order_detail od ON o.order_id = od.order_id
group by c.cust_id, c.first_name, c.last_name
having count(distinct od.item_id) = 3; -- data sebelumnya juga ada user yang telah membeli 2 barang berbeda
