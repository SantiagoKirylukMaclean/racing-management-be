-- Drivers
INSERT INTO drivers (id, first_name, last_name, team_id, created_at, updated_at) VALUES
(24, 'Megan', 'Tomlinson', 6, NOW(), NOW()),
(25, 'Mark', 'Wilkins', 6, NOW(), NOW()),
(26, 'Harry', 'Gottsacker', 6, NOW(), NOW()),
(27, 'Riley', 'Pegram', 6, NOW(), NOW());

-- Circuito
INSERT INTO circuits (id, name, location, length, created_at, updated_at) VALUES
(3, 'Mid-Ohio ', 'Usa', 3634, NOW(), NOW());

-- Carrera
INSERT INTO races (id, circuit_id, championship_id, date, created_at, updated_at) VALUES
(3, 3, 1, '2024-06-08', NOW(), NOW());
