
# Dicionários (dict())
# É uma coleção de dados mutável e indexável. Usa o conceito
# de chave: valor. Não permite chaves com o mesmo valor, apenas valores

if __name__ == '__main__':
    pessoa = {
        "nome": "José",
        "sexo": "Masculino",
        "idade": 28,
        "hobbies": ["Viajar", "Ler", "Programar"]
    }

    # Por padrão, um for executado dessa maneira mostra
    # apenas as chaves do dicionário
    # Pode-se usar também, pessoa.keys()
    for valor in pessoa:
        print(valor)
    print(pessoa.keys())

    print(f"Nome: {pessoa['nome']}")

    # Para acessarmos os valores, utilizamos dict.values()
    for valor in pessoa.values():
        print(valor)

    # Se quisermos retornar as chaves e os valores ao mesmo
    # tempo, utilizamos dict.items()
    for chave, valor in pessoa.items():
        print(f"{chave} = {valor}")

    # Usando o operador de pertencimento in, podemos vericar
    # a existência de uma chave ou de um valor
    print("idade" in pessoa.keys())
    print("Amanda" in pessoa.values())
    print("José" not in pessoa.values())

    # Função built-in para verificar o tamanho de um dicionário
    print(len(pessoa))

    # clear() Exclui os valores do dicionário
    # pessoa.clear()
    # print(pessoa)

    # copy() Copia um dicionário
    pessoa2 = pessoa.copy()
    pessoa2.update({'cidade': 'Blumenau'})
    print(pessoa)
    print(pessoa2)

    # get() Retorna o valor da chave especificada
    # Caso a chave não exista, podemos definir um valor padrão
    nome = pessoa.get("nome", "Chave não existente")
    print(nome)

    # pop() Retorna e remove o par chave: valor de acordo
    # com a chave especificada
    pessoa.pop("idade")
    print(pessoa)

    # popitem() Remove o último par chave valor do dicionário
    pessoa.popitem()
    print(pessoa)

    # setdefault() Retorna um valor se a chave existir.
    # Se a chave não existir, cria um par chave/valor
    print(pessoa.setdefault('nome', 'Mário'))
    print(pessoa)
    print(pessoa.setdefault('cidade', 'Blumenau'))
    print(pessoa)


    # update() Atualiza o dicionário com novos valores
    # Se a chave passada não existir, ele cria um novo
    # par chave/valor
    info = {
        "nome": "Amanda",
        "profissao": "Analista de Sistemas",
        "empresa": "Ambev Tech",
        "nivel": "Pleno"
    }

    pessoa.update(info)
    print(pessoa)

    itens = ("Parafuso", "Martelo", "Serrote", "Cola",)
    print(type(itens))
