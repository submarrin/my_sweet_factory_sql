# Прибыль за Всю продукцию с конкретным выпуском (Костя)
use sweet_factory;

select v.party_id, p.title, sum(p.price * v.quantity) income
from `party` v inner join `products` p on v.product_id=p.id where v.party_id=7
group by v.party_id
