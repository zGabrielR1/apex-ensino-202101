# FUNÇÕES

# Uma função é um bloco de código que pode ser chamado
# em qualquer lugar do nosso projeto
def show_good_morning_message():
    print("Good Morning")


# Uma função pode receber argumentos
def sum_two_numbers(number1, number2):
    return number1 + number2


def div_two_number(number1, number2):
    return number1 / number2


# Podemos também definir um valor padrão para um
# ou mais argumentos
def calculate_order_price(value, discount=0):
    return value - discount


def total_sum(*args):
    return sum(args)


def show_personal_data(**kwargs):
    print(kwargs)


if __name__ == '__main__':
    print(show_good_morning_message())
    print(sum_two_numbers(6, 10))

    # Se quisermos, podemos passar os valores dos
    # argumentos pelo nome, assim não ficamos
    # presos a uma ordem correta dos argumentos
    print(div_two_number(number2=10, number1=5))

    print(calculate_order_price(523.43))
    print(calculate_order_price(600, 100))

    print(total_sum(435, 23, 76, 100, 15))
    print(total_sum(130, 89))

    # Empacotando com *
    pair_of_numbers = [45, 90]
    print(div_two_number(*pair_of_numbers))

    show_personal_data(name='Linus', surname='Linus', birth_date=1970)
    show_personal_data(city='London', age=80)

    dict_numbers = {
        'number1': 19,
        'number2': 100
    }

    print(div_two_number(**dict_numbers))