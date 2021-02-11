
# a)
CREATE DATABASE exercicio_aula02;
USE exercicio_aula02;

# b)
CREATE TABLE produtos(
	codigo int PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30),
    marca VARCHAR(20),
    valor DOUBLE,
    data_cadastro DATE
);

# c)
INSERT INTO produtos(nome, marca, valor, data_cadastro) VALUES
	("Teclado M506", "Microsoft", 220, "2020-06-04"),
    ("Mouse R65", "Razr", 400, STR_TO_DATE("10/07/2020", "%d/%m/%Y")),
    ("Monitor L426", "LG", 1600, "2020-08-12"),
    ("Caixa de som J22", "JBL", 900, "2020-03-13"),
    ("Magic Mouse 2", "Apple", 500, "2019-12-07"),
    ("Monitor S87", "Samsung", 1350, "2020-06-01"),
    ("Teclado LT77", "Logitech", 80, "2020-07-08");
    
# d)
SELECT * FROM produtos WHERE data_cadastro >= "2020-01-01";

# e)
SELECT * FROM produtos ORDER BY marca;

# f)
SELECT COUNT(*) FROM produtos WHERE valor >= 1000;

# g)
UPDATE produtos SET nome = "Teclado MS83", marca = "Microsoft" WHERE codigo = 7;

# h)
SELECT YEAR(data_cadastro), COUNT(*) FROM produtos GROUP BY YEAR(data_cadastro);

# i)

SELECT MAX(valor) FROM produtos;	# apenas o valor
SELECT * FROM produtos ORDER BY valor DESC LIMIT 1; # Com limit
SELECT * FROM produtos WHERE valor = (SELECT MAX(valor) FROM produtos); #com subquery

# j)
SELECT * FROM produtos WHERE valor >= (SELECT AVG(valor) FROM produtos);

# k)
DROP DATABASE exercicio_aula02;