DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS planos (
  id_plano SMALLINT NOT NULL auto_increment,
  plano VARCHAR(45) NOT NULL,
  valor_plano DECIMAL(5,2) NOT NULL,
  PRIMARY KEY(`id_plano`)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS artistas (
  id_artista SMALLINT NOT NULL auto_increment,
  artista VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_artista`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS albums (
  id_album SMALLINT NOT NULL auto_increment,
  album VARCHAR(45) NOT NULL,
  id_artista SMALLINT NOT NULL,
  primary key (`id_album`),
  foreign key (`id_artista`) references artistas(`id_artista`)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS cancoes (
  id_cancao SMALLINT NOT NULL auto_increment,
  cancao VARCHAR(250) NOT NULL,
  id_artista SMALLINT NOT NULL,
  id_album SMALLINT NOT NULL,
  PRIMARY KEY (`id_cancao`),
  foreign key (`id_artista`) references artistas(`id_artista`),
  foreign key (`id_album`) references albums(`id_album`)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS usuarios (
  id_usuario SMALLINT NOT NULL auto_increment,
  usuario VARCHAR(40),
  idade INT NOT NULL,
  id_plano SMALLINT NOT NULL,
  PRIMARY KEY (`id_usuario`),
  foreign key (`id_plano`) references planos(`id_plano`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS seguindo (
  id_usuario SMALLINT NOT NULL,
  id_artista SMALLINT NOT NULL,
  PRIMARY KEY (`id_usuario`, `id_artista`),
  foreign key (`id_usuario`) references usuarios(`id_usuario`),
  foreign key (`id_artista`) references artistas(`id_artista`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS historicos (
  id_usuario SMALLINT NOT NULL,
  id_cancao SMALLINT NOT NULL,
  PRIMARY KEY (`id_usuario`, `id_cancao`),
  foreign key (`id_usuario`) references usuarios(`id_usuario`),
  foreign key (`id_cancao`) references cancoes(`id_cancao`)
) ENGINE = InnoDB;

INSERT INTO planos (plano, valor_plano)
VALUES
  ('Gratuito', 0),
  ('Familiar', 7.99),
  ('Universsitário', 5.99);

INSERT INTO artistas (artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO albums (album, id_artista)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

INSERT INTO cancoes (cancao, id_artista, id_album)
VALUES
('Soul For Us', 1, 1),
('Reflections Of Magic', 1, 1),
('Dance With Her Own', 1, 1),
('Troubles Of My Inner Fire', 1, 2),
('Time Fireworks', 1, 2),
('Magic Circus', 2, 3),
('Honey, So Do I', 2, 3),
("Sweetie, Let's Go Wild", 2, 3),
('She Knows', 2, 3),
('Fantasy For Me', 3, 4),
('Celebration Of More', 3, 4),
('Rock His Everything', 3, 4),
('Home Foreveer', 3, 4),
('Diamond Power', 3, 4),
("Honey, Let's Be Silly", 3, 4),
('Thang Of Thunder', 4, 5),
('Words Of Her Life', 4, 5),
('Without My Streets', 4, 5);

INSERT INTO usuarios (usuario, idade, id_plano)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

INSERT INTO seguindo (id_usuario, id_artista)
VALUES
  (1, 1),
  (1, 3),
  (1, 4),
  (2, 1),
  (2, 3),
  (3, 1),
  (3, 2),
  (4, 4);

INSERT INTO historicos (id_usuario, id_cancao)
VALUES
  (1, 1),
  (1, 6),
  (1, 14),
  (1, 16),
  (2, 13),
  (2,17),
  (2, 2),
  (2, 15),
  (3, 4),
  (3, 16),
  (3, 6),
  (4, 3),
  (4, 18),
  (4, 11);
