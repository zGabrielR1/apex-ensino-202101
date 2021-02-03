
def celsius_to_fahrenheit(value):
    return (value * (9 / 5)) + 32

def fahrenheit_to_celsius(value):
    return (value - 32) * (5 / 9)

if __name__ == '__main__':
    print("""
    Escolha a opção de conversão:
    1 - Celsius para Fahrenheit
    2 - Fahrenheit para Celsius
    """)

    option = int(input("Opção: "))
    value = float(input("Digite o valor a ser convertido"))

    if option == 1:
        result = celsius_to_fahrenheit(value)
        print("{}C corresponde a {:.2f}F.".format(value, result))

    elif option == 2:
        result = fahrenheit_to_celsius(value)
        print("{}F corresponde a {:.2f}C.".format(value, result))