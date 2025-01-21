import csv
import json
fp1=open("employees1.csv",'r')
fp2=open("female.json",'w')
employees=list(csv.reader(fp1))
print(len(employees))

new_female_employees=filter(lambda emp_list:emp_list[2]=="Female",employees)
print(new_female_employees)
female_employees=[]
for emp_list in new_female_employees:
    female_employees.append({'eid':emp_list[0],'ename':emp_list[1],'gender':emp_list[2],'loc':emp_list[3],'salary':emp_list[4]})

json.dump(female_employees,fp2)
print("new file is created")
fp2.close()
fp1.close()
