
if __name__ == '__main__':
    strings_list = []
    numbers_list = []
    word = ""

    while word.upper() != 'PRONTO':
        word = input("Digite um valor (int ou str): ")
        if word.isdigit():
            numbers_list.append(word)
        else:
            strings_list.append(word)

    strings_list.pop()

    print("Lista dos números")
    for number in numbers_list:
        print(f"* {number}")

    print("Lista de strings")
    for string in strings_list:
        print(f"* {string}")