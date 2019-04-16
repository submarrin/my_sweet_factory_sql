# вывести список продуктов, выпускавшихся в 2017 году (Аэлита)
use sweet_factory;
select products.title, party.party_id
from `products` inner join `party` on products.id = party.product_id
where year( party.date_of_party ) = 2017
group by products.title, party.date_of_party