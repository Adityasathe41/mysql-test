CREATE DATABASE SOCCER;
USE SOCCER;

DESCRIBE player_mast;
select * from player_mast;
select * from match_mast;
SELECT * FROM match_mast;
 SELECT * FROM soccer_venue;
 SELECT * FROM soccer_city; 
 select * from match_details;
 select * from soccer_country; 




#1 ANSWER 
SELECT COUNT(DISTINCT team_id) 
FROM player_mast; +

#2 ANSWER 
SELECT COUNT(*) 
FROM match_mast 
WHERE results='WIN';

#3 ANSWER
SELECT play_date "Beginning Date"
FROM match_mast
WHERE match_no=1;

#4 answer 
SELECT soccer_venue, city
FROM soccer_venue a
JOIN soccer_city b ON a.city_id=b.city_id
JOIN match_mast d ON d.venue_id=a.venue_id 
AND d.play_stage='F';

# 9 Answer 
SELECT match_no, play_stage, goal_score, audence 
FROM match_mast 
WHERE audence=(
SELECT max(audence) 
FROM match_mast);






