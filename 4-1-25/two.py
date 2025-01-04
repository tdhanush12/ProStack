class person:
    pass
    def __init__(self,id,name,age,sal):
        self.id=id
        self.name=name
        self.age=age
        self.sal=sal
    def m1(self):
        pass

p=person(101,"Dhanush",22,45000)
print(p.__dict__)