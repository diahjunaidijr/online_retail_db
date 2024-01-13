-- melihat 3 produk yang paling sering dibeli pelanggan

select i.item_id, i.item_name, count(*) as total_pembelian
from item i
inner join order_detail od on i.item_id = od.item_id
group by i.item_id, i.item_name
order by count(*) desc
limit 3;
