
def show_message(name):
    return f"Welcome, {name}"


def enter_user_and_greetings():
    name = input("Your name? ")
    print(show_message(name))


if __name__ == '__main__':
    enter_user_and_greetings()
