
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
        word = input("Digite o valor: ")

        if word in dicio.values():
            print(f"O valor {word} existe no dicionário.")
        else:
            print(f"O valor {word} não existe no dicionário.")
