use study_database;
select
c.category,
year(a.action_date) as datatime,
sum(a.qty*a.price)/sum(a.qty) as avg_sum,
max(a.price) as max_price,
min(a.price) as min_price
from actions a
inner join products p on a.product_id = p.id
inner join categories c on p.category_id = c.id
group by c.category,datatime;
