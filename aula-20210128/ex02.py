
if __name__ == '__main__':
    entrada = input("Digite a lista de números: ")

    lista_de_numeros = entrada.split()

    qtd_pares = 0
    qtd_impares = 0

    for numero in lista_de_numeros:
        if int(numero) % 2 == 0:
            qtd_pares += 1
        else:
            qtd_impares += 1

    print(f"Quantidade de números pares: {qtd_pares}")
    print(f"Quantidade de números ímpares: {qtd_impares}")