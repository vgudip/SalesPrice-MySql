-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ProductSales
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ProductSales
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ProductSales` DEFAULT CHARACTER SET utf8 ;
USE `ProductSales` ;

-- -----------------------------------------------------
-- Table `ProductSales`.`Productdetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProductSales`.`Productdetails` (
  `ID` INT NOT NULL,
  `PRODUCTCODE` VARCHAR(50) NULL,
  `PRODUCTLINE` VARCHAR(50) NULL,
  `MSRP` INT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProductSales`.`Orderdetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProductSales`.`Orderdetails` (
  `ID` INT NOT NULL,
  `ORDERNUMBER` INT NULL,
  `QUANTITYORDERED` INT NULL,
  `PRICEEACH` DECIMAL NULL,
  `ORDERLINENUMBER` INT NULL,
  `ORDERDATE` DATE NULL,
  `SALES` DECIMAL NULL,
  `DEALSIZE` CHAR(50) NULL,
  `QTR_ID` INT NULL,
  `MONTH_ID` INT NULL,
  `YEAR_ID` INT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProductSales`.`COUNTRIES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProductSales`.`COUNTRIES` (
  `ID` INT NOT NULL,
  `COUNTRY` VARCHAR(50) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProductSales`.`TERRITORIES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProductSales`.`TERRITORIES` (
  `ID` INT NOT NULL,
  `TERRITORY` VARCHAR(50) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProductSales`.`STATUSDETAILS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProductSales`.`STATUSDETAILS` (
  `ID` INT NOT NULL,
  `STATUS` CHAR(50) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProductSales`.`Customerdetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProductSales`.`Customerdetails` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `ADDRESSLINE1` VARCHAR(50) NOT NULL,
  `Addressline2` VARCHAR(50) NOT NULL,
  `CITY` VARCHAR(50) NOT NULL,
  `STATE` VARCHAR(50) NOT NULL,
  `POSTALCODE` VARCHAR(50) NOT NULL,
  `CUSTOMERNAME` VARCHAR(50) NOT NULL,
  `PHONE` INT NOT NULL,
  `COUNTRY` VARCHAR(50) NOT NULL,
  `TERRITORY` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`ID`, `PHONE`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
