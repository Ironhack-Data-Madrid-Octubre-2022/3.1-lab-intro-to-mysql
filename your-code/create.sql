-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema coches
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema coches
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `coches` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `coches` ;

-- -----------------------------------------------------
-- Table `coches`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`Cars` (
  `CarsID` INT NOT NULL,
  `VIN` VARCHAR(17) NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` INT NULL,
  `Color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`CarsID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coches`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`Customers` (
  `ID` INT NOT NULL,
  `Customer_ID` INT NULL,
  `Name` VARCHAR(45) NULL,
  `Phone` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Zip` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coches`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`Salesperson` (
  `ID` INT NOT NULL,
  `StaffID` INT NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coches`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`Invoices` (
  `invoice_ID` INT NOT NULL,
  `Invoice_number` INT NULL,
  `Date` VARCHAR(45) NULL,
  `Cars_CarsID` INT NOT NULL,
  `Customers_ID` INT NOT NULL,
  `Salesperson_ID` INT NOT NULL,
  PRIMARY KEY (`invoice_ID`, `Cars_CarsID`, `Customers_ID`, `Salesperson_ID`),
  INDEX `fk_Invoices_Salesperson1_idx` (`Salesperson_ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Cars1_idx` (`Cars_CarsID` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Salesperson1`
    FOREIGN KEY (`Salesperson_ID`)
    REFERENCES `coches`.`Salesperson` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`Cars_CarsID`)
    REFERENCES `coches`.`Cars` (`CarsID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_ID`)
    REFERENCES `coches`.`Customers` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
