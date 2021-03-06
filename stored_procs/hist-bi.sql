CREATE PROCEDURE `hist-bi`(
    IN bincount INT UNSIGNED)
BEGIN
    SET @width := (SELECT MAX(CAST(`value` AS DECIMAL(18, 4))) FROM `audioblast`.`analysis-bi` WHERE `value` != '')/bincount; 
    SET @width := IF(@width < 1, 1, @width); 
    
    SELECT FLOOR(`value`/@width)*CAST(@width AS UNSIGNED) AS 'bin', COUNT(*) AS 'count' 
    FROM `audioblast`.`analysis-bi`
    WHERE `value` != '' 
    GROUP BY FLOOR(`bin` / @width)*CAST(@width AS UNSIGNED) 
    ORDER BY 1;
END
