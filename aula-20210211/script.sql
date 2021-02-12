DROP DATABASE aula03_20210211;
CREATE DATABASE aula03_20210211;
USE aula03_20210211;

CREATE TABLE hoteis(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE quartos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_hotel INT,
    nome VARCHAR(100),
	FOREIGN KEY(id_hotel) REFERENCES hoteis(id)
);

INSERT INTO hoteis(nome) VALUES
	("Hotel Continental"),
    ("Hotel Acapulco"),
    ("Hotel Panamá"),
    ("Hotel Glória");
    
INSERT INTO quartos(id_hotel, nome) VALUES
	(1, "Suíte Master Hotel Continental"),
    (1, "Suíte Padrão Hotel Continental"),
    (1, "Suíte Padrão Hotel Continental"),
    (2, "Suíte Master Hotel Acapulco"),
    (2, "Suíte Master Hotel Acapulco"),
    (2, "Suíte Master Hotel Acapulco"),
    (2, "Suíte Senior Hotel Acapulco"),
    (2, "Suíte Presidencial Hotel Acapulco"),
    (3, "Suíte Presidencial Hotel Panamá"),
    (4, "Suíte Master Hotel Glória"),
    (4, "Suíte Master Hotel Glória"),
    (4, "Suíte Premium Hotel Glória"),
    (4, "Suíte Premium Hotel Glória"),
    (4, "Suíte Premium Hotel Glória"),
    (4, "Suíte Padrão Hotel Glória");

DELETE FROM hoteis WHERE nome = "Hotel Acapulco";

DELETE FROM quartos WHERE id_hotel = 2;
# DELETE ser feito em cascata
# linha na tabela filha ser definida como NULL

# Para alterar o comportamento padrão de uma foreign key em uma tabela, é necessário primeiro excluir a constrainst chave estrangeira
ALTER TABLE quartos DROP FOREIGN KEY quartos_ibfk_1;

# Agora, adicionamos uma nova chave estrangeira com o comportamento desejado
ALTER TABLE quartos ADD FOREIGN KEY(id_hotel) REFERENCES hoteis(id) ON DELETE CASCADE;
ALTER TABLE quartos ADD FOREIGN KEY(id_hotel) REFERENCES hoteis(id) ON DELETE SET NULL;

DELETE FROM hoteis WHERE nome = "Hotel Continental";

###############################################################################################
# JOINS #

CREATE TABLE clientes(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200)
);

CREATE TABLE pedidos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    total FLOAT
);

INSERT INTO clientes(nome) VALUES
	("Renata Prado"),
    ("Jorge Augusto"),
    ("Roberto Santana"),
    ("Amanda Machado"),
    ("Lorena Rocha"),
    ("Cristina Silva"),
    ("Bruna Pacheco"),
    ("Tiago Barbosa"),
    ("Zuleide Fritz"),
    ("Viviane Farias");
    
INSERT INTO pedidos(id_cliente, total) VALUES
    (1, 294.22), (1, 385.23), (1, 165.63), (2, 130.64),
    (2, 252.28), (2, 587.61), (4, 514.81), (4, 240.36),
    (5, 433.23), (5, 388.38), (5, 232.43), (6, 420.6),
    (7, 758.22), (7, 294.21), (7, 407.16), (7, 484.6),
    (7, 284.35), (7, 264.64), (7, 543.01), (10, 551.55),
    (10, 359.16), (10, 169.47), (10, 485.39), (10, 151.69);
    
SELECT * FROM clientes;
SELECT * FROM pedidos;

SELECT clientes.* FROM clientes INNER JOIN pedidos ON clientes.id = pedidos.id_cliente;
SELECT clientes.*, pedidos.total FROM clientes LEFT JOIN pedidos ON clientes.id = pedidos.id_cliente;
SELECT clientes.* FROM clientes LEFT JOIN pedidos ON clientes.id = pedidos.id_cliente WHERE pedidos.id_cliente IS NULL;

SELECT clientes.nome, FORMAT(SUM(pedidos.total), 2) AS "Soma dos pedidos" FROM clientes RIGHT JOIN pedidos ON clientes.id = pedidos.id_cliente GROUP BY clientes.nome HAVING SUM(pedidos.total) > 1000;

####################################################################################################################################
# Tipos de relacionamentos #

# Modelagem de um blog.
# Cada usuário possui um perfil diferente, e apenas 1.
# Cada usuário pode ter nenhum, 1 ou mais artigos postados.
# Cada postagem pode ou não ter comentários
# Cada postagem pode ter 1 ou diversas tags

# Usuario
# Perfil
# Post
# Comentário
# Tag

CREATE TABLE users(
	id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL
);

# Relacionamento 1 para 1 (1:1)
CREATE TABLE profiles(
	id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    FOREIGN KEY(id) REFERENCES users(id)
);

# users > posts 1:N
# posts > users 1:1

CREATE TABLE posts(
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_user INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    body TEXT,
    FOREIGN KEY(id_user) REFERENCES users(id)
);

CREATE TABLE comments(
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_post INT NOT NULL,
    body TEXT,
    FOREIGN KEY(id_post) REFERENCES posts(id)
);

# Post -> tag 1:N
# Tag -> Post 1:N
# Relação N:N

CREATE TABLE tags(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE posts_tags(
	id_post INT,
    id_tag INT,
    CONSTRAINT pk_posts_tags PRIMARY KEY(id_post, id_tag),
    FOREIGN KEY(id_post) REFERENCES posts(id),
    FOREIGN KEY(id_tag) REFERENCES tags(id)
);

# Criar 3 usuários
INSERT INTO users(username) VALUES ("zypt");
INSERT INTO users(username) VALUES ("zapt");
INSERT INTO users(username) VALUES ("zopt");
SELECT * FROM users;

# Criar 3 perfis
INSERT INTO profiles(id, name) VALUES (1, "Zyptron");
INSERT INTO profiles(id, name) VALUES (2, "Zaptron");
INSERT INTO profiles(id, name) VALUES (3, "Zoptron");
SELECT * FROM profiles;

# Trazer o id do usuário, o username e o nome
SELECT users.id, users.username, profiles.name FROM users INNER JOIN profiles ON users.id = profiles.id;

# Postar artigos
INSERT INTO posts(id_user, title, body) VALUES
	(1, "A Linguagem Python", "Python é uma linguagem interpretada."),
    (1, "A Linguagem C++", "C++ é uma linguagem compilada"),
    (3, "Introdução ao MongoDB", "MongoDB é um banco de dados orientado a documentos.");
    
# Listar todos os posts feitos pelo usuario de id 1
SELECT posts.* FROM users INNER JOIN posts ON users.id = posts.id_user WHERE users.id = 1;

# Listar os usuários que não realizaram postagens
SELECT users.* FROM users LEFT JOIN posts ON users.id = posts.id_user WHERE posts.id_user IS NULL;

# Inserir comentários nos posts de id 2 e 3
INSERT INTO comments(id_post, body) VALUES
	(2, "Muito legal esse artigo."),
    (2, "Nâo sabia que C++ era tão legal."),
    (2, "Vou trabalhar na Tesla usando C++."),
    (3, "No MongoDB não precisamos definir antes a estrutura"),
    (3, "Eu só conhecia bancos de dados relacionais. Muito legal o artigo.");

SELECT * FROM comments;

# Mostre o título do post e a quantidade de comentários
SELECT posts.title, COUNT(comments.id) FROM posts INNER JOIN comments ON posts.id = comments.id_post GROUP BY posts.id;

# Criar tags
INSERT INTO tags(name) VALUES
	("Programação"),
    ("TI"),
    ("SQL"),
    ("2021"),
    ("MongoDB"),
    ("MySQL");
    
SELECT * FROM tags;

INSERT INTO posts_tags(id_post, id_tag) VALUES
	(1, 1), (1, 2), (1, 4),
    (3, 2), (3, 4), (3, 5);
    
SELECT * FROM posts_tags;

# Mostrar quais as tags associadas aos posts
SELECT posts.id, posts.title, tags.name FROM posts
	INNER JOIN posts_tags ON posts.id = posts_tags.id_post
    INNER JOIN tags ON posts_tags.id_tag = tags.id
    ORDER BY posts.id;
    
