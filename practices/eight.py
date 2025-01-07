class ClassName:
    def __init__(self, attributes):
        self.attributes = attributes

    def method(self):
        print(f"Attribute is: {self.attributes}")

# Creating an object of the class
obj = ClassName("Example Value")

# Accessing the attributes
#obj.attributes()  # Output: Example Value

# Calling the method
obj.method()  # Output: Attribute is: Example Value
