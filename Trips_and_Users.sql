select request_at as 'Day', round(sum(case when status like 'cancelled%' then 1 else 0 end) / count(*), 2) as 'Cancellation Rate'
from Trips a
join Users b on a.client_id = b.users_id and b.banned = 'No' 
join Users c on a.driver_id = c.users_id and c.banned = 'No' 
group by request_at