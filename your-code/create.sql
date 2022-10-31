-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Ford
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Ford
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Ford` DEFAULT CHARACTER SET utf8mb3 ;
USE `Ford` ;

-- -----------------------------------------------------
-- Table `Ford`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ford`.`Cars` (
  `VIN` VARCHAR(25) NOT NULL,
  `Manufacturer` VARCHAR(20) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` YEAR NULL,
  `Color` VARCHAR(15) NULL,
  PRIMARY KEY (`VIN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ford`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ford`.`Customer` (
  `ID Customer` VARCHAR(5) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Phone` VARCHAR(15) NULL,
  `Email` VARCHAR(25) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(25) NULL,
  `State/Province` VARCHAR(25) NULL,
  `Country` VARCHAR(25) NULL,
  `Postal` VARCHAR(15) NULL,
  PRIMARY KEY (`ID Customer`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ford`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ford`.`Salespersons` (
  `Staff ID` VARCHAR(10) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Staff ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ford`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ford`.`Invoices` (
  `Invoice Number` VARCHAR(10) NOT NULL,
  `Date` DATE NOT NULL,
  `Cars_VIN` VARCHAR(25) NOT NULL,
  `Customer_ID Customer` VARCHAR(5) NOT NULL,
  `Salespersons_Staff ID` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`Invoice Number`, `Cars_VIN`, `Customer_ID Customer`, `Salespersons_Staff ID`),
  INDEX `fk_Invoices_Cars_idx` (`Cars_VIN` ASC) VISIBLE,
  INDEX `fk_Invoices_Customer1_idx` (`Customer_ID Customer` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_Staff ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars`
    FOREIGN KEY (`Cars_VIN`)
    REFERENCES `mydb`.`Cars` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customer1`
    FOREIGN KEY (`Customer_ID Customer`)
    REFERENCES `mydb`.`Customer` (`ID Customer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_Staff ID`)
    REFERENCES `mydb`.`Salespersons` (`Staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


