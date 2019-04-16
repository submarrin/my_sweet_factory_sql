# найти продукт с самым большим содержанием сахара (Аэлита)
use sweet_factory;

select p.title, pi.quantity
from `ingredients` i inner join `products_ingredients` pi on i.id = pi.ingredient_id
inner join `products` p on p.id=pi.product_id
where pi.quantity > 1
group by p.title