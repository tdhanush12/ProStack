import requests

data=requests.get('https://dummyjson.com/products')
print(data.status_code)

#print(data.json())