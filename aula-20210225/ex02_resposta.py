import os

os.walk()
if __name__ == '__main__':
    lista_nomes = []
    nome = ""

    while nome.upper() != "SAIR":
        nome = input("Digite algum nome: ")
        lista_nomes.append(nome)

    lista_nomes.pop()

    nome_diretorio = input("Informe o diretório onde deseja salvar o arquivo: ")

    if not os.path.exists(nome_diretorio):
        os.mkdir(nome_diretorio)

    caminho_completo = os.path.join(
        os.path.dirname(__file__), nome_diretorio, "listagem_nomes.txt"
    )

    with open(caminho_completo, "w") as f:
        for nome in lista_nomes:
            f.write(f"{nome}\n")

