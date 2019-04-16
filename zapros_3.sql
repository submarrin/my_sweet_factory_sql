# показать технологии, которыми заняты сотрудники с днями рождения в этом месяце (Костя)
use sweet_factory;

select s.surname, t.title, s.date_of_birth
from `staff` s left join `staff_technology` st on s.staff_id = st.staff_id
inner join `technologies` t on t.id = st.technology_id
where month(s.date_of_birth) = 12#'1974-08-24'
group by s.surname