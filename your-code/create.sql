-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema concesionario
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema concesionario
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `concesionario` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `concesionario` ;

-- -----------------------------------------------------
-- Table `concesionario`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionario`.`Cars` (
  `ID` INT NOT NULL,
  `VIN` CHAR(17) NULL,
  `Manufacturer` VARCHAR(25) NULL,
  `Model` VARCHAR(25) NULL,
  `Year` YEAR(4) NULL,
  `Color` VARCHAR(15) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `VIN_UNIQUE` (`VIN` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `concesionario`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionario`.`Customers` (
  `ID` INT NOT NULL,
  `Customer ID` INT NOT NULL,
  `Name` VARCHAR(30) NOT NULL,
  `Phone` VARCHAR(20) NULL,
  `Email` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(25) NULL,
  `State_Province` VARCHAR(25) NULL,
  `Country` VARCHAR(25) NULL,
  `Postal` VARCHAR(5) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `Customer ID_UNIQUE` (`Customer ID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `concesionario`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionario`.`Salespersons` (
  `ID` INT NOT NULL,
  `Staff_D` CHAR(5) NOT NULL,
  `Name` VARCHAR(30) NOT NULL,
  `Store` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `Staff ID_UNIQUE` (`Staff_D` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `concesionario`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionario`.`Invoices` (
  `ID` INT NOT NULL,
  `Invoice_Number` CHAR(9) NOT NULL,
  `Date` DATE NOT NULL,
  `Cars` INT NOT NULL,
  `Salespersons` INT NOT NULL,
  `Customers` INT NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `Invoice Number_UNIQUE` (`Invoice_Number` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers` ASC) VISIBLE,
  INDEX `fk_Invoices_Cars1_idx` (`Cars` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons`)
    REFERENCES `concesionario`.`Salespersons` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers`)
    REFERENCES `concesionario`.`Customers` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`Cars`)
    REFERENCES `concesionario`.`Cars` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
