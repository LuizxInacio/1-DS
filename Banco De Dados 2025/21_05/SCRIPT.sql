-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE PESSOA (
	idPessoa 		integer PRIMARY KEY,
	email 			varchar(100),
	cpf 			varchar(15),
	nome 			Varchar(100),
	telefone 		varchar(15),
	dataNascimento	date,
);

CREATE TABLE PROFESSOR  (
	idPessoa 		integer, -- chave primária e estrangeira
	numContrato		integer,
	dataAdmissão 	date,
	AreaAtuacao 	Varchar(50),
	PRIMARY KEY(idPessoa,numContrato), -- chave primária composta
	FOREIGN KEY(idPessoa) REFERENCES PESSOA (idPessoa)
);

CREATE TABLE ALUNO (
	idPessoa 			integer,  -- chave primária e estrangeira
	numMatricula		integer,
	DataMatricula 		date,
	nomeResponsavel		Varchar(50),
	PRIMARY KEY(idPessoa,numMatricula),   -- chave primária composta
	FOREIGN KEY(idPessoa) REFERENCES PESSOA (idPessoa)
);

CREATE TABLE FUNCIONARIO (
	idPessoa 		integer PRIMARY KEY,  -- chave primária e estrangeira
	dataContrato 	date,
	setor 			varchar(50),
	funcao 			varchar(50),
	FOREIGN KEY(idPessoa) REFERENCES PESSOA (idPessoa)
);

 
