from random import randint

numbers_list = [
    randint(1, 100) for _ in range(5)
]


def generate_pow_list(numbers_list):
    pow_numbers_list = []
    for number in numbers_list:
        pow_numbers_list.append(number*number)

    return pow_numbers_list


if __name__ == '__main__':
    print(numbers_list)
    print(generate_pow_list(numbers_list))
