import mysql.connector
dbcon=None
try:
    dbcon=mysql.connector.connect(host='localhost',user='root',password='root',database='3pm')
    cursor=dbcon.cursor()
    sql_st='''
           update emp
           set ename='Dhanush shresti'
           where eid=101
           '''
    cursor.execute(sql_st)
    dbcon.commit()
    print("Data update successfully")

except:
    print("unable to print")

finally:
    dbcon.close()