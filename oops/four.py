class Account:
    acc_min_bal=500
    branch_name="marthalli"
    
    def open_account(self):
        print("Account created successfully")
    def deposit_amount(self):
        print("Amount deposited")
    def withdrawl_amount(self):
        print("low balances")
    def get_bal(self):
        print("server busy")
    def close_account(self):
        print("balance is -ve plz deposit amount")

a1=Account()
a2=Account()
print(a1)
print(type(a1))
print(id(a1))