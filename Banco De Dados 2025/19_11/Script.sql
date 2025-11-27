create database musica;

use musica;

create table bandas (
	idBanda		int primary key auto_increment,
    nome		varchar(100) not null,
    genero		varchar(50),
    dataFormacao date
);

create table musicos (
	idMusico	int primary key auto_increment,
    nomeCompleto varchar(150) not null,
    funcao		varchar(100),
    dataNasc	date,
    idBanda		int, -- chave estrangeira
    foreign key (idBanda) references bandas (idBanda)
);

create table albuns (
	idAlbum 	int primary key auto_increment,
    titulo		varchar(150) not null,
    dataLancamento 	date,
    tipoAlbum	varchar(50),
    idBanda		int, -- chave estrangeira
    foreign key (idBanda) references bandas (idBanda)
);

create table musicas (
	idMusica 	int primary key auto_increment,
    titulo		varchar(150) not null,
	duracao		decimal(4,2), -- minutos e segundos
    idAlbum		int, -- chave estrangeira
    foreign key (idAlbum) references albuns (idAlbum)
);

create table shows (
	idshow		int primary key auto_increment,
    dataShow	datetime not null, -- data e hora
    localShow	varchar(200) not null,
    cidade		varchar(100),
    idBanda		int, -- chave estrangeira
    foreign key (idBanda) references bandas (idbanda)
);

create table repertorioShow (
	idRepertorio int primary key auto_increment,
    idShow		int, -- chave estrangeira
    idMusica 	int, -- chave estrangeira
    ordemApresentacao int,
    foreign key (idShow) references shows (idShow),
    foreign key (idMusica) references musicas (idMusica)
);