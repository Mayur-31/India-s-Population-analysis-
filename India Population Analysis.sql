
SELECT * FROM mayurdb.dataset1;

-- number of rows into our Dataset
select count(*) from mayurdb.dataset1;

-- dataset for Maharashtra and Bihar
select * from mayurdb.dataset1 where state in ('Maharashtra','Bihar');

-- Population of India
select sum(population) as Population from mayurdb.dataset2;

-- avg Growth
select state,avg(growth)*100 avg_growth from mayurdb.dataset1 group by state;

-- avg sex ratio
select state,round(avg(sex_ratio),0) avg_sex_ratio from mayurdb.dataset1 group by state order by avg_sex_ratio;

-- avg literacy rate
select state,round(avg(literacy),0) avg_literacy_ratio from mayurdb.dataset1 group by state having round(avg(literacy),0)>90 order by avg_literacy_ratio desc;

-- top 3 States having highest growth ratio
select state,avg(growth)*100 avg_growth from mayurdb.dataset1 group by state order by avg_growth desc limit 3;

-- states starting with letter a

select distinct state from mayurdb.dataset1 where lower(state) like 'a%' or lower(state) like 'b%'

