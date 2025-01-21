class Test:

    def m1(self):
        print("instance method")
    @classmethod
    def m2(cls):
        print("class method")
    @staticmethod
    def m3():
        print("static method")

t1=Test()
t2=Test()
print(Test.__dict__)
print(t1.__dict__)
print(t2.__dict__)