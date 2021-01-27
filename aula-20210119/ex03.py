from random import randint

numbers_list = [
    randint(1, 100) for _ in range(100)
]


def only_odd_numbers(numbers_list):
    odd_numbers_list = []
    for number in numbers_list:
        if number % 2 == 1:
            odd_numbers_list.append(number)

    return odd_numbers_list


if __name__ == '__main__':
    print(numbers_list)
    print(only_odd_numbers(numbers_list))
    