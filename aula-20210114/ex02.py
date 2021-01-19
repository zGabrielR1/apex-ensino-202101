from random import randint

numbers_list = []

# Gerando uma lista de números randômicos
for number in range(100):
    numbers_list.append(randint(1, 100))

# List comprehension
# Pode-se usar o operador _ para ignorar a variável
# numbers_list = [randint(1, 100) for _ in range(100)]

if __name__ == '__main__':

    # Primeira maneira
    # counter = 0
    # for number in numbers_list:
    #     if number > 50:
    #         print(f"{counter}: {number}")
    #     counter += 1

    # Segunda maneira (usando enumerate)
    for index, number in enumerate(numbers_list):
        if number > 50:
            print(f"{index}: {number}")
