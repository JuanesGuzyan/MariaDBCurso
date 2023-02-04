USE metro_cdmx;

--seleccionar todo
SELECT * FROM `lines`;


--Filtrar por columnas
SELECT id, name, color FROM `lines`;

-- Operaciones matemáticas con SELECT, ayuda para bases de datos que tienen registros númericos como promedios. Ayuda a procesar datos desde un select.

SELECT (2+2);

SELECT (2+2) AS resultado;

SELECT AVG(year) FROM `trains`;

SELECT AVG(year) AS year_avg FROM `trains`;

--Juntar tablas

--SELECT
--`lines`.`name`,
--`trains`.`serial_number`
--FROM `lines`
--INNER JOIN `trains`
--ON `lines`.`id` = `trains`.`line_id`;

SELECT  row_number() OVER(),
`lines`.`name`,
`trains`.`serial_number`
FROM `lines`
INNER JOIN `trains`
WHERE `lines`.`id` = `trains`.`line_id`; 