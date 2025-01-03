try:
    a=int(input("enter 1st number"))
    b=int(input("enter 2nd number"))
    print("a value:",a,"b value:",b)
    fp=open("emp.json",'r')
    data=
    print(a+b)
except TypeError as te:
    print("type mismatch")
except FileNotFoundError as fnf:
    fp=open("default.json",'r')

except ValueError as ve:
    print("unable to convert")
finally:
    print("finally block will execute always")
    fp.close()