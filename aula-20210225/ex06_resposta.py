import csv
from datetime import datetime


if __name__ == '__main__':
    entrada = input("Digite uma data (formato d-m-Y): ")
    data_de_consulta = datetime.strptime(entrada, "%d-%m-%Y")
    lista_de_pedidos = []

    with open("pedidos.csv", "r") as f:
        reader = csv.DictReader(f, delimiter=";")

        for linha in reader:
            data_do_pedido = datetime.strptime(linha['data'], "%Y%m%d")

            if data_de_consulta == data_do_pedido:
                lista_de_pedidos.append(linha)

    print(f"Pedidos realizados no dia {data_de_consulta.strftime('%d-%m-%Y')}")
    print("*"*100)
    for pedido in lista_de_pedidos:
        print(f"Código: {pedido['codigo']}")
        print(f"Nome: {pedido['nome']}")
        print(f"Valor: {pedido['valor']}")
        print()
