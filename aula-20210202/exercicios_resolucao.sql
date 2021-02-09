# a)
CREATE DATABASE exercicio_aula01;
USE exercicio_aula01;

# b)
CREATE TABLE uzuarios(
	nome VARCHAR(20), sobrenome VARCHAR(50), idade INT, imail VARCHAR(50)
);

# c)
ALTER TABLE uzuarios RENAME TO usuarios;

# d)
ALTER TABLE usuarios CHANGE imail email VARCHAR(50);

# e)
ALTER TABLE usuarios ADD cidade VARCHAR(30);

# f)
ALTER TABLE usuarios DROP sobrenome;

# g)
INSERT INTO usuarios(
	nome, idade, email, cidade
) VALUES
	("Jéssica", 20, "jessy.gomes@gmail.com", "Blumenau"),
    ("Cleiton", 32, "cleiton.crispin@gmail.com", "Brusque"),
    ("Carolina", 13, "carol.ventura@gmail.com", "Blumenau"),
    ("Victor", 17, "victor.almeida@gmail.com", "Gaspar"),
    ("Joana", 42, "joana.prudente@live.com", "Blumenau");
    
# h)
SELECT * FROM usuarios;

# i)
SELECT * FROM usuarios WHERE idade > 17;

# j)
SELECT * FROM usuarios WHERE idade < 18 AND cidade = "Blumenau";

# k)
SET SQL_SAFE_UPDATES = 0;
UPDATE usuarios SET idade = 36 WHERE nome = "Joana";

# l)
DROP DATABASE exercicio_aula01;

#######################################################

USE sakila;

# 1)
SELECT * FROM city WHERE countryCode = 'BRA';

# 2)
SELECT * FROM city WHERE population < 500000 AND id BETWEEN 1000 AND 3000;

# 3)
SELECT a.* FROM city a INNER JOIN country b ON a.countryCode = b.code WHERE b.region LIKE "%america%";

# 4)
SELECT * FROM city WHERE name LIKE "%Paul%" AND population > 1000000;

# 5)
SELECT a. id, a.name, b.name, a.district, a.population FROM city a INNER JOIN country b ON a.countrycode = b.code;