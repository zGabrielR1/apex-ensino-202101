# Estruturas condicionais


if __name__ == '__main__':

    saldo = 1000.0

    menu = """
    Digite uma opção
    1 - Visualizar Saldo
    2 - Realizar depósito
    3 - Realizer saque
    """

    print(menu)
    opcao = int(input("Opção: "))

    if opcao == 1:
        print(f"Saldo: {saldo}")

    elif opcao == 2:
        valor_deposito = float(input("Quanto quer depositar? "))
        saldo += valor_deposito
        print(f"Seu saldo atual é de {saldo}")

    elif opcao == 3:
        valor_saque = float(input("Quando quer sacar? "))

        if valor_saque <= saldo:
            saldo -= valor_saque
            print(f"Você sacou {valor_saque}")
        else:
            print("Você não tem saldo suficiente.")

    else:
        print("Digite uma opção válida (1 - 3)")
