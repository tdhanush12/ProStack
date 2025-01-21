def isPrime(num):
    if num<=1:
        return False
    for i in range(2,int(num**0.5)+1):
        if num % 1==0:
            return False
        return True

num=int(input("enter a number:"))
if isPrime(num):
    print(f"{num} is a prime number.")
else:
    print(f"{num} is not a prime number.")   