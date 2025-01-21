class Account:
    min_bal=500 # static var / class level 
    def __init__(self,id,name):
        self.acc_id=id 
        self.acc_name=name 
        self.acc_bal=0 
    def deposit_amount(self,amount):
        self.acc_bal=self.acc_bal+amount 

    def withdrawl(self,amount):
        self.acc_bal=self.acc_bal-amount 

    def get_bal(self):
        bal=self.acc_bal-self.min_bal 
        return bal

a1=Account(11,'Dhanush')
a1.deposit_amount(5000)

a2=Account(12,'Shresti')
a2.deposit_amount(500000) 
a2.deposit_amount(1)

a1.withdrawl(15)

print("******Account holders balances******") 
print("Account Name:",a1.acc_name," and Bal:",a1.get_bal()) 
print("Account Name:",a2.acc_name," and Bal:",a2.get_bal()) 
print(Account.__dict__) 
print(a1.__dict__) 
print(a2.__dict__)
