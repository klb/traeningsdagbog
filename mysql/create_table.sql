DROP DATABASE `trainingdiary` ;

CREATE DATABASE `TrainingDiary` ;

CREATE TABLE `TrainingDiary`.`athlete` (
`aid` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`name` VARCHAR( 100 ) NOT NULL ,
`email` VARCHAR( 100 ) NOT NULL ,
`fitnessdk` INT NULL 
) ENGINE = InnoDB ;

CREATE TABLE `TrainingDiary`.`weight` (
`wid` INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'WeightID',
`aid` INT NOT NULL COMMENT 'AthleteID',
INDEX (aid),
FOREIGN KEY (`aid`) REFERENCES  `TrainingDiary`.`athlete` (`aid`) ON DELETE RESTRICT ON UPDATE CASCADE,
`wdate` DATE NOT NULL COMMENT 'Date',
`weight` DECIMAL (4,1) NOT NULL COMMENT 'Weight/kg',
`bodyfatpct` DECIMAL (3,1) NULL COMMENT 'Bodyfat/pct',
`bodyfatkg` DECIMAL (4,1) NULL COMMENT 'Bodyfat/kg',
`notfatkg` DECIMAL (4,1) NULL COMMENT 'Notfat/kg'
) ENGINE = InnoDB ;


/*
INSERT INTO `TrainingDiary`.`athlete` (
`aid`, `name`, `email`, `fitnessdk`)
VALUES (
NULL, 'Test testesen', 'test@testmail.com', NULL);

INSERT INTO `trainingdiary`.`weight` (
`wid` ,`aid` ,`wdate` ,`weight` ,`bodyfatpct` ,`bodyfatkg`,`notfatkg` )
VALUES (
NULL , '1', '2009-11-18', '75.9', '12', '9.1','66.8');

INSERT INTO `trainingdiary`.`weight` (
`wid` ,`aid` ,`wdate` ,`weight` ,`bodyfatpct` ,`bodyfatkg`,`notfatkg` )
VALUES (
NULL , '1', '2009-11-21', '102.4', '11', '11.3','91.1');

INSERT INTO `trainingdiary`.`weight` (
`wid` ,`aid` ,`wdate` ,`weight` ,`bodyfatpct` ,`bodyfatkg`,`notfatkg` )
VALUES (
NULL , '1', '2009-11-15', '77', '12.5', '9.6','67.4');

*/

