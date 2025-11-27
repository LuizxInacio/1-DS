DROP DATABASE IF EXISTS NARUTO;
CREATE DATABASE NARUTO;

USE NARUTO;

CREATE TABLE Aldeia (
    Id_vila      INT AUTO_INCREMENT PRIMARY KEY,
    Nome         VARCHAR(20) NOT NULL,
    Pais         VARCHAR(25) NOT NULL,
    Localizacao  VARCHAR(20) NOT NULL,
    Lider        VARCHAR(20) NOT NULL,
    Fundacao     VARCHAR(20) NOT NULL
);

CREATE TABLE Ninja (
    Id_ninja     INT AUTO_INCREMENT PRIMARY KEY,
    Nome         VARCHAR(20)  NOT NULL,
    Graduacao    VARCHAR(20)  NOT NULL,
    Habilidades  VARCHAR(20)  NOT NULL,
    Id_vila      INT          NOT NULL,
    FOREIGN KEY (Id_vila) REFERENCES Aldeia(Id_vila)
);

CREATE TABLE Missao (
    Id_missao    INT AUTO_INCREMENT PRIMARY KEY,
    Nome         VARCHAR(20)   NOT NULL,
    Descricao    VARCHAR(100)  NOT NULL,
    Recompensa   VARCHAR(20)   NOT NULL
);

CREATE TABLE Jutsu (
    Id_jutsu     INT AUTO_INCREMENT PRIMARY KEY,
    Nome         VARCHAR(20)   NOT NULL,
    Descricao    VARCHAR(100)  NOT NULL,
    Elemento     VARCHAR(20)   NOT NULL
);

CREATE TABLE Participar (
    IdParticiparMissao  INT AUTO_INCREMENT PRIMARY KEY,
    Dificuldade         VARCHAR(10)  NOT NULL,
    Id_missao           INT          NOT NULL,
    Id_ninja            INT          NOT NULL,
    FOREIGN KEY (Id_missao) REFERENCES Missao(Id_missao),
    FOREIGN KEY (Id_ninja)  REFERENCES Ninja(Id_ninja)
);

CREATE TABLE Habilitar (
    Id_habilitar  INT AUTO_INCREMENT PRIMARY KEY,
    Dominio       VARCHAR(10)  NOT NULL,
    Id_ninja      INT          NOT NULL,
    Id_jutsu      INT          NOT NULL,
    FOREIGN KEY (Id_ninja) REFERENCES Ninja(Id_ninja),
    FOREIGN KEY (Id_jutsu) REFERENCES Jutsu(Id_jutsu)
);