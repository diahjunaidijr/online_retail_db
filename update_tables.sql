update customer set last_name = 'Norton' where cust_id = 1;
update recipient set recip_name = 'Adam (Home)' where recip_id = 1;
update category set name = 'Clearance' where cat_id = 10;
update item set stock = 100 where item_id = 5;
update payment set pay_method = 'e-wallet' where pay_id = 6;
-- jika merubah total table order maka akan berpengaruh ke payment dan order_detail karena field-field nya menjadi acuan table payment dan order_detail
update order_detail set grand_total = 3800000 where order_detail_id = 6; -- disini memang ada yang salah input value grand_total id 6
update cart set item_qty = 2 where cart_id = 11; 
