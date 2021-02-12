# Modelagem de dados de um sistema de livraria

## Regras

1. Um livro pode possuir mais de 1 autor.
2. Um livro deve possuir uma categoria e podem existir vários livros com uma mesma categoria.
3. Podem ser atribuídas várias tags para um determinado livro e uma tag pode estar associada a vários livros
4. A livraria deve possuir um cadastro de seus associados
5. Cada associado pode alugar um ou mais livros durante uma única locação
6. Livros do mesmo ISBN devem possuir um código sequencial para diferenciá-los.

# Exercícios

a) Crie uma base de dados chamada **exercicios_aula03**.

b) Crie uma tabela chamada **estados** com as seguintes colunas: **codigo int (pk e ai)**, **estado varchar(20)**.

 
c) Insira os seguintes dados:

| codigo | estado            |
| ------ | ----------------- |
| 1      | Minas Gerais      |
| 2      | Paraná            |
| 3      | Rio de Janeiro    |
| 4      | Rio Grande do Sul |
| 5      | Santa Catarina    |
| 6      | São Paulo         |
| 7      | Teclado LT77      |


d) Crie uma tabela chamada **cidades** com as seguintes colunas: **codigo int(pk e ai)**, **estado int**, **cidade varchar(20)**.

e) Cadastre as seguintes cidades:

| codigo | estado | cidade         |
| ------ | ------ | -------------- |
| 1      | 4      | Belo Horizonte |
| 2      | 6      | Campinas       |
| 3      | 5      | Blumenau       |
| 4      | 6      | São Paulo      |
| 5      | 2      | Londrina       |
| 6      | 5      | Joinville      |
| 7      | 5      | Jaraguá do Sul |

f) Exibir o nome dos estados e o nome das cidades

g) Contar a quantidade de cidades cadastradas por estado

h) Excluir a base de dados **exercicios_aula03**
