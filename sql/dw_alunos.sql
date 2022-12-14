-- MySQL Script generated by MySQL Workbench
-- Fri Dec  2 20:49:14 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dw_alunos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dw_alunos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dw_alunos` DEFAULT CHARACTER SET utf8 ;
USE `dw_alunos` ;

-- -----------------------------------------------------
-- Table `dw_alunos`.`dim_etnia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dw_alunos`.`dim_etnia` ;

CREATE TABLE IF NOT EXISTS `dw_alunos`.`dim_etnia` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_origin` INT NOT NULL,
  `desc_etnia` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_origin_UNIQUE` (`id_origin` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dw_alunos`.`dim_genero`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dw_alunos`.`dim_genero` ;

CREATE TABLE IF NOT EXISTS `dw_alunos`.`dim_genero` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sexo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dw_alunos`.`dim_renda`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dw_alunos`.`dim_renda` ;

CREATE TABLE IF NOT EXISTS `dw_alunos`.`dim_renda` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_origin` INT NOT NULL,
  `desc_renda` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_origin_UNIQUE` (`id_origin` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dw_alunos`.`dim_escola_origem`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dw_alunos`.`dim_escola_origem` ;

CREATE TABLE IF NOT EXISTS `dw_alunos`.`dim_escola_origem` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_origin` INT NOT NULL,
  `dec_origem` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_origin_UNIQUE` (`id_origin` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dw_alunos`.`dim_naturalidade`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dw_alunos`.`dim_naturalidade` ;

CREATE TABLE IF NOT EXISTS `dw_alunos`.`dim_naturalidade` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_origin` INT NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_origin_UNIQUE` (`id_origin` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dw_alunos`.`dim_situacao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dw_alunos`.`dim_situacao` ;

CREATE TABLE IF NOT EXISTS `dw_alunos`.`dim_situacao` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_origin` INT NOT NULL,
  `desc_situacao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_origin_UNIQUE` (`id_origin` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dw_alunos`.`dim_faixa_etaria`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dw_alunos`.`dim_faixa_etaria` ;

CREATE TABLE IF NOT EXISTS `dw_alunos`.`dim_faixa_etaria` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data_nascimento` DATE NULL,
  `desc_faixa_etaria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dw_alunos`.`fato01`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dw_alunos`.`fato01` ;

use  dw_alunos;

CREATE TABLE fato01 (
	id bigint,
        cpf varchar(255),
        etnia varchar(255),
        genero varchar(1),
    	renda varchar(255),
	escola_origem varchar(255),
	estado varchar(255),
    	cidade varchar(255),
	faixa_etaria varchar(255),
	matricula_situacao varchar(255)
);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
