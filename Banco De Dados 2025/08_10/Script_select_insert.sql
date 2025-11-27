-- Selecionar os registros das Tabelas
select * from aldeia; 

select * from ninja;

select * from jutsu;

select * from habilitar;

select * from missao;

select * from participar;

-- Inserir os registros nas Tabelas

INSERT INTO `naruto`.`aldeia` (`Id_vila`, `Nome`, `Pais`, `Localizacao`, `Lider`, `Fundacao`) VALUES ('', 'Konohagakure', 'Hi no Kuni', 'País do Fogo', 'Naruto', '100 DC');
INSERT INTO `naruto`.`aldeia` (`Nome`, `Pais`, `Localizacao`, `Lider`, `Fundacao`) VALUES ('SunagaKure', 'Kaze no Kuni', 'País do Vento', 'Gaara', '100 DC');
INSERT INTO `naruto`.`aldeia` (`Nome`, `Pais`, `Localizacao`, `Lider`, `Fundacao`) VALUES ('Kirigakure', 'Mizu no Kuni', 'País da Água', 'Mei', '100 DC');
INSERT INTO `naruto`.`aldeia` (`Nome`, `Pais`, `Localizacao`, `Lider`, `Fundacao`) VALUES ('Iwagakure', 'Tsuchi no Kuni', 'País da Terra', 'Kurotsuchi', '100 DC');

INSERT INTO `naruto`.`ninja` (`Nome`, `Graduacao`, `Habilidades`, `Id_vila`) VALUES ('Naruto', 'Hokage', 'Rasengan', '1');
INSERT INTO `naruto`.`ninja` (`Nome`, `Graduacao`, `Habilidades`, `Id_vila`) VALUES ('Gaara', 'Kazekage', 'Suna', '2');
INSERT INTO `naruto`.`ninja` (`Nome`, `Graduacao`, `Habilidades`, `Id_vila`) VALUES ('Mei', 'Mizukage', 'Suiton', '3');
INSERT INTO `naruto`.`ninja` (`Nome`, `Graduacao`, `Habilidades`, `Id_vila`) VALUES ('Kurotsuchi', 'Tsuchikage', 'Doton', '4');
INSERT INTO `naruto`.`ninja` (`Nome`, `Graduacao`, `Habilidades`, `Id_vila`) VALUES ('Kakashi', 'Jonin', 'Raikiri', '1');
INSERT INTO `naruto`.`ninja` (`Nome`, `Graduacao`, `Habilidades`, `Id_vila`) VALUES ('Sasuke', 'Missing-nin', 'Chidori', '1');

INSERT INTO `naruto`.`jutsu` (`Nome`, `Descricao`, `Elemento`) VALUES ('Rasengan', 'Técnica que cria uma esfera de chakra giratória ', 'Ventos');
INSERT INTO `naruto`.`jutsu` (`Nome`, `Descricao`, `Elemento`) VALUES ('Chidori', 'Técnica que concentra chakra na mão e gera eletricidade', 'Raio');
INSERT INTO `naruto`.`jutsu` (`Nome`, `Descricao`, `Elemento`) VALUES ('Kage Bunshin', 'Técnica de Clones das Sombras', 'Nenhum');

INSERT INTO `naruto`.`habilitar` (`Dominio`, `Id_ninja`, `Id_jutsu`) VALUES ('100%', '1', '1');
INSERT INTO `naruto`.`habilitar` (`Dominio`, `Id_ninja`, `Id_jutsu`) VALUES ('90%', '2', '1');
INSERT INTO `naruto`.`habilitar` (`Dominio`, `Id_ninja`, `Id_jutsu`) VALUES ('100%', '2', '2');
INSERT INTO `naruto`.`habilitar` (`Dominio`, `Id_ninja`, `Id_jutsu`) VALUES ('100%', '3', '3');

INSERT INTO `naruto`.`missao` (`Nome`, `Descricao`, `Recompensa`) VALUES ('Missão de Rank D: Encontrar o Gato Perdido', 'Encontrar o gato do Feudal Lord que fugiu', '500 ryō');
INSERT INTO `naruto`.`missao` (`Nome`, `Descricao`, `Recompensa`) VALUES ('Missão de Rank C: Escolta de Mercador', 'Proteger um mercador durante viagem para o País do Fogo', '10.000 ryō');
INSERT INTO `naruto`.`missao` (`Nome`, `Descricao`, `Recompensa`) VALUES ('Missão de Rank B: Captura de Ninja Renegado', 'Capturar um ninja renegado da Vila da Folha', '50.000 ryō');
INSERT INTO `naruto`.`missao` (`Nome`, `Descricao`, `Recompensa`) VALUES ('Missão de Rank A: Proteção da Ponte', 'Proteger o construtor Tazuna durante a construção da Ponte', '100.000 ryō');
INSERT INTO `naruto`.`missao` (`Nome`, `Descricao`, `Recompensa`) VALUES ('Missão de Rank S: Defesa da Vila', 'Defender a Vila da Folha contra invasão de Akatsuki', '1.000.000 ryō');
INSERT INTO `naruto`.`missao` (`Nome`, `Descricao`, `Recompensa`) VALUES ('Missão Especial: Treinamento com Jiraiya', 'Acompanhar Jiraiya em missão de treinamento especial', '15.000 ryō + Treinamento Especial');

INSERT INTO `naruto`.`participar` (`Dificuldade`, `Id_missao`, `Id_ninja`) VALUES ('D', '1', '1');
INSERT INTO `naruto`.`participar` (`Dificuldade`, `Id_missao`, `Id_ninja`) VALUES ('D', '1', '6');
INSERT INTO `naruto`.`participar` (`Dificuldade`, `Id_missao`, `Id_ninja`) VALUES ('C', '2', '5');
INSERT INTO `naruto`.`participar` (`Dificuldade`, `Id_missao`, `Id_ninja`) VALUES ('C', '2', '1');
INSERT INTO `naruto`.`participar` (`Dificuldade`, `Id_missao`, `Id_ninja`) VALUES ('C', '2', '6');
INSERT INTO `naruto`.`participar` (`Dificuldade`, `Id_missao`, `Id_ninja`) VALUES ('B', '3', '5');
INSERT INTO `naruto`.`participar` (`Dificuldade`, `Id_missao`, `Id_ninja`) VALUES ('B', '3', '1');
INSERT INTO `naruto`.`participar` (`Dificuldade`, `Id_missao`, `Id_ninja`) VALUES ('A', '4', '5');
INSERT INTO `naruto`.`participar` (`Dificuldade`, `Id_missao`, `Id_ninja`) VALUES ('A', '4', '1');
INSERT INTO `naruto`.`participar` (`Dificuldade`, `Id_missao`, `Id_ninja`) VALUES ('A', '4', '6');
INSERT INTO `naruto`.`participar` (`Dificuldade`, `Id_missao`, `Id_ninja`) VALUES ('S', '5', '1');
INSERT INTO `naruto`.`participar` (`Dificuldade`, `Id_missao`, `Id_ninja`) VALUES ('S', '5', '5');
INSERT INTO `naruto`.`participar` (`Dificuldade`, `Id_missao`, `Id_ninja`) VALUES ('S', '5', '2');