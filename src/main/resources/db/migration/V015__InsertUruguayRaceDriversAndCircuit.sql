-- Drivers
INSERT INTO drivers (id, first_name, last_name, team_id, created_at, updated_at) VALUES
(45, 'Rodrigo', 'Baptista', 6, NOW(), NOW()),
(46, 'Carlos', 'Silva', 6, NOW(), NOW());

-- Circuito
INSERT INTO circuits (id, name, location, length, created_at, updated_at) VALUES
(5, 'El Pinar', 'Uruguay', 3520, NOW(), NOW());

-- Carrera
INSERT INTO races (id, circuit_id, championship_id, date, created_at, updated_at) VALUES
(5, 5, 1, '2024-08-04', NOW(), NOW());

-- Qualifying results
INSERT INTO race_results (race_id, driver_id, session_type, points, position, is_dnf, created_at, updated_at) VALUES
(5, 3, 'QUALIFYING', 0, 1, FALSE, NOW(), NOW()), -- Mikel Azcona
(5, 1, 'QUALIFYING', 0, 2, FALSE, NOW(), NOW()), -- Norbert Michelisz
(5, 6, 'QUALIFYING', 0, 3, FALSE, NOW(), NOW()), -- Thed Björk
(5, 7, 'QUALIFYING', 0, 4, FALSE, NOW(), NOW()), -- Ma Qing Hua
(5, 4, 'QUALIFYING', 0, 5, FALSE, NOW(), NOW()), -- Esteban Guerrieri
(5, 5, 'QUALIFYING', 0, 6, FALSE, NOW(), NOW()), -- Néstor Girolami
(5, 8, 'QUALIFYING', 0, 7, FALSE, NOW(), NOW()), -- Santiago Urrutia
(5, 2, 'QUALIFYING', 0, 8, FALSE, NOW(), NOW()), -- Yann Ehrlacher
(5, 10, 'QUALIFYING', 0, 9, FALSE, NOW(), NOW()), -- Marco Butti
(5, 21, 'QUALIFYING', 0, 10, FALSE, NOW(), NOW()), -- Dušan Borković
(5, 9, 'QUALIFYING', 0, 11, FALSE, NOW(), NOW()), -- John Filippi
(5, 29, 'QUALIFYING', 0, 12, FALSE, NOW(), NOW()),
(5, 30,'QUALIFYING', 0, 13, FALSE, NOW(), NOW()),
(5, 32, 'QUALIFYING', 0, 14, FALSE, NOW(), NOW()),
(5, 33, 'QUALIFYING', 0, 15, FALSE, NOW(), NOW()),
(5, 34, 'QUALIFYING', 0, 16, FALSE, NOW(), NOW()),
(5, 36, 'QUALIFYING', 0, 17, FALSE, NOW(), NOW()),
(5, 37, 'QUALIFYING', 0, 18, FALSE, NOW(), NOW()),
(5, 38, 'QUALIFYING', 0, 19, FALSE, NOW(), NOW()),
(5, 39, 'QUALIFYING', 0, 20, FALSE, NOW(), NOW()),
(5, 41, 'QUALIFYING', 0, 21, FALSE, NOW(), NOW()),
(5, 42, 'QUALIFYING', 0, 22, FALSE, NOW(), NOW()),
(5, 44, 'QUALIFYING', 0, 23, FALSE, NOW(), NOW()),
(5, 45, 'QUALIFYING', 0, 24, FALSE, NOW(), NOW()),
(5, 46, 'QUALIFYING', 0, 25, FALSE, NOW(), NOW());

-- Race 1 results
INSERT INTO race_results (race_id, driver_id, session_type, points, position, is_dnf, created_at, updated_at) VALUES
(5, 3, 'RACE1', 0, 1, FALSE, NOW(), NOW()), -- Mikel Azcona
(5, 1, 'RACE1', 0, 2, FALSE, NOW(), NOW()), -- Norbert Michelisz
(5, 6, 'RACE1', 0, 3, FALSE, NOW(), NOW()), -- Thed Björk
(5, 7, 'RACE1', 0, 4, FALSE, NOW(), NOW()), -- Ma Qing Hua
(5, 4, 'RACE1', 0, 5, FALSE, NOW(), NOW()), -- Esteban Guerrieri
(5, 5, 'RACE1', 0, 6, FALSE, NOW(), NOW()), -- Néstor Girolami
(5, 8, 'RACE1', 0, 7, FALSE, NOW(), NOW()), -- Santiago Urrutia
(5, 2, 'RACE1', 0, 8, FALSE, NOW(), NOW()), -- Yann Ehrlacher
(5, 10, 'RACE1', 0, 9, FALSE, NOW(), NOW()), -- Marco Butti
(5, 21, 'RACE1', 0, 10, FALSE, NOW(), NOW()), -- Dušan Borković
(5, 9, 'RACE1', 0, 11, FALSE, NOW(), NOW()), -- John Filippi
(5, 29, 'RACE1', 0, 12, FALSE, NOW(), NOW()),
(5, 30,'RACE1', 0, 13, FALSE, NOW(), NOW()),
(5, 32, 'RACE1', 0, 14, FALSE, NOW(), NOW()),
(5, 33, 'RACE1', 0, 15, FALSE, NOW(), NOW()),
(5, 34, 'RACE1', 0, 16, FALSE, NOW(), NOW()),
(5, 36, 'RACE1', 0, 17, FALSE, NOW(), NOW()),
(5, 37, 'RACE1', 0, 18, FALSE, NOW(), NOW()),
(5, 38, 'RACE1', 0, 19, FALSE, NOW(), NOW()),
(5, 39, 'RACE1', 0, 20, FALSE, NOW(), NOW()),
(5, 41, 'RACE1', 0, 21, FALSE, NOW(), NOW()),
(5, 42, 'RACE1', 0, 22, FALSE, NOW(), NOW()),
(5, 44, 'RACE1', 0, 23, FALSE, NOW(), NOW()),
(5, 45, 'RACE1', 0, 24, FALSE, NOW(), NOW()),
(5, 46, 'RACE1', 0, 25, FALSE, NOW(), NOW());

-- Race 2 results
INSERT INTO race_results (race_id, driver_id, session_type, points, position, is_dnf, created_at, updated_at) VALUES
(5, 3, 'RACE2', 0, 1, FALSE, NOW(), NOW()), -- Mikel Azcona
(5, 1, 'RACE2', 0, 2, FALSE, NOW(), NOW()), -- Norbert Michelisz
(5, 6, 'RACE2', 0, 3, FALSE, NOW(), NOW()), -- Thed Björk
(5, 7, 'RACE2', 0, 4, FALSE, NOW(), NOW()), -- Ma Qing Hua
(5, 4, 'RACE2', 0, 5, FALSE, NOW(), NOW()), -- Esteban Guerrieri
(5, 5, 'RACE2', 0, 6, FALSE, NOW(), NOW()), -- Néstor Girolami
(5, 8, 'RACE2', 0, 7, FALSE, NOW(), NOW()), -- Santiago Urrutia
(5, 2, 'RACE2', 0, 8, FALSE, NOW(), NOW()), -- Yann Ehrlacher
(5, 10, 'RACE2', 0, 9, FALSE, NOW(), NOW()), -- Marco Butti
(5, 21, 'RACE2', 0, 10, FALSE, NOW(), NOW()), -- Dušan Borković
(5, 9, 'RACE2', 0, 11, FALSE, NOW(), NOW()), -- John Filippi
(5, 29, 'RACE2', 0, 12, FALSE, NOW(), NOW()),
(5, 30,'RACE2', 0, 13, FALSE, NOW(), NOW()),
(5, 32, 'RACE2', 0, 14, FALSE, NOW(), NOW()),
(5, 33, 'RACE2', 0, 15, FALSE, NOW(), NOW()),
(5, 34, 'RACE2', 0, 16, FALSE, NOW(), NOW()),
(5, 36, 'RACE2', 0, 17, FALSE, NOW(), NOW()),
(5, 37, 'RACE2', 0, 18, FALSE, NOW(), NOW()),
(5, 38, 'RACE2', 0, 19, FALSE, NOW(), NOW()),
(5, 39, 'RACE2', 0, 20, FALSE, NOW(), NOW()),
(5, 41, 'RACE2', 0, 21, FALSE, NOW(), NOW()),
(5, 42, 'RACE2', 0, 22, FALSE, NOW(), NOW()),
(5, 44, 'RACE2', 0, 23, FALSE, NOW(), NOW()),
(5, 45, 'RACE2', 0, 24, FALSE, NOW(), NOW()),
(5, 46, 'RACE2', 0, 25, FALSE, NOW(), NOW());

-- VPO
UPDATE race_results SET compensation_weight = 10
WHERE race_id = 5 and driver_id = 10;

UPDATE race_results SET compensation_weight = 20
WHERE race_id = 5 and driver_id = 6;

UPDATE race_results SET compensation_weight = 30
WHERE race_id = 5 and driver_id = 1;

UPDATE race_results SET compensation_weight = 30
WHERE race_id = 5 and driver_id = 8;

UPDATE race_results SET compensation_weight = 40
WHERE race_id = 5 and driver_id = 4;