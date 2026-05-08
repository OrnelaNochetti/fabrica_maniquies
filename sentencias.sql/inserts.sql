INSERT INTO modelos (nombre, material_sugerido) VALUES 
('Vintage Wood', 'Madera'),
('Modern Slim', 'Plástico'),
('Premium Gloss', 'Fibra de Vidrio'),
('Sport Male', 'Plástico'),
('Kids Basic', 'Plástico');

INSERT INTO piezas (tipo, color, material) VALUES 
('Cabeza', 'Blanco', 'Plástico'), ('Cabeza', 'Blanco', 'Plástico'), ('Cabeza', 'Blanco', 'Plástico'),
('Cabeza', 'Negro', 'Plástico'), ('Cabeza', 'Negro', 'Plástico'), ('Cabeza', 'Negro', 'Plástico'),
('Cabeza', 'Piel', 'Madera'), ('Cabeza', 'Piel', 'Madera'), ('Cabeza', 'Piel', 'Madera'), ('Cabeza', 'Piel', 'Madera');

INSERT INTO piezas (tipo, color, material) VALUES 
('Torso', 'Blanco', 'Plástico'), ('Torso', 'Blanco', 'Plástico'), ('Torso', 'Blanco', 'Plástico'),
('Torso', 'Negro', 'Plástico'), ('Torso', 'Negro', 'Plástico'), ('Torso', 'Negro', 'Plástico'),
('Torso', 'Piel', 'Madera'), ('Torso', 'Piel', 'Madera'), ('Torso', 'Piel', 'Madera'), ('Torso', 'Piel', 'Madera');

INSERT INTO piezas (tipo, color, material) VALUES 
('Brazo', 'Blanco', 'Plástico'), ('Brazo', 'Blanco', 'Plástico'), ('Brazo', 'Blanco', 'Plástico'),
('Brazo', 'Negro', 'Plástico'), ('Brazo', 'Negro', 'Plástico'), ('Brazo', 'Negro', 'Plástico'),
('Brazo', 'Piel', 'Madera'), ('Brazo', 'Piel', 'Madera'), ('Brazo', 'Piel', 'Madera'), ('Brazo', 'Piel', 'Madera');

INSERT INTO piezas (tipo, color, material) VALUES 
('Pierna', 'Blanco', 'Plástico'), ('Pierna', 'Blanco', 'Plástico'), ('Pierna', 'Blanco', 'Plástico'),
('Pierna', 'Negro', 'Plástico'), ('Pierna', 'Negro', 'Plástico'), ('Pierna', 'Negro', 'Plástico'),
('Pierna', 'Piel', 'Madera'), ('Pierna', 'Piel', 'Madera'), ('Pierna', 'Piel', 'Madera'), ('Pierna', 'Piel', 'Madera');

INSERT INTO maniquies (id_modelo, fecha_ensamblado) VALUES 
(1, '2026-05-01'),
(2, '2026-05-02'),
(3, '2026-05-03'),
(4, '2026-05-04'),
(5, '2026-05-05');

UPDATE piezas SET id_maniqui = 1 WHERE id_pieza IN (1, 11, 21, 31);
UPDATE piezas SET id_maniqui = 2 WHERE id_pieza IN (2, 12, 22, 32);
UPDATE piezas SET id_maniqui = 3 WHERE id_pieza IN (3, 13, 23, 33);
UPDATE piezas SET id_maniqui = 4 WHERE id_pieza IN (4, 14, 24, 34);
UPDATE piezas SET id_maniqui = 5 WHERE id_pieza IN (5, 15, 25, 35);
