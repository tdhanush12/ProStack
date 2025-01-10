import mysql.connector

dbcon=None

try:
    dbcon=mysql.connector.connect(host='localhost',user='root',password='root',database='3pm')
    cursor=dbcon.cursor()
    sql_st='''
              create table emp(
              eid int,
              ename varchar(32),
              esal float,
              eloc varchar(32)
              );
            '''
    cursor.execute(sql_st)
    dbcon.commit()
    print("table created successfully")
except:
    print("unable to connect")
finally:
    print("Table Created")
