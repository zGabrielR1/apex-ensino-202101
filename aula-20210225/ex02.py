
if __name__ == '__main__':
    lista_nomes = []

    texto = ""

    while texto.upper() != "SAIR":
        texto = input("Digite um texto: ")
        lista_nomes.append(texto+"\n")

    lista_nomes.pop()

    with open("ex02.txt", "w") as f:
        f.writelines(lista_nomes)