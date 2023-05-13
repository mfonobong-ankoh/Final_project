# import csv file 
# count no of roles
select * from actions2load;
select count(*)from actions2load;


# Number of account_id available
select distinct (account_id) from action2load;
select count(distinct(account_id)) from actions2load;


# Number of events available
select distinct (event_type) from actions2load;
select count(distinct(event_type)) from actions2load;



# Most common events
SELECT event_type, COUNT(*) as event_count 
FROM actions2load
GROUP BY event_type
ORDER BY event_count DESC;



# Least common event
SELECT event_type, COUNT(*) as event_count
FROM actions2load
GROUP BY event_type
ORDER BY event_count ASC;


# Account ID with the highest number of event
select
event_type, count(account_id) as frequency_of_event
from
actions2load
group by event_type
order by frequency_of_event desc
limit 1;


# Account ID with the least number of event
select
account_id, count(event_type) as number_of_event
from
actions2load
group by account_id
order by number_of_event asc
LIMIT 1;


# Number of times events occured based on different times of the day
select DATE_format(event_time, '%H: %I') as time_of_the_day , count(*) as event_count
from actions2load
group by  time_of_the_day
order by  time_of_the_day;




