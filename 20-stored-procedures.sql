USE metro_cdmx;

DELIMITER //
CREATE PROCEDURE calculate_distance_between_lines(
    IN station_one POINT,
    IN station_two POINT,
    IN meters BOOLEAN
)
BEGIN

    IF meters THEN

        SELECT
        ST_Distance_Sphere(station_one, station_two) AS distances;

    ELSE

        SELECT
        ST_Distance_Sphere(station_one, station_two) / 1000 AS distances;

    END IF;

END //

DELIMITER ;


--Lógica requerida para solamente poner los nombres
DELIMITER //
CREATE PROCEDURE TEST(IN stationName1 VARCHAR(50), IN stationName2 VARCHAR(50), IN itsInKilometers BOOLEAN)
BEGIN
    DECLARE response FLOAT;
    SET response = (
        SELECT ST_Distance_Sphere(
            (
                SELECT `locations`.`location`
                FROM `locations`
                INNER JOIN `stations`
                ON `stations`.`id` = `locations`.`station_id`
                WHERE `stations`.`name` COLLATE utf8mb4_unicode_ci = stationName1
            ),
             (
                SELECT `locations`.`location`
                FROM `locations`
                INNER JOIN `stations`
                ON `stations`.`id` = `locations`.`station_id`
                WHERE `stations`.`name` COLLATE utf8mb4_unicode_ci = stationName2
             )
        ) AS distances
    );
    IF itsInKilometers THEN
        SET response = (response/1000);
    END IF;
    SELECT response;
END //