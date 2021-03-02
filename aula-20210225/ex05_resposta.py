import csv
from datetime import datetime

if __name__ == '__main__':
    registros = []
    total_de_pedidos = 0

    with open("pedidos.csv", "r") as f:
        reader = csv.DictReader(f, delimiter=";")

        for line in reader:
            registros.append(line)
            total_de_pedidos = total_de_pedidos + float(line['valor'].replace(",", "."))

    ultimo_pedido = registros[-1]
    data_ultimo_pedido = datetime.strptime(
        ultimo_pedido['data'], "%Y%m%d"
    )

    print("*"*50)
    print(f"Total de pedidos: {len(registros)}")
    print("Valor total dos pedidos: {:.2f}".format(total_de_pedidos))
    print(f"Data do último pedido: {data_ultimo_pedido.strftime('%d-%m-%Y')}")