import json
fp=open("emp.json",'r')
employess=json.load(fp)
print(type(employess))
print(len(employess))
#print(employess)

male_emp=[]
for emps in employess:
    if emps['gender']=='Male':
        #print(emp['ename'])
        male_emp.append(emps)
fp2=open('male.json','w')
json.dump(male_emp, fp2)
print("New File Created Successfully")
print(male_emp)
