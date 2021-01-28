
if __name__ == '__main__':
    values_list = []
    word = ""

    while word.upper() != 'PRONTO':
        word = input("Digite um valor: ")
        values_list.append(word)
    else:
        values_list.pop()

    for index, value in enumerate(values_list, start=1):
        print(f"{index}. {value}")
