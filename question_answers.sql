-- For all questions make sure the player has played at least 15 games (gp) for the respective year.



-- 1. What are the top 5 goalkeepers with the lowest goals against average (gaa)?

SELECT player, gp, gaa
FROM all_goalkeepers
WHERE gp >= 15
ORDER BY gaa DESC
LIMIT 5;

-- 2. Which goalkeeper has the highest Save Percentage (sv_pct) for each year?

SELECT gk1.player,
	   gk1.gp,
	   gk2.year,
	   gk2.max_sv_pct
	   
FROM all_goalkeepers AS gk1

INNER JOIN
		  (SELECT year, MAX(sv_pct) AS max_sv_pct
			FROM all_goalkeepers
		    WHERE gp >= 15
			GROUP BY year
			ORDER BY year
		   ) AS gk2
		   
ON gk1.year = gk2.year AND gk1.sv_pct = gk2.max_sv_pct

GROUP BY gk1.player, gk1.gp, gk2.year, gk2.max_sv_pct -- this gets rid of duplicates
ORDER BY year;


-- 3. Which player has the most goals (g) for each year?

SELECT p1.player,
	   p1.gp,
	   p2.year,
	   p2.max_g
	   
FROM all_players AS p1

INNER JOIN
		  (SELECT year, MAX(g) AS max_g
			FROM all_players
		    WHERE gp >= 15
			GROUP BY year
			ORDER BY year
		   ) AS p2
		   
ON p1.year = p2.year AND p1.g = p2.max_g

GROUP BY p1.player, p1.gp, p2.year, p2.max_g -- this gets rid of duplicates
ORDER BY year;

-- 4. What are the top 10 players with the highest Shot Conversion Rate (sc_pct) of all time?

SELECT year,
	   player,
	   MAX(sc_pct) AS max_sc_pct   
FROM all_players
WHERE gp >= 15
GROUP BY year, player
ORDER BY max_sc_pct DESC
LIMIT 10;

-- 5. What teams qualified for the playoffs in the Eastern Conference in the year 1996?

-- 6. Which team had the highest number of Points (pts) ever in the Western Conference?

-- 7. Who is the player with the highest Overall Rating (ovr)?

-- 8. Which position has the highest average Physical (phy) rating?

-- 9. Which players were part of the teams that qualified for the playoffs in the year 2016?

-- 10. Who are the top-rated players in terms of Overall Rating (ovr)?

-- 11. Which goalkeepers played for teams that had a positive Goal Difference (gd) in the year 1999? 

-- 12. Who are the players with the highest Overall Rating (ovr) among the teams that qualified for the playoffs in the year 1996? 