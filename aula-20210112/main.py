
# Como boa prática, sempre iniciamos os nossos scripts dessa maneira
if __name__ == '__main__':

    # print imprime no terminal o que indicarmos
    print("Curso Python")

    # Criamos uma variável chamada "nome" que armazenará o retorno da função "input"
    # No Python não precisamos indicar o tipo de uma variável quando a declaramos
    # A função "input" recebe o que o usuário digita no terminal
    nome = input("Digite o seu nome: ")

    mensagem = ", bem vindo(a) ao curso de Python"

    # Aqui concatenamos as variáveis nome e mensagem, e imprimimos o resultado dessa concatenação
    print(nome + mensagem)