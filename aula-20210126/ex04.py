database = []


def show_help():
    print("""
    COMANDOS DISPONÍVEIS:
    * ADICIONAR: Adiciona um novo registro.
    * EXCLUIR: Exclui um registro.
    * DIMINUIR: Exclui o último registro feito.
    * MOSTRAR: Mostra os dados na tela.
    * SAIR: Encerra o programa.
    """)


def add():
    value = input("Digite o que deseja adicionar: ")
    database.append(value)


def delete():
    value = input("Digite o que deseja excluir: ")
    if value in database:
        database.remove(value)
    else:
        print(f"O valor '{value}' não existe na base de dados.")


def popitem():
    if len(database) == 0:
        print("Não há itens na lista.")
    else:
        print(f"O item {database.pop()} foi excluído.")


def show_data():
    if len(database) == 0:
        print("Não há itens a serem mostrados.")
    else:
        print("*"*50)
        for value in database:
            print(f"* {value}")
        print("*" * 50)


if __name__ == '__main__':
    command = ""

    show_help()
    while command.upper() != "SAIR":
        command = input("O que você deseja fazer? ")

        if command.upper() == "ADICIONAR":
            add()

        elif command.upper() == "MOSTRAR":
            show_data()

        elif command.upper() == "EXCLUIR":
            delete()

        elif command.upper() == "DIMINUIR":
            popitem()

        else:
            print(f"O comando {command} não existe.")
