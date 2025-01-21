import mysql.connector
dbcon=None
try:
    dbcon=mysql.connector.connect(host='localhost',user='root',password='root',database='3pm')
    cursor=dbcon.cursor()
    sql_st='''insert into emp values(101,'dhanush',45000.45,'bangalore')'''
    cursor.execute(sql_st)
    dbcon.commit()
    print("Data inserted successfully")
except:
    print("unable to insert the data")
finally:
    pass
