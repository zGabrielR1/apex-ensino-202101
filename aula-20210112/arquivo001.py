# Aqui colocamos uma varíavel <valor>
# Na qual será usada para representar outros métodos
valor = 1
print(__name__)
if __name__ == '__main__':

    # Existem 3 tipos de dados numéricos no Python
    # int, float, complex

    numero1 = 500
    numero2 = 34.1247
    numero3 = 13j
    
    print(numero1, numero2, numero3)
    print(numero1 / numero2 * numero3)
    print(numero1 / numero2 + (numero2 * 5))

    mensagem = "Curso \'{}\', {}"

    # Método de substituição
    # Substitui a primeira string (Java), pela segunda (Novembro)
    print(mensagem.format("Java", "Novembro"))
    print(mensagem.format("Golang", "Fevereiro"))

    # Usando f-strings
    # A f-string "chama a string da variável
    java = "Java"
    php = "php"

    mensagem = f"Curso {java} e {php} = {500 * 2}"
    print(mensagem)

    # Strings multi linha
    texto = "O rato roeu " \
    "a roupa do rei de roma" \
    "."

    texto = """
    Escolha as opções
    1 - Jogar
    2 - Sair
    3 - Salvar
    """

    # Alguns métodos de strings
    print(texto.lower())

    cabecalhos = "nome,data_nascimento,cpf"
    cabecalhos = cabecalhos.replace("data_nascimento", "dt_nasc")
    print(cabecalhos.split(','))

    # Tipo de dado booleano
    # True, False

    # Operadores de comparação
    # >, <, >=, <=, ==, !=
    print(2 > 5) # Falso
    print(10 > 8) # Verdadeiro
    print(100 != 100) # Falso
    print(50 >= 50) # Verdadeiro

    # Operadores aritméticos
    print(10 % 3) # Função modular
    print(10 ** 2) # Potenciação
    print(10 // 3) # Resto da divisão


    # Operadores de atribuição
    numero1 = numero1 + 10
    numero1 -= 200 # numero1 =  numero1 - 200
    numero1 *= 2 # numero1 = numero1 * 2 (numero1 vezes 2) 
    print(numero1)

    # Operadores lógicos
    # and, or, not

    # and
    # and retorna True se e somente se os 2 lados da expressão forem verdadeiros
    expressao = 10 > 2 and 5 < 7 # Verdadeiro
    print(expressao)
    expressao = 1 > 3 and 4 < 9 # Falso
    print(expressao)

    # or
    # or retorna True se ao menos 1 dos lados da expressão for verdadeiro
    expressao = 100 < 3 or 2 > 0 # Verdadeiro
    print(expressao)

    # not
    # not nega um valor (ou expressão)
    expressao = not 100 > 10 # Falso
    print(expressao)
    expressao = not 10 > 1000 # Verdadeiro
    print(expressao)

    # Operadores de pertencimento
    # in, not in
    texto = "The book is on the table."

    print("banana" in texto) # Operador booleano falso
    print("table" in texto) # Verdadeiro
    print("carne" not in texto) # Verdadeiro
