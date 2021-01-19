
if __name__ == '__main__':
    number = int(input("Digite o número: "))

    counter = 1

    while counter <= 10:
        print(f"{number} x {counter} = {number*counter}")
        counter += 1
