# Arquivos CSV
# Lendo arquivos

import csv

if __name__ == '__main__':
    # Maneira "comum"
    with open("cursos.csv", "r") as f:
        reader = csv.reader(f, delimiter=";")

        for line in reader:
            for item in line:
                print(f"{item}", end=' ')
            print("")

    # Usando DictReader
    with open("cursos.csv", "r") as f:
        reader = csv.DictReader(f, delimiter=";")

        for line in reader:
            print(line)

