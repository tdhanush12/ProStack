#print(10/0)#zero divison error

#print(int("Dhanush"))#value error

#print("dhansh"+10)#type error
#can only concatenate str(not int) to str

#ename=["dhanush","shresti"]
#ename.append("Thalupula")
#print(ename)
#ename.pushpa2("modi")#AttributError
#list object has no attribute'pushpa2

#IndexError
#enames=["Rahul", "Sonia"]
#print(enames[0])#Rahul
#print(enames[1])#Sonia
#print(enames [4])#IndexError

#IndentationError
#def wish():
#pass
#IndentationError:
#expected an indented block

#recreate FileNotFoundError

#fp=open('emp.txt','r') #FileNotFoundError:
#data=fp.read()

#recreate FileNotExitsError
fp=open("abc.txt",'x')
fp.read()