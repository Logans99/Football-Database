USE lsantos_cs355fa22;

delete from Players;
delete from Games;
delete from Coaches;
delete from Team_Organization;
delete from Player_Game;
delete from Player_Coach;
delete from Player_Phone_Number;

-- Team Organizations

INSERT INTO Team_Organization VALUES('000000001', 'Allegiant Stadium', 'Las Vegas Raiders', 'Mark Davis', '3333 Al Davis Way', 'Las Vegas', 'NV','89101');
INSERT INTO Team_Organization VALUES('000000002', 'Arrowhead Stadium', 'Kansas City Cheifs', 'Clark Hunt', '1 Arrowhead Dr', 'Kansas City', 'MO','64129');
INSERT INTO Team_Organization VALUES('000000003', 'SoFi Stadium', 'Las Angeles Chargers', 'Dean Spanos', '1001 Stadium Dr', 'Inglewood', 'NV','90301');
INSERT INTO Team_Organization VALUES('000000004', 'Mile High Stadium', 'Denver Broncos', 'Rob Walton', '1701 Bryant St', 'Denver', 'CO','80204');

-- Players

INSERT INTO Players VALUES('123456789', 'QB', 'Derek Carr', '1988-10-04', '4', '34000000', '1325 Hilltop', 'Las Vegas', 'NV', '89101', '000000001');
INSERT INTO Players VALUES('123456980', 'RB', 'Josh Jacobs', '1994-02-22', '1', '7000000', '101 Makeway', 'Las Vegas', 'NV', '89101', '000000001');
INSERT INTO Players VALUES('569801234', 'TE', 'Darren Waller', '1992-02-12', '4', '17000000', '2217 Bridgemill', 'Las Vegas', 'NV', '89101', '000000001');
INSERT INTO Players VALUES('857463955', 'WR', 'Davante Adams', '1989-05-09', '4', '27000000', '6743 Spotpoint', 'Las Vegas', 'NV', '89101', '000000001');
INSERT INTO Players VALUES('998435367', 'WR', 'Hunter Renfrow', '1995-01-07', '3', '13000000', '9982 Shadow St.', 'Las Vegas', 'NV', '89101', '000000001');
INSERT INTO Players VALUES('323211943', 'QB', 'Patrick Mahomes', '1993-09-16', '9', '50000000', '1322 Smith Ave', 'Kansas City', 'MO', '64030', '000000002');
INSERT INTO Players VALUES('576868493', 'RB', 'Clyde Edwards', '1999-12-02', '2', '12000000', '99 Back Country Rd', 'Kansas City', 'MO', '64030', '000000002');
INSERT INTO Players VALUES('094302428', 'TE', 'Travis Kelce', '1992-01-06', '3', '13000000', '6753 Bolder Point', 'Kansas City', 'MO', '64030', '000000002');
INSERT INTO Players VALUES('119034958', 'WR', 'JuJu Smith-Schuster', '1996-11-22', '3', '11000000', '38200 Rocker Lane', 'Kansas City', 'MO', '64030', '000000002');
INSERT INTO Players VALUES('989823474', 'WR', 'Skyy Moore', '2000-09-10', '2', '900000', '1772 Lincoln Ct ', 'Kansas City', 'MO', '64030', '000000002');
INSERT INTO Players VALUES('203981203', 'QB', 'Justin Herbert', '1998-01-08', '2','16000000', '56576 Bettencourt Way', 'Los Angeles', 'CA', '90001', '000000003');
INSERT INTO Players VALUES('763529934', 'RB', 'Austin Ekeler', '1995-05-17', '3','20000000', '29874 Carrot Rd', 'Los Angeles', 'CA', '90004', '000000003');
INSERT INTO Players VALUES('032948254', 'TE', 'Gerald Everett', '1994-07-28', '5','11000000', '7593 Edge Way', 'Los Angeles', 'CA', '90001', '000000003');
INSERT INTO Players VALUES('943028302', 'WR', 'Keenan Allen', '1992-04-27', '4','18000000', '1222 Hybrid St', 'Los Angeles', 'CA', '90002', '000000003');
INSERT INTO Players VALUES('230002999', 'WR', 'Mike Williams', '1990-10-13', '1','19000000', '9012 Hiker Ave', 'Los Angeles', 'CA', '90018', '000000003');
INSERT INTO Players VALUES('349023344', 'QB', 'Russel Wilson', '1988-11-08', '5', '48000000', '9023 Rocky Mountain Way', 'Denver', 'CO', '80014', '000000004');
INSERT INTO Players VALUES('123999232', 'RB', 'Melvin Gordan III', '1990-12-03', '3','2300000', '15198 Sister City Rd', 'Denver', 'CO', '80016', '000000004');
INSERT INTO Players VALUES('348989341', 'TE', 'Greg Dulcich', '1992-01-04', '2', '7000000', '6627 Pacer St', 'Denver', 'CO', '80209', '000000004');
INSERT INTO Players VALUES('141400238', 'WR', 'Courtland Sutton', '1995-02-24', '2','1200000', '9022 Killroy Ct', 'Denver', 'CO', '80210', '000000004');
INSERT INTO Players VALUES('238940333', 'WR', 'Jerry Jeudy', '1998-03-13', '1', '900000', '1174 Boiler St', 'Denver', 'CO', '80209', '000000004');

-- Coaches

INSERT INTO Coaches VALUES('102934500', 'Head Coach', 'Josh McDaniels', '1976-04-21', 'Las Vegas Raiders');
--INSERT INTO Coaches VALUES('992348211', 'Defensive Coach', 'Will Folder', '1979-02-13', 'Las Vegas Raiders');
INSERT INTO Coaches VALUES('230902910', 'Head Coach', 'Andy Reid', '1958-04-08', 'Kansas City Cheifs');
--INSERT INTO Coaches VALUES('903326577', 'Defensive Coach', 'David Bouche', '1984-10-30', 'Kansas City Cheifs');
INSERT INTO Coaches VALUES('450034853', 'Head Coach', 'Brandon Staley', '1984-02-10', 'Los Angeles Chargers');
--INSERT INTO Coaches VALUES('776453943', 'Defensive Coach', 'Calvin Wright', '1989-03-17', 'Los Angeles Chargers');
INSERT INTO Coaches VALUES('243674211', 'Head Coach', 'Nathaniel Hackett', '1978-05-19', 'Denver Broncos');
--INSERT INTO Coaches VALUES('554274236', 'Offensive Coach', 'Brian Dower', '1982-09-28', 'Denver Broncos');
--INSERT INTO Coaches VALUES('773248530', 'Defensive Coach', 'Ryan Hall', '1980-02-01', 'Denver Broncos');

-- Schedule

INSERT INTO Games VALUES('2023-10-15', '62343', 'Las Vegas', '921938222', '000000001', '000000002'); -- Game 1
INSERT INTO Games VALUES('2023-10-22', '69114', 'Los Angeles', '966744311', '000000003', '000000001'); -- Game 2
INSERT INTO Games VALUES('2023-10-29', '64102', 'Las Vegas', '439836212', '000000001', '000000004'); -- Game 3

INSERT INTO Games VALUES('2023-11-05', '66223', 'Los Angeles', '772392248', '000000003', '000000002'); -- Game 4
INSERT INTO Games VALUES('2023-11-12', '73983', 'Kansas City', '483239201', '000000002', '000000004'); -- Game 5
INSERT INTO Games VALUES('2023-11-26', '73983', 'Kansas City', '999234264', '000000002', '000000001'); -- Game 6

-- Denver Broncos and Los Angeles Chargers do not play each other in this mini league to be able to show an example of teams that do not play each other --

-- Game 1
INSERT INTO Player_Game VALUES ('123456789', '2023-10-15', '000000001', '000000002'); -- D Carr
INSERT INTO Player_Game VALUES ('123456980', '2023-10-15', '000000001', '000000002'); -- J Jacobs
INSERT INTO Player_Game VALUES ('569801234', '2023-10-15', '000000001', '000000002'); -- D Waller
INSERT INTO Player_Game VALUES ('857463955', '2023-10-15', '000000001', '000000002'); -- D Adams 
-- No Hunter Renfrow
INSERT INTO Player_Game VALUES ('323211943', '2023-10-15', '000000001', '000000002'); -- P Mahomes
INSERT INTO Player_Game VALUES ('576868493', '2023-10-15', '000000001', '000000002'); -- C Edwards
INSERT INTO Player_Game VALUES ('094302428', '2023-10-15', '000000001', '000000002'); -- T Kelce
INSERT INTO Player_Game VALUES ('119034958', '2023-10-15', '000000001', '000000002'); -- J Smith-Schuster
-- No Skyy Moore

-- Game 2
INSERT INTO Player_Game VALUES ('123456789', '2023-10-22', '000000003', '000000001'); -- D Carr
INSERT INTO Player_Game VALUES ('123456980', '2023-10-22', '000000003', '000000001'); -- J Jacobs
INSERT INTO Player_Game VALUES ('569801234', '2023-10-22', '000000003', '000000001'); -- D Waller
INSERT INTO Player_Game VALUES ('998435367', '2023-10-22', '000000003', '000000001'); -- H Renfrow
-- No Davante Adams
INSERT INTO Player_Game VALUES ('203981203', '2023-10-22', '000000003', '000000001'); -- J Herbert
INSERT INTO Player_Game VALUES ('032948254', '2023-10-22', '000000003', '000000001'); -- G Everett
INSERT INTO Player_Game VALUES ('943028302', '2023-10-22', '000000003', '000000001'); -- K Allen
INSERT INTO Player_Game VALUES ('230002999', '2023-10-22', '000000003', '000000001'); -- M Williams
-- No Austin Ekeler

-- Game 3
INSERT INTO Player_Game VALUES ('123456789', '2023-10-29', '000000001', '000000004'); -- D Carr
INSERT INTO Player_Game VALUES ('123456980', '2023-10-29', '000000001', '000000004'); -- J Jacobs
INSERT INTO Player_Game VALUES ('569801234', '2023-10-29', '000000001', '000000004'); -- D Waller
INSERT INTO Player_Game VALUES ('857463955', '2023-10-29', '000000001', '000000004'); -- D Adams 
INSERT INTO Player_Game VALUES ('998435367', '2023-10-29', '000000001', '000000004'); -- H Renfrow
-- Missing: None
INSERT INTO Player_Game VALUES ('349023344', '2023-10-29', '000000001', '000000004'); -- R Wilson
INSERT INTO Player_Game VALUES ('123999232', '2023-10-29', '000000001', '000000004'); -- M Gordan
INSERT INTO Player_Game VALUES ('348989341', '2023-10-29', '000000001', '000000004'); -- G Dulcich
INSERT INTO Player_Game VALUES ('141400238', '2023-10-29', '000000001', '000000004'); -- C Sutton
INSERT INTO Player_Game VALUES ('238940333', '2023-10-29', '000000001', '000000004'); -- J Juedy
-- Missing: None

-- Game 4
INSERT INTO Player_Game VALUES ('203981203', '2023-11-05', '000000003', '000000002'); -- J Herbert
INSERT INTO Player_Game VALUES ('032948254', '2023-11-05', '000000003', '000000002'); -- G Everett
INSERT INTO Player_Game VALUES ('943028302', '2023-11-05', '000000003', '000000002'); -- K Allen
INSERT INTO Player_Game VALUES ('230002999', '2023-11-05', '000000003', '000000002'); -- M Williams
-- No Austin Ekeler
INSERT INTO Player_Game VALUES ('323211943', '2023-11-05', '000000003', '000000002'); -- P Mahomes
INSERT INTO Player_Game VALUES ('576868493', '2023-11-05', '000000003', '000000002'); -- C Edwards
INSERT INTO Player_Game VALUES ('094302428', '2023-11-05', '000000003', '000000002'); -- T Kelce
INSERT INTO Player_Game VALUES ('119034958', '2023-11-05', '000000003', '000000002'); -- J Smith-Schuster
INSERT INTO Player_Game VALUES ('989823474', '2023-11-05', '000000003', '000000002'); -- Skyy Moore
-- Missing: None

-- Game 5
INSERT INTO Player_Game VALUES ('323211943', '2023-11-12', '000000002', '000000004'); -- P Mahomes
INSERT INTO Player_Game VALUES ('576868493', '2023-11-12', '000000002', '000000004'); -- C Edwards
INSERT INTO Player_Game VALUES ('094302428', '2023-11-12', '000000002', '000000004'); -- T Kelce
INSERT INTO Player_Game VALUES ('119034958', '2023-11-12', '000000002', '000000004'); -- J Smith-Schuster
INSERT INTO Player_Game VALUES ('989823474', '2023-11-12', '000000002', '000000004'); -- Skyy Moore
-- Missing: None
INSERT INTO Player_Game VALUES ('349023344', '2023-11-12', '000000002', '000000004'); -- R Wilson
INSERT INTO Player_Game VALUES ('123999232', '2023-11-12', '000000002', '000000004'); -- M Gordan
INSERT INTO Player_Game VALUES ('348989341', '2023-11-12', '000000002', '000000004'); -- G Dulcich
INSERT INTO Player_Game VALUES ('141400238', '2023-11-12', '000000002', '000000004'); -- C Sutton
INSERT INTO Player_Game VALUES ('238940333', '2023-11-12', '000000002', '000000004'); -- J Juedy
-- Missing None

-- Game 6
INSERT INTO Player_Game VALUES ('123456789', '2023-11-26', '000000002', '000000001'); -- D Carr
INSERT INTO Player_Game VALUES ('123456980', '2023-11-26', '000000002', '000000001'); -- J Jacobs
INSERT INTO Player_Game VALUES ('569801234', '2023-11-26', '000000002', '000000001'); -- D Waller
INSERT INTO Player_Game VALUES ('857463955', '2023-11-26', '000000002', '000000001'); -- D Adams 
INSERT INTO Player_Game VALUES ('998435367', '2023-11-26', '000000002', '000000001'); -- H Renfrow
-- Missing: None
INSERT INTO Player_Game VALUES ('323211943', '2023-11-26', '000000002', '000000001'); -- P Mahomes
INSERT INTO Player_Game VALUES ('576868493', '2023-11-26', '000000002', '000000001'); -- C Edwards
INSERT INTO Player_Game VALUES ('119034958', '2023-11-26', '000000002', '000000001'); -- J Smith-Schuster
-- No Skyy Moore OR Travis Kelce

-- Player_Coach

-- Las Vegas Raiders
INSERT INTO Player_Coach VALUES ('102934500', '123456789');
INSERT INTO Player_Coach VALUES ('102934500', '123456980');
INSERT INTO Player_Coach VALUES ('102934500', '569801234');
INSERT INTO Player_Coach VALUES ('102934500', '857463955');
INSERT INTO Player_Coach VALUES ('102934500', '998435367');

-- Kansas City Cheifs
INSERT INTO Player_Coach VALUES ('230902910', '323211943');
INSERT INTO Player_Coach VALUES ('230902910', '576868493');
INSERT INTO Player_Coach VALUES ('230902910', '094302428');
INSERT INTO Player_Coach VALUES ('230902910', '119034958');
INSERT INTO Player_Coach VALUES ('230902910', '989823474');

-- Los Angeles Chargers
INSERT INTO Player_Coach VALUES ('450034853', '203981203');
INSERT INTO Player_Coach VALUES ('450034853', '763529934');
INSERT INTO Player_Coach VALUES ('450034853', '032948254');
INSERT INTO Player_Coach VALUES ('450034853', '943028302');
INSERT INTO Player_Coach VALUES ('450034853', '230002999');

-- Denver Broncos
INSERT INTO Player_Coach VALUES ('243674211', '349023344');
INSERT INTO Player_Coach VALUES ('243674211', '123999232');
INSERT INTO Player_Coach VALUES ('243674211', '348989341');
INSERT INTO Player_Coach VALUES ('243674211', '141400238');
INSERT INTO Player_Coach VALUES ('243674211', '238940333');

-- Las Vegas Raiders Phone Number
INSERT INTO Player_Phone_Number VALUES ('123456789', '1345320011');
INSERT INTO Player_Phone_Number VALUES ('123456980', '1943023422');
INSERT INTO Player_Phone_Number VALUES ('569801234', '1223498353');
INSERT INTO Player_Phone_Number VALUES ('857463955', '1353420394');
INSERT INTO Player_Phone_Number VALUES ('857463955', '1167543222');

-- Kansas City Cheifs Phone Number
INSERT INTO Player_Phone_Number VALUES ('323211943', '1168823211');
INSERT INTO Player_Phone_Number VALUES ('576868493', '1232210083');
INSERT INTO Player_Phone_Number VALUES ('094302428', '1138764320');
INSERT INTO Player_Phone_Number VALUES ('119034958', '1293064032');
INSERT INTO Player_Phone_Number VALUES ('989823474', '1229834293');

-- Los Angeles Chargers Phone Number
INSERT INTO Player_Phone_Number VALUES ('203981203', '1932302324');
INSERT INTO Player_Phone_Number VALUES ('763529934', '1432288991');
INSERT INTO Player_Phone_Number VALUES ('032948254', '1236542945');
INSERT INTO Player_Phone_Number VALUES ('943028302', '1522134648');
INSERT INTO Player_Phone_Number VALUES ('230002999', '1763128632');

-- Denver Broncos Phone Number
INSERT INTO Player_Phone_Number VALUES ('349023344', '1343728112');
INSERT INTO Player_Phone_Number VALUES ('123999232', '1926654738');
INSERT INTO Player_Phone_Number VALUES ('348989341', '1853554327');
INSERT INTO Player_Phone_Number VALUES ('141400238', '1076586232');
INSERT INTO Player_Phone_Number VALUES ('238940333', '1143546783');

