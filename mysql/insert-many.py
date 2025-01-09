import mysql.connector

dbcon=None
try:
    dbcon = mysql.connector.connect(host='localhost',user='root',password='root',database='6pm')
    cursor = dbcon.cursor()
    sql_st = '''insert into employee (eid, ename, esal) values (%s, %s,%s);'''
    users=[(103, 'Priya', 75000.75), (104, 'Modi', 95000.75), (105, 'Vijay', 85000.75)]
    cursor.executemany (sql_st,users)
    dbcon.commit()
    print("Data inserted successfully")

except Exception as e:
    print(e)

finally:
    cursor.close()
    dbcon.close()