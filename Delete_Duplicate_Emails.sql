with temp_table as(
select *, row_number() over (partition by email) as dupl
from Person
)
delete from PERSON where id in (select id 
 FROM temp_table
 where dupl > 1)