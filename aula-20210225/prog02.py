# Manipulando arquivos .txt
# Lendo arquivos

if __name__ == '__main__':
    f = open("users.txt", "r")
    print(f)

    # read() Lê o conteúdo do arquivo
    # read() aceita um argumento int que corresponde a quantidade de bytes lidos.
    # print(f.read())
    # print(f.read(10))

    # readline()
    # readline() lê uma linha por vez
    # print(f.readline())
    # print(f.readline())

    # readlines()
    # readlines lê o arquivo e retorna todas as linhas como uma lista
    # Se for passado um argumento int, retorna as linhas até a posição especificada
    # print(f.readlines(10))

    for index, line in enumerate(f, start=1):
        print(f"{index}) {line}")

    # f.closed indica se o arquivo está aberto ou fechado
    print(f.closed)
    f.close()
    print(f.closed)

    # Usando o with, garantimos que o arquivo será fechado de forma automática após
    # a execução sair do bloco with
    with open("users.txt") as f:
        print("ok")
        print(f.closed)
