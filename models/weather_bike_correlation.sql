with cte as (

select
t.*,
w.*
from {{ ref('trip_fact') }} t
left join {{ ref('daily_weather') }} w
ON t.TRIP_DATE = w.DAILY_WEATHER
ORDER BY t.TRIP_DATE DESC

)
select 
*
from cte