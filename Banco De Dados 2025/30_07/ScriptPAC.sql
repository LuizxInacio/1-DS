CREATE TABLE PACIENTES (
	NumPacientes 		INT PRIMARY KEY,
	Nome 				VarChar(520),
	DataNasc 			Date,
	Sexo 				VarChar(10),
	Convênio 			VarChar(20),
	EstadoCívil 		VarChar(20),
	RG 					VarChar(15),
	Telefone 			VarChar(20),
	Endereço 			VarChar(35)
);

CREATE TABLE CONSULTA (
	CrmMédico 			INT,
	NumConsulta 		INT,
	Horário 			VarChar(15),
	Diagnóstico 		VarChar(35),
	Data 				Date,
	NumPacientes 		INT, -- CHAVE ESTRANGEIRA
	CRM 				INT, -- CHAVE ESTRANGEIRA
	FOREIGN KEY(NumPacientes) REFERENCES MEDICO (CrmMédico),
	FOREIGN KEY(crmmedico) REFERENCES MEDICO (CrmMédico)
);

CREATE TABLE MÉDICOS (
	CRM 			INT PRIMARY KEY,
	Nome 			VarChar(50),
	Especialidade 	VarChar(20),
	Telefone 		VarChar(20)
);

CREATE TABLE EXAME (
	IdExame 		INT PRIMARY KEY,
	Descrição 		VarChar(50)
);

CREATE TABLE REALIZAR (
	Data_Exame 		Date,
	NumConsulta 	INT,
	IdExame 		INT,
	PRIMARY KEY(NumConsulta,IdExame),
	PRIMARY KEY (idExame, numConsulta), chave primaria composta FOREIGN KEY (idExame) REFERENCES EXAME (idExame),
	FOREIGN KEY (numConsulta) REFERENCES CONSULTA (numConsulta),
);