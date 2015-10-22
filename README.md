# Project 2: Tournament-UDACITY
=============================

This is the second project of the "Full Stack Web Developer Nanodegree" on Udacity.

I wrote a Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament.

I defined the database schema (SQL table definitions) for a Swiss tournament system and wrote a Python module that uses the PostgreSQL database.

The Swiss tournament pairs up players in each round: players are not eliminated, and each player is paired with another player with the same number of wins, or as close as possible.


Project steps:

1. Desinged database scheme to fulfill Swiss tournament.<br/> 
2. Implemented scheme using PostgreSQL database.<br/>
3. Wrote Python module to interact with the database.<br/>
4. Run and passed the unit test.<br/>


How to Run the code:

1. Import the database scheme into PostgreSQL database.

In terminal, type the following commands:

	psql -> create database tournament;<br/>
	-> \c tournament<br/>
	-> \i tournament.sql<br/> 
	-> \q<br/>

2. Run the tests

	python tournament_test.py

You will see the information below:

![image](https://raw.githubusercontent.com/leiyudongyu/images/master/%24I73%5BVLS6V4%5BUYA~046ILOB.jpg)