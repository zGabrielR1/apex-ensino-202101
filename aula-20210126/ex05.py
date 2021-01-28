
if __name__ == '__main__':
    value = ""
    values_list = list()
    dicio = dict()

    while value.upper() != "PRONTO":
        value = input("Digite uma palavra: ")
        values_list.append(value)

    dicio = dict.fromkeys(values_list, 0)

    print(dicio)