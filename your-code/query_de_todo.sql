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

insert into cars values (0,'3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue');
insert into cars values (1,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red');
insert into cars values (2,'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White');
insert into cars values (3,'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver');
insert into cars values (4,'DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray');
insert into cars values (5,'DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');

insert into customers values (0,10001,'Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera 14','Madrid','Madrid','Spain',28045);
insert into customers values (1,20001,'Hedy Lamarr','+43 1 514442250','-','Weiglgasse 10','Viena','Vienna','Austria',1150);
insert into customers values (2,30001,'Katherine Johnson','+1 202 358 0000','-','300 E St SW','Washington,DC','Washington','United States',20546);

insert into salesperson values (0,00001,'Petey Cruiser','Madrid');
insert into salesperson values (1,00002,'Anna Sthesia','Barcelona');
insert into salesperson values (2,00003,'Paul Molive','Berlin');
insert into salesperson values (3,00004,'Gail Forcewind','Paris');
insert into salesperson values (4,00005,'Paige Turner','Mimia');
insert into salesperson values (5,00006,'Bob Frapples','Mexico City');
insert into salesperson values (6,00007,'Walter Melon','Amsterdam');
insert into salesperson values (7,00008,'Shonda Leer','São Paulo');

insert into invoices values (0,852399038,'2018-08-22',0,1,3,0,1,2);
insert into invoices values (1,731166526,'2018-12-31',3,0,5,0,1,2);
insert into invoices values (2,271135104,'2019-01-22',2,2,7,0,1,2);

