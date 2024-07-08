-- Insertar resultados para la carrera en Marruecos (ID 2)

-- Qualifying
INSERT INTO race_results (race_id, driver_id, session_type, points, position, is_dnf, created_at, updated_at) VALUES
(2, 2, 'QUALIFYING', 15, 1, FALSE, NOW(), NOW()), -- Yann Ehrlacher
(2, 8, 'QUALIFYING', 10, 2, FALSE, NOW(), NOW()), -- Santiago Urrutia
(2, 1, 'QUALIFYING', 8, 3, FALSE, NOW(), NOW()), -- Norbert Michelisz
(2, 5, 'QUALIFYING', 6, 4, FALSE, NOW(), NOW()), -- Néstor Girolami
(2, 9, 'QUALIFYING', 4, 5, FALSE, NOW(), NOW()), -- John Filippi
(2, 3, 'QUALIFYING', 2, 6, FALSE, NOW(), NOW()), -- Mikel Azcona
(2, 4, 'QUALIFYING', 0, 9, FALSE, NOW(), NOW()), -- Esteban Guerrieri
(2, 6, 'QUALIFYING', 0, 11, FALSE, NOW(), NOW()), -- Thed Björk
(2, 7, 'QUALIFYING', 0, 10, FALSE, NOW(), NOW()), -- Ma Qing Hua
(2, 21, 'QUALIFYING', 0, 8, FALSE, NOW(), NOW()), -- Dušan Borković
(2, 10, 'QUALIFYING', 0, 12, FALSE, NOW(), NOW()), -- Marco Butti
(2, 11, 'QUALIFYING', 0, 14, FALSE, NOW(), NOW()), -- Sami Taoufik
(2, 22, 'QUALIFYING', 0, 13, FALSE, NOW(), NOW()), -- Mehdi Bennani
(2, 13, 'QUALIFYING', 0, 15, FALSE, NOW(), NOW()), -- Víctor Fernández
(2, 23, 'QUALIFYING', 0, 7, FALSE, NOW(), NOW()); -- Julien Piguet

-- Race 1
INSERT INTO race_results (race_id, driver_id, session_type, points, position, is_dnf, created_at, updated_at) VALUES
(2, 2, 'RACE1', 30, 1, FALSE, NOW(), NOW()), -- Yann Ehrlacher
(2, 8, 'RACE1', 25, 2, FALSE, NOW(), NOW()), -- Santiago Urrutia
(2, 1, 'RACE1', 22, 3, FALSE, NOW(), NOW()), -- Norbert Michelisz
(2, 5, 'RACE1', 20, 4, FALSE, NOW(), NOW()), -- Néstor Girolami
(2, 3, 'RACE1', 18, 5, FALSE, NOW(), NOW()), -- Mikel Azcona
(2, 9, 'RACE1', 16, 6, FALSE, NOW(), NOW()), -- John Filippi
(2, 7, 'RACE1', 14, 7, FALSE, NOW(), NOW()), -- Ma Qing Hua
(2, 6, 'RACE1', 12, 8, FALSE, NOW(), NOW()), -- Thed Björk
(2, 4, 'RACE1', 10, 9, FALSE, NOW(), NOW()), -- Esteban Guerrieri
(2, 11, 'RACE1', 8, 10, FALSE, NOW(), NOW()), -- Sami Taoufik
(2, 22, 'RACE1', 6, 11, FALSE, NOW(), NOW()), -- Mehdi Bennani
(2, 13, 'RACE1', 4, 12, FALSE, NOW(), NOW()), -- Víctor Fernández
(2, 10, 'RACE1', 0, 0, TRUE, NOW(), NOW()), -- Marco Butti (Retired)
(2, 21, 'RACE1', 0, 0, TRUE, NOW(), NOW()), -- Dušan Borković (Retired)
(2, 23, 'RACE1', 0, 0, TRUE, NOW(), NOW()); -- Julien Piguet (Retired)

-- Race 2
INSERT INTO race_results (race_id, driver_id, session_type, points, position, is_dnf, created_at, updated_at) VALUES
(2, 7, 'RACE2', 30, 1, FALSE, NOW(), NOW()), -- Ma Qing Hua
(2, 4, 'RACE2', 25, 2, FALSE, NOW(), NOW()), -- Esteban Guerrieri
(2, 21, 'RACE2', 22, 3, FALSE, NOW(), NOW()), -- Dušan Borković
(2, 9, 'RACE2', 20, 4, FALSE, NOW(), NOW()), -- John Filippi
(2, 5, 'RACE2', 18, 5, FALSE, NOW(), NOW()), -- Néstor Girolami
(2, 11, 'RACE2', 16, 6, FALSE, NOW(), NOW()), -- Sami Taoufik
(2, 10, 'RACE2', 14, 7, FALSE, NOW(), NOW()), -- Marco Butti
(2, 8, 'RACE2', 12, 8, FALSE, NOW(), NOW()), -- Santiago Urrutia
(2, 6, 'RACE2', 10, 9, FALSE, NOW(), NOW()), -- Thed Björk
(2, 22, 'RACE2', 8, 10, FALSE, NOW(), NOW()), -- Mehdi Bennani
(2, 1, 'RACE2', 6, 11, FALSE, NOW(), NOW()), -- Norbert Michelisz
(2, 13, 'RACE2', 4, 12, FALSE, NOW(), NOW()), -- Víctor Fernández
(2, 3, 'RACE2', 3, 13, FALSE, NOW(), NOW()), -- Mikel Azcona
(2, 2, 'RACE2', 0, 0, TRUE, NOW(), NOW()), -- Yann Ehrlacher (Retired)
(2, 23, 'RACE2', 0, 0, TRUE, NOW(), NOW()); -- Julien Piguet (Retired)