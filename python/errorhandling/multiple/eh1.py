try:
    a=int(input("enter 1st number"))
    b=int(input("enter 2nd number"))
    print(a+b)

except TypeError as te:
    print("type mismatch")

except ValueError as ve:
    print("unable to convert")

finally:
    print("finally block will execute always")