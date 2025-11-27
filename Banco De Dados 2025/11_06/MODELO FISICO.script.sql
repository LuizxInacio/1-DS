-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cores (
	nome 		varchar(30),	NOT NULL
	taxaExtra 	decimal(9,2),	NOT NULL
	idCor 		int 			NOT NULL		PRIMARY KEY
)	FOREIGN KEY(idCor) REFERENCES Cores (idCor)
;

CREATE TABLE Cliente (
	IDCliente 		int 			NOT NULL	PRIMARY KEY,
	PrimeiroNome 	varchar(20) 	NOT NULL,
	sobrenome 		varchar(30) 	NOT NULL,
	idCor 			int 			NOT NULL, 	--CHAVE ESTRANGEIRA 
	FOREIGN KEY(idCor) REFERENCES Cores (idCor)
);

CREATE TABLE Categoria (
	nome 				 varchar(30) 	NOT NULL,
	idCategoria 		 int 			NOT NULL, PRIMARY KEY
	idCategoriaPrincipal int 			--CHAVE ESTRANGEIRA
	FOREIGN KEY (idCategoriaPrincipal) REFERENCES Categoria(idcategoria)
;

CREATE TABLE Confecção (
	idconfeccao 		int 		NOT NULL, 	PRIMARY KEY
	nome 				varchar(50) NOT NULL, 
	tamanho 			char(3)		NOT NULL  CHECK (tamanho in ('S','M','L','XL','2XL','3XL'),
	preco 				decimal(9,2)NOT NULL,
	idCor 				int, 		NOT NULL, --CHAVE ESTRANGEIRA
	idCategoria 		int 		NOT NULL, --CHAVE ESTRANGEIRA
	FOREIGN KEY(idconfeccao) REFERENCES Confecção (idconfeccao)
	FOREIGN KEY(idCategoria) REFERENCES Categoria (idCategoria)
;

CREATE TABLE Pedido (
	idPedido 			int 		NOT NULL,	PRIMARY KEY,
	datapedido 			date    	NOT NULL,
	IDCliente 			int  		NOT NULL, 	--CHAVE ESTRANGEIRA
	FOREIGN KEY(IDCliente) REFERENCES Cliente (IDCliente)
);

CREATE TABLE Item_Pedido (
	valorParcial 		decimal(9,2) NOT NULL,
	qtde				int 		 NOT NULL,
	idItemPedido 		int 		 NOT NULL,
	idPedido 			int 		 NOT NULL,	--CHAVE PRIMÁRIA e ESTRANGEIRA
	idconfeccao 		int 		 NOT NULL, 	--CHAVE ESTRANGEIRA
	PRIMARY KEY (idItemPedido,idPedido) 		--CHAVE PRIMÁRIA COMPOSTA
	FOREIGN KEY(idPedido) REFERENCES Pedido (idPedido)
);

)



)

ALTER TABLE Cliente ADD 

ALTER TABLE Item_Pedido ADD 
ALTER TABLE Confecção ADD 

ALTER TABLE Confecção ADD 

