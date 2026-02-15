/* ============================================================
   BI-DBS (DBS-2025) — Queries (D1–D28) 
   ============================================================ */

-- =========================
-- D1 — Show teams that have players taller than 210 cm  
-- =========================
SELECT DISTINCT
    team_name,
    player_id,
    name,
    surname,
    height
FROM TEAMS
NATURAL JOIN (
    SELECT DISTINCT *
    FROM PLAYERS
    WHERE height > 210
) R1;


-- =========================
-- D2 — List all players and their teams
-- =========================
SELECT DISTINCT
    name,
    surname,
    team_name
FROM PLAYERS
NATURAL JOIN TEAMS;


-- =========================
-- D3 — Show all teams without sponsorships
-- =========================
SELECT DISTINCT team_name
FROM (
    SELECT DISTINCT *
    FROM TEAMS
    EXCEPT
    SELECT DISTINCT
        team_id,
        team_name,
        city,
        arena,
        league_id
    FROM TEAMS
    NATURAL JOIN SPONSORSHIPS
) R1;


-- =========================
-- D4 — Players who played only against team 6 (Real Madrid) + match date
-- =========================
SELECT DISTINCT
    player_id,
    name,
    surname,
    match_date
FROM PLAYERS
NATURAL JOIN (
    SELECT DISTINCT *
    FROM PLAYERSTATS
    NATURAL JOIN PARTICIPATION
) R1
WHERE team_id = 6
EXCEPT
SELECT DISTINCT
    player_id,
    name,
    surname,
    match_date
FROM PLAYERS PLAYERS1
NATURAL JOIN (
    SELECT DISTINCT *
    FROM PLAYERSTATS PLAYERSTATS1
    NATURAL JOIN PARTICIPATION PARTICIPATION1
) R2
WHERE team_id != 6;


-- =========================
-- D5 — Select all players from team 4 with PF position and RPG > 5
-- =========================
SELECT DISTINCT
    player_id,
    name,
    surname,
    position,
    rpg
FROM PLAYERS
WHERE team_id = 4
  AND position = 'PF'
  AND rpg > 5;


-- =========================
-- D6 — Count how many players exist
-- =========================
SELECT COUNT(*) AS total_players
FROM Players;


-- =========================
-- D7 — Show team names of teams that have players older than 30
-- =========================
SELECT DISTINCT team_name
FROM Teams
WHERE team_id IN (
    SELECT DISTINCT team_id
    FROM Players
    WHERE age > 30
) R1;


-- =========================
-- D8 — Show players who have wingspan = height + 5
-- =========================
SELECT DISTINCT
    player_id,
    name,
    surname,
    height,
    wingspan
FROM PLAYERS
WHERE wingspan = height + 5;


-- =========================
-- D9 — List players from teams in a given city (Prague)
-- =========================
SELECT
    p.name,
    p.surname
FROM Players p
WHERE p.team_id IN (
    SELECT team_id
    FROM Teams
    WHERE city = 'Prague'
);


-- =========================
-- D10 — List all coaches that are coaching in teams with a given arena
-- =========================
SELECT
    c.name,
    c.surname
FROM Coaches c
WHERE c.team_id IN (
    SELECT team_id
    FROM Teams
    WHERE arena = 'Barclays Center'
);


-- =========================
-- D11 — Create a view showing teams and their total sponsorship
-- (у тебя на скрине были варианты SELECT; тут собрал нормальный VIEW)
-- =========================
CREATE OR REPLACE VIEW team_total_sponsorship AS
SELECT
    t.team_id,
    t.team_name,
    COALESCE(SUM(s.amount), 0) AS total_sponsorship
FROM Teams t
LEFT JOIN Sponsorships s
       ON s.team_id = t.team_id
GROUP BY t.team_id, t.team_name;

SELECT * FROM team_total_sponsorship;


-- =========================
-- D12 — Create backup records of player contracts for logs
-- =========================
CREATE TABLE IF NOT EXISTS ContractsBackup (
    contract_id INT,
    player_id   INT,
    team_id     INT,
    salary      DECIMAL(10,2),
    duration    VARCHAR(50)
);

BEGIN;

DELETE FROM ContractsBackup;

INSERT INTO ContractsBackup (contract_id, player_id, team_id, salary, duration)
SELECT
    c.contract_id,
    c.player_id,
    c.team_id,
    c.salary,
    c.duration
FROM Contracts c
WHERE c.salary > (
    SELECT AVG(salary)
    FROM Contracts
);

SELECT * FROM ContractsBackup;

ROLLBACK;


-- =========================
-- D13 — Create a view showing players with their teams and salaries
-- =========================
CREATE OR REPLACE VIEW player_team_salary AS
SELECT
    p.player_id,
    p.name,
    p.surname,
    t.team_name,
    c.salary,
    c.duration
FROM Players p
JOIN Teams t
  ON p.team_id = t.team_id
LEFT JOIN Contracts c
  ON c.player_id = p.player_id;

SELECT * FROM player_team_salary;


-- =========================
-- D14 — Combine all players taller than 200 OR younger than 23
-- =========================
SELECT DISTINCT
    name,
    surname
FROM PLAYERS
WHERE height > 200 OR age < 23;


-- =========================
-- D15 — Show players taller than 200 AND have PPG > 12 (через INTERSECT)
-- =========================
SELECT name, surname
FROM Players
WHERE height > 200
INTERSECT
SELECT name, surname
FROM Players
WHERE ppg > 12;


-- =========================
-- D16 — Show all teams that do not have any sponsorships
-- =========================
SELECT t."team_name"
FROM Teams t
LEFT JOIN Sponsorships s
       ON s.team_id = t.team_id
WHERE s.team_id IS NULL;


-- =========================
-- D17 — Show all players who are playing in Lakers
-- =========================
SELECT DISTINCT
    player_id,
    name,
    surname
FROM TEAMS
NATURAL JOIN PLAYERS
WHERE team_name = 'Los Angeles Lakers';


-- =========================
-- D18 — Create a view showing players, teams, and their salary
-- =========================
CREATE OR REPLACE VIEW player_salary AS
SELECT
    p.name,
    p.surname,
    t.team_name,
    c.salary,
    c.duration
FROM Players p
JOIN Teams t
  ON p.team_id = t.team_id
JOIN Contracts c
  ON c.player_id = p.player_id;

SELECT * FROM player_salary;


-- =========================
-- D19 — Show all players, coaches, and teams (FULL OUTER JOIN)
-- =========================
SELECT
    p.player_id,
    p.name AS player_name,
    p.surname AS player_surname,
    c.coach_id,
    c.name AS coach_name,
    c.surname AS coach_surname,
    t.team_name
FROM Players p
FULL OUTER JOIN Teams t
  ON p.team_id = t.team_id
FULL OUTER JOIN Coaches c
  ON c.team_id = t.team_id;


-- =========================
-- D20 — Players with their average points (subquery in FROM)
-- =========================
SELECT
    p.player_id,
    p.name,
    p.surname,
    stats.avg_points
FROM Players p
JOIN (
    SELECT
        player_id,
        ROUND(AVG(points)) AS avg_points
    FROM PlayerStats
    GROUP BY player_id
) stats
  ON stats.player_id = p.player_id;


-- =========================
-- D21 — Players and how many matches they participated in (subquery in SELECT)
-- =========================
SELECT
    p.player_id,
    p.name,
    p.surname,
    (SELECT COUNT(*)
     FROM PlayerStats ps
     WHERE ps.player_id = p.player_id) AS matches_played
FROM Players p;


-- =========================
-- D22 — List names of all teams and all coach names using UNION
-- =========================
SELECT team_name AS name
FROM Teams
UNION
SELECT name || ' ' || surname AS name
FROM Coaches;


-- =========================
-- D23 — Increase salary of all players from team with highest total scoring
-- =========================
UPDATE Contracts c
SET salary = salary * 1.10
WHERE c.team_id = (
    SELECT team_id
    FROM (
        SELECT
            pa.team_id,
            SUM(ps.points) AS total_points
        FROM Participation pa
        JOIN PlayerStats ps
          ON ps.match_id = pa.match_id
        GROUP BY pa.team_id
        ORDER BY total_points DESC
        LIMIT 1
    ) AS best_team
);

SELECT * FROM Contracts;


-- =========================
-- D24 — Delete all player stats for player with lowest total assists
-- =========================
DELETE FROM PlayerStats
WHERE player_id IN (
    SELECT p.player_id
    FROM Players p
    JOIN PlayerStats ps
      ON ps.player_id = p.player_id
    GROUP BY p.player_id
    ORDER BY SUM(ps.assists) ASC
    LIMIT 1
);

SELECT * FROM PlayerStats;


-- =========================
-- D25 — How many possible (player x team) combinations exist (CROSS JOIN)
-- =========================
SELECT COUNT(*) AS total_combinations
FROM Players CROSS JOIN Teams;


-- =========================
-- D26 — For every position show total PPG (only > 50), sort by total desc
-- =========================
SELECT
    position,
    SUM(ppg) AS total_ppg
FROM Players
WHERE age > 0
GROUP BY position
HAVING SUM(ppg) > 50
ORDER BY total_ppg DESC;


-- =========================
-- D27 — Display all matches and teams participating in them
-- =========================
SELECT
    pa.team_id,
    t.team_name,
    pa.match_id
FROM Participation pa
JOIN Teams t
  ON t.team_id = pa.team_id;


-- =========================
-- D28 — Teams that participated in all league matches (division / double NOT EXISTS)
-- =========================
SELECT
    t.team_id,
    t.team_name
FROM Teams t
WHERE NOT EXISTS (
    SELECT m.match_id
    FROM Matches m
    WHERE NOT EXISTS (
        SELECT 1
        FROM Participation pa
        WHERE pa.team_id = t.team_id
          AND pa.match_id = m.match_id
    )
);
