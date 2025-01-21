class employees:
    c=300  #static variable
    def m1(self):
        self.a=100 #instance variable
    def m2(self):
        self.b=200

e1=employees()
e1.m1()
e1.m2()
e2=employees()
e2.m2()
print(e1.__dict__)
print(e2.__dict__)
print(employees.__dict__)#class variable
print(employees.__doc__)