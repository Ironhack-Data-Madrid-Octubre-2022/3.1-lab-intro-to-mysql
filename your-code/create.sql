-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema CARS
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema CARS
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `CARS` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `CARS` ;

-- -----------------------------------------------------
-- Table `CARS`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CARS`.`cars` (
  `idcars` INT NOT NULL,
  `VIN` VARCHAR(45) NULL,
  `manufacturer` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` YEAR(4) NULL,
  `color` VARCHAR(45) NULL,
  PRIMARY KEY (`idcars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CARS`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CARS`.`customers` (
  `idcustomers` INT NOT NULL,
  `customer ID` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `phone number` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state/province` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip/postal code` INT NULL,
  PRIMARY KEY (`idcustomers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CARS`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CARS`.`salesperson` (
  `idsalesperson` INT NOT NULL,
  `staff ID` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `store` VARCHAR(45) NULL,
  PRIMARY KEY (`idsalesperson`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CARS`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CARS`.`invoices` (
  `idinvoices` INT NOT NULL,
  `invoice number` INT NULL,
  `date` DATE NULL,
  `car` INT NULL,
  `customer` INT NULL,
  `sales person` INT NULL,
  `salesperson_idsalesperson` INT NOT NULL,
  `cars_idcars` INT NOT NULL,
  `customers_idcustomers` INT NOT NULL,
  PRIMARY KEY (`idinvoices`, `salesperson_idsalesperson`, `cars_idcars`, `customers_idcustomers`),
  INDEX `fk_invoices_salesperson_idx` (`salesperson_idsalesperson` ASC) VISIBLE,
  INDEX `fk_invoices_cars1_idx` (`cars_idcars` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_idcustomers` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_salesperson`
    FOREIGN KEY (`salesperson_idsalesperson`)
    REFERENCES `CARS`.`salesperson` (`idsalesperson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`cars_idcars`)
    REFERENCES `CARS`.`cars` (`idcars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_idcustomers`)
    REFERENCES `CARS`.`customers` (`idcustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;