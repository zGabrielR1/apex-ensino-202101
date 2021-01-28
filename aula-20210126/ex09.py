
database = []


def get_user_info():
    nome = input("Digite o seu nome: ")
    idade = int(input("Digite a sua idade: "))
    salario = float(input("Digite o seu salário: "))

    data = {
        'nome': nome, 'idade': idade, 'salario': salario
    }

    return data


if __name__ == '__main__':
    command = ""

    while command.upper() != "SAIR":
        print("""
        DIGITE O QUE DESEJA FAZER:
        SAIR: Finaliza o programa
        CADASTRAR: Cadastra um cliente
        """)
        command = input("Comando: ")

        if command.upper() == "CADASTRAR":
            database.append(get_user_info())

    print("Usuários cadastrados: ")

    for item in database:
        for key, value in item.items():
            print(f"* {key.title()}: {value}")
        print("-"*15)
