-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`CARS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CARS` (
  `idCARS` INT NOT NULL,
  `VIN` VARCHAR(45) NOT NULL,
  `MANUFACTURER` VARCHAR(45) NOT NULL,
  `MODEL` VARCHAR(45) NOT NULL,
  `YEAR` VARCHAR(45) NOT NULL,
  `COLOR` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCARS`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CUSTOMERS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CUSTOMERS` (
  `idCUSTOMERS` INT NOT NULL,
  `NAME` VARCHAR(45) NOT NULL,
  `EMAIL` VARCHAR(45) NOT NULL,
  `PHONE NUMBER` VARCHAR(45) NOT NULL,
  `ADRESS` VARCHAR(45) NOT NULL,
  `CITY` VARCHAR(45) NOT NULL,
  `PROVINCE` VARCHAR(45) NOT NULL,
  `COUNTRY` VARCHAR(45) NOT NULL,
  `ZIP CODE` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCUSTOMERS`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SALESPERSONS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SALESPERSONS` (
  `idSALESPERSONS` INT NOT NULL,
  `NAME` VARCHAR(45) NOT NULL,
  `STORE` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSALESPERSONS`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`INVOICES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`INVOICES` (
  `idINVOICES` INT NOT NULL,
  `DATE` VARCHAR(45) NOT NULL,
  `CARS_idCARS` INT NOT NULL,
  `CUSTOMERS_idCUSTOMERS` INT NOT NULL,
  `SALESPERSONS_idSALESPERSONS` INT NOT NULL,
  PRIMARY KEY (`idINVOICES`),
  INDEX `fk_INVOICES_CARS_idx` (`CARS_idCARS` ASC) VISIBLE,
  INDEX `fk_INVOICES_CUSTOMERS1_idx` (`CUSTOMERS_idCUSTOMERS` ASC) VISIBLE,
  INDEX `fk_INVOICES_SALESPERSONS1_idx` (`SALESPERSONS_idSALESPERSONS` ASC) VISIBLE,
  CONSTRAINT `fk_INVOICES_CARS`
    FOREIGN KEY (`CARS_idCARS`)
    REFERENCES `mydb`.`CARS` (`idCARS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_INVOICES_CUSTOMERS1`
    FOREIGN KEY (`CUSTOMERS_idCUSTOMERS`)
    REFERENCES `mydb`.`CUSTOMERS` (`idCUSTOMERS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_INVOICES_SALESPERSONS1`
    FOREIGN KEY (`SALESPERSONS_idSALESPERSONS`)
    REFERENCES `mydb`.`SALESPERSONS` (`idSALESPERSONS`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
