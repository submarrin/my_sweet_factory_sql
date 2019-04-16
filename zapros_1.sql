# вывести на экран название продукта, его ингредиента в строке и общую стоимость всех ингредиентов

select `products`.title, GROUP_CONCAT(`ingredients`.title), ROUND(SUM(`ingredients`.price * `products_ingredients`.quantity), 3)
from `products` left join `products_ingredients` on
`products_ingredients`.product_id = `products`.id
left join `ingredients` on
`ingredients`.id = `products_ingredients`.ingredient_id
WHERE `products`.id = 2
group by `products`.id