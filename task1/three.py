#read emp.csv file
#write data into json file.ie emp.json
import csv
import json
fp1=open("employees1.csv",'r')
fp2=open("emp.json",'w')
employees=list(csv.reader(fp1))
print(len(employees))

new_employees=[]
for emp_list in employees:
    new_employees.append({'eid':emp_list[0],'ename':emp_list[1],'gender':emp_list[2],'loc':emp_list[3],'sal':emp_list[4]})
    

json.dump(new_employees,fp2)
print("New file Created")

