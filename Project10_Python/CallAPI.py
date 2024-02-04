## import module
from requests import get
from time import sleep

url = "https://swapi.dev/api/people/"

response = get(url)
## 200 = OK
print (response.status_code)

## see data that get back from server
for i in range(10):
 index = i + 1
 new_url = url + str(index)
 resp = get(new_url).json()
 name = resp["name"]
 height = str(resp["height"])
 mass = str(resp["mass"])
 print (f"Character {index} in starwar name : {name} height : {height} mass : {mass}")
 sleep(2)
