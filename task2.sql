use study_database;
select
c.category,
b.brand,
date(a.action_date) as datatime,
sum(a.price * a.qty) as summa
from actions a
inner join products p on a.product_id = p.id
inner join brands b on p.brand_id = b.id
inner join categories c on p.category_id = c.id
group by b.brand,c.category
having year(datatime) = 2016;

# данные с null брендами
select
c.category,
b.brand,
date(a.action_date) as datatime,
sum(a.price * a.qty) as summa
from actions a
right join products p on a.product_id = p.id
left join brands b on p.brand_id = b.id
left join categories c on p.category_id = c.id
group by b.brand,c.category
having year(datatime) = 2016;