import mysql.connector

dbcon=None 
try:
    dbcon = mysql.connector.connect(host='localhost',
                                    user='root',
                                    password='root',
                                    database='6pm')
    cursor = dbcon.cursor()
    sql_st = '''update employee 
                set ename='Rahul Gandhi JI' 
                where eid=101; '''
    cursor.execute(sql_st)
    dbcon.commit()
    print("Data Updated successfully")
except:
    print("Uanble to Updated")
finally:
    cursor.close()
    dbcon.close() 