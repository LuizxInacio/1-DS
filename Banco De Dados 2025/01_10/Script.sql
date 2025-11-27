CREATE TABLE CLIENTE (
	CodCliente 		INT 		PRIMARY KEY auto_increment NOT NULL, -- chave primária
	RG 				Varchar(9) 	NOT NULL,
	nome 			Varchar(50) NOT NULL,
	CPF 			Varchar(12) NOT NULL,
	Nascimento 		Date 		NOT NULL,
);

CREATE TABLE VENDA (
	codVenda 		INT 	PRIMARY KEY auto_increment NOT NULL, -- chave primária
	data 			date 	NOT NULL,
	CodCliente 		INT 	NOT NULL, -- chave estrangeira
	codFuncionario 	INT 	NOT NULL, -- chave estrangeira
	FOREIGN KEY(CodCliente) REFERENCES CLIENTE (CodCliente)
);

CREATE TABLE ITENS_VENDA (
	codItensVenda 		INT 		PRIMARY KEY auto_increment NOT NULL, -- chave primária
	quantidade 			varchar(45) NOT NULL,
	valorUnitario		decimal 	NOT NULL,
	codVenda 			INT 		NOT NULL, -- chave estrangeira
	codProduto 			INT 		NOT NULL, -- chave estrangeira
	FOREIGN KEY(codVenda) REFERENCES VENDA (codVenda)
);

CREATE TABLE FUNCIONARIO (
	codFuncionario 		INT 		PRIMARY KEY  auto_increment NOT NULL, -- chave primária
	salarioFixo 		decimal 	NOT NULL,
	nome 				varchar(50) NOT NULL,
	percentualComissao 	decimal 	NULL
	FOREIGN KEY(codFuncionario) REFERENCES FUNCIONARIO (codFuncionario)
);

CREATE TABLE PRODUTO (
	codProduto 			INT 		PRIMARY KEY  auto_increment NOT NULL, -- chave primária
	valor 				decimal 	NOT NULL,
	descricao 			varchar(45) NOT NULL
	FOREIGN KEY(codProduto) REFERENCES PRODUTO (codProduto)
);