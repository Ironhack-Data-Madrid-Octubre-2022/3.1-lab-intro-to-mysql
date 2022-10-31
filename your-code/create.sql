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
  `VIN` VARCHAR(20) NULL DEFAULT NULL,
  `manufacturer` VARCHAR(45) NULL DEFAULT NULL,
  `model` VARCHAR(45) NULL DEFAULT NULL,
  `year` YEAR NULL DEFAULT NULL,
  `color` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cars`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`customers` (
  `id` INT NOT NULL,
  `customer_ID` VARCHAR(20) NULL DEFAULT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `PHONE_NUMBER` VARCHAR(40) NULL DEFAULT NULL,
  `e-mail` VARCHAR(45) NULL DEFAULT NULL,
  `adress` VARCHAR(45) NULL DEFAULT NULL,
  `city` VARCHAR(45) NULL DEFAULT NULL,
  `state_or_province` VARCHAR(45) NULL DEFAULT NULL,
  `country` VARCHAR(20) NULL DEFAULT NULL,
  `postal_code` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cars`.`sales_persons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`sales_persons` (
  `id` INT NOT NULL,
  `staff_id` VARCHAR(20) NULL DEFAULT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `store` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cars`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`invoices` (
  `id` INT NOT NULL,
  `invoice_id` VARCHAR(20) NULL DEFAULT NULL,
  `invoice_number` VARCHAR(45) NULL DEFAULT NULL,
  `date` DATETIME NULL DEFAULT NULL,
  `sales_persons_id` INT NULL DEFAULT NULL,
  `customers_id` INT NULL DEFAULT NULL,
  `cars_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_invoices_sales_persons1_idx` (`sales_persons_id` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_id` ASC) VISIBLE,
  INDEX `fk_invoices_cars1_idx` (`cars_id` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_id`)
    REFERENCES `cars`.`customers` (`id`),
  CONSTRAINT `fk_invoices_sales_persons1`
    FOREIGN KEY (`sales_persons_id`)
    REFERENCES `cars`.`sales_persons` (`id`),
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
