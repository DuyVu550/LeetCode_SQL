# Write your MySQL query statement below
with temp_table as (
        select *,
        Lead(num, 1) over(order by id) as next1,
        Lead(num, 2) over(order by id) as next2
        from Logs 
) 
select distinct num as 'ConsecutiveNums' 
from temp_table
where num = next1 and num = next2

-- Logs table:
-- +----+-----+
-- | id | num |
-- +----+-----+
-- | 1  | 1   |
-- | 2  | 1   |
-- | 3  | 1   |
-- | 4  | 2   |
-- | 5  | 1   |
-- | 6  | 2   |
-- | 7  | 2   |
-- +----+-----+
-- Output: 
-- +-----------------+
-- | ConsecutiveNums |
-- +-----------------+
-- | 1               |
-- +-----------------+

-- Explanation: 1 is the only number that appears consecutively for at least three times.
