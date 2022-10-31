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
-- -----------------------------------------------------
-- Schema publications
-- -----------------------------------------------------
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `VIN` VARCHAR(25) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`VIN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `customer_ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone_number` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state/province` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`customer_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salespersons` (
  `staff_ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staff_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
  `invoice_ID` INT NOT NULL,
  `invoice_number` INT NOT NULL,
  `date` DATE NOT NULL,
  `Cars_VIN` VARCHAR(25) NOT NULL,
  `Customers_customer_ID` INT NOT NULL,
  `Salespersons_staff_ID` INT NOT NULL,
  PRIMARY KEY (`invoice_ID`),
  INDEX `fk_Invoices_Cars1_idx` (`Cars_VIN` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_customer_ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_staff_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`Cars_VIN`)
    REFERENCES `mydb`.`Cars` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_customer_ID`)
    REFERENCES `mydb`.`Customers` (`customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_staff_ID`)
    REFERENCES `mydb`.`Salespersons` (`staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
