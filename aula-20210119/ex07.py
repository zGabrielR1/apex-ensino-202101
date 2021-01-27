
def mostrar_salario():
    pass

def calculo_salario(nome, valor, setor, horas_trabalhadas=0, porcentagem_comissao=0):
    pass

    if setor == 1:
        print(f"Cálculo do salário de {nome}")
        print(f"Valor: {valor}")

    elif setor == 2:
        valor = valor * horas_trabalhadas

        print(f"Cálculo do salário de {nome}")
        print(f"Valor: {valor}")

    elif setor == 3:
        valor = (valor * (porcentagem_comissao / 100))

        print(f"Cálculo do salário de {nome}")
        print("Valor: {:.2f}".format(valor))


if __name__ == '__main__':
    nome = input("Informe o nome do funcionário: ")
    valor = float(input("Informe o valor: "))
    setor = int(input("Informe o setor: "))
    porcentagem_comissao = 0
    horas_trabalhadas = 0

    if setor == 2:
        horas_trabalhadas = float(input("Informe a quantidade de horas trabalhadas: "))

    elif setor == 3:
        porcentagem_comissao = float(input("Informe a porcentagem da comissão: "))

    salario = calculo_salario(
        nome,
        valor,
        setor,
        horas_trabalhadas=horas_trabalhadas,
        porcentagem_comissao=porcentagem_comissao
    )