create table movie(
	movie_id serial primary key,
  title varchar(100),
  media_type_id INT references media_type(media_type_id)
)

insert into movie
(title, media_type_id)
values
('the best movie ever', 2);

select * from movie;

Alter table movie
Add genre_id int references genre(genre_id);

update movie
set genre_id = 1
where movie_id = 1;

select al.title, art.name from album al
join artist art
On al.artist_id = art.artist_id;

select * from track
where genre_id In (
select genre_id from genre
where name in ('Jazz', 'Blues')
  );

  update employee
set phone = null
where employee_id = 1;

select art.artist_id, art.name, count(*) from artist art
join album al
on art.artist_id = al.artist_id
group by art.artist_id;

select art.artist_id, art.name, count(*) from artist art
join album al
on art.artist_id = al.artist_id
group by art.artist_id
order by count desc;
