# Manipulando arquivos.txt
# Escrevendo em arquivos (w)

if __name__ == '__main__':
    lista_nomes = ["Maria\n", "Roberta\n", "Amanda\n"]

    with open("nomes.txt", "w") as f:
        f.write("Bem vindo ao curso de Python\n")
        f.write(','.join(lista_nomes))
        f.writelines(lista_nomes)

