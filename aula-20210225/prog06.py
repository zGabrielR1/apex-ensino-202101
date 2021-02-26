# Arquivos CSV
# Escrevendo arquivos

import csv
from datetime import datetime

if __name__ == '__main__':
    # usando writer
    # Usamos listas para salvar as informações
    lista_nomes = [
        [1, "Maria", datetime.now().strftime("%Y-%m-%d %H:%M:%S")],   # 1;Maria
        [2, "Laura", datetime.now().strftime("%Y-%m-%d %H:%M:%S")],   # 2;Laura
        [3, "Fernanda", datetime.now().strftime("%Y-%m-%d %H:%M:%S")] # 3;Fernanda
    ]

    with open("prog06.csv", "w", newline='') as f:
        writer = csv.writer(f, delimiter=";")
        writer.writerows([["id", "name", "timestamp"]])

        # for nome in lista_nomes:
        #     writer.writerow(nome)
        writer.writerows(lista_nomes)

    # Usando DictWriter
    # Usamos dicionários para salvar as informações
    with open("prog06.csv", "w", newline='') as f:
        headers = ["id", "name", "balance"]

        writer = csv.DictWriter(f, fieldnames=headers)
        writer.writeheader()

        data = {"id": 1, "name": "Maria", "balance": 1000.0}

        writer.writerow(data)
        writer.writerow({"id": 2, "name": "Luana", "balance": 2387.98})
