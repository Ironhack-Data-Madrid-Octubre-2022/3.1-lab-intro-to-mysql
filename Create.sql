-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema cars
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cars
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cars` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `cars` ;

-- -----------------------------------------------------
-- Table `cars`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`cars` (
  `id` INT NOT NULL,
  `vin` VARCHAR(20) NOT NULL,
  `manufacturer` VARCHAR(20) NOT NULL,
  `model` VARCHAR(20) NOT NULL,
  `year` YEAR NOT NULL,
  `color` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `ID_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cars`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`customers` (
  `id` INT NOT NULL,
  `customerid` VARCHAR(8) NULL DEFAULT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `phone` VARCHAR(20) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(30) NULL DEFAULT NULL,
  `country` VARCHAR(20) NULL DEFAULT NULL,
  `city` VARCHAR(20) NULL DEFAULT NULL,
  `state` VARCHAR(20) NULL DEFAULT NULL,
  `postal` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cars`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`salesperson` (
  `id` INT NOT NULL,
  `staffid` VARCHAR(45) NULL DEFAULT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `store` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cars`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`invoices` (
  `id` INT NOT NULL,
  `invoicenumber` INT NULL DEFAULT NULL,
  `date` VARCHAR(10) NULL DEFAULT NULL,
  `salesperson_id` INT NOT NULL,
  `customers_id` INT NOT NULL,
  `cars_id` INT NOT NULL,
  PRIMARY KEY (`id`, `salesperson_id`, `customers_id`, `cars_id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_invoices_salesperson_idx` (`salesperson_id` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_id` ASC) VISIBLE,
  INDEX `fk_invoices_cars1_idx` (`cars_id` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_salesperson`
    FOREIGN KEY (`salesperson_id`)
    REFERENCES `cars`.`salesperson` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_id`)
    REFERENCES `cars`.`customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`cars_id`)
    REFERENCES `cars`.`cars` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
