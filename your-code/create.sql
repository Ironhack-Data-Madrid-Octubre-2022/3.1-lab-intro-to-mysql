-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Car
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Car
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Car` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `Car` ;

-- -----------------------------------------------------
-- Table `Car`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car`.`cars` (
  `ID` INT NOT NULL,
  `VIN` VARCHAR(45) NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` YEAR NULL,
  `Color` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Car`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car`.`Customers` (
  `Id` INT NOT NULL,
  `CustomerID` VARCHAR(45) NULL,
  `Name` VARCHAR(45) NULL,
  `Phone` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Car`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car`.`Salespersons` (
  `ID` INT NOT NULL,
  `Staff ID` VARCHAR(45) NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Car`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car`.`Invoices` (
  `Id` INT NOT NULL,
  `Invoice Number` VARCHAR(45) NULL,
  `Date` VARCHAR(45) NULL,
  `cars_ID` INT NOT NULL,
  `Customers_Id` INT NOT NULL,
  `Salespersons_ID` INT NOT NULL,
  PRIMARY KEY (`Id`, `cars_ID`, `Customers_Id`, `Salespersons_ID`),
  INDEX `fk_Invoices_cars_idx` (`cars_ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_Id` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_cars`
    FOREIGN KEY (`cars_ID`)
    REFERENCES `Car`.`cars` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_Id`)
    REFERENCES `Car`.`Customers` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_ID`)
    REFERENCES `Car`.`Salespersons` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

