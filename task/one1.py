import json
fp=open("emp.json",'r')
employess=json.load(fp)
print(type(employess))
print(len(employess))
#print(employess)

female_emp=[]
for emps in employess:
    if emps['gender']=='Female':
        #print(emp['ename'])
        female_emp.append(emps)
fp2=open('female.json','w')
json.dump(female_emp, fp2)
print("New File Created Successfully")
print(female_emp)