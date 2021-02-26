# O pacote os manipula informações sobre arquivos e diretórios do sistema

import os
import shutil   # Operações de alto nível em arquivos/diretórios

if __name__ == '__main__':
    # Listar o conteúdo do diretório atual
    # Se não for informado um argumento, lista o conteúdo do diretório atual
    print(os.listdir("C:\\"))

    # Criar um diretório
    # Cria o diretório "logs" se o mesmo ainda não existir
    if not os.path.exists("logs"):
        os.mkdir("logs")

    # Excluir um diretório
    os.rmdir("logs")

    # Excluir diretórios não vazios
    if os.path.exists("users"):
        shutil.rmtree("users")

    # Excluir um arquivo
    # os.remove("arquivo01.txt"); os.remove("arquivo02.txt")

    # Pegando o nome do diretório atual
    # print(os.path.dirname(__file__))
    # print(os.getcwd())

    arquivo = os.path.dirname(__file__)
    # hardcoded
    # Operating system
    print(os.path.join(os.path.dirname(__file__), "users.txt"))