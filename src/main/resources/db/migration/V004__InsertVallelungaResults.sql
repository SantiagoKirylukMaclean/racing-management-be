-- Insertar resultados para la carrera en Italia (ID 1)

-- Qualifying
INSERT INTO race_results (race_id, driver_id, session_type, points, position, is_dnf, created_at, updated_at) VALUES
(1, 1, 'QUALIFYING', 15, 1, FALSE, NOW(), NOW()), -- Norbert Michelisz
(1, 2, 'QUALIFYING', 10, 2, FALSE, NOW(), NOW()), -- Yann Ehrlacher
(1, 3, 'QUALIFYING', 6, 4, FALSE, NOW(), NOW()), -- Mikel Azcona
(1, 4, 'QUALIFYING', 8, 3, FALSE, NOW(), NOW()), -- Esteban Guerrieri
(1, 5, 'QUALIFYING', 0, 10, FALSE, NOW(), NOW()), -- Néstor Girolami
(1, 6, 'QUALIFYING', 4, 5, FALSE, NOW(), NOW()), -- Thed Björk
(1, 7, 'QUALIFYING', 0, 7, FALSE, NOW(), NOW()), -- Ma Qing Hua
(1, 8, 'QUALIFYING', 0, 8, FALSE, NOW(), NOW()), -- Santiago Urrutia
(1, 9, 'QUALIFYING', 0, 9, FALSE, NOW(), NOW()), -- John Filippi
(1, 10, 'QUALIFYING', 2, 6, FALSE, NOW(), NOW()), -- Marco Butti
(1, 11, 'QUALIFYING', 0, 12, FALSE, NOW(), NOW()), -- Sami Taoufik
(1, 12, 'QUALIFYING', 0, 14, FALSE, NOW(), NOW()), -- Sandro Pelatti
(1, 13, 'QUALIFYING', 0, 13, FALSE, NOW(), NOW()), -- Víctor Fernández
(1, 14, 'QUALIFYING', 0, 16, FALSE, NOW(), NOW()), -- Demir Eröge
(1, 15, 'QUALIFYING', 0, 15, FALSE, NOW(), NOW()), -- Filippo Barberi
(1, 16, 'QUALIFYING', 0, 17, FALSE, NOW(), NOW()), -- Philipp Mattersdorfer
(1, 17, 'QUALIFYING', 0, 20, FALSE, NOW(), NOW()), -- Ramazan Kaya
(1, 18, 'QUALIFYING', 0, 11, FALSE, NOW(), NOW()), -- Jacopo Giuseppe Cimenes
(1, 19, 'QUALIFYING', 0, 18, FALSE, NOW(), NOW()), -- Tony Verhulst
(1, 20, 'QUALIFYING', 0, 19, FALSE, NOW(), NOW()); -- Giulio Valentini

-- Race 1
INSERT INTO race_results (race_id, driver_id, session_type, points, position, is_dnf, created_at, updated_at) VALUES
(1, 1, 'RACE1', 30, 1, FALSE, NOW(), NOW()), -- Norbert Michelisz
(1, 2, 'RACE1', 25, 2, FALSE, NOW(), NOW()), -- Yann Ehrlacher
(1, 4, 'RACE1', 22, 3, FALSE, NOW(), NOW()), -- Esteban Guerrieri
(1, 3, 'RACE1', 20, 4, FALSE, NOW(), NOW()), -- Mikel Azcona
(1, 10, 'RACE1', 18, 5, FALSE, NOW(), NOW()), -- Marco Butti
(1, 6, 'RACE1', 16, 6, FALSE, NOW(), NOW()), -- Thed Björk
(1, 8, 'RACE1', 14, 7, FALSE, NOW(), NOW()), -- Santiago Urrutia
(1, 7, 'RACE1', 12, 8, FALSE, NOW(), NOW()), -- Ma Qing Hua
(1, 9, 'RACE1', 10, 9, FALSE, NOW(), NOW()), -- John Filippi
(1, 5, 'RACE1', 8, 10, FALSE, NOW(), NOW()), -- Néstor Girolami
(1, 15, 'RACE1', 6, 11, FALSE, NOW(), NOW()), -- Filippo Barberi
(1, 12, 'RACE1', 4, 12, FALSE, NOW(), NOW()), -- Sandro Pelatti
(1, 18, 'RACE1', 3, 13, FALSE, NOW(), NOW()), -- Jacopo Giuseppe Cimenes
(1, 16, 'RACE1', 2, 14, FALSE, NOW(), NOW()), -- Philipp Mattersdorfer
(1, 19, 'RACE1', 1, 15, FALSE, NOW(), NOW()), -- Tony Verhulst
(1, 20, 'RACE1', 0, 16, FALSE, NOW(), NOW()), -- Giulio Valentini
(1, 14, 'RACE1', 0, 17, FALSE, NOW(), NOW()), -- Demir Eröge
(1, 17, 'RACE1', 0, 18, FALSE, NOW(), NOW()), -- Ramazan Kaya
(1, 13, 'RACE1', 0, 19, FALSE, NOW(), NOW()), -- Víctor Fernández
(1, 11, 'RACE1', 0, 0, TRUE, NOW(), NOW()); -- Sami Taoufik (Retired)

-- Race 2
INSERT INTO race_results (race_id, driver_id, session_type, points, position, is_dnf, created_at, updated_at) VALUES
(1, 1, 'RACE2', 16, 6, FALSE, NOW(), NOW()), -- Norbert Michelisz
(1, 2, 'RACE2', 2, 14, FALSE, NOW(), NOW()), -- Yann Ehrlacher
(1, 3, 'RACE2', 20, 4, FALSE, NOW(), NOW()), -- Mikel Azcona
(1, 4, 'RACE2', 12, 8, FALSE, NOW(), NOW()), -- Esteban Guerrieri
(1, 5, 'RACE2', 30, 1, FALSE, NOW(), NOW()), -- Néstor Girolami
(1, 6, 'RACE2', 18, 5, FALSE, NOW(), NOW()), -- Thed Björk
(1, 7, 'RACE2', 10, 9, FALSE, NOW(), NOW()), -- Ma Qing Hua
(1, 8, 'RACE2', 25, 2, FALSE, NOW(), NOW()), -- Santiago Urrutia
(1, 9, 'RACE2', 14, 7, FALSE, NOW(), NOW()), -- John Filippi
(1, 10, 'RACE2', 22, 3, FALSE, NOW(), NOW()), -- Marco Butti
(1, 11, 'RACE2', 0, 0, TRUE, NOW(), NOW()), -- Sami Taoufik (Retired)
(1, 12, 'RACE2', 8, 10, FALSE, NOW(), NOW()), -- Sandro Pelatti
(1, 13, 'RACE2', 0, 0, TRUE, NOW(), NOW()), -- Víctor Fernández (Retired)
(1, 14, 'RACE2', 6, 11, FALSE, NOW(), NOW()), -- Demir Eröge
(1, 15, 'RACE2', 0, 0, TRUE, NOW(), NOW()), -- Filippo Barberi (Retired)
(1, 16, 'RACE2', 4, 12, FALSE, NOW(), NOW()), -- Philipp Mattersdorfer
(1, 17, 'RACE2', 3, 13, FALSE, NOW(), NOW()), -- Ramazan Kaya
(1, 18, 'RACE2', 0, 0, TRUE, NOW(), NOW()), -- Jacopo Giuseppe Cimenes (Retired)
(1, 19, 'RACE2', 0, 16, FALSE, NOW(), NOW()), -- Tony Verhulst
(1, 20, 'RACE2', 1, 15, FALSE, NOW(), NOW()); -- Giulio Valentini
