USE metro_cdmx

-- Update Lázaro Cárdenas station
UPDATE `stations`
SET `name` = "Lázaro Cárdenas"
WHERE `id` = 1;

-- Update Ferrería station
UPDATE `stations`
SET `name` = "Ferrería"
WHERE `id` = 2;

-- Update Pantitlán station
UPDATE `stations`
SET `name` = "Pantitlán"
WHERE `id` = 3;

-- Update Tacuba station
UPDATE `stations`
SET `name` = "Tacuba"
WHERE `id` = 4;

-- Update Martín Carrera station
UPDATE `stations`
SET `name` = "Martín Carrera"
WHERE `id` = 5;

ALTER TABLE `stations`
MODIFY COLUMN `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
ALTER TABLE `lines`
MODIFY COLUMN `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
ALTER TABLE `trains`
MODIFY COLUMN `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;