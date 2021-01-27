# Exercícios

## Listas

1. Escreva um programa em Python que some todos os itens de uma lista (dica: você pode usar a função built-in `sum()`):
    ```
    $ python ex-01.py
    121
    ```

2. Escreva um programa em Python que receba valores pelo terminal enquanto o usuário não digitar "pronto". Depois que receber todos os valores, os imprima com um índice ao lado.
    ```
    $ python ex-02.py
    Digite um valor: Python
    Digite um valor: Java
    Digite um valor: Haskell
    Digite um valor: Javascript
    Digite um valor: sair

    1. Python
    2. Java
    3. Haskell
    4. Javascript
    ```
3. Escreva um programa em Python que receba vários valores via terminal (strings e números inteiros), até o usuário digitar "pronto". O programa salvará cada item em sua lista (uma lista de strings e outra de números). No final o programa vai imprimir os valores que foram colocados em cada uma das listas (dica: use a função de string isdigit())
    ```
    $ python ex-03.py
    Digite um valor: Python
    Digite um valor: 25
    Digite um valor: 40
    Digite um valor: Java8
    Digite um valor: pronto

    Lista de números:
    * 25
    * 40

    Lista de strings:
    * Python
    * Java8
    ```

4. Escreva um programa em Python que armazene valores em uma lista como se fosse um banco de dados. O usuário irá digitar os comandos (adicionar, excluir, diminuir e sair). Se o usuário quiser excluir um item ou diminuir a lista, e a lista estiver vazia, deve ser apresentada uma mensagem. Se o usuário digitar 'sair', o programa fecha.
    ```
    $ python ex-04.py
    Comandos disponíveis:
    * adicionar: Adiciona um registro
    * excluir: Exclui um registro
    * diminuir: Exclui o último registro feito
    * mostrar: Mostra os dados
    # sair: Sai.

    O que você deseja fazer? diminuir
    Não há dados a serem excluídos.

    O que você deseja fazer? adicionar
    Digite o que deseja adicionar: Python
    'Python' adicionado com sucesso.

    O que deseja fazer? adicionar
    Digite o que deseja adicionar: Haskell
    'Haskell' adicionado com sucesso.

    O que deseja fazer? adicionar
    Digite o que deseja adicionar: Javascript
    'Javascript' adicionado com sucesso.

    O que deseja fazer? excluir
    Digite o que deseja excluir: Javascript
    'Javascript' excluído com sucesso.

    O que deseja fazer? diminuir
    Registro excluído: Haskell

    O que deseja fazer? mostrar
    Informações salvas:
    * Python

    O que deseja fazer? sair
    $
    ```


## Dicionários

1. Escreva um programa em Python que receba via terminal um conjunto de palavras. Quando o usuário digitar "pronto", o programa deve criar e imprimir um dicionário, sendo as chaves desse dicionário as palavras digitadas via terminal, e o valor sendo 0.
    ```
    $ python ex-05.py
    Digite uma palavra: python
    Digite uma palavra: vuejs
    Digite uma palavra: javascript
    Digite uma palavra: pronto
    {'python': 0, 'vuejs': 0, 'javascript': 0}
    ```

2. Escreva um programa em Python que retorne as chaves e os valores de um dicionário, de forma separada.
    ```
    $ python ex-06.py
    * backend: Python
    * frontend: VueJS
    * database: PostgreSQL
    * cache: Redis
    ```

3. Escreva um programa em Python que verifique se a palavra digitada pelo terminal é uma chave de um dicionário.
    ```
    python ex-07.py
    Digite a chave: fila
    'fila' não faz parte do dicionário
    $ python ex-07.py
    Digite a chave: database
    'database' faz parte do dicionário e possui o valor 'PostgreSQL'
    ```

4. Escreva um programa em Python que verifique se a palavra digitada pelo terminal é um valor de um dicionário.
    ```
    python ex-08.py
    Digite o valor: RabbitMQ
    'fila' não faz um valor do dicionário
    $ python ex-07.py
    Digite a chave: Python
    'Python' é um valor do dicionário
    ```

5. Escreva um programa em Python que sirva como um cadastro de pessoas. O programa irá perguntar o nome, a idade e o salário da pessoa. Depois que o usuário digitar as 3 informações, o programa irá salvar esse dicionário em uma lista. Quando o usuário digitar "sair", o programa irá imprimir essa lista com os nomes das pessoas
    ```
    $ python ex-09.py
    Digite o nome da pessoa (sair para encerrar o programa): João
    Digite a idade: 25
    Digite o salário: 2.300
    Usuário 'João' inserido com sucesso.

    Digite o nome da pessoa (sair para encerrar o programa): Maria
    Digite a idade: 21
    Digite o salário: 2.500
    Usuário 'Maria' inserido com sucesso.

    Digite o nome da pessoa (sair para encerrar o programa): Paulo
    Digite a idade: 38
    Digite o salário: 5.100
    Usuário 'Paulo' inserido com sucesso.

    Digite o nome da pessoa (sair para encerrar o programa): sair
    
    Funcionários cadastrados:
    * Nome: João
    * Idade: 25
    * Salário: 2.300
    --------------------
    * Nome: Maria
    * Idade: 21
    * Salário: 2.500
    --------------------
    * Nome: Paulo
    * Idade: 38
    * Salário: 5.100
    --------------------
    ```