
if __name__ == '__main__':
    dicio = {
        "backend": "Python",
        "frontend": "VueJS",
        "database": "PostgreSQL",
        "cache": "Redis",
        "mobile": "Flutter"
    }

    word = ""

    while word.upper() != "PRONTO":
        word = input("Digite a chave: ")

        if word in dicio.keys():
            print(f"'{word}' é uma chave do dicionário e possui o valor '{dicio[word]}.'")

        else:
            print(f"A chave '{word} não existe no dicionário.")
