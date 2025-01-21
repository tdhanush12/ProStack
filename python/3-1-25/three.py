class Account:
    min_bal=500
    def __init__(self,id,name,amount):
        self.acc_id=id
        self.acc_name=name
        self.acc_amount=amount
    def deposit_amount(self,amount):
        self.acc_amount=self.acc_amount+amount
    def withdrawl_amount(self,amount):
        self.acc_amount=self.acc_amount-amount
    


print("original balance")
a1=Account(101,'dhanush',1500)
print(a1.__dict__)
a2=Account(102,'Dhanush',1500)
print(a2.__dict__)
print("After deposited")

a1.deposit_amount(2000)
a2.deposit_amount(2000)
print(a1.__dict__)
print(a2.__dict__)
a1.withdrawl_amount(1000)
a2.withdrawl_amount(1000)
print("After withdrawl amount")
print(a1.__dict__)
print(a2.__dict__)

