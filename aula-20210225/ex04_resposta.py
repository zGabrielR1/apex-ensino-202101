import csv

if __name__ == '__main__':
    lista_registros = []

    for _ in range(3):
        codigo = input("Digite o código do produto: ")
        nome = input("Digite o nome do produto: ")
        valor = input("Digite o valor do produto: ")

        lista_registros.append({"codigo": codigo, "nome": nome, "valor": valor})

        header = ["codigo", "nome", "valor"]

    with open("ex04.csv", "w", newline='') as f:
        writer = csv.DictWriter(f, delimiter=";", fieldnames=header)
        writer.writeheader()
        writer.writerows(lista_registros)

