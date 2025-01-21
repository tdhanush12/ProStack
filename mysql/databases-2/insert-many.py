import mysql.connector
dbcon=None
cursor=None
try:
    dbcon=mysql.connector.connect(host='localhost',user='root',password='root',database='5pm')
    cursor=dbcon.cursor()
    sql_st='''
           insert into employee(eid,ename,esal) values(%s,%s,%s);
           '''
    users=[(101, 'Rahul', 55000.55),(102, 'Sonia', 65000.65),(103, 'Modi', 75000.75),(104, 'Yogi', 45000.45)]
    cursor.executemany(sql_st,users)
    dbcon.commit()
    print("Data Inserted successfully")

except Exception as err:
    print(err)

finally:
    dbcon.close()
    cursor.close()