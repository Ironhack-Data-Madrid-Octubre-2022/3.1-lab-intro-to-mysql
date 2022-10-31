USE cars;
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
  `VIN` VARCHAR(17) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` DATETIME NOT NULL,
  `Color` VARCHAR(45) NOT NULL,
  `Salesperson_StaffID` INT NOT NULL,
  PRIMARY KEY (`VIN`, `Salesperson_StaffID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coches`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`Customers` (
  `Customer_ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Phone` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Zip` VARCHAR(45) NULL,
  `Salesperson_StaffID` INT NOT NULL,
  PRIMARY KEY (`Customer_ID`, `Salesperson_StaffID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coches`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`Salesperson` (
  `StaffID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`StaffID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `coches`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`Invoices` (
  `invoice_ID` INT NOT NULL,
  `Invoice_number` VARCHAR(45) NULL,
  `Date` VARCHAR(45) NULL,
  `Car` VARCHAR(45) NULL,
  `Customer` VARCHAR(45) NULL,
  `Salesperson` VARCHAR(45) NULL,
  `Customers_Customer_ID` INT NOT NULL,
  `Salesperson_StaffID` INT NOT NULL,
  `Cars_VIN` VARCHAR(17) NOT NULL,
  `Cars_Salesperson_StaffID` INT NOT NULL,
  `Customers_Customer_ID1` INT NOT NULL,
  `Customers_Salesperson_StaffID` INT NOT NULL,
  PRIMARY KEY (`invoice_ID`, `Customers_Customer_ID`, `Salesperson_StaffID`, `Cars_VIN`, `Cars_Salesperson_StaffID`, `Customers_Customer_ID1`, `Customers_Salesperson_StaffID`),
  INDEX `fk_Invoices_Salesperson1_idx` (`Salesperson_StaffID` ASC) VISIBLE,
  INDEX `fk_Invoices_Cars1_idx` (`Cars_VIN` ASC, `Cars_Salesperson_StaffID` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_Customer_ID1` ASC, `Customers_Salesperson_StaffID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Salesperson1`
    FOREIGN KEY (`Salesperson_StaffID`)
    REFERENCES `coches`.`Salesperson` (`StaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`Cars_VIN` , `Cars_Salesperson_StaffID`)
    REFERENCES `coches`.`Cars` (`VIN` , `Salesperson_StaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_Customer_ID1` , `Customers_Salesperson_StaffID`)
    REFERENCES `coches`.`Customers` (`Customer_ID` , `Salesperson_StaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
