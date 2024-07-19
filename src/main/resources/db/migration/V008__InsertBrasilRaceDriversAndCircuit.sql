-- Drivers
INSERT INTO drivers (id, first_name, last_name, team_id, created_at, updated_at) VALUES
(28, 'Fabián', 'Yannantuoni', 6, NOW(), NOW()),
(29, 'Thiago', 'Vivacqua', 6, NOW(), NOW()),
(30, 'Rafael', 'Suzuki', 6, NOW(), NOW()),
(31, 'Nelson', 'Piquet jr', 6, NOW(), NOW()),
(32, 'Enrique', 'Maglione', 6, NOW(), NOW()),
(33, 'Juan Ángel', 'Rosso', 6, NOW(), NOW()),
(34, 'Matías', 'Rossi', 6, NOW(), NOW()),
(35, 'Marcos', 'Regadas', 6, NOW(), NOW()),
(36, 'Galid', 'Osman', 6, NOW(), NOW()),
(37, 'Fabio', 'Casagrande', 6, NOW(), NOW()),
(38, 'Guilherme', 'Reischl', 6, NOW(), NOW()),
(39, 'Pedro', 'Cardoso', 6, NOW(), NOW()),
(40, 'Leonel', 'Pernía', 6, NOW(), NOW()),
(41, 'Norberto', 'Fontana', 6, NOW(), NOW()),
(42, 'Juan Manuel', 'Casella', 6, NOW(), NOW()),
(43, 'Diego', 'Gutiérrez', 6, NOW(), NOW()),
(44, 'Raphael', 'Reis', 6, NOW(), NOW());


-- Circuito
INSERT INTO circuits (id, name, location, length, created_at, updated_at) VALUES
(4, 'Interlagos ', 'Brasil', 4309, NOW(), NOW());

-- Carrera
INSERT INTO races (id, circuit_id, championship_id, date, created_at, updated_at) VALUES
(4, 4, 1, '2024-07-20', NOW(), NOW());
