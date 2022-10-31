-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema LAB-CARS
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema LAB-CARS
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LAB-CARS` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `LAB-CARS` ;

-- -----------------------------------------------------
-- Table `LAB-CARS`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LAB-CARS`.`cars` (
  `ID` INT NOT NULL,
  `VIN` VARCHAR(45) NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` INT NULL,
  `Color` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LAB-CARS`.`sales person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LAB-CARS`.`salesperson` (
  `ID` INT NOT NULL,
  `Staff ID` VARCHAR(45) NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LAB-CARS`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LAB-CARS`.`customers` (
  `ID` INT NOT NULL,
  `Customer ID` VARCHAR(45) NULL,
  `Name` VARCHAR(45) NULL,
  `Phone` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Adress` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State/Province` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Postal` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LAB-CARS`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LAB-CARS`.`invoices` (
  `ID` INT NOT NULL,
  `Invoice Number` VARCHAR(45) NULL,
  `Date` DATE NULL,
  `cars_ID` INT NOT NULL,
  `salesperson_ID` INT NOT NULL,
  `customers_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `cars_ID`, `sales person_ID`, `customers_ID`),
  INDEX `fk_invoices_cars_idx` (`cars_ID` ASC) VISIBLE,
  INDEX `fk_invoices_salesperson1_idx` (`salesperson_ID` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_ID` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_cars`
    FOREIGN KEY (`cars_ID`)
    REFERENCES `LAB-CARS`.`cars` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salesperson1`
    FOREIGN KEY (`salesperson_ID`)
    REFERENCES `LAB-CARS`.`salesperson` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_ID`)
    REFERENCES `LAB-CARS`.`customers` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;




