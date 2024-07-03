-- Resultados de Qualifying
INSERT INTO race_results (race_session_id, driver_id, points, position, is_dnf, created_at, updated_at) VALUES
(1, 1, 15, 1, false, NOW(), NOW()), -- Norbert Michelisz
(1, 2, 10, 2, false, NOW(), NOW()), -- Yann Ehrlacher
(1, 4, 8, 3, false, NOW(), NOW()), -- Esteban Guerrieri
(1, 3, 6, 4, false, NOW(), NOW()), -- Mikel Azcona
(1, 6, 4, 5, false, NOW(), NOW()), -- Thed Björk
(1, 10, 2, 6, false, NOW(), NOW()), -- Marco Butti
(1, 7, 0, 7, false, NOW(), NOW()), -- Ma Qing Hua
(1, 8, 0, 8, false, NOW(), NOW()), -- Santiago Urrutia
(1, 9, 0, 9, false, NOW(), NOW()), -- John Filippi
(1, 5, 0, 10, false, NOW(), NOW()), -- Néstor Girolami
(1, 18, 0, 11, false, NOW(), NOW()), -- Jacopo Giuseppe Cimenes
(1, 11, 0, 12, false, NOW(), NOW()), -- Sami Taoufik
(1, 13, 0, 13, false, NOW(), NOW()), -- Víctor Fernández
(1, 12, 0, 14, false, NOW(), NOW()), -- Sandro Pelatti
(1, 15, 0, 15, false, NOW(), NOW()), -- Filippo Barberi
(1, 14, 0, 16, false, NOW(), NOW()), -- Demir Eröge
(1, 16, 0, 17, false, NOW(), NOW()), -- Philipp Mattersdorfer
(1, 19, 0, 18, false, NOW(), NOW()), -- Tony Verhulst
(1, 20, 0, 19, false, NOW(), NOW()), -- Giulio Valentini
(1, 17, 0, 20, false, NOW(), NOW()); -- Ramazan Kaya

-- Resultados de Race 1
INSERT INTO race_results (race_session_id, driver_id, points, position, is_dnf, created_at, updated_at) VALUES
(2, 1, 30, 1, false, NOW(), NOW()), -- Norbert Michelisz
(2, 2, 25, 2, false, NOW(), NOW()), -- Yann Ehrlacher
(2, 4, 22, 3, false, NOW(), NOW()), -- Esteban Guerrieri
(2, 3, 20, 4, false, NOW(), NOW()), -- Mikel Azcona
(2, 10, 18, 5, false, NOW(), NOW()), -- Marco Butti
(2, 6, 16, 6, false, NOW(), NOW()), -- Thed Björk
(2, 8, 14, 7, false, NOW(), NOW()), -- Santiago Urrutia
(2, 7, 12, 8, false, NOW(), NOW()), -- Ma Qing Hua
(2, 9, 10, 9, false, NOW(), NOW()), -- John Filippi
(2, 5, 8, 10, false, NOW(), NOW()), -- Néstor Girolami
(2, 15, 6, 11, false, NOW(), NOW()), -- Filippo Barberi
(2, 12, 4, 12, false, NOW(), NOW()), -- Sandro Pelatti
(2, 18, 3, 13, false, NOW(), NOW()), -- Jacopo Giuseppe Cimenes
(2, 16, 2, 14, false, NOW(), NOW()), -- Philipp Mattersdorfer
(2, 19, 1, 15, false, NOW(), NOW()), -- Tony Verhulst
(2, 20, 0, 16, false, NOW(), NOW()), -- Giulio Valentini
(2, 14, 0, 17, false, NOW(), NOW()), -- Demir Eröge
(2, 17, 0, 18, false, NOW(), NOW()), -- Ramazan Kaya
(2, 13, 0, 0, true, NOW(), NOW()), -- Víctor Fernández (Ret)
(2, 11, 0, 0, true, NOW(), NOW()); -- Sami Taoufik (Ret)

-- Resultados de Race 2
INSERT INTO race_results (race_session_id, driver_id, points, position, is_dnf, created_at, updated_at) VALUES
(3, 5, 30, 1, false, NOW(), NOW()), -- Néstor Girolami
(3, 8, 25, 2, false, NOW(), NOW()), -- Santiago Urrutia
(3, 10, 22, 3, false, NOW(), NOW()), -- Marco Butti
(3, 3, 20, 4, false, NOW(), NOW()), -- Mikel Azcona
(3, 6, 18, 5, false, NOW(), NOW()), -- Thed Björk
(3, 1, 16, 6, false, NOW(), NOW()), -- Norbert Michelisz
(3, 9, 14, 7, false, NOW(), NOW()), -- John Filippi
(3, 4, 12, 8, false, NOW(), NOW()), -- Esteban Guerrieri
(3, 7, 10, 9, false, NOW(), NOW()), -- Ma Qing Hua
(3, 12, 8, 10, false, NOW(), NOW()), -- Sandro Pelatti
(3, 14, 6, 11, false, NOW(), NOW()), -- Demir Eröge
(3, 16, 4, 12, false, NOW(), NOW()), -- Philipp Mattersdorfer
(3, 17, 3, 13, false, NOW(), NOW()), -- Ramazan Kaya
(3, 2, 2, 14, false, NOW(), NOW()), -- Yann Ehrlacher
(3, 20, 1, 15, false, NOW(), NOW()), -- Giulio Valentini
(3, 19, 0, 16, true, NOW(), NOW()), -- Tony Verhulst (Ret)
(3, 11, 0, 0, true, NOW(), NOW()), -- Sami Taoufik (Ret)
(3, 13, 0, 0, true, NOW(), NOW()), -- Víctor Fernández (Ret)
(3, 15, 0, 0, true, NOW(), NOW()), -- Filippo Barberi (Ret)
(3, 18, 0, 0, true, NOW(), NOW()); -- Jacopo Giuseppe Cimenes (Ret)
