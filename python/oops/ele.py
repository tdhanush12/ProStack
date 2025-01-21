class Test:
    ''' Good Evending '''
    a=100         #static variable/class level
    b=200         #static variable/class level
    def m1(self):
        self.c=300 #instance variable
t1=Test()
print(t1.__dict__)  #{}
t1.m1()
print(t1.__dict__) #{'c': 300}