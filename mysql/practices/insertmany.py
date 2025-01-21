import mysql.connector
dbcon=None
try:
    dbcon=mysql.connector.connect(host='localhost',user='root',password='root',database='3pm')
    cursor=dbcon.cursor()
    sql_st='''insert into emp (eid, ename, esal ,eloc) values (%s,%s,%s,%s);'''
    users=[(102, 'Priya', 75000.75,'bangalore'), (103, 'Modi', 95000.75,'chennai'), (104, 'Vijay', 85000.75,'lucknow')]
    cursor.executemany(sql_st,users)
    dbcon.commit()
    print("Data inserted successfully")
except Exception as e:
     print(e)
     print("unable to insert the data into table")
finally:
    pass