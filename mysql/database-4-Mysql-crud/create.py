#create mysql table using python script
import mysql.connector
dbcon=None
try:
    dbcon = mysql.connector.connect(host='localhost',user='root',password='root',database='6pm')
    cursor = dbcon.cursor()
    sql_st = ''' 
            create table employee(
            eid int,
            ename varchar(32),
            esal float
            );
             '''
    cursor.execute(sql_st)
    dbcon.commit()
    print("Table Created Successfully")
except:
    print("Unable to Create table")
