import mysql.connector
dbcon=None
try:
    dbcon=mysql.connector.connect(host='localhost',user='root',password='root',database='5pm')
    cursor=dbcon.cursor()
    sql_st='''
          update employee set ename='Rahul Gandhi' where eid=101;
           '''
    cursor.execute(sql_st)
    dbcon.commit()
    print("Updated successfully")
except mysql.connector.Error as err:
    print(err)

finally:
    pass