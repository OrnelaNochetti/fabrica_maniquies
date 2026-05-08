SELECT * FROM modelos;

SELECT tipo, COUNT(*) as cantidad_en_deposito
FROM piezas
WHERE id_maniqui IS NULL
GROUP BY tipo;

SELECT p.id_pieza, p.tipo, p.color, p.material, m.fecha_ensamblado
FROM piezas p
JOIN maniquies m ON p.id_maniqui = m.id_maniqui
WHERE m.id_maniqui = 1;

SELECT * FROM piezas 
WHERE material = 'Madera' AND tipo = 'Cabeza';

SELECT m.id_maniqui, mod.nombre as modelo, m.fecha_ensamblado
FROM maniquies m
JOIN modelos mod ON m.id_modelo = mod.id_modelo
ORDER BY m.fecha_ensamblado DESC;
