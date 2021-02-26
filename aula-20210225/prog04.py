# Manipulando arquivos .txt
# Lendo arquivos (a - append)
# O append sempre inclui novas linhas no final do arquivo

if __name__ == '__main__':

    with open("prog04.txt", "a") as f:
        f.write("Primeiro\n")
        f.write("Segundo\n")

    with open("prog04.txt", "a") as f:
        f.write("Terceiro\n")
        f.write("Ultimo\n")
