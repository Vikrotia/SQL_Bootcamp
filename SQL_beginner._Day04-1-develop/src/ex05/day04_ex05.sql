-- with sample as(select p.name, pizza_name, price from menu
-- inner join person_order po on menu.id = po.menu_id
-- inner join person p on p.id = po.person_id);

create view discount_price as select * from (select p.name, pizza_name, price,
                                                    price - price * 0.1 as discount_price from menu
inner join person_order po on menu.id = po.menu_id
inner join person p on p.id = po.person_id) as new_table order by new_table.name, new_table.pizza_name

