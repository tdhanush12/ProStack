#read emp.csv file
#write male data into json file. ie male.json
import csv
import json
fp1=open("employees1.csv",'r')
fp2=open("male.json",'w')
employees=list(csv.reader(fp1))
print(len(employees))

new_male_employees=filter(lambda emp_list:emp_list[2]=="Male",employees)
print(new_male_employees)
male_employees=[]
for emp_list in new_male_employees:
    male_employees.append({'eid':emp_list[0],'ename':emp_list[1],'gender':emp_list[2],'loc':emp_list[3],'salary':emp_list[4]})

json.dump(male_employees,fp2)
print("new file is created")
fp2.close()
fp1.close()

