# Ler todos os valores do arquivo e apresentar a soma no final

if __name__ == '__main__':
    lista_numeros = []
    soma = 0
    with open("valores.txt") as f:
        for line in f:
            lista_numeros.append(float(line))
            soma += float(line)

    print(f"Soma: {soma}")
    print(f"Soma: {sum(lista_numeros)}")
