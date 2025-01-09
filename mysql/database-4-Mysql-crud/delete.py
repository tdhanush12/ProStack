import mysql.connector

dbcon=None 
try:
    dbcon = mysql.connector.connect(host='localhost',
                                    user='root',
                                    password='root',
                                    database='6pm')
    cursor = dbcon.cursor()
    sql_st = '''delete from employee;'''
    cursor.execute(sql_st)
    dbcon.commit()
    print("Data deleted successfully")
except:
    print("Uanble to Delete")
finally:
    cursor.close()
    dbcon.close() 