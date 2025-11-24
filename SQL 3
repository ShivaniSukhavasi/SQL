select * from movie;
select movie.title,movie.budget from movie order by budget desc limit 10;
select movie.title,movie.popularity from movie order by popularity desc limit 10;
select min(movie.vote_count),max(movie.vote_count),avg(movie.vote_count) from movie;
select movie.movie_status, count(movie.movie_status) as freq from movie
group by movie_status;
select movie.title,movie.movie_status from movie
where movie_status='Rumored';
select count(movie.title) from movie where movie.runtime>120;
select count(movie.title) from movie where movie.runtime between 60 and 120;
select count(movie.title),genre_name as freq from movie
join movie_genres using (movie_id)
join genre using (genre_id)
group by genre_name order by freq desc;
select movie.title,genre_name,popularity from movie
join movie_genres using (movie_id)
join genre using (genre_id) where genre_name='Comedy'
order by popularity desc limit 10;
select title,genre_name,revenue from movie
join movie_genres using (movie_id)
join genre using (genre_id)
where genre_name='Drama'
order by revenue desc limit 10;
select company_name,count(title) as freq from movie
join movie_company using (movie_id)
join production_company using (company_id)
group by production_company.company_name order by freq desc;
select genre_name,count(title) as freq from movie
natural join movie_genres
natural join genre
natural join movie_company
natural join production_company
where company_name='Universal Pictures' group by genre_name;
select title,company_name,revenue from movie
natural join movie_genres
natural join genre
natural join movie_company
natural join production_company
where company_name='Universal Pictures' order by revenue desc limit 10;
select country.country_name,count(title) as freq from movie
join production_country using (movie_id)
join country using (country_id)
group by country_name order by freq desc;

# Date and Time
#how many movies weere related in year 2006;
select count(movie.title) as freq from movie
where year(release_date)='2006';
#how many movies weere related between 2006 and 2009
select count(movie.title) as freq from movie
where year(release_date) between 2006 and 2009;
#what are the movies bt december2014 and january 2015
select movie.title,release_date from movie
where year(release_date) between '2014-12-1' and '2015-01-1';
#what are the different genre_name release
select genre_name,count(title),year(release_date) as freq from movie
join movie_genres using (movie_id)
join genre using (genre_id)
where year(release_date)='2015'
group by genre_name order by freq desc;
#count of mv production by different
#production_comany in the year 2012;
select count(title),production_company as freq from movie
join movie_company using (movie_id)
join production_company using (company_id)
group by production_name order by freq desc;
#wt are the 10 mv released by columbia pictures in 2012 along with revenue and popularity.
select title,(company_name),year(release_date),popularity,revenue from movie
join movie_company using (movie_id)
join production_company using (company_id) 
where year(release_date)='2012' and company_name= 'columbia pictures';
#wt are movies in which julia roberts acted
select title,person_name from movie
join movie_cast using (movie_id)
join person using (person_id) 
join movie_crew using (movie_id)
join department using (department_id)
where person_name='Julia Roberts';






















