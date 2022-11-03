USE lsantos_cs355fa22;

DROP TABLE IF EXISTS Player_Phone_Number;
DROP TABLE IF EXISTS Player_Coach;
DROP TABLE IF EXISTS Player_Game;
DROP TABLE IF EXISTS Games;
DROP TABLE IF EXISTS Coaches;
DROP TABLE IF EXISTS Players;
DROP TABLE IF EXISTS Team_Organization;

CREATE TABLE Team_Organization
(
    team_id     INT(9),
    statium     VARCHAR(25),
    team_name   VARCHAR(40),
    owner_name  VARCHAR(40),
    street      VARCHAR(25),
    city        VARCHAR(25),
    state       VARCHAR(2),
    zip         INT(5),
    PRIMARY KEY(team_id)
);

CREATE TABLE Players
(
    id_number 	INT(9),
    position 	VARCHAR(25),
    name 	VARCHAR(40),
    DOB 	DATE,
    contract_length INT(2),
    salary	INT(12),
    street	VARCHAR(25),
    city        VARCHAR(25),
    state	VARCHAR(2),
    zip		INT(5),
    team_id	INT(9),
    PRIMARY KEY (id_number), 
    FOREIGN KEY (team_id) REFERENCES Team_Organization(team_id) ON DELETE NO ACTION ON UPDATE NO ACTION -- ON UPDATE CASCADE ON DELETE CASCADE 
);

CREATE TABLE Coaches
(
    coach_id_number   INT(9),
    job_title   VARCHAR(25),
    name        VARCHAR(40),
    DOB         DATE,
    team	VARCHAR(40),
    PRIMARY KEY (coach_id_number)
);

CREATE TABLE Games
(
    date	DATE,
    audience	INT(8),
    location	VARCHAR(30),
    game_id	INT(9),
    home_team	INT(9),
    away_team   INT(9),
    FOREIGN KEY (away_team) references Team_Organization (team_id) ON DELETE NO ACTION ON UPDATE NO ACTION, -- ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (home_team) references Team_Organization (team_id) ON DELETE NO ACTION ON UPDATE NO ACTION, -- ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY(date, home_team, away_team)
);

CREATE TABLE Player_Game
(
    id_number	INT(9),
    date	DATE,
    home_team	INT(9),
    away_team   INT(9),
    PRIMARY KEY (id_number, date, home_team, away_team),
    FOREIGN KEY (date, home_team, away_team) REFERENCES Games(date, home_team, away_team) ON DELETE NO ACTION ON UPDATE NO ACTION, -- ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_number) references Players(id_number) ON DELETE NO ACTION ON UPDATE NO ACTION -- ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Player_Coach
(
    coach_id_number	INT(9),
    id_number	INT(9),
    PRIMARY KEY (coach_id_number, id_number),
    FOREIGN KEY (coach_id_number) references Coaches(coach_id_number) ON DELETE NO ACTION ON UPDATE NO ACTION, -- ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_number) references Players(id_number) ON DELETE NO ACTION ON UPDATE NO ACTION -- ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Player_Phone_Number
(
    id_number	INT(9),
    phone_num	CHAR(11),
    PRIMARY KEY(id_number, phone_num),
    FOREIGN KEY (id_number) references Players(id_number) ON DELETE NO ACTION ON UPDATE NO ACTION -- ON UPDATE CASCADE ON DELETE CASCADE
);
