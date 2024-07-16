-- Qualifying results

INSERT INTO race_results (race_id, driver_id, session_type, points, position, is_dnf, created_at, updated_at) VALUES
(3, 3, 'QUALIFYING', 15, 1, FALSE, NOW(), NOW()), -- Mikel Azcona
(3, 1, 'QUALIFYING', 10, 2, FALSE, NOW(), NOW()), -- Norbert Michelisz
(3, 6, 'QUALIFYING', 8, 3, FALSE, NOW(), NOW()), -- Thed Björk
(3, 7, 'QUALIFYING', 6, 4, FALSE, NOW(), NOW()), -- Ma Qing Hua
(3, 4, 'QUALIFYING', 4, 5, FALSE, NOW(), NOW()), -- Esteban Guerrieri
(3, 5, 'QUALIFYING', 2, 6, FALSE, NOW(), NOW()), -- Néstor Girolami
(3, 8, 'QUALIFYING', 0, 7, FALSE, NOW(), NOW()), -- Santiago Urrutia
(3, 2, 'QUALIFYING', 0, 8, FALSE, NOW(), NOW()), -- Yann Ehrlacher
(3, 10, 'QUALIFYING', 0, 9, FALSE, NOW(), NOW()), -- Marco Butti
(3, 21, 'QUALIFYING', 0, 10, FALSE, NOW(), NOW()), -- Dušan Borković
(3, 25, 'QUALIFYING', 0, 11, FALSE, NOW(), NOW()), -- Mark Wilkins
(3, 9, 'QUALIFYING', 0, 12, FALSE, NOW(), NOW()), -- John Filippi
(3, 26, 'QUALIFYING', 0, 13, FALSE, NOW(), NOW()), -- Harry Gottsacker
(3, 24, 'QUALIFYING', 0, 14, FALSE, NOW(), NOW()), -- Megan Tomlinson
(3, 27, 'QUALIFYING', 0, 15, FALSE, NOW(), NOW()); -- Riley Pegram

-- Race 1 results
INSERT INTO race_results (race_id, driver_id, session_type, points, position, is_dnf, created_at, updated_at) VALUES
(3, 6, 'RACE1', 30, 1, FALSE, NOW(), NOW()), -- Thed Björk
(3, 1, 'RACE1', 25, 2, FALSE, NOW(), NOW()), -- Norbert Michelisz
(3, 3, 'RACE1', 22, 3, FALSE, NOW(), NOW()), -- Mikel Azcona
(3, 5, 'RACE1', 20, 4, FALSE, NOW(), NOW()), -- Néstor Girolami
(3, 4, 'RACE1', 18, 5, FALSE, NOW(), NOW()), -- Esteban Guerrieri
(3, 2, 'RACE1', 16, 6, FALSE, NOW(), NOW()), -- Yann Ehrlacher
(3, 7, 'RACE1', 14, 7, FALSE, NOW(), NOW()), -- Ma Qing Hua
(3, 9, 'RACE1', 12, 8, FALSE, NOW(), NOW()), -- John Filippi
(3, 21, 'RACE1', 10, 9, FALSE, NOW(), NOW()), -- Dušan Borković
(3, 25, 'RACE1', 8, 10, FALSE, NOW(), NOW()), -- Mark Wilkins
(3, 26, 'RACE1', 6, 11, FALSE, NOW(), NOW()), -- Harry Gottsacker
(3, 10, 'RACE1', 4, 12, FALSE, NOW(), NOW()), -- Marco Butti
(3, 24, 'RACE1', 3, 13, FALSE, NOW(), NOW()), -- Megan Tomlinson
(3, 27, 'RACE1', 0, 14, FALSE, NOW(), NOW()), -- Riley Pegram
(3, 8, 'RACE1', 0, 15, FALSE, NOW(), NOW()); -- Santiago Urrutia

-- Race 2 results
INSERT INTO race_results (race_id, driver_id, session_type, points, position, is_dnf, created_at, updated_at) VALUES
(3, 2, 'RACE2', 30, 1, FALSE, NOW(), NOW()), -- Yann Ehrlacher
(3, 7, 'RACE2', 25, 2, FALSE, NOW(), NOW()), -- Ma Qing Hua
(3, 4, 'RACE2', 22, 3, FALSE, NOW(), NOW()), -- Esteban Guerrieri
(3, 3, 'RACE2', 20, 4, FALSE, NOW(), NOW()), -- Mikel Azcona
(3, 1, 'RACE2', 18, 5, FALSE, NOW(), NOW()), -- Norbert Michelisz
(3, 6, 'RACE2', 16, 6, FALSE, NOW(), NOW()), -- Thed Björk
(3, 21, 'RACE2', 14, 7, FALSE, NOW(), NOW()), -- Dušan Borković
(3, 5, 'RACE2', 12, 8, FALSE, NOW(), NOW()), -- Néstor Girolami
(3, 9, 'RACE2', 10, 9, FALSE, NOW(), NOW()), -- John Filippi
(3, 10, 'RACE2', 8, 10, FALSE, NOW(), NOW()), -- Marco Butti
(3, 24, 'RACE2', 6, 11, FALSE, NOW(), NOW()), -- Megan Tomlinson
(3, 27, 'RACE2', 4, 12, FALSE, NOW(), NOW()), -- Riley Pegram
(3, 25, 'RACE2', 0, 13, FALSE, NOW(), NOW()), -- Mark Wilkins
(3, 26, 'RACE2', 0, 14, FALSE, NOW(), NOW()), -- Harry Gottsacker
(3, 8, 'RACE2', 0, 15, FALSE, NOW(), NOW()); -- Santiago Urrutia

