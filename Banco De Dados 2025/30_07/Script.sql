CREATE TABLE CARGOS (
	IdCargos 		int PRIMARY KEY,
	nome			varchar(50),
	dataInicio 		date,
	dataFim 		date
);

CREATE TABLE DEPENDENTES (
	nome 			var(50),
	dataNasc 		date,
	IdDependentes  	int PRIMARY KEY,
	matricula 		var(50)
);

CREATE TABLE FUNCIONÁRIO (
	nome 				var(50),
	dataNasc 			date,
	nacionalidade 		var(20),
	sexo 				var(10),
	CPF 				var(20),
	estadoCivil 		var(10),
	RG 					var(20),
	estado 				var(2),
	matricula 			var(50) PRIMARY KEY,
	cidade 				var(35),
	dataAdmissao 		date,
	telefone 			char(50),
	endereço 			var(100)
);

CREATE TABLE POSSUIR (
	matricula 		int, -- CHAVE ESTRANGEIRA	
	IdCargos 		int, -- CHAVE ESTRANGEIRA
	PRIMARY KEY(matricula,IdCargos), -- CHAVE PRIMÁRIA COMPOSTA
	FOREIGN KEY(matricula, IsCargos) REFERENCES FUNCIONARIO(matricula),
	FOREIGN KEY(IdCargos)            REFERENCES CARGO(IdCargos)
);
