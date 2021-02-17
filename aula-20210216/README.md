# Exercícios

a) Crie uma base de dados chamada ​`exercicio_aula04`.

b) Crie uma tabela chamada `​cursos` com as seguintes colunas:
 * codigo int(chave primária e auto incremento)
 * nome varchar(30)
 * valor double
 
c) Crie uma stored procedure para cadastrar os cursos.

d) Crie uma view para exibir uma frase para cada linha da tabela, concatenar o nome do curso com o valor.
 
e) Crie uma stored procedure para alterar um curso através do código.

f) Crie uma stored procedure para excluir um curso através do código.

g) Remova a stored procedure de cadastro.

h) Crie novamente a stored procedure de cadastro, porém dessa vez ela precisa verificar se o nome do curso a ser cadastrado existe. Se o curso existir a procedure precisa retornar uma mensagem deerro, caso contrário deverá ser realizado o cadastro.

i) Excluir a base de dados ​`exercicio_aula04`.