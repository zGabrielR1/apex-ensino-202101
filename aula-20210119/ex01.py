from random import randint

numbers_list = [
    randint(1, 10), randint(1, 10), randint(1, 10)
]


def return_max(numbers_list):
    return max(numbers_list)


if __name__ == '__main__':
    print(numbers_list)
    print(f"Maior número: {return_max(numbers_list)}")
