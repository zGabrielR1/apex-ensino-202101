
if __name__ == '__main__':
    with open("arquivo.txt", "r") as f:
        linhas = f.readlines()

        print(f"O arquivo possui {len(linhas)} linhas.")
