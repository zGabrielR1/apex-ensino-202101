# Exercícios

1. Peça um nome e uma idade, em seguida exiba uma frase, como por exemplo: Olá, João. Você tem 16 anos.
    ```
    $ python ex-01.py
    Digite o seu nome: João
    Digite a sua senha: 20
    Olá, João. Você tem 20 anos.
    ```
2. Escreva um programa em Python em que o usuário precise informar uma idade, em seguida retorne se a idade informada pertence a uma pessoa maior de idade. Pessoas maiores de idade serão consideradas caso a idade seja 18 ou superior.
   * Caso onde o usuário digite um valor igual ou maior que 18
    ```
    python ex-02.py
    Informe a sua idade: 18
    A pessoa é maior de idade
    ```
   
   * Caso onde o usuário digite um valor menor que 18:
    ```
    python ex-02.py
    Informe a sua idade: 13
    A pessoa não é maior de idade.
    ```
3. Peça duas notas, em seguida exiba a média.
    ```
    python ex-03.py
    Digite a primeira nota: 8.5
    Digite a segunda nota: 9
    Sua média é 8.75
    ```
   
4. Peça três notas, informe a média e a situação do aluno. Caso a média seja menor que 5, o aluno está reprovado. Caso a média seja maior ou igual a 5 e menor que 7, o aluno está de recuperação. Caso a média seja maior ou igual a 7, o aluno está aprovado.
    * Caso onde o aluno recebe a mensagem de reprovação:
    ```
    python ex-04.py
    Digite a primeira nota: 6
    Digite a segunda nota: 4
    Digite a terceira nota: 5
    Média final: 4.83. O Aluno foi reprovado!
    ```
   
   * Caso onde o aluno recebe a mensagem de recuperação:
    ```
    python ex-04.py
    Digite a primeira nota: 8
    Digite a segunda nota: 6
    Digite a terceira nota: 5
    Média final: 6.33. O Aluno está de recuperação!
    ```
   
    * Caso onde o aluno recebe a mensagem de aprovação:
    ```
    python ex-04.py
    Digite a primeira nota: 7.5
    Digite a segunda nota: 8
    Digite a terceira nota: 10
    Média final: 8.5. O Aluno foi aprovado!
    ```
   
 5. Peça o nome de um produto e o valor. Se o valor do produto for de R$ 100,00 ou superior, exiba uma frase com o nome do produto e um desconto de 10%. caso contrario exiba o nome do produto we seu valor integral.
    * Caso onde o valor do produto é maior que R$ 100:
    ```
    python ex-05.py
    Digite o nome do Produto: Livro de Python
    Digite o valor do Produto: 159.90
    O produto Livro de Python vai custar 143.91
    ```
   
    * Caso onde o valor do produto é menor que R$ 100:
    ```
    python ex-05.py
    Digite o nome do Produto: Mousepad
    Digite o valor do Produto: 23.90
    O produto Mousepad vai custar 23.90
    ```
6. Serão pedidos 3 números, informe qual deles é o menor.
    ```
    python ex-06.py
    Digite o primeiro número: 16
    Digite o segundo número: 33
    Digite o terceiro número: 51
    O menor número é o 16.
    ```
7. Peça 2 valores e um tipo de cálculo (soma, subtração, multiplicação ou divisão). Efetue o cálculo e exiba.
    * Exemplo com soma:
    ```
    python ex-07.py
    Digite o primeiro valor: 10
    Digite o segundo valor: 5
    Digite o tipo de operação: soma
    Resultado: 15
    ```
   
   * Exemplo com multiplicação:
   ```
   python ex-07.py
   Digite o primeiro valor: 4
   Digite o segundo valor: 15
   Digite o tipo de operação: multiplicacao
   Resultado: 60
    ```
8. Escreva um programa em Python que receba o nome e o sobrenome do usuário, em seguida os imprima em ordem reversa.
    ```
    python ex-08.py
    Digite o seu nome: João
    Digite o seu sobrenome: da Silva
    Olá, avliS ad oãoJ
    ```
