DROP TABLE IF EXISTS Sponsorships CASCADE;
DROP TABLE IF EXISTS Contracts CASCADE;
DROP TABLE IF EXISTS PlayerStats CASCADE;
DROP TABLE IF EXISTS Matches CASCADE;
DROP TABLE IF EXISTS Coaches CASCADE;
DROP TABLE IF EXISTS Players CASCADE;
DROP TABLE IF EXISTS Teams CASCADE;
DROP TABLE IF EXISTS Leagues CASCADE;
DROP TABLE IF EXISTS Participation CASCADE;
DROP TABLE IF EXISTS playersbackup CASCADE;
DROP TABLE IF EXISTS teamsbackup CASCADE;
DROP TABLE IF EXISTS contractsbackup CASCADE; 


-- === LEAGUES ===
CREATE TABLE Leagues (
    league_id SERIAL PRIMARY KEY,
    league_name VARCHAR(100) NOT NULL,
    division VARCHAR(100) NOT NULL
);

-- === TEAMS ===
CREATE TABLE Teams (
    team_id SERIAL PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL UNIQUE,
    city VARCHAR(100) NOT NULL,
    arena VARCHAR(100),
    league_id INT NOT NULL REFERENCES Leagues(league_id) ON DELETE CASCADE
);

-- === PLAYERS ===
CREATE TABLE Players (
    player_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    surname VARCHAR(100) NOT NULL,
    age INT CHECK (age > 15),
    position VARCHAR(10) NOT NULL,
    height INT CHECK (height > 100),
    wingspan INT CHECK (wingspan > 100),

    -- Player Per Game stats (may be derived)
    ppg DECIMAL(4,1) DEFAULT 0,
    rpg DECIMAL(4,1) DEFAULT 0,
    apg DECIMAL(4,1) DEFAULT 0,
    bpg DECIMAL(4,1) DEFAULT 0,
    spg DECIMAL(4,1) DEFAULT 0,

    team_id INT REFERENCES Teams(team_id) ON DELETE SET NULL
);

-- === COACHES ===
CREATE TABLE Coaches (
    coach_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    surname VARCHAR(100) NOT NULL,
    role VARCHAR(50) CHECK (role IN ('Head', 'Assistant')),
    coach_specialization VARCHAR(100),
    experience INT CHECK (experience >= 0),
    team_id INT NOT NULL REFERENCES Teams(team_id) ON DELETE CASCADE
);

-- === MATCHES ===
CREATE TABLE Matches (
    match_id SERIAL PRIMARY KEY,
    home_team_id INT NOT NULL REFERENCES Teams(team_id),
    away_team_id INT NOT NULL REFERENCES Teams(team_id),
    home_score INT DEFAULT 0 CHECK (home_score >= 0),
    away_score INT DEFAULT 0 CHECK (away_score >= 0),
    winner_team_id INT REFERENCES Teams(team_id),

    CHECK (home_team_id <> away_team_id)
);

-- === PLAYER STATS ===
CREATE TABLE PlayerStats (
    stat_id SERIAL PRIMARY KEY,
    match_id INT NOT NULL REFERENCES Matches(match_id) ON DELETE CASCADE,
    player_id INT NOT NULL REFERENCES Players(player_id) ON DELETE CASCADE,

    points INT DEFAULT 0 CHECK (points >= 0),
    rebounds INT DEFAULT 0 CHECK (rebounds >= 0),
    assists INT DEFAULT 0 CHECK (assists >= 0),
    blocks INT DEFAULT 0 CHECK (blocks >= 0),
    steals INT DEFAULT 0 CHECK (steals >= 0),
    minutes_played INT DEFAULT 0 CHECK (minutes_played >= 0),

    CONSTRAINT unique_player_match UNIQUE (match_id, player_id)
);

-- === CONTRACTS ===
CREATE TABLE Contracts (
    contract_id SERIAL PRIMARY KEY,
    player_id INT NOT NULL REFERENCES Players(player_id) ON DELETE CASCADE,
    team_id INT NOT NULL REFERENCES Teams(team_id) ON DELETE CASCADE,
    salary DECIMAL(10,2) CHECK (salary > 0),
    duration VARCHAR(50),

    -- IO2: one active contract per player
    CONSTRAINT unique_player_contract UNIQUE (player_id)
);
-- === PARTICIPATION ===
CREATE TABLE Participation (
    participation_id SERIAL PRIMARY KEY,
    team_id INT NOT NULL REFERENCES Teams(team_id) ON DELETE CASCADE,
    match_id INT NOT NULL REFERENCES Matches(match_id) ON DELETE CASCADE,
    role VARCHAR(10) NOT NULL CHECK (role IN ('home', 'away')),
    match_date DATE NOT NULL,


    CONSTRAINT unique_team_match UNIQUE (team_id, match_id)
);

-- === SPONSORSHIPS ===
CREATE TABLE Sponsorships (
    sponsorship_id SERIAL PRIMARY KEY,
    sponsor_name VARCHAR(100) NOT NULL,
    amount DECIMAL(10,2) CHECK (amount > 0),
    team_id INT NOT NULL REFERENCES Teams(team_id) ON DELETE CASCADE
);
