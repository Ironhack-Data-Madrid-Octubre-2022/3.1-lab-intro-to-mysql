-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema negocio
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema negocio
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `negocio` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `negocio` ;

-- -----------------------------------------------------
-- Table `negocio`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `negocio`.`cars` (
  `id` INT NOT NULL,
  `VIN` VARCHAR(40) NOT NULL,
  `manufacturer` VARCHAR(40) NOT NULL,
  `model` VARCHAR(40) NOT NULL,
  `year` INT NULL DEFAULT NULL,
  `color` VARCHAR(40) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `negocio`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `negocio`.`customers` (
  `id` INT NOT NULL,
  `DI` VARCHAR(40) NOT NULL,
  `name` VARCHAR(40) NOT NULL,
  `phonenumber` VARCHAR(40) NOT NULL,
  `email` VARCHAR(40) NOT NULL,
  `address` VARCHAR(30) NOT NULL,
  `city` VARCHAR(30) NOT NULL,
  `province` VARCHAR(40) NOT NULL,
  `country` VARCHAR(40) NOT NULL,
  `postalcode` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `negocio`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `negocio`.`salespersons` (
  `id` INT NOT NULL,
  `staffID` VARCHAR(35) NOT NULL,
  `name` VARCHAR(40) NOT NULL,
  `store` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `negocio`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `negocio`.`invoices` (
  `id` INT NOT NULL,
  `invoiceID` VARCHAR(20) NOT NULL,
  `invoicenumber` VARCHAR(20) NOT NULL,
  `date` DATE NULL DEFAULT NULL,
  `car` VARCHAR(30) NOT NULL,
  `customer` VARCHAR(30) NULL DEFAULT NULL,
  `salesperson` INT NULL DEFAULT NULL,
  `cars_id` INT NOT NULL,
  `salespersons_id` INT NOT NULL,
  `customers_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_invoices_cars1_idx` (`cars_id` ASC) VISIBLE,
  INDEX `fk_invoices_salespersons1_idx` (`salespersons_id` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_id` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`cars_id`)
    REFERENCES `negocio`.`cars` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`salespersons_id`)
    REFERENCES `negocio`.`salespersons` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_id`)
    REFERENCES `negocio`.`customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
