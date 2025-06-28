SELECT * FROM kickstarter.projects limit 10;

-- Total Number of Projects based on outcome
select state, count(*) as total_projects
from projects
group by state;

-- Total Number of Projects based on Locations
select country, count(*) as total_projects
from projects
group by country;

-- Total Number of Projects based on  Category
select category_id, count(*) as total_projects
from projects
group by category_id;

#Total number of project created by year, Quarter, Month
select 
	year(FROM_UNIXTIME(created_at)) AS Year ,
	concat("Q",quarter(FROM_UNIXTIME(created_at))) AS Quarter,
	Month(FROM_UNIXTIME(created_at)) AS Month,
	count(projectID) as "Total Number of Projects" 
from 
	projects
group by 
	Year,Quarter,Month
order by 
	Year asc,
    Quarter asc,
    Month asc;
    
-- Find the following based on the successful projects:
-- 1) Amount Raised:
select
	sum(usd_pledged) as total_amount_raised
from
	projects
where
	state = 'successful';

-- 2) Number of Backers:
select
	count(backers_count) as number_of_backers
from
	projects
where
	state = 'successful';
    
-- 3. Average number of Days for successful projects
SELECT 
    round(AVG(DATEDIFF(FROM_UNIXTIME(deadline), FROM_UNIXTIME(launched_at)))) AS avg_project_duration_days
FROM 
    projects
WHERE 
    state = 'successful';

-- Top Successful Projects based on:

-- 1) Number of Backers:
select 
	name as project_name,
    backers_count,
    usd_pledged
from 
	projects
where
	state = 'successful'
order by
	backers_count desc
limit 5;

-- 2) Amount raised:
select
	name as project_name,
    usd_pledged as amount_raised
from
	projects
where
	state = 'successful'
order by
	amount_raised desc
limit 5;

-- Percentage of Successful projects overall
select 
    round(100.0 * 
        sum(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) / COUNT(*), 2
    ) as success_percentage
from 
    projects;

-- Percentage of Successful Porjects by Goal Range
select 
    case 
        when goal <= 1000 then '0 - 1K'
        when goal <= 5000 then '1K - 5K'
        when goal <= 10000 then '5K - 10K'
        when goal <= 50000 then '10K - 50K'
        else '50K+'
    end as goal_range,
    count(*) as total_projects,
    sum(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) as successful_projects,
    round(100.0 * 
        SUM(case when state = 'successful' then 1 else 0 end) / COUNT(*), 2
    ) as success_percentage
from  
    projects
group by 
    goal_range
order by 
    success_percentage desc;

