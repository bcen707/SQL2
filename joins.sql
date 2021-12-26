# SQL Joins

SELECT game.mdate, eteam.teamname
FROM game
JOIN eteam ON game.team1=eteam.id
WHERE coach = 'Fernando Santos';


SELECT goal.player
FROM game
JOIN goal ON game.id = goal.matchid
WHERE game.stadium = 'National Stadium, Warsaw';


SELECT DISTINCT goal.player
FROM game
JOIN goal ON game.id = goal.matchid
WHERE goal.teamid!='GER' AND (team1='GER' OR team2='GER');