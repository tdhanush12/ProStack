#write python scirpt to read employees.json file
#and write only male/female employees into
#new file ie male.json or female.json file
import json
fp=open("emp.json",'r')
employess=json.load(fp)
print(type(employess))
print(len(employess))
#print(employess)
print("MalES")
for emps in employess:
    if emps['gender']=='Male':
        print(emps['ename'])

print("FEMALES")
for emps in employess:
    if emps['gender']=='Female':
        print(emps['ename'])