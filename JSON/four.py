import csv
fp=open('emp.csv','w',newline="")
csv_writer=csv.writer(fp)
csv_data=[['1','dhanush','Male'],['1','dhanush','Male'],['1','dhanush','Male']]
csv_writer.writerow(['eid','ename','gender'])
csv_writer.writerows(csv_data)
fp.close()