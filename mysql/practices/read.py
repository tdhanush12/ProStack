import mysql.connector
dbcon=None
try:
    dbcon=mysql.connector.connect(host='localhost',user='root',password='root',database='3pm')
    cursor=dbcon.cursor()
    mysql_st='''
              select * from emp; 
            '''
    cursor.execute(mysql_st)
    emp_data=cursor.fetchall()
    for emps in emp_data:
        print(emps)

except:
    print("unable to read")

finally:
    pass