-- melihat kategori barang yang paling banyak barangnya

select c.name as category_name, count(*) as total_items
from category c
inner join item i 
on c.cat_id = i.cat_id
group by c.name
order by count(*) desc
limit 1;

-- hasilnya akan Footwear karena record sebelumnya: HighHeels dan Sepatu Geoff, Footwear itu id nya 3
