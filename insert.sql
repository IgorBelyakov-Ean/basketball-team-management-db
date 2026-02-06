-- ==============================
-- LEAGUES
-- ==============================
INSERT INTO Leagues (league_name, division)
VALUES
('NBA', 'Western'),
('NBA', 'Eastern'),
('FIBA', 'European');
-- ==============================
INSERT INTO Teams (team_name, city, arena, league_id)
VALUES
( 'Los Angeles Lakers', 'Los Angeles', 'Crypto Arena', 1 ),   -- 1
( 'Boston Celtics', 'Boston', 'TD Garden', 2 ),                -- 2
( 'Phoenix Suns', 'Phoenix', 'Footprint Center', 1 ),          -- 3 (no sponcor)
( 'Milwaukee Bucks', 'Milwaukee', 'Fiserv Forum', 2 ),         -- 4 (no sponcor)
( 'Golden State Warriors', 'San Francisco', 'Chase Center', 1 ), -- 5
( 'Real Madrid', 'Madrid', 'WiZink Center', 3 ),               -- 6
( 'FC Barcelona', 'Barcelona', 'Palau Blaugrana', 3 ),         -- 7
( 'Fenerbahce', 'Istanbul', 'Ülker Sports Arena', 3 ),         -- 8
( 'Olympiacos', 'Piraeus', 'Peace and Friendship Stadium', 3 ),-- 9
( 'USK Praha', 'Prague', 'O2 Arena', 3 );                      -- 10


-- ==============================
INSERT INTO Teams (team_name, city, arena, league_id)
VALUES
('Chicago Bulls',       'Chicago',        'United Center',              2), -- 11
('Miami Heat',          'Miami',          'Kaseya Center',             2), -- 12
('Denver Nuggets',      'Denver',         'Ball Arena',                1), -- 13
('Dallas Mavericks',    'Dallas',         'American Airlines Center',  1), -- 14
('New York Knicks',     'New York',       'Madison Square Garden',     2), -- 15
('Brooklyn Nets',       'Brooklyn',       'Barclays Center',           2), -- 16
('San Antonio Spurs',   'San Antonio',    'Frost Bank Center',         1), -- 17
('Toronto Raptors',     'Toronto',        'Scotiabank Arena',          2), -- 18
('CSKA Moscow',         'Moscow',         'Megasport Arena',           3), -- 19
('Partizan Belgrade',   'Belgrade',       'Stark Arena',               3), -- 20
('Anadolu Efes',        'Istanbul',       'Sinan Erdem Dome',          3), -- 21
('Maccabi Tel Aviv',    'Tel Aviv',       'Menora Mivtachim Arena',    3), -- 22
('Virtus Bologna',      'Bologna',        'Virtus Segafredo Arena',    3), -- 23
('Crvena Zvezda',       'Belgrade',       'Stark Arena',               3), -- 24
('Zalgiris Kaunas',     'Kaunas',         'Zalgirio Arena',            3); -- 25

-- ==============================
-- COACHES 
-- ==============================
INSERT INTO Coaches (name, surname, role, coach_specialization, experience, team_id)
VALUES
-- Lakers
('Darvin', 'Ham', 'Head', 'Defense', 10, 1),
('Phil', 'Jacobs', 'Assistant', '3pt Shooting', 5, 1),
('Erik', 'Mills', 'Assistant', 'Finishing under the rim', 3, 1),

-- Celtics
('Joe', 'Mazzulla', 'Head', 'Offense', 8, 2),
('Sean', 'Blake', 'Assistant', 'Zone Defense', 4, 2),
('Aaron', 'Wells', 'Assistant', 'Low Post', 5, 2),

-- Suns
('Frank', 'Vogel', 'Head', 'Defense', 12, 3),
('Chris', 'Williams', 'Assistant', 'Transition Offense', 6, 3),
('Ben', 'Taylor', 'Assistant', '3pt Shooting', 4, 3),

-- Bucks
('Doc', 'Rivers', 'Head', 'Offense', 15, 4),
('Kyle', 'Porter', 'Assistant', 'Rebounding', 7, 4),
('James', 'Davis', 'Assistant', 'Pick and Roll', 4, 4),

-- Warriors
('Steve', 'Kerr', 'Head', 'Ball Movement', 14, 5),
('Andre', 'Green', 'Assistant', '3pt Shooting', 6, 5),
('Mike', 'Thompson', 'Assistant', 'Defensive Rotation', 5, 5),

-- Real Madrid
('Chus', 'Mateo', 'Head', 'Offense', 15, 6),
('Luis', 'Ramirez', 'Assistant', 'Low Post', 8, 6),
('Carlos', 'Vega', 'Assistant', 'Zone Defense', 6, 6),

-- Barcelona
('Roger', 'Grimau', 'Head', 'Offense', 9, 7),
('Tomas', 'Garcia', 'Assistant', 'Transition Defense', 4, 7),
('Jan', 'Steiner', 'Assistant', 'Free Throws', 3, 7),

-- Fenerbahce
('Sarunas', 'Jasikevicius', 'Head', 'Discipline', 11, 8),
('Ali', 'Demir', 'Assistant', 'Low Post', 5, 8),
('Okan', 'Kurt', 'Assistant', '3pt Shooting', 4, 8),

-- Olympiacos
('Giorgos', 'Bartzokas', 'Head', 'Defense', 13, 9),
('Nikolaos', 'Papadopoulos', 'Assistant', 'Pick and Roll', 6, 9),
('Andreas', 'Spanos', 'Assistant', 'Zone Defense', 5, 9),

-- USK Praha
('Radek', 'Stehlik', 'Head', 'Offense', 9, 10),
('Jakub', 'Horak', 'Assistant', '3pt Shooting', 3, 10),
('Pavel', 'Urban', 'Assistant', 'Finishing under the rim', 2, 10),

--OTHERS
('Billy', 'Donovan',   'Head',      'Offense',          12, 11),
('Maurice', 'Cheeks',  'Assistant', 'Defense',           7, 11),

('Erik', 'Spoelstra',  'Head',      'Switch Defense',   14, 12),
('Chris', 'Quinn',     'Assistant', 'Player Development',6, 12),

('Michael', 'Malone',  'Head',      'Defense',          11, 13),
('David',  'Adelman',  'Assistant', 'Offense',           5, 13),

('Jason', 'Kidd',      'Head',      'Guard Development',13, 14),
('Sean',  'Sweeney',   'Assistant', 'Defense',           6, 14),

('Tom', 'Thibodeau',   'Head',      'Defense',          15, 15),
('Johnnie', 'Bryant',  'Assistant', 'Offense',           7, 15),

('Jacque', 'Vaughn',   'Head',      'Offense',          10, 16),
('Ryan',  'Forehan-Kelly','Assistant','3pt Shooting',    4, 16),

('Gregg', 'Popovich',  'Head',      'Everything',       25, 17),
('Brett', 'Brown',     'Assistant', 'Player Development',8, 17),

('Darko', 'Rajakovic', 'Head',      'Offense',          10, 18),
('Trevor','Gleason',   'Assistant', 'Defense',           6, 18),

('Dimitris', 'Itoudis','Head',      'Defense',          14, 19),
('Andreas', 'Pistiolis','Assistant','Offense',           7, 19),

('Zeljko','Obradovic', 'Head',      'Tactics',          20, 20),
('Branislav','Radonjic','Assistant','Defense',          8, 20),

('Ergin', 'Ataman',    'Head',      'Offense',          16, 21),
('Yagiz', 'Kotan',     'Assistant', 'Scouting',          5, 21),

('Oded', 'Kattash',    'Head',      'Offense',          12, 22),
('Avi',  'Even',       'Assistant', 'Defense',           6, 22),

('Sergio','Scariolo',  'Head',      'Pick and Roll',    18, 23),
('Andrea','Diana',     'Assistant', 'Defense',           6, 23),

('Dusko','Ivanovic',   'Head',      'Discipline',       19, 24),
('Milan','Gurovic',    'Assistant', 'Offense',           6, 24),

('Kazys','Maksvytis',  'Head',      'Offense',          11, 25),
('Darius','Maskoliunas','Assistant','Defense',           7, 25);


-- ==============================
INSERT INTO Players (name, surname, age, position, height, wingspan, team_id)
VALUES
-- Lakers (1–5)
('LeBron', 'James', 39, 'SF', 206, 215, 1),
('Anthony', 'Davis', 31, 'PF', 208, 227, 1),
('D''Angelo', 'Russell', 28, 'PG', 193, 198, 1),
('Austin', 'Reaves', 26, 'SG', 196, 201, 1),
('Rui', 'Hachimura', 26, 'PF', 203, 215, 1),

-- Celtics (6–10)
('Jayson', 'Tatum', 26, 'SF', 203, 210, 2),
('Jaylen', 'Brown', 27, 'SG', 198, 208, 2),
('Jrue', 'Holiday', 34, 'PG', 193, 196, 2),
('Kristaps', 'Porzingis', 28, 'C', 221, 230, 2),
('Al', 'Horford', 38, 'PF', 206, 218, 2),

-- Suns (11–15)
('Kevin', 'Durant', 35, 'SF', 208, 225, 3),
('Devin', 'Booker', 27, 'SG', 196, 203, 3),
('Bradley', 'Beal', 31, 'SG', 193, 200, 3),
('Jusuf', 'Nurkic', 30, 'C', 213, 218, 3),
('Grayson', 'Allen', 28, 'SG', 193, 198, 3),

-- Bucks (16–20)
('Giannis', 'Antetokounmpo', 29, 'PF', 211, 226, 4),
('Damian', 'Lillard', 33, 'PG', 188, 196, 4),
('Khris', 'Middleton', 32, 'SF', 201, 206, 4),
('Brook', 'Lopez', 36, 'C', 213, 218, 4),
('Bobby', 'Portis', 29, 'PF', 208, 214, 4),

-- Warriors (21–25)
('Stephen', 'Curry', 36, 'PG', 191, 198, 5),
('Klay', 'Thompson', 34, 'SG', 198, 203, 5),
('Draymond', 'Green', 34, 'PF', 198, 216, 5),
('Andrew', 'Wiggins', 29, 'SF', 201, 208, 5),
('Kevon', 'Looney', 28, 'C', 206, 220, 5),

-- Real Madrid (26–30)
('Walter', 'Tavares', 32, 'C', 221, 240, 6),
('Facundo', 'Campazzo', 33, 'PG', 178, 190, 6),
('Mario', 'Hezonja', 29, 'SF', 203, 210, 6),
('Gabriel', 'Deck', 29, 'PF', 198, 205, 6),
('Sergio', 'Llull', 36, 'SG', 190, 195, 6),

-- Barcelona (31–35)
('Nikola', 'Mirotic', 33, 'PF', 208, 218, 7),
('Tomas', 'Satoransky', 32, 'PG', 201, 206, 7),
('Alex', 'Abrines', 30, 'SG', 196, 200, 7),
('Jan', 'Vesely', 34, 'C', 213, 226, 7),
('Rokas', 'Jokubaitis', 23, 'PG', 193, 198, 7),

-- Fenerbahce (36–40)
('Scottie', 'Wilbekin', 31, 'PG', 188, 193, 8),
('Nigel', 'Hayes-Davis', 29, 'SF', 203, 210, 8),
('Johnathan', 'Motley', 28, 'PF', 208, 218, 8),
('Tarik', 'Biberovic', 22, 'SG', 201, 204, 8),
('Marko', 'Guduric', 29, 'SG', 196, 200, 8),

-- Olympiacos (41–45)
('Kostas', 'Papanikolaou', 33, 'SF', 204, 212, 9),
('Nikola', 'Milutinov', 29, 'C', 213, 220, 9),
('Thomas', 'Walkup', 31, 'PG', 193, 200, 9),
('Isaiah', 'Canaan', 33, 'SG', 183, 188, 9),
('Alec', 'Peters', 29, 'PF', 206, 212, 9),

-- USK Praha (46–50)
('Ondrej', 'Sehnal', 26, 'PG', 191, 198, 10),
('Martin', 'Fuxa', 28, 'PF', 205, 212, 10),
('Petr', 'Safarcik', 29, 'SG', 193, 198, 10),
('Lukas', 'Rohan', 25, 'SF', 198, 205, 10),
('Matej', 'Vahala', 27, 'C', 210, 218, 10);


-- ==============================
INSERT INTO Players (name, surname, age, position, height, wingspan, team_id)
VALUES
-- Chicago Bulls (11)
('DeMar', 'DeRozan', 34, 'SF', 198, 205, 11),
('Zach', 'LaVine', 29, 'SG', 196, 203, 11),
('Nikola', 'Vucevic', 33, 'C', 213, 220, 11),
('Coby', 'White', 24, 'PG', 196, 200, 11),
('Alex', 'Caruso', 30, 'SG', 196, 200, 11),
('Patrick', 'Williams', 22, 'PF', 203, 210, 11),

-- Miami Heat (12)
('Jimmy', 'Butler', 34, 'SF', 201, 210, 12),
('Bam', 'Adebayo', 26, 'C', 206, 220, 12),
('Tyler', 'Herro', 24, 'SG', 196, 200, 12),
('Kyle', 'Lowry', 37, 'PG', 183, 188, 12),
('Duncan', 'Robinson', 29, 'SG', 201, 208, 12),
('Caleb', 'Martin', 28, 'SF', 196, 203, 12),

-- Denver Nuggets (13)
('Nikola', 'Jokic', 29, 'C', 211, 218, 13),
('Jamal', 'Murray', 27, 'PG', 193, 200, 13),
('Michael', 'Porter Jr.', 25, 'SF', 208, 213, 13),
('Aaron', 'Gordon', 28, 'PF', 203, 210, 13),
('Kentavious', 'Caldwell-Pope', 31, 'SG', 196, 203, 13),
('Reggie', 'Jackson', 33, 'PG', 188, 193, 13),

-- Dallas Mavericks (14)
('Luka', 'Doncic', 25, 'PG', 201, 210, 14),
('Kyrie', 'Irving', 32, 'PG', 188, 193, 14),
('Tim', 'Hardaway Jr.', 31, 'SG', 196, 203, 14),
('Dereck', 'Lively II', 20, 'C', 216, 226, 14),
('Maxi', 'Kleber', 32, 'PF', 208, 213, 14),
('Josh', 'Green', 23, 'SG', 196, 203, 14),

-- New York Knicks (15)
('Jalen', 'Brunson', 27, 'PG', 185, 190, 15),
('Julius', 'Randle', 29, 'PF', 203, 210, 15),
('RJ', 'Barrett', 24, 'SF', 198, 203, 15),
('Mitchell', 'Robinson', 26, 'C', 213, 220, 15),
('Immanuel', 'Quickley', 24, 'PG', 191, 198, 15),
('Josh', 'Hart', 29, 'SG', 196, 203, 15),

-- Brooklyn Nets (16)
('Mikal', 'Bridges', 27, 'SF', 198, 218, 16),
('Cameron', 'Johnson', 27, 'PF', 203, 208, 16),
('Ben', 'Simmons', 27, 'PG', 208, 220, 16),
('Nic', 'Claxton', 25, 'C', 211, 220, 16),
('Spencer', 'Dinwiddie', 31, 'PG', 196, 203, 16),
('Cam', 'Thomas', 23, 'SG', 191, 198, 16),

-- San Antonio Spurs (17)
('Victor', 'Wembanyama', 20, 'C', 224, 240, 17),
('Keldon', 'Johnson', 24, 'SF', 196, 203, 17),
('Devin', 'Vassell', 23, 'SG', 196, 203, 17),
('Tre', 'Jones', 24, 'PG', 185, 190, 17),
('Jeremy', 'Sochan', 21, 'PF', 206, 213, 17),
('Zach', 'Collins', 26, 'C', 211, 218, 17),

-- Toronto Raptors (18)
('Pascal', 'Siakam', 30, 'PF', 206, 218, 18),
('Scottie', 'Barnes', 22, 'SF', 203, 210, 18),
('OG', 'Anunoby', 26, 'SF', 201, 213, 18),
('Fred', 'VanVleet', 30, 'PG', 183, 188, 18),
('Gary', 'Trent Jr.', 25, 'SG', 196, 203, 18),
('Jakob', 'Poeltl', 28, 'C', 213, 220, 18),

-- CSKA Moscow (19)
('Mike', 'James', 33, 'PG', 185, 190, 19),
('Will', 'Clyburn', 33, 'SF', 201, 208, 19),
('Nikita', 'Kurbanov', 37, 'SF', 202, 210, 19),
('Daniel', 'Hackett', 36, 'SG', 193, 200, 19),
('Johannes', 'Voigtmann', 31, 'PF', 211, 218, 19),
('Joel', 'Bolomboy', 30, 'C', 206, 213, 19),

-- Partizan Belgrade (20)
('Kevin', 'Punter', 31, 'SG', 193, 200, 20),
('Dante', 'Exum', 29, 'PG', 196, 203, 20),
('Zach', 'LeDay', 30, 'PF', 203, 210, 20),
('Mathias', 'Lessort', 28, 'C', 206, 213, 20),
('Aleksa', 'Avramovic', 29, 'PG', 192, 198, 20),
('James', 'Nunnally', 33, 'SF', 201, 208, 20),

-- Anadolu Efes (21)
('Vasilije', 'Micic', 30, 'PG', 196, 203, 21),
('Shane', 'Larkin', 31, 'PG', 180, 188, 21),
('Rodrigue', 'Beaubois', 36, 'SG', 190, 198, 21),
('Bryant', 'Dunston', 37, 'C', 203, 210, 21),
('Tibor', 'Pleiss', 34, 'C', 218, 226, 21),
('Krunoslav', 'Simon', 38, 'SF', 197, 205, 21),

-- Maccabi Tel Aviv (22)
('Wade', 'Baldwin IV', 28, 'PG', 193, 200, 22),
('Lorenzo', 'Brown', 33, 'PG', 196, 203, 22),
('Scottie', 'Wilbekin', 31, 'SG', 188, 193, 22),
('Derrick', 'Williams', 32, 'PF', 203, 210, 22),
('Jalen', 'Reynolds', 31, 'C', 208, 215, 22),
('Ante', 'Zizic', 27, 'C', 210, 218, 22),

-- Virtus Bologna (23)
('Milos', 'Teodosic', 36, 'PG', 196, 203, 23),
('Marco', 'Belinelli', 38, 'SG', 196, 203, 23),
('Toko', 'Shengelia', 32, 'PF', 206, 213, 23),
('Jordan', 'Mickey', 30, 'PF', 203, 210, 23),
('Isaia', 'Cordinier', 27, 'SG', 196, 203, 23),
('Awudu', 'Abbas', 28, 'SF', 198, 205, 23),

-- Crvena Zvezda (24)
('Nikola', 'Kalinic', 32, 'SF', 203, 210, 24),
('Ognjen', 'Dobric', 29, 'SG', 200, 205, 24),
('Stefan', 'Jovic', 33, 'PG', 198, 203, 24),
('Luka', 'Mitrovic', 30, 'PF', 206, 213, 24),
('Branko', 'Lazic', 35, 'SG', 195, 200, 24),
('Austin', 'Hollins', 32, 'SG', 193, 200, 24),

-- Zalgiris Kaunas (25)
('Mantas', 'Kalnietis', 37, 'PG', 196, 203, 25),
('Edgaras', 'Ulanovas', 32, 'SF', 202, 210, 25),
('Lukas', 'Lekavicius', 30, 'PG', 181, 188, 25),
('Joffrey', 'Lauvergne', 32, 'C', 211, 218, 25),
('Arturas', 'Milaknis', 38, 'SG', 195, 200, 25),
('Thomas', 'Walkup', 32, 'PG', 193, 200, 25);

-- ==============================
-- MATCHES 
-- ==============================
INSERT INTO Matches (home_team_id, away_team_id, home_score, away_score, winner_team_id)
VALUES
(1, 2, 112, 107, 1),   -- 1: Lakers vs Celtics
(3, 4, 104, 98, 3),    -- 2: Suns vs Bucks
(5, 1, 117, 113, 5),   -- 3: Warriors vs Lakers
(6, 7, 88, 81, 6),     -- 4: Real vs Barca
(8, 9, 95, 99, 9),     -- 5: Fener vs Olympiacos
(10, 6, 77, 90, 6),    -- 6: USK vs Real
(10, 7, 89, 85, 10),   -- 7: USK vs Barca
(9, 8, 91, 87, 9),     -- 8: Olympiacos vs Fener
(2, 5, 110, 115, 5),   -- 9: Celtics vs Warriors
(4, 3, 101, 100, 4);   -- 10: Bucks vs Suns (again)

-- ==============================
INSERT INTO Matches (home_team_id, away_team_id, home_score, away_score, winner_team_id) -- (random)
SELECT
    ((g - 1) % 25) + 1 AS home_team_id,
    ((g + 7) % 25) + 1 AS away_team_id,
    95 + (g % 21)      AS home_score,
    90 + (g % 21)      AS away_score,
    ((g - 1) % 25) + 1 AS winner_team_id
FROM generate_series(11, 75) AS g;

-- ==============================
-- PARTICIPATION 
-- ==============================
INSERT INTO Participation (team_id, match_id, role, match_date)
VALUES
-- Match 1: 2024-10-01
(1, 1, 'home', '2024-10-01'),
(2, 1, 'away', '2024-10-01'),
-- Match 2
(3, 2, 'home', '2024-10-03'),
(4, 2, 'away', '2024-10-03'),
-- Match 3
(5, 3, 'home', '2024-10-05'),
(1, 3, 'away', '2024-10-05'),
-- Match 4
(6, 4, 'home', '2024-10-07'),
(7, 4, 'away', '2024-10-07'),
-- Match 5
(8, 5, 'home', '2024-10-09'),
(9, 5, 'away', '2024-10-09'),
-- Match 6
(10, 6, 'home', '2024-10-11'),
(6, 6, 'away', '2024-10-11'),
-- Match 7
(10, 7, 'home', '2024-10-13'),
(7, 7, 'away', '2024-10-13'),
-- Match 8
(9, 8, 'home', '2024-10-15'),
(8, 8, 'away', '2024-10-15'),
-- Match 9
(2, 9, 'home', '2024-10-17'),
(5, 9, 'away', '2024-10-17'),
-- Match 10
(4, 10, 'home', '2024-10-19'),
(3, 10, 'away', '2024-10-19');

-- ==============================
-- PARTICIPATION (random generation)
-- ==============================
INSERT INTO Participation (team_id, match_id, role, match_date)
SELECT
    ((g - 1) % 25) + 1 AS team_id,
    g AS match_id,
    'home' AS role,
    DATE '2024-11-01' + (g - 11) AS match_date
FROM generate_series(11, 75) AS g
UNION ALL
SELECT
    ((g + 7) % 25) + 1 AS team_id,
    g AS match_id,
    'away' AS role,
    DATE '2024-11-01' + (g - 11) AS match_date
FROM generate_series(11, 75) AS g;

-- ==============================
-- PLAYER STATS 
-- ==============================
INSERT INTO PlayerStats (match_id, player_id, points, rebounds, assists, blocks, steals, minutes_played)
VALUES
-- Match 1: Lakers vs Celtics
(1, 1, 30, 8, 9, 1, 2, 37),   -- LeBron
(1, 2, 24, 11, 3, 2, 1, 35),  -- Davis
(1, 6, 27, 7, 4, 1, 1, 36),   -- Tatum
(1, 7, 21, 5, 3, 0, 2, 34),   -- Brown

-- Match 2: Suns vs Bucks
(2, 11, 31, 6, 5, 1, 1, 38),  -- Durant
(2, 12, 28, 4, 7, 0, 2, 37),  -- Booker
(2, 16, 29, 12, 6, 1, 1, 36), -- Giannis
(2, 17, 22, 3, 8, 0, 1, 35),  -- Lillard

-- Match 3: Warriors vs Lakers
(3, 21, 34, 5, 8, 0, 1, 39),  -- Curry
(3, 22, 19, 4, 2, 0, 1, 35),  -- Klay
(3, 1, 26, 7, 8, 1, 2, 38),   -- LeBron
(3, 2, 23, 10, 2, 3, 1, 36),  -- Davis

-- Match 4: Real vs Barca
(4, 26, 15, 11, 2, 3, 0, 33), -- Tavares
(4, 27, 12, 3, 9, 0, 2, 32),  -- Campazzo
(4, 31, 22, 7, 3, 1, 1, 34),  -- Mirotic
(4, 32, 11, 4, 7, 0, 1, 31),  -- Satoransky

-- Match 5: Fener vs Olympiacos
(5, 36, 18, 3, 6, 0, 2, 34),  -- Wilbekin
(5, 37, 20, 6, 2, 0, 1, 33),  -- Hayes-Davis
(5, 41, 14, 5, 3, 1, 1, 32),  -- Papanikolaou
(5, 42, 17, 10, 1, 2, 0, 35), -- Milutinov

-- Match 6: USK vs Real
(6, 46, 16, 4, 8, 0, 2, 34),  -- Sehnal
(6, 47, 12, 9, 2, 1, 1, 32),  -- Fuxa
(6, 28, 19, 6, 3, 1, 1, 33),  -- Hezonja
(6, 29, 14, 5, 4, 0, 2, 31),  -- Deck

-- Match 7: USK vs Barca
(7, 46, 18, 5, 7, 0, 1, 35),  -- Sehnal
(7, 50, 15, 10, 1, 2, 0, 34), -- Vahala
(7, 34, 17, 8, 3, 1, 1, 33),  -- Vesely
(7, 33, 13, 4, 2, 0, 1, 30),  -- Abrines

-- Match 8: Olympiacos vs Fener
(8, 43, 16, 4, 9, 0, 2, 35),  -- Walkup
(8, 44, 14, 2, 3, 0, 1, 30),  -- Canaan
(8, 38, 21, 7, 2, 1, 1, 33),  -- Motley
(8, 40, 12, 3, 5, 0, 1, 31),  -- Guduric

-- Match 9: Celtics vs Warriors
(9, 6, 29, 8, 5, 1, 1, 37),   -- Tatum
(9, 7, 24, 6, 3, 0, 2, 36),   -- Brown
(9, 21, 32, 4, 9, 0, 1, 38),  -- Curry
(9, 23, 10, 9, 7, 1, 1, 34),  -- Draymond

-- Match 10: Bucks vs Suns
(10, 16, 33, 13, 5, 2, 1, 38), -- Giannis
(10, 18, 18, 5, 4, 1, 1, 34),  -- Middleton
(10, 12, 27, 5, 6, 0, 1, 37),  -- Booker
(10, 14, 14, 11, 3, 2, 0, 35); -- Nurkic

-- ==============================
-- PLAYER STATS (random generation)
-- ==============================
INSERT INTO PlayerStats (match_id, player_id, points, rebounds, assists, blocks, steals, minutes_played)
SELECT
    g.match_id,
    (( (g.match_id - 1) * 4 + p.idx - 1 ) % p2.max_pid) + 1 AS player_id,
    10 + (g.match_id % 25) + p.idx AS points,
    3 + (g.match_id % 7)          AS rebounds,
    2 + (p.idx % 6)               AS assists,
    (g.match_id % 3)              AS blocks,
    (p.idx % 4)                   AS steals,
    18 + (g.match_id % 15)        AS minutes_played
FROM generate_series(11, 75) AS g(match_id)
CROSS JOIN generate_series(1, 4) AS p(idx)
CROSS JOIN (SELECT max(player_id) AS max_pid FROM Players) AS p2;

-- ==============================
-- CONTRACTS 
-- ==============================
INSERT INTO Contracts (player_id, team_id, salary, duration)
VALUES

(1, 1, 45000000, '3 years'),
(6, 2, 32000000, '4 years'),
(11, 3, 35000000, '4 years'),
(16, 4, 47000000, '5 years'),
(21, 5, 53000000, '3 years'),
(26, 6, 2100000, '2 years'),
(31, 7, 2800000, '3 years'),
(36, 8, 2600000, '2 years'),
(41, 9, 2300000, '2 years'),
(46, 10, 1200000, '2 years'),


(51, 11, 28000000, '3 years'),  -- DeRozan
(57, 12, 38000000, '3 years'),  -- Butler
(63, 13, 48000000, '5 years'),  -- Jokic
(69, 14, 48000000, '5 years'),  -- Doncic
(75, 15, 30000000, '4 years'),  -- Brunson
(81, 16, 26000000, '3 years'),  -- Bridges
(87, 17, 12000000, '4 years'),  -- Wemby 
(93, 18, 33000000, '4 years'),  -- Siakam
(99, 19, 2500000,  '2 years'),  -- Mike James
(105,20, 2500000,  '2 years'),  -- Punter
(111,21, 2800000,  '3 years'),  -- Micic
(117,22, 3000000,  '3 years'),  -- Baldwin IV
(123,23, 2200000,  '2 years'),  -- Teodosic
(129,24, 2200000,  '2 years'),  -- Kalinic
(135,25, 2200000,  '2 years');  -- Kalnietis

-- ==============================
-- SPONSORSHIPS 
-- ==============================
INSERT INTO Sponsorships (sponsor_name, amount, team_id)
VALUES
-- старые
('Nike', 5000000, 1),
('Adidas', 4500000, 2),
('Under Armour', 4200000, 5),
('Emirates', 3500000, 6),
('Spotify', 3200000, 7),
('Beko', 3000000, 8),
('GreekAir', 2500000, 9),
('Česká spořitelna', 1500000, 10),


('Jordan Brand',     4000000, 11),
('Carnival Cruise',  3800000, 12),
('Western Union',    3600000, 13),
('American Airlines',3900000, 14),
('Chase',            3700000, 15),
-- Nets (16) and Bucks/Suns (3,4) no sponsore
('H-E-B',            2500000, 17),
('Scotiabank',       2600000, 18),
('Aeroflot',         2400000, 19),
('Eurobank',         2200000, 20),
('Turkish Airlines', 3000000, 21),
('Bank Leumi',       2600000, 22),
('Segafredo',        2300000, 23),
('mts',              2000000, 24),
('Švyturys',         1800000, 25);

-- ==============================

-- ==============================
UPDATE Players p
SET
    ppg = COALESCE(s.avg_points,   0),
    rpg = COALESCE(s.avg_rebounds, 0),
    apg = COALESCE(s.avg_assists,  0),
    bpg = COALESCE(s.avg_blocks,   0),
    spg = COALESCE(s.avg_steals,   0)
FROM (
    SELECT
        player_id,
        AVG(points)::DECIMAL(4,1)   AS avg_points,
        AVG(rebounds)::DECIMAL(4,1) AS avg_rebounds,
        AVG(assists)::DECIMAL(4,1)  AS avg_assists,
        AVG(blocks)::DECIMAL(4,1)   AS avg_blocks,
        AVG(steals)::DECIMAL(4,1)   AS avg_steals
    FROM PlayerStats
    GROUP BY player_id
) s
WHERE p.player_id = s.player_id;
