with tmp as(
    select machine_id ,round(( sum(case when activity_type='end' then timestamp end) - 
    sum(case when activity_type='start' then timestamp end)) /(count(process_id)/2)*1.0,3)
    as processing_time
    from activity
    group by machine_id

)
select * from tmp
