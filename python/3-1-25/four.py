# Defining a class named 'MyClass'
class MyClass:
    # Constructor (__init__) method that initializes the instance variable 'name'
    def __init__(self, name):
        self.name = name  # instance variable 'name' will hold the value passed during initialization
    
    # Function (method) inside the class that prints a greeting
    def greet(self):
        print(f"Hello, {self.name}!")
        
# Create an instance of 'MyClass' and pass a name to it
my_object = MyClass("Dhanush")

# Calling the 'greet' method on the 'my_object' instance
my_object.greet()
