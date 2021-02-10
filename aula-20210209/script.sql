/* AULA 09-02-2021 */

/* GROUP BY */
/* AVG, MIN, MAX, SUM, COUNT */

# Agrupando pedidos pelo status
SELECT status FROM orders GROUP BY status;

# Agrupando pedidos pelo status e mostrando a quantidade de pedidos por status
SELECT status, COUNT(*) FROM orders GROUP BY status;

# Verificando a quantidade de produtos agrupados por linha de produtos (productLine) e a soma das quantidades em estoque;
SELECT productLine, COUNT(*), SUM(quantityInStock) FROM products GROUP BY productLine;

/* Manipulação de datas */
/* DATE_ADD */

# Definindo um prazo de entrega para o pedido sendo 6 dias após a data do pedido.
SELECT orderDate as "Data do pedido", DATE_ADD(orderDate, INTERVAL 6 DAY) as "Prazo de entrega" FROM orders;

/* DATE_DIFF */
/* Mostrando quantos dias um pedido demorou pra ser entregue, a partir da data do pedido */
SELECT *, DATEDIFF(shippedDate, orderDate) FROM orders;

/* DATE_FORMAT */
SELECT DATE_FORMAT(orderDate, "%d-%m-%Y") as "Data de pedido" FROM orders;

/* STR_TO_DATE */

SELECT DATE_ADD(STR_TO_DATE("18abc09customers,,2001", "%dabc%m,,%Y"), INTERVAL 10 DAY);

/******************************************************************************************/
/* CHAVE PRIMÁRIA */

CREATE DATABASE aula_20210209;
USE aula_20210209

/* CONSTRAINT = PRIMARY KEY, FOREIGN KEY, INDEX... */

/* Criação de uma tabela com chave primária */
/* Um campo que seja chave primária não pode conter valores nulos */
CREATE TABLE clients(
	id INT NOT NULL, last_name VARCHAR(100) NOT NULL, first_name VARCHAR(50) NOT NULL, age INT, PRIMARY KEY(id)
);

SELECT * FROM clients;

INSERT INTO clients(id, last_name, first_name) VALUES (1, "Garcia", "Robert");
INSERT INTO clients(id, last_name, first_name) VALUES (2, "Yagami", "Iori");

CREATE TABLE products(
	id INT NOT NULL, name VARCHAR(200), price FLOAT
);

/* Podemos adicionar ou remover uma chave primária de uma tabela após a criação da mesma */
ALTER TABLE products ADD PRIMARY KEY(id);
ALTER TABLE products DROP PRIMARY KEY;

/* É possível criar um campo que se auto incremente toda vez que um novo registro é inserido */
CREATE TABLE orders(
	id INT NOT NULL AUTO_INCREMENT, value FLOAT, PRIMARY KEY(id)
);

SELECT * FROM orders;

INSERT INTO orders (value) VALUES (10.40);
INSERT INTO orders (value) VALUES (100);

DROP TABLE orders;

/* Usamos a chave estrangeira para indicar o campo de referência da tabela que está relacionada */
CREATE TABLE shopping_cart(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    client_id INT,
    info VARCHAR(100),
    FOREIGN KEY(client_id) REFERENCES clients(id)
);

INSERT INTO shopping_cart(client_id, info) VALUES (100, "Primeiro carrinho");
INSERT INTO shopping_cart(client_id, info) VALUES (2, "Primeiro carrinho");
SELECT * FROM shopping_cart;

SELECT a.* FROM clients a INNER JOIN shopping_cart b WHERE a.id = b.client_id;

/***
Criar uma tabela funcionarios (id, nome, id_tipo_funcionario, idade)
	id -> INT chave primária auto incremento
    nome -> varchar
    idade -> INT
    tipo_funcionario -> INT (foreign key para a tabela tipo_funcionario)
    
Criar tabela tipo_funcionario
	id -> INT chave primário auto incremento
    tipo -> VARCHAR(100)

Inserir na tabela tipo funcionario os seguintes dados
	"CLT"
    "TERCEIRIZADO"
    "ESTÁGIÁRIO"
    
Inserir na tabela funcionarios os seguintes dados:
	"João Aguiar", 35, 1
    "Maria da Costa", 21, 1
    "Rebecca Silva", 22, 1
    "Antonio Aguiar", 18, 3
    "Aline Barros", 28, 2
    "Sérgio Mamberti", 45, 2
    "Amanda Cordeiro", 19, 3
    
    # Retornar a média de idade dos funcionários
    # Listar os funcionários e qual o seu tipo (mostrar o nome)
*/

CREATE TABLE tipo_funcionario(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(100) NOT NULL
);

INSERT INTO tipo_funcionario(tipo) VALUES ("CLT");
INSERT INTO tipo_funcionario(tipo) VALUES ("TERCEIRIZADO");
INSERT INTO tipo_funcionario(tipo) VALUES ("ESTAGIÁRIO");

SELECT * FROM tipo_funcionario;

CREATE TABLE funcionarios(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    id_tipo_funcionario INT NOT NULL,
    FOREIGN KEY(id_tipo_funcionario) REFERENCES tipo_funcionario(id)
);

/*
"João Aguiar", 35, 1
    "Maria da Costa", 21, 1
    "Rebecca Silva", 22, 1
    "Antonio Aguiar", 18, 3
    "Aline Barros", 28, 2
    "Sérgio Mamberti", 45, 2
    "Amanda Cordeiro", 19, 3
*/

INSERT INTO funcionarios(nome, idade, id_tipo_funcionario) VALUES ("João Aguiar", 35, 1);
INSERT INTO funcionarios(nome, idade, id_tipo_funcionario) VALUES ("Maria da Costa", 21, 1);
INSERT INTO funcionarios(nome, idade, id_tipo_funcionario) VALUES ("Rebecca Silva", 22, 1);
INSERT INTO funcionarios(nome, idade, id_tipo_funcionario) VALUES ("Aline Barros", 28, 2);
INSERT INTO funcionarios(nome, idade, id_tipo_funcionario) VALUES ("Sergio Mamberti", 45, 2);
INSERT INTO funcionarios(nome, idade, id_tipo_funcionario) VALUES ("Amanda Cordeiro", 19, 3);

SELECT * FROM funcionarios;

/* Retornar a média das idades */
SELECT AVG(idade) FROM funcionarios;

/* Listas os funcionários e qual o seu tipo */
SELECT a.id, a.nome, a.idade, b.tipo FROM funcionarios a INNER JOIN tipo_funcionario b ON a.id_tipo_funcionario = b.id;

/*********************************************************************************************************************/
/* NORMALIZAÇÃO DE BANCO DE DADOS */

/* 1FN (Primeira forma normal)*/
/* Os dados na tabela devem ser atômicos (não devem se repetir) e não pode haver colunas multi valoradas*/

CREATE TABLE contacts (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    telephone VARCHAR(100)
);

/* A coluna telephone possui mais de 1 valor */
INSERT INTO contacts (name, telephone) VALUES ("John Cena", "117854993, 47829953, 1185736423");

SELECT * FROM contacts;
SELECT * FROM telephones;

CREATE TABLE telephones(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    telephone VARCHAR(100),
    contact_id INT,
    FOREIGN KEY(contact_id) REFERENCES contacts(id)
);

ALTER TABLE contacts DROP telephone;

INSERT INTO telephones(telephone, contact_id) VALUES("117854993", 1);
INSERT INTO telephones(telephone, contact_id) VALUES("47829953", 1);
INSERT INTO telephones(telephone, contact_id) VALUES("47829953", 1);

SELECT a.name, b.telephone FROM contacts a INNER JOIN telephones b ON a.id = b.contact_id;

/* 2FN (Segunda forma normal) */

/* Os atributos normais devem depender exclusivamente da chave primária da tabela */

CREATE TABLE professor_curso(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_prof INT,
    id_curso INT,
    descricao_curso VARCHAR(200),
    observacoes VARCHAR(200)
);

SELECT * FROM professor_curso;

INSERT INTO professor_curso(id_prof, id_curso, descricao_curso, observacoes) VALUES (10, 30, "Curso de Python", "Nenhuma");
INSERT INTO professor_curso(id_prof, id_curso, descricao_curso, observacoes) VALUES (8, 12, "Curso de Java", "Nenhuma");
INSERT INTO professor_curso(id_prof, id_curso, descricao_curso, observacoes) VALUES (40, 90, "Curso de Haskell", "Nenhuma");

ALTER TABLE professor_curso DROP descricao_curso;

CREATE TABLE cursos(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(200) NOT NULL
);

ALTER TABLE professor_curso ADD FOREIGN KEY(id_curso) REFERENCES cursos(id);

INSERT INTO cursos(descricao) VALUES ("Curso de Python");
INSERT INTO cursos(descricao) VALUES ("Curso de Java");
INSERT INTO cursos(descricao) VALUES ("Curso de PHP");

SELECT * FROM cursos;

/* 3FN (Terceira forma normal) */
DROP TABLE funcionarios;

CREATE TABLE funcionarios(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    valor_salario FLOAT,
    faixa_de_bonus INT
);

SELECT * FROM funcionarios;

INSERT INTO funcionarios(nome, valor_salario, faixa_de_bonus) VALUES ("Mario Andrade", 6500, 5);
INSERT INTO funcionarios(nome, valor_salario, faixa_de_bonus) VALUES ("Maria Antonieta", 8400, 3);
INSERT INTO funcionarios(nome, valor_salario, faixa_de_bonus) VALUES ("Lorena Barbosa", 2500, 10);


ALTER TABLE funcionarios DROP faixa_de_bonus;
ALTER TABLE funcionarios DROP valor_salario;

CREATE TABLE funcionario_salario(
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_funcionario INT,
    valor_salario FLOAT,
    FOREIGN KEY(id_funcionario) REFERENCES funcionarios(id)
);

INSERT INTO funcionario_salario (id_funcionario, valor_salario) VALUES (1, 6500);

SELECT * FROM funcionario_salario;

SELECT a.*, b.valor_salario FROM funcionarios a INNER JOIN funcionario_salario b ON a.id = b.id_funcionario;