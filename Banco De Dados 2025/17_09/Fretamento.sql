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
CREATE SCHEMA IF NOT EXISTS `Fretamento` DEFAULT CHARACTER SET utf8 ;
USE `Fretamento` ;

-- -----------------------------------------------------
-- Table `mydb`.`Motorista`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Fretamento`.`Motorista` (
  `Id` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Telefone` VARCHAR(15) NOT NULL,
  `CPF` VARCHAR(14) NOT NULL,
  `Cidade` VARCHAR(45) NOT NULL,
  `Endereco` VARCHAR(35) NOT NULL,
  `Estado` CHAR(3) NOT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Veiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Fretamento`.`Veiculo` (
  `Id` INT NOT NULL,
  `Placa` VARCHAR(7) NOT NULL,
  `Modelo` VARCHAR(35) NOT NULL,
  `Cor` VARCHAR(20) NOT NULL,
  `Ano` INT NOT NULL,
  `Motorista_Id` INT NOT NULL,
  PRIMARY KEY (`Id`, `Ano`, `Motorista_Id`),
  INDEX `fk_Veiculo_Motorista_idx` (`Motorista_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Veiculo_Motorista`
    FOREIGN KEY (`Motorista_Id`)
    REFERENCES `Fretamento`.`Motorista` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Fretamento`.`Cliente` (
  `Id` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Telefone` VARCHAR(15) NOT NULL,
  `Cidade` VARCHAR(30) NOT NULL,
  `Endereco` VARCHAR(50) NOT NULL,
  `Estado` CHAR(2) NOT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Viagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Fretamento`.`Viagem` (
  `Id` INT NOT NULL,
  `Data` DATE NOT NULL,
  `Valor` FLOAT NOT NULL,
  `Origem` VARCHAR(45) NOT NULL,
  `Destino` VARCHAR(45) NOT NULL,
  `Viagemcol` VARCHAR(45) NULL,
  `Motorista_Id` INT NOT NULL,
  `Cliente_Id` INT NOT NULL,
  PRIMARY KEY (`Id`, `Motorista_Id`, `Cliente_Id`),
  INDEX `fk_Viagem_Motorista1_idx` (`Motorista_Id` ASC) VISIBLE,
  INDEX `fk_Viagem_Cliente1_idx` (`Cliente_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Viagem_Motorista1`
    FOREIGN KEY (`Motorista_Id`)
    REFERENCES `mydb`.`Motorista` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Viagem_Cliente1`
    FOREIGN KEY (`Cliente_Id`)
    REFERENCES `mydb`.`Cliente` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
