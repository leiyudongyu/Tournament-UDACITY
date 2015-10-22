-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

drop table if exists players;
drop table if exists matches;
drop view if exists win_table;
drop view if exists lose_table;
drop view if exists standings;


create table players(
		name text,
		id serial,
		primary key (id)
);


create table matches(
		match_id serial,
		winner_id serial references players (id),
		loser_id serial references players (id),
		primary key (match_id)
);


create view win_table as
	select a.id as id, 
	       coalesce(count(b.winner_id), 0) as nums
	from players a 
	left join matches b
	on a.id = b.winner_id
	group by a.id
	order by nums desc;


create view lose_table as
	select a.id as id,
	       coalesce(count(b.loser_id), 0) as nums
	from players a 
	left join matches b
	on a.id = b.loser_id
	group by a.id
	order by nums desc;


create view standings as
	select b.id as id, 
		   a.name as name,
		   b.nums as win_times,
		   b.nums + c.nums as totalMatches
	from players a, win_table b, lose_table c
	where a.id = b.id and a.id = c.id 
	order by b.nums desc;
