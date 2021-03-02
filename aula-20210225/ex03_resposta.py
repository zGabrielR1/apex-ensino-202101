import csv

if __name__ == '__main__':
    with open("pedidos.csv", "r") as f:
        reader = csv.DictReader(f, delimiter=";")

        for line in reader:
            for key, value in line.items():
                print(f"{key}")
                print(f"{value}\n")
            print("*"*50)
