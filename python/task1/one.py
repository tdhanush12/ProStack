#read csv file
import csv
fp1=open("employees.csv",'r')
csv_data=csv.reader(fp1)
users=list(csv_data)
#print(users)

for user_list in users:
    for user_data in user_list:
        print(user_data,end="  ")

    print()