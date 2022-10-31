-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema car_dealership
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema car_dealership
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `car_dealership` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `car_dealership` ;

-- -----------------------------------------------------
-- Table `car_dealership`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`cars` (
  `idCars` INT NOT NULL,
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(20) NOT NULL,
  `Model` VARCHAR(20) NOT NULL,
  `Year` YEAR NOT NULL,
  `Colour` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`idCars`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `car_dealership`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`customers` (
  `idCustomers` INT NOT NULL,
  `Customer ID` VARCHAR(20) NOT NULL,
  `Name` VARCHAR(20) NOT NULL,
  `Phone number` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Adress` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `State/Province` VARCHAR(45) NOT NULL,
  `Zip code` CHAR(5) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCustomers`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `car_dealership`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`salespersons` (
  `idSalespersons` INT NOT NULL,
  `Staff ID` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSalespersons`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `car_dealership`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`invoices` (
  `idInvoices` INT NOT NULL,
  `Invoice ID` VARCHAR(45) NOT NULL,
  `Invoice Number` VARCHAR(45) NOT NULL,
  `Date` DATE NOT NULL,
  `Salespersons_idSalespersons` INT NOT NULL,
  `Customers_idCustomers` INT NOT NULL,
  `Cars_idCars` INT NOT NULL,
  PRIMARY KEY (`idInvoices`, `Salespersons_idSalespersons`, `Customers_idCustomers`, `Cars_idCars`),
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_idSalespersons` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_idCustomers` ASC) VISIBLE,
  INDEX `fk_Invoices_Cars1_idx` (`Cars_idCars` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`Cars_idCars`)
    REFERENCES `car_dealership`.`cars` (`idCars`),
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_idCustomers`)
    REFERENCES `car_dealership`.`customers` (`idCustomers`),
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_idSalespersons`)
    REFERENCES `car_dealership`.`salespersons` (`idSalespersons`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
