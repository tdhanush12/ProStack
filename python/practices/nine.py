def greet_decorator(func):
    def wrapper():
        print("Hello!")
        func()
        print("Goodbye!")
    return wrapper

@greet_decorator
def greet():
    print("How are you?")

greet()
# Output:
# Hello!
# How are you?
# Goodbye!
