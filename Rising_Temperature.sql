with temp_table as (
 select b.id as id, a.temperature as Temp1, b.temperature as Temp2
 from Weather a
 join Weather b on b.recordDate = Date_Add(a.recordDate, interval 1 Day)
 )
 select id
 from temp_table
 where Temp1 < Temp2