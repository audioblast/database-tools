CREATE VIEW `audioblast`.`recordings-taxa`
AS
SELECT 
	`recordings`.`source` AS `source`,
    `recordings`.`id` AS `id`,
    `recordings`.`Title` AS `Title`,
    `recordings`.`taxon` AS `taxon`,
    `recordings`.`file` AS `file`,
    `recordings`.`author` AS `author`,
    `recordings`.`post_date` AS `post_date`,
    `recordings`.`size` AS `size`,
    `recordings`.`size_raw` AS `size_raw`,
    `recordings`.`type` AS `type`,
    `recordings`.`NonSpecimen` AS `NonSpecimen`,
    `recordings`.`Date` AS `Date`,
    `recordings`.`Time` AS `Time`,
    `recordings`.`Duration` AS `Duration`,
    `taxa`.`Rank` AS `Rank`,
    `taxa`.`Species` AS `Species`,
    `taxa`.`Genus` AS `Genus`,
    `taxa`.`Tribe` AS `Tribe`,
    `taxa`.`Family` AS `Family`,
    `taxa`.`Order` AS `Order`,
    `taxa`.`Subspecies` AS `Subspecies`,
    `taxa`.`Infraorder` AS `Infraorder`,
    `taxa`.`Subfamily` AS `Subfamily`,
    `taxa`.`Superfamily` AS `Superfamily`,
    `taxa`.`Class` AS `Class`,
    `taxa`.`Kingdom` AS `Kingdom`,
    `taxa`.`Subtribe` AS `Subtribe`,
    `taxa`.`Subgenus` AS `Subgenus`,
    `taxa`.`Subkingdom` AS `Subkingdom`,
    `taxa`.`Suborder` AS `Suborder`,
    `taxa`.`Phylum` AS `Phylum`,
    `taxa`.`Subphylum` AS `Subphylum`
FROM `audioblast`.`recordings` 
INNER JOIN `audioblast`.`taxa` 
ON `audioblast`.`recordings`.`taxon` = `audioblast`.`taxa`.`taxon`
