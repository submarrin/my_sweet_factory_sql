#показать список оборудования, закрепленный за человеком (Марина)
use sweet_factory;

select s.surname surname, eq.title title
from `staff_technology` st inner join `equipment_technologies` eq_t on eq_t.technology_id=st.technology_id
left join `staff` s on st.staff_id = s.staff_id
inner join `equipment`eq on eq.id = eq_t.equipment_id
 where s.surname = "Иванов"
group by s.surname, eq.title