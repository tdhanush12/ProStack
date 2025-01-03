#read emp.csv and print only bangalore emps
import csv
fp1=open("employees1.csv",'r')
csv_data=csv.reader(fp1)
emps=list(csv_data)

for emp_list in emps:
    if emp_list[3]=='Bangalore':
        print(emp_list[1])

fp1.close()