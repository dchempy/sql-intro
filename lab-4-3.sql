-- Who hit the most home runs in 2019, and what team did they play for?

SELECT teams.name, players.first_name, players.last_name, SUM(home_runs)
FROM 
    stats
    INNER JOIN players ON players.id = stats.player_id
    INNER JOIN teams on teams.id = stats.team_id
WHERE teams.year = 2019
GROUP BY teams.name, players.first_name, players.last_name
ORDER BY SUM(home_runs) DESC
LIMIT 1

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


