-- Circuito
INSERT INTO circuits (id, name, location, length, created_at, updated_at) VALUES
(1, 'Vallelunga', 'Italy,', 1773, NOW(), NOW()),
(2, 'Marrakech', 'Morocco', 2971, NOW(), NOW());

-- Campeonato
INSERT INTO championships (id, year, created_at, updated_at) VALUES
(1, 2024, NOW(), NOW());

-- Carrera
INSERT INTO races (id, circuit_id, championship_id, date, created_at, updated_at) VALUES
(1, 1, 1, '2024-04-21', NOW(), NOW()),
(2, 2, 1, '2024-05-04', NOW(), NOW());