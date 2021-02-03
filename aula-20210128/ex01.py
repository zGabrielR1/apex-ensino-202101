
if __name__ == '__main__':
    dicio = dict()
    text = input("Digite o texto que quiser: ")

    text = text.replace(" ", "").lower()

    for char in text:
        if not char in dicio.keys():
            dicio.update({char: 0})

        dicio.update({char: dicio[char]+1})

    print("Repetição das letras: ")
    for key, value in dicio.items():
        print(f"{key}: {value}")