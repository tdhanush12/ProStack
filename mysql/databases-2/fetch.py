import mysql.connector
dbcon=None
try:
    dbcon = mysql.connector.connect(host='localhost',user='root',password='root',database='5pm')
    cursor = dbcon.cursor()
    sql_st = '''select * from employee;'''
    cursor.execute(sql_st)
    employees=cursor.fetchall()
    print(type(employees))
    for emp in employees:
        print("EmpID",emp[0],"ENAME",emp[1],"ESAL",emp[2])
    print("Data fecthed")

except:
    print("Uanble to read")

finally:
    cursor.close()
    dbcon.close()