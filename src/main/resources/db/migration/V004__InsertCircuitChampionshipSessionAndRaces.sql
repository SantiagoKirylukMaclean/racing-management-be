-- Circuito
INSERT INTO circuits (name, location, length, created_at, updated_at) VALUES
    ('Vallaruga', 'Vallaruga', 2600, NOW(), NOW());

-- Campeonato
INSERT INTO championships (year, created_at, updated_at) VALUES
    (2024, NOW(), NOW());

-- Carrera
INSERT INTO races (circuit_id, championship_id, date, created_at, updated_at) VALUES
    (1, 1, '2024-04-21', NOW(), NOW());

-- Sesiones de Carrera (Qualifying, Race1, Race2)
INSERT INTO race_sessions (race_id, type, created_at, updated_at) VALUES
(1, 'QUALIFYING', NOW(), NOW()),
(1, 'RACE1', NOW(), NOW()),
(1, 'RACE2', NOW(), NOW());
