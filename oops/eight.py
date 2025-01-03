class Account:
    acc_min_bal=500
    acc_branch_name="marthalli"

    def deposit_amount(self,amount):
        self.acc_min_bal=amount

a1=Account()
a1.deposit_amount(15000)
a2=Account()
a2.deposit_amount(20000)
print(a1.__dict__)
print(a2.__dict__)