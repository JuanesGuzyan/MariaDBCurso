USE metro_cdmx

ALTER TABLE `stations`
MODIFY `name` VARCHAR(50) NOT NULL;
-- ADD CONSTRAINT `trains_line_id_foreign`
--foreign key (`line_id`) references `lines`(`id`);