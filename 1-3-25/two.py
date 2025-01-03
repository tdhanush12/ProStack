class Account:
    def __init__(self):
         print("Constructor special method")
    def m1(self):
         print("instance method - m1 ")
    @classmethod
    def m2(cls):
         print('class method - m2')
    @staticmethod
    def m3():
         print("static method -m3")
a1=Account()
a2=Account()
a3=Account()