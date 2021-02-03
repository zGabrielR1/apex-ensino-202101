
def calcula_imc(peso, altura):
    return peso / pow(altura, 2)


if __name__ == '__main__':
    peso = float(input("Informe o seu peso(em kg): "))
    altura = float(input("Informe a sua altura(em m): "))

    imc = calcula_imc(peso, altura)

    print(f"Peso: {peso}")
    print(f"Altura: {altura}")
    print("IMC: {:.2f}".format(imc))