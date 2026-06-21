select w1.id from weather w1 
inner join weather w2 
on  w1.recorddate = dateadd(day,1,w2.recorddate)
where w1.temperature > w2.temperature;
