
def arbitrary_named_function_arguments(**kwargs):
    print(len(kwargs))
    print(kwargs)


if __name__ == '__main__':
    arguments = {
        'course': 'Python',
        'duration': 10,
        'price': 1500
    }

    arbitrary_named_function_arguments(
        course='Python', duration=10, price=1500,
        country='BR'
    )