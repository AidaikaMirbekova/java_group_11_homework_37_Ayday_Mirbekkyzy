use study_database;
select
brands.brand,
sum(a.price * a.qty) as summa
from actions a
inner join products on a.product_id=products.id
inner join brands on products.brand_id=brands.id
group by brands.brand;

# данные с null брендами
select
brands.brand,
sum(a.price * a.qty) as summa
from actions a
left join products on a.product_id=products.id
left join brands on products.brand_id=brands.id
group by brands.brand