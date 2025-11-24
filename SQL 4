create database ProjectOne
use ProjectOne
select * from ['Data $']
select * from Data1$

-- No.of rows and columns in our dataset
select count(*) from ['Data $']
select count(*) from Data1$

select * from ['Data $'] where state in ('Andhra Pradesh','Gujarat')
select * from ['Data $'] where District in ('Adilabad','Bhind')
select count(*) from ['Data $'] where state in ('Andhra Pradesh','Gujarat')
select * from ['Data $'] where state in ('Andhra Pradesh','Gujarat','Maharashtra')
select count(*) from ['Data $'] where state in ('Andhra Pradesh','Gujarat','Maharashtra')

-- To get total population
select  sum(population) from ['Data $']

-- States with highest growth 
select * from Data1$ where Growth>1

--States with highest literacy
select * from Data1$ where Literacy>90

-- Let's calculate Average growth rate
select AVG(growth)*100 from  Data1$
select state,AVG(growth)*100 from Data1$ group by State

-- Let's calculate Average Sex ratio
select AVG(sex_ratio) from Data1$
select state,AVG(sex_ratio) from Data1$ group by State 
select state,AVG(sex_ratio) aver_state_seratio from Data1$ group by State order by aver_state_seratio desc


-- Let's calculate Average literacy rate
select AVG(literacy) from Data1$
select state,AVG(literacy) from Data1$ group by State
select state,AVG(literacy) ave_stateliet from Data1$ group by state order by ave_stateliet desc

-- Top 3 states showing highest growth ratio
select top 3 state,AVG(growth)*100 avg_growth from Data1$ group by state order by avg_growth desc 

--Bottom 3 states showing least growth ratio
select top 3 state,AVG(growth)*100 avg_growth from Data1$ group by state order by avg_growth

--top 3 states showing highest literacy
select top 3 state,round(AVG(literacy),0) avr_literacy_ratio from Data1$ group by state order by avr_literacy_ratio desc

-- Bottom 3 states showing least literacy
select top 3 state,round(AVG(literacy),0) avr_literacy_ratio from Data1$ group by state order by avr_literacy_ratio

-- Top 3 States showing Highest Sex Ratio
select top 3 state,ROUND(AVG(sex_ratio),0) ave_sex_ratio from Data1$ group by state order by  ave_sex_ratio desc

-- Bottom 3 States showing least Sex Ratio
select top 3 state,ROUND(AVG(sex_ratio),0) ave_sex_ratio from Data1$ group by state order by  ave_sex_ratio

-- Top 3 and bottom 3 states with literacy
create table topbot_literacy (state varchar(255), literacy numeric)
insert into topbot_literacy 
  select top 3 state,round(AVG(literacy),0) avr_literacy_ratio from Data1$ group by state order by avr_literacy_ratio desc;
insert into topbot_literacy 
  select top 3 state,round(AVG(literacy),0) avr_literacy_ratio from Data1$ group by state order by avr_literacy_ratio;

select * from topbot_literacy

-- States Starrting with Letter A
select distinct state from Data1$ where LOWER(state) like 'a%' or LOWER(state) like 'b%'

--States Starrting with Letter A and B
select distinct state from Data1$ where LOWER(state) like 'a%' and LOWER(state) like 'm%'

-- Join

