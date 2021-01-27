
def arbitrary_function_arguments(*args):
    print(f"Quantidade de argumentos: {len(args)}")
    print(args)


if __name__ == '__main__':
    arbitrary_function_arguments(4, 7, 2, 'Python')
