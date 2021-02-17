# AULA 16-02-2021

# Views, Stored Procedures e Triggers

USE northwind;

# Pegar a quantidade de pedidos feita por cada cliente
SELECT a.id, a.first_name, a.last_name, COUNT(b.id) as "Number of orders" FROM customers a 
	INNER JOIN orders b ON a.id = b.customer_id
    GROUP BY a.id
    ORDER BY COUNT(b.id) DESC;
    
# View é um objeto do banco de dados. É uma maneira mais inteligente de armazenar consultas, pode ser entendida também como uma
# "tabela virtual".

CREATE VIEW GetNumberOfOrdersByCustomerDesc
AS
SELECT a.id, a.first_name, a.last_name, COUNT(b.id) as "Number of orders" FROM customers a 
	INNER JOIN orders b ON a.id = b.customer_id
    GROUP BY a.id
    ORDER BY COUNT(b.id) DESC;
    
# Chamando a View
SELECT * FROM GetNumberOfOrdersByCustomerDesc;

# O comando abaixo mostra todas as tabelas do banco de dados;
SHOW FULL TABLES;

# O comando DROP apaga uma view;
DROP VIEW IF EXISTS GetNumberOfOrdersByCustomerDesc;


CREATE VIEW GetAllCustomers
AS
	SELECT * FROM customers;
    
SELECT * FROM GetAllCustomers;

SET SQL_SAFE_UPDATES = 0;

# É possível atualizar uma tabela através da view.
UPDATE GetAllCustomers SET email_address = "<undefined>" WHERE job_title = "Owner";

SELECT * FROM strings;

# Criar uma view que traga todos os dados da tabela strings;
# Inserir um novo registro nessa tabela através da view
# string_data = "Unsufficient funds."
CREATE VIEW GetAllStrings
AS
SELECT * FROM strings;

SELECT * FROM GetAllStrings;

INSERT INTO GetAllStrings(string_data) VALUES ("Unsufficient funds.");

# É possível também apagar registros através da view
DELETE FROM GetAllStrings WHERE string_id = 115;

####################################################################################################################################

# Stored Procedures
# Uma stored procedure se comporta como uma função, pode ter ou não parãmetros de entrada e/ou saída.
DELIMITER $$
CREATE PROCEDURE GetAllCustomers()
BEGIN
	SELECT * FROM customers;
END$$
DELIMITER ;

# Chamamos uma stored procedura utilizando o comando CALL
CALL GetAllCustomers();

# Apagamos uma stored procedure utilizando o comando DROP
DROP PROCEDURE IF EXISTS GetAllCustomers;

# Criar uma procedure que retorne a soma dos custos de envio de todos os pedidos;
DELIMITER $$
CREATE PROCEDURE GetAllShippingCosts()
BEGIN
	DECLARE totalShippingCosts FLOAT DEFAULT 0;
	SELECT SUM(shipping_fee) INTO totalShippingCosts FROM orders;
    SELECT totalShippingCosts;
END$$
DELIMITER ;

CALL GetAllShippingCosts();

# Uma stored procedure pode receber parâmetros, como as funções em linguagens de programação. Existem 3 tipos de parâmetros
# que podemos utilizar em stored procedures
# IN - Tipo de variável de entrada (INPUT)

# Criar uma procedure que retorne todos os pedidos entregues a um estado, que será informado.
DELIMITER $$
CREATE PROCEDURE GetOrdersByStateProvince(
	IN vStateProvince VARCHAR(2)
)
BEGIN
	SELECT * FROM orders WHERE ship_state_province = vStateProvince;
END$$
DELIMITER ;

CALL GetOrdersByStateProvince("CA");
CALL GetOrdersByStateProvince("NY");

# Criar uma stored procedure que atualize o valor do campo email_address de acordo com job_title do cliente;
# Primeiro argumento job_title
# Segundo argumento email_address
# stored_procedure_x("Owner", "<secret>")

DELIMITER $$
CREATE PROCEDURE UpdateCustomerEmailAddressByJobTitle(
	IN vJobTitle VARCHAR(200),
    IN vEmailAddress VARCHAR(100)
)
BEGIN
	UPDATE customers SET email_address = vEmailAddress WHERE job_title = vJobTitle;
END$$
DELIMITER ;

CALL UpdateCustomerEmailAddressByJobTitle("Owner", "<secret>");
CALL UpdateCustomerEmailAddressByJobTitle("Accounting Assistant", "accounts@google.com");

SELECT * FROM customers;

# OUT - Tipo de variável de saída (OUTPUT)

# Criar uma stored procedure que retorne a quantidade de pedir por status
# 0 - Novo, 1 - Nota Fiscal Gerada, 2 - Entregue, 3 - Fechado

DELIMITER $$
CREATE PROCEDURE GetOrdersByStatus(
	IN iStatusId INT,
    OUT totalOrders INT
)
BEGIN
	SELECT COUNT(*) INTO totalOrders FROM orders WHERE status_id = iStatusId;
END$$
DELIMITER ;

CALL GetOrdersByStatus(0, @total);
SELECT @total;

# Criar uma stored procedure que retorne como um parâmetro de saída, a quantidade de produtos acima de um determinado custo
# valor_base, total
# valor_base (IN), total (OUT)
# Salvar o resultado na variável total e mostrar
# stored_procedure_x (15, @total); SELECT @total;

DELIMITER $$
CREATE PROCEDURE GetAllProductsAboveValue(
	IN fValue FLOAT,
    OUT total INT
)
BEGIN
	SELECT COUNT(*) INTO total FROM products WHERE standard_cost > fValue;
END$$
DELIMITER ;

CALL GetAllProductsAboveValue(20, @total);
SELECT @total;

# INOUT - Tipo de argumento que serve tanto de entrada, quanto de saída

DELIMITER $$
CREATE PROCEDURE SetCounter(
	INOUT counter INT,
    IN inc INT
)
BEGIN
	SET counter = counter + inc;
END$$
DELIMITER ;

SET @counter = 0;
CALL SetCounter(@counter, 10);

SELECT @counter;

CALL SetCounter(@counter, 2);
SELECT @counter;

# Criar uma stored procedure que classifica os clientes de acordo com a quantidade de pedidos feita.

DELIMITER $$
CREATE PROCEDURE GetCustomerLevel(
	IN pClientId INT,
    OUT pCustomerLevel VARCHAR(10)
)
BEGIN
	DECLARE total INT DEFAULT 0;
    
    SELECT COUNT(*) INTO total FROM orders WHERE customer_id = pClientId;
    
    IF total < 3 THEN
		SET pCustomerLevel = "BRONZE";
	ELSEIF total >= 3 AND total <= 10 THEN
		SET pCustomerLevel = "SILVER";
	ELSE
		SET pCustomerLevel = "GOLD";
	END IF;
    
END$$
DELIMITER ;

CALL GetCustomerLevel(1, @banana);
SELECT @banana;

CALL GetCustomerLevel(4, @customerLevel);
SELECT @customerLevel;

####################################################################################################################################

# TRIGGERS (gatilho)
# Triggers são semelhantes as stored procedures, porém elas são executadas de forma automática em resposta a determinados
# eventos que acontecem em uma tabela relacionada.

/*
	CREATE TRIGGER trigger_name
	{BEFORE | AFTER} {INSERT | UPDATE| DELETE }
	ON table_name FOR EACH ROW
	trigger_body;
*/

CREATE TABLE customers_audit(
	id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    email VARCHAR(100) NOT NULL,
    timestamp DATETIME DEFAULT NULL,
    action VARCHAR(50) DEFAULT NULL
);

# Inserir um registro na tabela customers_audit todas as vezes que a tabela customers for alterada
DELIMITER $$
CREATE TRIGGER before_customer_update
	BEFORE UPDATE
    ON customers FOR EACH ROW
BEGIN
INSERT INTO customers_audit
	SET action = "UPDATE", customer_id = OLD.ID, email = OLD.email_address, timestamp = NOW();
END$$
DELIMITER ;

DROP TRIGGER before_customer_update;

UPDATE customers SET email_address = "owner@google.com" WHERE job_title = "Owner";