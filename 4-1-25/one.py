class test:
    def __init__(self,a,b):
        print(a,b)
        print("constructor will excute automactially")

    def m1(self,a):
        print("instance method")
    @classmethod
    def m2(self):
        print("class method")

t1=test(10,20)
t2=test(100,200)
t1.m1(10)
t1.m2()
t2.m1(10)
t2.m2()