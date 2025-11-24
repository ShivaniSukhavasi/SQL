# Select statemment is a DQL statement
select * from movie; # * refers to all columns or variables
select title,budget from movie; # select specific columns
# Sort descending order by budget with title
select title,budget from movie order by budget desc limit 20;
# sort ascending order by budget with title
select title,budget from movie order by budget asc limit 20;
# Count distinct movie title
select count(distinct title) from movie;
# Count disctinct movie status
select count(distinct movie_status) from movie;
select count(distinct movie_status) from movie group by movie_status;
# frequency of 3 categories in movie status
select movie_status,count(movie_status) as Freq from movie group by movie_status;
# Frequency of language role id from languages
select language_role_id, count(language_role_id) as Freq from movie_languages group by language_role_id;
# select title and run time grater than 100 mins
select title,runtime from movie where runtime>100 order by runtime desc;
# select title and run time where runtime is between 100 & 150 mins
select title,runtime from movie where runtime between 100 and 150 order by runtime desc;
# select title and run time where runtime is between 150 & 200 mins
select title,runtime from movie where runtime between 150 and 200 order by runtime desc;
# muniutes group by movie-status
select title,runtime,movie_status from movie where runtime between 150 and 200;
# select title,runtime, vote_average and decending order by both runtime and vote average
select title,runtime,vote_average from movie 
order by runtime desc, vote_average desc;
# select title Gone with the Wind, Emma, Die Hard, Star Trek
select * from movie where title in ('Gone with the Wind','Emma','Die Hard','Star Trek') order by budget desc;
# Which is the most popular movies 1-10?
select title,popularity from movie order by popularity desc limit 10;
select * from movie_crew;
# advance queries using joins
# Who are the directors of the most popular movies 1-10?
# Natural join- No need to specify common columns.
select title,popularity,person_name,job from movie
natural join person
natural join movie_crew
where job='Director' order by popularity desc limit 10;
# Add production company name
select title,popularity,person_name,job,company_name from movie
natural join person
natural join movie_crew
natural join movie_company
natural join production_company
where job='Director' order by popularity desc limit 10;

# top 10 movies with female director
select title,popularity,person_name,gender from movie
natural join movie_crew
natural join person
natural join movie_cast
natural join gender
where job='Director' and gender='Female'
order by popularity desc limit 10;

# Movies directed by steven spielberg
select title,person_name,budget,job from movie
natural join movie_crew
natural join person
where job='Director' and person_name='steven spielberg' order by budget desc;

# Descriptive statistics
select min(runtime), max(runtime),avg(runtime),std(runtime) from movie;
# Top 20 movies with highest runtime
select title,runtime from movie order by runtime desc limit 20;
# Bottom 20 movies interms of runtime do not select 0 runtime
select title,runtime from  movie where runtime>0  order by runtime asc limit 20;
# Top 30 movies interms of revenue
select title,revenue from movie order by revenue desc limit 30;
# Freq count of movie_status - group by has to be categorical variable.
select movie_status,count(title) from movie group by movie_status;
# How man movies have runtime greter than 120 mins
select count(title) from movie where runtime>120;
select count(title) from movie where runtime between 120 and 150;
# select multiple titles in ascending order of revenue
select * from movie where title in ('Avatar','Titanic', 'Emma','Die Hard') order by revenue desc;
# Joins
# Frequency counts of different genres
select genre_name, count(title) as Freq from movie
natural join movie_genres
natural join genre
group by genre_name order by freq desc;
# Join or Inner Join
select genre_name, count(title) as Freq from movie
join movie_genres using (movie_id)
join genre using (genre_id)
group by genre_name order by freq desc;

#Top 10 popular movies in genre Action
select title,popularity,genre_name from movie
natural join movie_genres
natural join genre
where genre_name='Action' order by popularity desc limit 10;
# What is the average revenue of different genres
select genre_name, avg(revenue) as AverageRevenue from movie
natural join movie_genres
natural join genre
group by genre_name order by AverageRevenue desc;
# Top 20 movies by Prodction company
select distinct title,company_name,popularity from movie
natural join movie_company
natural join production_company
order by popularity desc limit 20;
select * from movie_crew;
# top 10 revenue movies directed by female directiors
select title,person_name,gender,department_name,revenue from movie
natural join movie_cast
natural join movie_crew
natural join person
natural join department
natural join gender
where department_name ='Directing' and gender='Female' order by revenue desc limit 10;
select * from movie_crew;
select * from movie_cast;
select title,person_name,gender,job,revenue from movie
natural join movie_cast
natural join person
natural join gender
natural join movie_crew
where job='Director' and gender='Female' order by revenue desc limit 10;
# Who are the actors in the movie avatar
select title,person_name,department_name,job from movie
natural join movie_crew
natural join movie_cast
natural join person
natural join department
where title='Titanic';
# All movies associated with clint eastwood
select title,person_name,job from movie
natural join movie_cast
natural join person
natural join movie_crew
where person_name= 'clint eastwood';

# All movies asscoiated with Julia Roberts with release year
select title,person_name,release_date from movie
natural join movie_cast
natural join person
where person_name='julia roberts' order by year(release_date);
# date queries: must be in the format of YYYY-MM-DD
# Date functions: Year(),month(),quarter()
# All the movies released from 2010 to 2016
select title,release_date from movie
where year(release_date) between 2010 and 2016 order by year(release_date) desc;
# Number of movies realeased each year from 2010 to 2016
select count(title),year(release_date) from movie
where year(release_date) between 2010 and 2016
group by year(release_date) order by  year(release_date) asc;
# year wise month wise movies released
select count(title), year(release_date), month(release_date) from movie
group by year(release_date), month(release_date) order by year(release_date) asc;

# Most popular movies in year 2016 incluing direction info
select title,person_name,popularity,year(release_date),department_name from movie
natural join movie_crew
natural join person
natural join department
where year(release_date)= 2016 and department_name='Directing' order by popularity desc limit 20;
# year wise no.of movies released by Sony, sony pictures, sony pictures animation, sony pictures classic
select year(release_date),company_name,count(title) from movie
natural join movie_company
natural join production_company
where company_name in ('Sony', 'sony pictures', 'sony pictures animation', 'sony pictures classics')
group by year(release_date), company_name order by year(release_date) desc ;

# adding new queries to the database
# alter table, table name, variable name and datatype size ()
# update: update table name set formula, formula can be mathematical formula (+,-,*,/) or can also be conditional statement like 
# case when then else or if statement
select * from movie;
# Based on popularity, let's create a new variable as hit or flop
select round(popularity,0),count(*) frequency from movie
group by round(popularity,0);
# Popularity more than 25, hit else flop.
alter table movie add success char(10);
update movie set success= case when popularity>=25 then 'Hit' else 'Flop' end;
SET SQL_SAFE_UPDATES = 0;
select success,count(success) from movie
group by success;
# production company year wise hits
select company_name,year(release_date),success,count(title) from movie
natural join movie_company
natural join production_company
where success='Hit'
group by year(release_date),company_name
order by year(release_date) asc;
# Year wise both Hits and flops
select year(release_date), sum(case when success='Flop' then 1 else 0 end) as Flops,
sum(case when success='Hit' then 1 else 0 end) as Hits from movie
group by year(release_date)
order by year(release_date) asc;
# How many termninator movies are there & desc order revenue, like %name%
select title,revenue, release_date from movie
where title like '%terminator%'
order by revenue desc;
# How many furious movies by desc popularity
select title,popularity,year(release_date) from movie
where title like '%furious%'
order by popularity desc;










