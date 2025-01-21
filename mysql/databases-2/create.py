import mysql.connector
dbcon=None
try:
    dbcon=mysql.connector.connect(host='localhost',user='root',password='root',database='5pm')
    cursor=dbcon.cursor()
    sql_st='''
          create table employee(
            eid int,
            ename varchar(32),
            esal float
            );
           '''
    cursor.execute(sql_st)
    dbcon.commit()
    print("Table is created successfully")
except mysql.connector.Error as err:
    print(err)

finally:
    pass
