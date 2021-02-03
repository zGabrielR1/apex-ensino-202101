# Exercícios

a) Cria uma base de dados chamada exercicio_aula01.

b) Crie uma tabela chamada ​uzuarios​ (com z mesmo), contendo as seguintes características: nome varchar(20), sobrenome varchar(50), idade int e imail varchar(50).
 
c) Altere o nome da tabela ​uzuarios​ para ​usuarios.
 
d) Altere a coluna ​imail​ para ​email.
 
e) Adicione uma coluna no final da tabela: ​cidade varchar(30).
 
f) Remova a coluna ​sobrenome.

g) Adicione os seguintes dados:

| nome      | idade | email                     | cidade        |
| --------- | ----- | ------------------------- | ------------- |
| Jéssica   | 20    | jessy.gomes@gmail.com     | Blumenau      |
| Cleiton   | 32    | cleiton.crispin@gmail.com | Brusque       |
| Carolina  | 13    | carol.ventura@hotmail.com | Blumenau      |
| Victor    | 17    | victor.almeida@gmail.com  | Gaspar        |
| Joana     | 42    | joana.prudente@live.com   | Blumenau       |


h) Selecione todos os dados da tabela

i) Exiba os dados de todos os usuários com idade maior que 17

j) Exiba os dados dos usuários de Blumenau com menos de 18 anos

k) Altere a idade de Joana para 36

l) Exclua a base de dados ​exercicio_aula01

# 2ª parte

## Nessa parte, usaremos a base de dados `sakila`.

1. Selecione todos os registros da tabela city, em que o CountryCode seja igual a `BRA`.

2. Selecione todos os registros da tabela city, com exceção das cidades que tenham menos de 500000 habitantes. Esses registros devem estar entre o id 1000 e 3000

3. Selecione todos os registros da tabela city, onde o CountryCode deve ser qualquer país das américas e a população deve estar entre 10000 e 20000

4. Selecione todos os registros da tabela city, onde o nome da cidade deve conter a string 'Paul' e o número de habitantes deve passar de 1000000

5. Selecione todos os registros da tabela city, porém no lugar de código do país, mostre o nome completo (fazer join com a tabela country)
