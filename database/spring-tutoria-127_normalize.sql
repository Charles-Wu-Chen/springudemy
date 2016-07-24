-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema springtest
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema springtest
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `springtest` DEFAULT CHARACTER SET utf8 ;
USE `springtest` ;

-- -----------------------------------------------------
-- Table `springtest`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `springtest`.`users` ;

CREATE TABLE IF NOT EXISTS `springtest`.`users` (
  `username` VARCHAR(60) NOT NULL,
  `name` VARCHAR(60) NOT NULL,
  `authority` VARCHAR(45) NULL,
  `password` VARCHAR(100) NULL DEFAULT NULL,
  `email` VARCHAR(60) NULL DEFAULT NULL,
  `enabled` TINYINT(1) NULL DEFAULT '1',
  PRIMARY KEY (`username`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `springtest`.`offers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `springtest`.`offers` ;

CREATE TABLE IF NOT EXISTS `springtest`.`offers` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `text` TEXT NOT NULL,
  `username` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id`, `username`),
  INDEX `fk_offers_users_idx` (`username` ASC),
  CONSTRAINT `fk_offers_users`
    FOREIGN KEY (`username`)
    REFERENCES `springtest`.`users` (`username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
