import mysql.connector

dbcon=None
try:
    dbcon = mysql.connector.connect(host='localhost',user='root',password='root',database='6pm')
    cursor = dbcon.cursor()
    sql_st = '''insert into employee values (102, 'sonia', 55000.45);'''
    cursor.execute(sql_st)
    dbcon.commit()
    print("Data inserted successfully")
except:
    print("Uanble to Insert")
finally:
    cursor.close()
    dbcon.close()