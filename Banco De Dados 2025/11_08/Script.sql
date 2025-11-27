CREATE TABLE FUNCIONÁRIO (
	id_func 		int 		PRIMARY KEY NOT NULL ,
	nome_func 		varchar(50) NOT NULL ,
	telefone 		varchar(15) NOT NULL ,
	email 			varchar(50) NOT NULL
);

CREATE TABLE PROJETOS (
	nome_proj 		varchar(100) NOT NULL,
	local_proj 		varchar(100) NOT NULL ,
	id_proj 		int 		PRIMARY KEY NOT NULL
);

CREATE TABLE TRABALHAR (
	horas_trab 		int, 
	id_proj 		int, --CHAVE ESTRANGEIRA
	id_func 		int, --CHAVE ESTRANGEIRA
	PRIMARY KEY	(id_proj,id_func), --CHAVE PRIMÁRIA COMPOSTA
	FOREIGN KEY	(id_proj) REFERENCES PROJETOS (id_proj),
	FOREIGN KEY (id_func) REFERENCES FUNCIONÁRIO (id_func)
);
