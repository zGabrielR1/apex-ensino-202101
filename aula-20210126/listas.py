# Listas (list)
# É uma coleção de dados que é ordenável e mutável. Permite dados duplicados.
# Uma lista é um objeto iterável e indexável

if __name__ == '__main__':
    lista_de_compras = [
        "Abacaxi", "Uvas", "Manga", "Morango", "Coco"
    ]

    print("Itens para compra: ")
    for index, item in enumerate(lista_de_compras, start=1):
        print(f"{index}. {item}")

    # Podemos acessar os itens de uma lista pelo seu índice
    # Lembrando que o índice em uma lista sempre começa em 0
    # index = int(input("Digite o índice do item: "))
    # print(lista_de_compras[index])

    print("Acessando o terceiro item da lista: ")
    print(lista_de_compras[2])

    # Também podemos usar índices negativos.
    # O valor -1 corresponde ao último item da lista, o -2 ao penúltimo, e assim por diante.
    print("Acessando o último item da lista: ")
    print(lista_de_compras[-1])

    # Podemos "fatiar" uma lista, pegando apenas determinados itens.
    # Chamamos isso de "slice"

    excluir_primeiro = lista_de_compras[1:]
    print(excluir_primeiro)

    segundo_e_terceiro = lista_de_compras[1:4]
    print(segundo_e_terceiro)

    lista_inteira = lista_de_compras[:]
    print(lista_inteira)

    # Como uma lista é mutável, podemos alterar um ou mais valores nessa lista
    lista_de_compras[1] = "Melancia"
    print(lista_de_compras)

    # Como uma lista é um container de objetos, podemos usar
    # o operador de pertencimento in/not in para verificar
    # se um determinado item está ou não na lista
    print('Abacaxi' in lista_de_compras)
    print('Morango' not in lista_de_compras)


    # Métodos de lista

    # append() Adiciona um novo item no fim da lista
    lista_de_compras.append("Jabuticaba")
    print(lista_de_compras)

    # clear() Limpa a lista
    # lista_de_compras.clear()
    # print(lista_de_compras)

    # copy() Faz uma cópia da lista
    lista_de_compras2 = lista_de_compras.copy()

    # É também possível copiar uma lista usando slice
    # lista_de_compras2 = lista_de_compras[:]

    lista_de_compras2.append("Carne")
    print(lista_de_compras2)
    print(lista_de_compras)

    # count() Retorna a quantidade de vezes que um item se repete na lista
    lista_de_compras.append("Jabuticaba")
    print(lista_de_compras.count("Jabuticaba"))

    # extend() Insere os elementos de uma lista no final da lista
    lista_de_compras2 = [
        "Carne", "Alho", "Cebola", "Linguiça"
    ]
    lista_de_compras.extend(lista_de_compras2)
    print(lista_de_compras)

    # index() Retorna o índice do item informado
    # Se houver mais de 1 item igual, o index() retorna
    # o índice da primeira ocorrência
    print(lista_de_compras.index("Jabuticaba"))

    # insert() Insere um novo elemento na posição especificada
    lista_de_compras.insert(1, "Pitanga")
    print(lista_de_compras)

    # pop() Retorna um item da lista e o exclui dessa lista
    print(lista_de_compras.pop(6))
    print(lista_de_compras.pop())
    print(lista_de_compras)


    # remove() Exclui um item da lista pelo valor
    lista_de_compras.remove('Coco')
    print(lista_de_compras)

    # reverse() Inverte a ordem da lista
    lista_de_compras.reverse()
    print(lista_de_compras)

    # sort() Organiza uma lista
    lista2 = [4, 312, 655, 1, 32, 87]
    print(lista2)
    # Para listas de inteiros, o padrão é organizar do
    # menor pro maior
    # Se for passado o argumento reverse, ele organiza
    # de forma decrescente
    lista2.sort(reverse=True)
    print(lista2)
    lista_de_compras.sort()
    print(lista_de_compras)
