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
CREATE SCHEMA IF NOT EXISTS `cidadeEstado` DEFAULT CHARACTER SET utf8 ;
USE `cidadeEstado` ;

-- -----------------------------------------------------
-- Table `mydb`.`estados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cidadeEstado`.`estados` (
  `id` 		INT NOT NULL AUTO_INCREMENT,
  `nome` 	VARCHAR(50) NOT NULL,
  `sigla` 	CHAR(2) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cidadeEstado`.`cidades` (
  `id` 			INT NOT NULL AUTO_INCREMENT,
  `nome` 		VARCHAR(50) NOT NULL,
  `estados_id` 	INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cidades_estados_idx` (`estados_id` ASC),
  CONSTRAINT `fk_cidades_estados`
    FOREIGN KEY (`estados_id`)
    REFERENCES `cidadeEstado`.`estados` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`pessoas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cidadeEstado`.`pessoas` (
  `id` 			INT NOT NULL AUTO_INCREMENT,
  `nome` 		VARCHAR(50) NOT NULL,
  `rg`			VARCHAR(15) NOT NULL,
  `cpf` 		VARCHAR(15) NOT NULL,
  `rua` 		VARCHAR(30) NULL,
  `bairro` 		VARCHAR(30) NULL,
  `telefone` 	VARCHAR(15) NULL,
  `cep`			VARCHAR(9) NULL,
  `cidades_id` 	INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pessoas_cidades_idx` (`cidades_id` ASC),
  CONSTRAINT `fk_pessoas_cidades1` FOREIGN KEY (`cidades_id`)
    REFERENCES `cidadeEstado`.`cidades` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
