select * from bandas;

INSERT INTO `musica`.`bandas` (`idBanda`, `nome`, `genero`, `dataFormacao`) VALUES ('', 'Nirvana', 'Grunge', '1987-03-07');
INSERT INTO `musica`.`bandas` (`nome`, `genero`, `dataFormacao`) VALUES ('Red Hot Chili Peppers', 'Rock Alternativo', '1983-03-25');
INSERT INTO `musica`.`bandas` (`nome`, `genero`, `dataFormacao`) VALUES ('The Beatles', 'Pop Rock', '1960-08-17');

select * from musicos;

INSERT INTO `musica`.`musicos` (`nomeCompleto`, `funcao`, `dataNasc`, `idBanda`) VALUES ('Kurt Donald Cobain', 'Vocalista / Guitarrista', '1967-02-20', '1');
INSERT INTO `musica`.`musicos` (`nomeCompleto`, `funcao`, `dataNasc`, `idBanda`) VALUES ('Michael Peter Balzary (Flea)', 'Baixista', '1962-10-16', '2');
INSERT INTO `musica`.`musicos` (`nomeCompleto`, `funcao`, `dataNasc`, `idBanda`) VALUES ('Richard Starkey (Ringo Starr)', 'Baterista / Vocalista', '1940-07-07', '3');

select * from albuns;

INSERT INTO `musica`.`albuns` (`titulo`, `dataLancamento`, `tipoAlbum`, `idBanda`) VALUES ('Bleach', '1989-06-15', 'Studio album', '1');
INSERT INTO `musica`.`albuns` (`titulo`, `dataLancamento`, `tipoAlbum`, `idBanda`) VALUES ('Blood Sugar Sex Magik', '1991-09-24', 'Studio album', '2');
INSERT INTO `musica`.`albuns` (`titulo`, `dataLancamento`, `tipoAlbum`, `idBanda`) VALUES ('Revolver', '1966-08-05', 'Studio album', '3');

select * from musicas;

INSERT INTO `musica`.`musicas` (`titulo`, `duracao`, `idAlbum`) VALUES ('Smells Like Teen Spirit', '5:01', '1');
INSERT INTO `musica`.`musicas` (`titulo`, `duracao`, `idAlbum`) VALUES ('Californication', '5:21', '2');
INSERT INTO `musica`.`musicas` (`titulo`, `duracao`, `idAlbum`) VALUES ('Let It Be', '4:03', '3');

select * from shows;

UPDATE `musica`.`shows` SET `dataShow` = '1991-10-31 20:00:00' WHERE (`idshow` = '1');
UPDATE `musica`.`shows` SET `dataShow` = '2003-07-12 20:00:00' WHERE (`idshow` = '2');
UPDATE `musica`.`shows` SET `dataShow` = '1965-08-15 20:30:00' WHERE (`idshow` = '3');

select * from repertorioshow;

INSERT INTO `musica`.`repertorioshow` (`idShow`, `idMusica`, `ordemApresentacao`) VALUES ('1', '1', 'Smells Like Teen Spirit');
INSERT INTO `musica`.`repertorioshow` (`idShow`, `idMusica`, `ordemApresentacao`) VALUES ('1', '1', 'Drain You');
INSERT INTO `musica`.`repertorioshow` (`idShow`, `idMusica`, `ordemApresentacao`) VALUES ('1', '1', 'Breed');
INSERT INTO `musica`.`repertorioshow` (`idShow`, `idMusica`, `ordemApresentacao`) VALUES ('2', '2', 'Scar Tissue');
INSERT INTO `musica`.`repertorioshow` (`idShow`, `idMusica`, `ordemApresentacao`) VALUES ('2', '2', 'Otherside');
INSERT INTO `musica`.`repertorioshow` (`idShow`, `idMusica`, `ordemApresentacao`) VALUES ('2', '2', 'By the Way');
INSERT INTO `musica`.`repertorioshow` (`idShow`, `idMusica`, `ordemApresentacao`) VALUES ('3', '3', 'Twist and Shout');
INSERT INTO `musica`.`repertorioshow` (`idShow`, `idMusica`, `ordemApresentacao`) VALUES ('3', '3', 'I Wanna Be Your Man');
INSERT INTO `musica`.`repertorioshow` (`idShow`, `idMusica`, `ordemApresentacao`) VALUES ('3', '3', 'I Feel Fine');
