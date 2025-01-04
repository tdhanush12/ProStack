#json to csv
import json
import csv
fp1=open('emp.json','r')
fp2=open('emp1.csv','w',newline="")
employees=json.load(fp1)

employees_list=[]

for emp in employees:
    #employees_list.append(list())
    employees_list.append([emp['eid'], emp['ename'], emp['gender']])

csv_write=csv.writer(fp2)
csv_write.writerow(['edi','ename','gender'])
csv_write.writerows(employees_list)
print(employees_list)
fp1.close()
fp2.close()