-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Car_sales
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Car_sales
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Car_sales` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `Car_sales` ;

-- -----------------------------------------------------
-- Table `Car_sales`.`CAR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_sales`.`CAR` (
  `idCar` INT NOT NULL,
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` INT NOT NULL,
  `Color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCar`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Car_sales`.`COSTUMER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_sales`.`COSTUMER` (
  `idCOSTUMER_copy1` INT NOT NULL,
  `CostumerID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Phone` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Adress` VARCHAR(50) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `StateProvince` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `ZipPostal` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCOSTUMER_copy1`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Car_sales`.`SALESPERSON`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_sales`.`SALESPERSON` (
  `idSALESPERSON_copy1` INT NOT NULL,
  `StaffID` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSALESPERSON_copy1`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Car_sales`.`INVOICES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_sales`.`INVOICES` (
  `idINVOICES` INT NOT NULL,
  `InvoiceNumber` INT NOT NULL,
  `Date` DATETIME NOT NULL,
  `COSTUMER_idCOSTUMER` INT NOT NULL,
  `CAR_idCar` INT NOT NULL,
  `SALESPERSON_idSALESPERSON` INT NOT NULL,
  PRIMARY KEY (`idINVOICES`, `COSTUMER_idCOSTUMER`, `CAR_idCar`, `SALESPERSON_idSALESPERSON`),
  INDEX `fk_INVOICES_COSTUMER_idx` (`COSTUMER_idCOSTUMER` ASC) VISIBLE,
  INDEX `fk_INVOICES_CAR1_idx` (`CAR_idCar` ASC) VISIBLE,
  INDEX `fk_INVOICES_SALESPERSON1_idx` (`SALESPERSON_idSALESPERSON` ASC) VISIBLE,
  CONSTRAINT `fk_INVOICES_COSTUMER`
    FOREIGN KEY (`COSTUMER_idCOSTUMER`)
    REFERENCES `Car_sales`.`COSTUMER` (`CostumerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_INVOICES_CAR1`
    FOREIGN KEY (`CAR_idCar`)
    REFERENCES `Car_sales`.`CAR` (`idCar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_INVOICES_SALESPERSON1`
    FOREIGN KEY (`SALESPERSON_idSALESPERSON`)
    REFERENCES `Car_sales`.`SALESPERSON` (`StaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;