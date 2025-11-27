


CREATE TABLE PROVA (
	idProva 	 int PRIMARY KEY,		NOT NULL,
	data 		 date,  				NOT NULL,
	descricao	 varchar(100) 			NOT NULL,
);

CREATE TABLE ALUNO (
	nome 			varchar(50), 		 NOT NULL,
	dataMatricula	date, 				 NOT NULL,
	numCartao 		int PRIMARY KEY,	 NOT NULL,
	CPF 			varchar(15) 		 NOT NULL,
);

CREATE TABLE QUESTÃO (
	idQuestao		 Texto(1) PRIMARY KEY, 			  NOT NULL,
	enunciado 		 varchar(255),					  NOT NULL,
	tipo			 varchar(50),  				   	  NOT NULL,
	opcoesQuestao	 varchar(50),					  NOT NULL,
	respostaCorreta	 varchar(50),					  NOT NULL,
	peso 			 int, 							  NOT NULL,
	pontuacao 		 decimal(10,2),					  NOT NULL,
	idProva 		 int,							  NOT NULL, --CHAVE ESTRANGEIRA
	FOREIGN KEY(idProva) REFERENCES PROVA (idProva)  
);

CREATE TABLE nota (
	idProva 		 int,			 NOT NULL,	--CHAVE ESTRANGEIRA
	nota			 int,			 NOT NULL,
	numCartao 			int,		 NOT NULL,	--CHAVE ESTRANGEIRA
	idNota Número(4) PRIMARY KEY,
	FOREIGN KEY(idProva) REFERENCES PROVA (idProva)/
);

